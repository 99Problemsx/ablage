#===============================================================================
# Dynamic Difficulty System - Team Scaler
# Dynamically adjusts opponent trainer teams based on the player's DDS tier.
#
# Beginner / Mid  → weaker levels, worse IVs, stripped items
# Natural         → no changes (game plays as the designer intended)
# Pro / Extreme   → competitive IVs, EVs, natures, items, level-matched
#===============================================================================

module DynamicDifficulty
  module TeamScaler
    #===========================================================================
    # Main Entry Point — called from BattleHooks.before_battle
    #===========================================================================

    # @param battle [Battle] the Essentials battle object (parties already loaded)
    def self.scale_team(battle)
      return unless DynamicDifficulty::ENABLED
      return unless DynamicDifficulty::TEAM_SCALING_ENABLED
      return unless $PokemonSystem&.dynamic_difficulty == 1
      return if DynamicDifficulty.paused?

      # Check exempt switch
      if DynamicDifficulty::SCALING_EXEMPT_SWITCH
        return if $game_switches[DynamicDifficulty::SCALING_EXEMPT_SWITCH] rescue false
      end

      tier = effective_tier
      return unless tier   # nil = Natural tier → no scaling

      # Check if this trainer class is exempt
      trainer_class = extract_trainer_class(battle)
      if trainer_class && DynamicDifficulty::SCALING_EXEMPT_TRAINERS.include?(trainer_class)
        DynamicDifficulty.log("TeamScaler: trainer class #{trainer_class} is exempt — skipping")
        return
      end

      # Gather player level data
      player_party = battle.pbParty(0)
      player_levels = player_party.select { |p| p && !p.egg? }.map(&:level)
      return if player_levels.empty?

      avg_player_level = (player_levels.sum.to_f / player_levels.size).round
      max_player_level = player_levels.max

      # Compute opponent team's original average for offset-based scaling
      opponent_party = battle.pbParty(1)
      opp_mons = opponent_party.select { |p| p && !p.egg? }
      return if opp_mons.empty?

      opp_avg_level = (opp_mons.sum(&:level).to_f / opp_mons.size).round

      # Track items already assigned to avoid too many duplicates
      assigned_items = []

      # Scale each opponent Pokémon
      opp_mons.each do |pkmn|
        scale_pokemon(pkmn, tier, avg_player_level, max_player_level,
                      opp_avg_level, assigned_items)
      end

      DynamicDifficulty.log("TeamScaler: scaled #{opp_mons.size} Pokémon for tier #{tier}")
    end

    #===========================================================================
    # Per-Pokémon Scaling Pipeline
    #===========================================================================

    def self.scale_pokemon(pkmn, tier, avg_plv, max_plv, opp_avg, assigned_items)
      # Level scaling always applies
      scale_level(pkmn, tier, avg_plv, max_plv, opp_avg)

      # If a competitive set was applied by TeamBuilder / CompetitiveSets,
      # skip IVs/EVs/nature/item so we don't overwrite curated builds.
      unless CompetitiveSets.set_applied?(pkmn)
        scale_ivs(pkmn, tier)
        scale_evs(pkmn, tier)
        scale_nature(pkmn, tier)
        scale_item(pkmn, tier, assigned_items)
      end

      # Recalculate stats with new IVs / EVs / level / nature
      pkmn.calc_stats
    end

    #===========================================================================
    # Level Scaling
    #===========================================================================
    # Computes a target level from the player's party, applies an offset per
    # tier, then shifts each mon relative to the team's original average so
    # level variance within the team is preserved.
    #===========================================================================

    def self.scale_level(pkmn, tier, avg_plv, max_plv, opp_avg)
      config = DynamicDifficulty::LEVEL_SCALE_CONFIG[tier]
      return unless config

      reference = config[:base] == :max ? max_plv : avg_plv
      target_avg = reference + config[:offset]

      # Offset preserves inter-team level gaps
      offset = target_avg - opp_avg
      new_level = pkmn.level + offset

      # Clamp
      new_level = new_level.clamp(
        DynamicDifficulty::MIN_SCALED_LEVEL,
        DynamicDifficulty::MAX_SCALED_LEVEL
      )

      # Pro/Extreme: never lower a mon below its original level
      if config[:only_up] && new_level < pkmn.level
        return
      end

      DynamicDifficulty.log("  Level: #{pkmn.species} #{pkmn.level} → #{new_level}")
      pkmn.level = new_level
    end

    #===========================================================================
    # IV Scaling
    #===========================================================================

    def self.scale_ivs(pkmn, tier)
      range = DynamicDifficulty::IV_RANGES[tier]
      return unless range

      GameData::Stat.each_main do |stat|
        pkmn.iv[stat.id] = rand(range[0]..range[1])
      end
    end

    #===========================================================================
    # EV Scaling
    #===========================================================================

    def self.scale_evs(pkmn, tier)
      mode = DynamicDifficulty::EV_MODES[tier]
      return unless mode

      case mode
      when :clear
        GameData::Stat.each_main do |stat|
          pkmn.ev[stat.id] = 0
        end
      when :competitive
        apply_competitive_evs(pkmn)
      end
    end

    def self.apply_competitive_evs(pkmn)
      role = detect_role(pkmn)
      spread = DynamicDifficulty::EV_SPREADS[role] ||
               DynamicDifficulty::EV_SPREADS[:balanced]

      GameData::Stat.each_main do |stat|
        pkmn.ev[stat.id] = spread[stat.id] || 0
      end
    end

    #===========================================================================
    # Nature Optimization (Pro / Extreme only)
    #===========================================================================

    def self.scale_nature(pkmn, tier)
      return unless tier >= 3

      role = detect_role(pkmn)
      natures = DynamicDifficulty::ROLE_NATURES[role]
      return unless natures

      # Extreme (4) → index 0 (speed-boosting), Pro (3) → index 1 (power)
      pick = tier >= 4 ? natures[0] : natures[1]

      # For :balanced role, pick based on dominant offensive stat
      if role == :balanced
        base = base_stats(pkmn)
        pick = base[:ATTACK] >= base[:SPECIAL_ATTACK] ? :ADAMANT : :MODEST
      end

      return unless pick && GameData::Nature.exists?(pick)
      pkmn.nature = pick
    end

    #===========================================================================
    # Item Scaling
    #===========================================================================

    def self.scale_item(pkmn, tier, assigned_items)
      case tier
      when 1   # Beginner — strip to basic berry or nothing
        pick = DynamicDifficulty::BEGINNER_ITEMS.sample
        pkmn.item = pick
      when 2   # Mid — keep existing item; give a basic berry if none
        unless pkmn.item
          pkmn.item = DynamicDifficulty::MID_ITEMS.sample
        end
      when 3   # Pro — upgrade to role-based competitive item (random)
        upgrade_item(pkmn, :random, assigned_items)
      when 4   # Extreme — best-in-slot for role
        upgrade_item(pkmn, :best, assigned_items)
      end
    end

    # Assigns a competitive item based on the Pokémon's detected role.
    # @param mode [:best, :random]
    def self.upgrade_item(pkmn, mode, assigned_items)
      role = detect_role(pkmn)
      pool = DynamicDifficulty::COMPETITIVE_ITEMS[role] ||
             DynamicDifficulty::COMPETITIVE_ITEMS[:balanced]
      return if pool.nil? || pool.empty?

      # Filter to items that actually exist in this game's data
      available = pool.select { |item| item && GameData::Item.exists?(item) }
      return if available.empty?

      if mode == :best
        # Pick the first available item that isn't already on a teammate
        pick = available.find { |item| !assigned_items.include?(item) }
        pick ||= available.first   # fall back if all are taken
      else
        # Random pick, prefer items not already assigned
        unassigned = available.reject { |item| assigned_items.include?(item) }
        pool_to_use = unassigned.empty? ? available : unassigned
        pick = pool_to_use.sample
      end

      if pick
        pkmn.item = pick
        assigned_items << pick
        DynamicDifficulty.log("  Item: #{pkmn.species} → #{pick}")
      end
    end

    #===========================================================================
    # Role Detection — classifies a Pokémon by base stats
    #===========================================================================

    def self.detect_role(pkmn)
      stats = base_stats(pkmn)
      atk   = stats[:ATTACK]          || 80
      spa   = stats[:SPECIAL_ATTACK]  || 80
      spd   = stats[:SPEED]           || 80
      hp    = stats[:HP]              || 80
      dfn   = stats[:DEFENSE]         || 80
      spdef = stats[:SPECIAL_DEFENSE] || 80

      offense = [atk, spa].max
      bulk    = (hp + dfn + spdef) / 3.0

      if spd >= 80 && offense >= 90
        atk >= spa ? :physical_sweeper : :special_sweeper
      elsif bulk >= 85 && offense < 80
        dfn >= spdef ? :physical_wall : :special_wall
      elsif offense >= 90
        atk >= spa ? :bulky_physical : :bulky_special
      else
        :balanced
      end
    end

    #===========================================================================
    # Helpers
    #===========================================================================

    # Returns the base stats hash for a Pokémon, respecting form differences
    def self.base_stats(pkmn)
      species_data = GameData::Species.get_species_form(pkmn.species, pkmn.form) rescue nil
      species_data ||= GameData::Species.get(pkmn.species) rescue nil
      return {} unless species_data
      species_data.base_stats
    end

    # Returns the effective tier override (with badge cap applied)
    def self.effective_tier
      override = TierEngine.current_override_value
      override = TierEngine.apply_badge_cap(override) if override
      override
    end

    # Extracts the trainer class symbol from the battle's opponent
    def self.extract_trainer_class(battle)
      if battle.opponent.is_a?(Array)
        battle.opponent[0]&.trainer_type rescue nil
      else
        battle.opponent&.trainer_type rescue nil
      end
    end
  end
end
