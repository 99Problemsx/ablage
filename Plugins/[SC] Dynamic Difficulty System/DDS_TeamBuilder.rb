#===============================================================================
# Dynamic Difficulty System - Team Builder
# Builds fresh opponent teams from species pools based on DDS tier.
#
# Unlike TeamScaler (which adjusts existing teams' stats), TeamBuilder
# REPLACES the trainer's party with Pokémon drawn from curated pools
# that match the trainer's class theme and the player's progression.
#
# Flow:  TeamBuilder picks species → creates Pokemon objects
#        TeamScaler then optimises IVs / EVs / natures / items
#===============================================================================

module DynamicDifficulty
  module TeamBuilder
    #===========================================================================
    # Main Entry — called from BattleHooks.before_battle, BEFORE TeamScaler
    #===========================================================================

    # @param battle [Battle] the Essentials battle object (parties loaded)
    def self.build_team(battle)
      return unless DynamicDifficulty::ENABLED
      return unless DynamicDifficulty::TEAM_BUILDING_ENABLED
      return unless $PokemonSystem&.dynamic_difficulty == 1
      return if DynamicDifficulty.paused?

      # Check exempt switch
      if DynamicDifficulty::BUILDING_EXEMPT_SWITCH
        return if $game_switches[DynamicDifficulty::BUILDING_EXEMPT_SWITCH] rescue false
      end

      tier = effective_tier
      return unless tier
      return unless DynamicDifficulty::TEAM_BUILD_TIERS.include?(tier)

      # Check trainer class exemption
      trainer_class = extract_trainer_class(battle)
      if trainer_class && DynamicDifficulty::BUILDING_EXEMPT_TRAINERS.include?(trainer_class)
        DynamicDifficulty.log("TeamBuilder: #{trainer_class} is exempt — skipping")
        return
      end

      # Resolve pool group for this trainer class
      pool_key = resolve_pool(trainer_class)
      unless pool_key
        DynamicDifficulty.log("TeamBuilder: no pool mapped for #{trainer_class} — skipping")
        return
      end

      # Determine progression stage from badges
      stage = resolve_progression

      # Look up species pool
      pool = DynamicDifficulty::SPECIES_POOLS.dig(pool_key, stage)
      if pool.nil? || pool.empty?
        DynamicDifficulty.log("TeamBuilder: empty pool #{pool_key}/#{stage} — skipping")
        return
      end

      # Determine team size for this tier + progression
      team_size = resolve_team_size(tier, stage)

      # Select species with type diversity
      selected = select_species(pool, team_size)
      return if selected.empty?

      # Get player level reference
      player_party = battle.pbParty(0)
      player_levels = player_party.select { |p| p && !p.egg? }.map(&:level)
      return if player_levels.empty?

      avg_player_level = (player_levels.sum.to_f / player_levels.size).round
      max_player_level = player_levels.max

      # Get opponent trainer object for ownership
      opponent = battle.opponent
      trainer_obj = opponent.is_a?(Array) ? opponent[0] : opponent

      # Build Pokémon objects
      new_party = []
      selected.each_with_index do |species, i|
        pkmn = build_pokemon(species, tier, avg_player_level, max_player_level,
                             team_size, i, trainer_obj)
        next unless pkmn

        # Apply a competitive set if one exists for this species + tier
        if DynamicDifficulty::COMPETITIVE_SETS_ENABLED
          species_sym = species.is_a?(Hash) ? species[:species] : species
          form = species.is_a?(Hash) ? (species[:form] || 0) : 0
          set = CompetitiveSets.find_best_set(species_sym, tier, form, :singles)
          CompetitiveSets.apply_set(pkmn, set) if set
        end

        new_party << pkmn
      end

      return if new_party.empty?

      # SC FIX (review M9): use Array#replace for an in-place swap, and avoid
      # double-clearing when both arrays already share the same backing store
      # (which they often do, depending on Essentials internals).
      opp_party = battle.pbParty(1)
      opp_party.replace(new_party)

      # Also update NPCTrainer's party reference so it stays in sync, but only
      # if it's a different array — otherwise we'd just clobber what we just set.
      if trainer_obj.respond_to?(:party) && !trainer_obj.party.equal?(opp_party)
        trainer_obj.party.replace(new_party)
      end

      DynamicDifficulty.log(
        "TeamBuilder: built #{new_party.size}-mon team from :#{pool_key}/#{stage} " \
        "for tier #{tier} (#{new_party.map { |p| p.species }.join(', ')})"
      )
    end

    #===========================================================================
    # Pool Resolution — maps trainer class → pool group
    #===========================================================================

    def self.resolve_pool(trainer_class)
      return nil unless trainer_class
      DynamicDifficulty::CLASS_POOL_MAP[trainer_class]
    end

    #===========================================================================
    # Progression Resolution — badges → :early / :mid / :late
    #===========================================================================

    def self.resolve_progression
      badges = $player&.badge_count rescue 0
      mapping = DynamicDifficulty::PROGRESSION_BADGES
      # Find the highest badge threshold ≤ current badges
      result = :early
      mapping.keys.sort.each do |threshold|
        result = mapping[threshold] if badges >= threshold
      end
      result
    end

    #===========================================================================
    # Team Size — tier × progression → [min, max] → rand
    #===========================================================================

    def self.resolve_team_size(tier, stage)
      config = DynamicDifficulty::TEAM_SIZE_CONFIG.dig(tier, stage)
      config ||= [2, 3]
      rand(config[0]..config[1])
    end

    #===========================================================================
    # Species Selection — picks from pool with type diversity
    #===========================================================================
    # Avoids stacking too many Pokémon that share primary types.
    # Each species is picked at most once per team.
    #===========================================================================

    def self.select_species(pool, count)
      return [] if pool.empty? || count <= 0

      # Cap to pool size
      count = [count, pool.size].min

      selected = []
      type_counts = Hash.new(0)
      shuffled = pool.shuffle

      # First pass: prefer species that add new types
      shuffled.each do |entry|
        break if selected.size >= count
        species_sym = entry.is_a?(Hash) ? entry[:species] : entry
        next if selected.any? { |s| (s.is_a?(Hash) ? s[:species] : s) == species_sym }

        types = species_types(species_sym)
        # Penalty for type stacking — skip if any type already has 2+ representatives
        if types.any? { |t| type_counts[t] >= 2 }
          next if shuffled.size > count  # Only skip if we have alternatives
        end

        selected << entry
        types.each { |t| type_counts[t] += 1 }
      end

      # Second pass: fill remaining slots if first pass was too restrictive
      if selected.size < count
        remaining = shuffled.reject { |e|
          sym = e.is_a?(Hash) ? e[:species] : e
          selected.any? { |s| (s.is_a?(Hash) ? s[:species] : s) == sym }
        }
        remaining.each do |entry|
          break if selected.size >= count
          selected << entry
        end
      end

      selected
    end

    #===========================================================================
    # Build a single Pokémon object
    #===========================================================================
    # Creates a ready-to-battle Pokémon from a species pool entry.
    # Level is derived from the player's party with small variance.
    # Moves come from the species' level-up learnset (reset_moves).
    # Pro/Extreme tiers supplement with STAB tutor moves.
    #===========================================================================

    def self.build_pokemon(entry, tier, avg_plv, max_plv, team_size, index, trainer)
      species_sym = entry.is_a?(Hash) ? entry[:species] : entry
      form        = entry.is_a?(Hash) ? (entry[:form] || 0) : 0

      # Validate species exists
      return nil unless GameData::Species.exists?(species_sym)

      # Calculate level — base from player party, small variance for natural feel
      base_level = avg_plv
      variance = rand(-2..2)
      level = (base_level + variance).clamp(
        DynamicDifficulty::MIN_SCALED_LEVEL,
        DynamicDifficulty::MAX_SCALED_LEVEL
      )

      # Create the Pokémon object
      pkmn = Pokemon.new(species_sym, level, trainer, false)

      # Set form if specified
      if form > 0
        if MultipleForms.respond_to?(:hasFunction?) &&
           MultipleForms.hasFunction?(species_sym, "getForm")
          pkmn.forced_form = form
        end
        pkmn.form_simple = form if pkmn.respond_to?(:form_simple=)
      end

      # Set moves — level-up learnset first
      pkmn.reset_moves

      # For Pro/Extreme, supplement with STAB moves from tutor list
      supplement_moves(pkmn, tier) if tier >= 3

      # Set a random legal ability (index 0 or 1)
      pkmn.ability_index = rand(2)

      # IVs/EVs/nature/items are left for TeamScaler to handle
      # Just set baseline IVs based on tier so uncached mons aren't random 31s
      range = DynamicDifficulty::IV_RANGES[tier] || [15, 20]
      GameData::Stat.each_main do |stat|
        pkmn.iv[stat.id] = rand(range[0]..range[1])
      end

      pkmn.calc_stats
      pkmn
    end

    #===========================================================================
    # Move Supplementation — adds STAB coverage for high tiers
    #===========================================================================
    # For Pro/Extreme tiers, checks tutor_moves for STAB moves the Pokémon
    # doesn't already know, and learns the strongest ones.
    #===========================================================================

    def self.supplement_moves(pkmn, tier)
      species_data = GameData::Species.get_species_form(pkmn.species, pkmn.form) rescue nil
      species_data ||= GameData::Species.get(pkmn.species) rescue nil
      return unless species_data

      types = species_data.types || []
      return if types.empty?

      # Gather tutor/TM moves
      tutor_moves = species_data.tutor_moves rescue []
      return if tutor_moves.nil? || tutor_moves.empty?

      # Find STAB moves the Pokémon doesn't already know
      known_ids = pkmn.moves.map(&:id)
      stab_candidates = tutor_moves.select do |move_sym|
        next false if known_ids.include?(move_sym)
        move_data = GameData::Move.get(move_sym) rescue nil
        next false unless move_data
        # Must be STAB (matches one of the Pokémon's types)
        types.include?(move_data.type)
      end

      return if stab_candidates.empty?

      # Sort by base power descending — prefer strong STAB moves
      stab_candidates.sort_by! do |move_sym|
        move_data = GameData::Move.get(move_sym) rescue nil
        -(move_data&.power || 0)
      end

      # For Extreme tier, also grab a coverage move (non-STAB, high power)
      coverage_candidates = []
      if tier >= 4
        coverage_candidates = tutor_moves.select do |move_sym|
          next false if known_ids.include?(move_sym)
          next false if stab_candidates.include?(move_sym)
          move_data = GameData::Move.get(move_sym) rescue nil
          next false unless move_data
          move_data.power && move_data.power >= 60
        end
        coverage_candidates.sort_by! do |move_sym|
          move_data = GameData::Move.get(move_sym) rescue nil
          -(move_data&.power || 0)
        end
      end

      # Learn the best STAB move (replace weakest current move)
      best_stab = stab_candidates.first
      if best_stab
        replace_weakest_move(pkmn, best_stab)
      end

      # For Extreme: also learn a coverage move
      if tier >= 4 && !coverage_candidates.empty?
        replace_weakest_move(pkmn, coverage_candidates.first)
      end
    end

    # Replaces the weakest move (by base power) if the new one is stronger
    def self.replace_weakest_move(pkmn, new_move_sym)
      return if pkmn.moves.any? { |m| m.id == new_move_sym }

      new_data = GameData::Move.get(new_move_sym) rescue nil
      return unless new_data

      if pkmn.moves.size < Pokemon::MAX_MOVES
        pkmn.learn_move(new_move_sym)
        return
      end

      # Find the weakest existing move (by power; status = 0)
      weakest_idx = nil
      weakest_power = Float::INFINITY
      pkmn.moves.each_with_index do |move, i|
        mdata = GameData::Move.get(move.id) rescue nil
        power = mdata ? (mdata.power || 0) : 0
        if power < weakest_power
          weakest_power = power
          weakest_idx = i
        end
      end

      # Only replace if the new move is actually stronger
      return unless weakest_idx
      new_power = new_data.power || 0
      return if new_power <= weakest_power

      pkmn.moves[weakest_idx] = Pokemon::Move.new(new_move_sym)
    end

    #===========================================================================
    # Helpers
    #===========================================================================

    # Returns the types for a species (used for diversity checks)
    def self.species_types(species_sym)
      sp = GameData::Species.get(species_sym) rescue nil
      return [] unless sp
      sp.types || []
    end

    # Returns the effective tier override (with badge cap)
    def self.effective_tier
      override = TierEngine.current_override_value
      override = TierEngine.apply_badge_cap(override) if override
      override
    end

    # Extracts the trainer class symbol from the battle
    def self.extract_trainer_class(battle)
      if battle.opponent.is_a?(Array)
        battle.opponent[0]&.trainer_type rescue nil
      else
        battle.opponent&.trainer_type rescue nil
      end
    end
  end
end
