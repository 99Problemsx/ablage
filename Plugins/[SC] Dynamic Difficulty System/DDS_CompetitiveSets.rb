#===============================================================================
# Dynamic Difficulty System — Competitive Sets Core
# Lookup module + set application logic.
#
# SETS hash is populated by DDS_Sets_Gen*.rb files (loaded alphabetically).
# The TeamBuilder calls find_set() to get a tier-appropriate set, then
# apply_set() writes ability / nature / item / moves / EVs onto the
# live Pokémon object.
#===============================================================================

module DynamicDifficulty
  module CompetitiveSets
    # Master hash — populated by gen data files via merge!
    # Key = species symbol, Value = Array of set hashes
    SETS = {}

    # Track which mons already had a competitive set applied so
    # TeamScaler doesn't overwrite ability / nature / item / EVs.
    @applied_ids = []

    #=========================================================================
    # Lookup
    #=========================================================================

    # Find a random set matching species + tier + form.
    # @param species [Symbol]
    # @param tier    [Integer] 1 = Beginner, 2 = Mid, 3 = Pro, 4 = Extreme
    # @param form    [Integer] 0 = base
    # @param format  [Symbol]  :singles, :doubles, :any
    # @return [Hash, nil]
    def self.find_set(species, tier, form = 0, format = :singles)
      entries = SETS[species]
      return nil unless entries

      # Filter by tier, form, format
      matching = entries.select do |s|
        s[:tier] == tier &&
          (s[:form] || 0) == form &&
          ((s[:format] || :singles) == format || s[:format] == :any)
      end

      # Relax format filter if nothing found
      if matching.empty?
        matching = entries.select do |s|
          s[:tier] == tier && (s[:form] || 0) == form
        end
      end

      return nil if matching.empty?
      matching.sample
    end

    # Try exact tier first, then fall back to nearest adjacent tier.
    # Order: exact → ±1 → ±2 → ±3 (never skips wildly across tiers)
    def self.find_best_set(species, tier, form = 0, format = :singles)
      set = find_set(species, tier, form, format)
      return set if set

      # Try adjacent tiers in order of proximity
      [1, -1, 2, -2, 3, -3].each do |offset|
        alt = tier + offset
        next if alt < 1 || alt > 4
        set = find_set(species, alt, form, format)
        return set if set
      end

      nil
    end

    #=========================================================================
    # Application — writes set data onto a live Pokémon object
    #=========================================================================

    def self.apply_set(pkmn, set)
      return false unless set

      # --- Ability ---
      if set[:ability]
        if GameData::Ability.exists?(set[:ability])
          pkmn.ability = set[:ability]
        end
      end

      # --- Nature ---
      if set[:nature]
        if GameData::Nature.exists?(set[:nature])
          pkmn.nature = set[:nature]
        end
      end

      # --- Item ---
      if set[:item]
        if GameData::Item.exists?(set[:item])
          pkmn.item = set[:item]
        end
      end

      # --- Moves ---
      if set[:moves] && !set[:moves].empty?
        # Clear current moves
        pkmn.moves.clear
        learned = 0
        set[:moves].each do |move_sym|
          next unless move_sym
          if GameData::Move.exists?(move_sym)
            pkmn.learn_move(move_sym)
            learned += 1
          end
        end
        # Fallback if none of the set's moves existed in this game
        pkmn.reset_moves if learned == 0
      end

      # --- EVs ---
      if set[:evs]
        GameData::Stat.each_main do |stat|
          pkmn.ev[stat.id] = set[:evs][stat.id] || 0
        end
      end

      # Recalculate stats
      pkmn.calc_stats

      # Mark this mon so TeamScaler doesn't overwrite our work
      mark_applied(pkmn)

      DynamicDifficulty.log(
        "CompetitiveSets: applied #{set[:ability]}/#{set[:nature]}/#{set[:item]} " \
        "to #{pkmn.species} (tier #{set[:tier]})"
      )
      true
    end

    #=========================================================================
    # Applied-tracking — prevents TeamScaler from overwriting set data
    #=========================================================================

    def self.mark_applied(pkmn)
      @applied_ids << pkmn.object_id
    end

    def self.set_applied?(pkmn)
      @applied_ids.include?(pkmn.object_id)
    end

    def self.clear_applied
      @applied_ids.clear
    end

    #=========================================================================
    # Utility
    #=========================================================================

    def self.has_set?(species)
      SETS.key?(species)
    end

    def self.count
      SETS.size
    end

    def self.total_sets
      SETS.values.sum(&:size)
    end
  end
end
