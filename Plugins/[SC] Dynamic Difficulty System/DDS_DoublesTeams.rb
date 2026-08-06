#===============================================================================
# Dynamic Difficulty System — Doubles Teams
# Pre-built doubles cores with synergy, from simple tier-1 pairs to
# full VGC-style tier-4 compositions.
#
# Each team entry defines a core of 2–6 Pokémon designed to work together
# in doubles format. The TeamBuilder uses these when a doubles battle is
# detected (or forced via settings) at any tier.
#
# Structure:
#   name:    Human-readable label (for logging)
#   tier:    Minimum DDS tier required to use this team (3 or 4)
#   core:    Array of species symbols that form the team
#   lead:    Array of 2 species symbols — preferred lead pair
#   style:   Team archetype (:weather, :trickroom, :offense, :balance,
#            :hyper_offense, :goodstuff)
#===============================================================================

module DynamicDifficulty
  module DoublesTeams

    TEAMS = [
      #=========================================================================
      # WEATHER — SUN
      #=========================================================================
      {
        name: "Sun Offense",
        tier: 3,
        style: :weather,
        core: [:TORKOAL, :VENUSAUR, :CHARIZARD, :ARCANINE, :HATTERENE, :TSAREENA],
        lead: [:TORKOAL, :VENUSAUR],
      },
      {
        name: "Drought Nuke",
        tier: 4,
        style: :weather,
        core: [:TORKOAL, :VENUSAUR, :INCINEROAR, :RILLABOOM, :GRIMMSNARL, :DRAGAPULT],
        lead: [:TORKOAL, :VENUSAUR],
      },

      #=========================================================================
      # WEATHER — RAIN
      #=========================================================================
      {
        name: "Rain Rush",
        tier: 3,
        style: :weather,
        core: [:PELIPPER, :LUDICOLO, :KINGDRA, :RAICHU, :FERROTHORN, :AMOONGUSS],
        lead: [:PELIPPER, :LUDICOLO],
      },
      {
        name: "Swift Swim Rain",
        tier: 4,
        style: :weather,
        core: [:PELIPPER, :KINGDRA, :LUDICOLO, :RILLABOOM, :INCINEROAR, :ARAQUANID],
        lead: [:PELIPPER, :KINGDRA],
      },

      #=========================================================================
      # WEATHER — SAND
      #=========================================================================
      {
        name: "Sand Rush",
        tier: 3,
        style: :weather,
        core: [:TYRANITAR, :EXCADRILL, :GASTRODON, :TOGEKISS, :CONKELDURR, :FERROTHORN],
        lead: [:TYRANITAR, :EXCADRILL],
      },
      {
        name: "Sand Core",
        tier: 4,
        style: :weather,
        core: [:TYRANITAR, :EXCADRILL, :RILLABOOM, :INCINEROAR, :DRAGAPULT, :AMOONGUSS],
        lead: [:TYRANITAR, :EXCADRILL],
      },

      #=========================================================================
      # WEATHER — HAIL / SNOW
      #=========================================================================
      {
        name: "Aurora Veil Hail",
        tier: 3,
        style: :weather,
        core: [:NINETALES_1, :SANDSLASH_1, :MAMOSWINE, :CLEFABLE, :ARCANINE, :BRELOOM],
        lead: [:NINETALES_1, :SANDSLASH_1],
      },
      {
        name: "Snow Offense",
        tier: 4,
        style: :weather,
        core: [:NINETALES_1, :ARCTOZOLT, :SANDSLASH_1, :INCINEROAR, :RILLABOOM, :DRAGAPULT],
        lead: [:NINETALES_1, :ARCTOZOLT],
      },

      #=========================================================================
      # TRICK ROOM
      #=========================================================================
      {
        name: "Trick Room Smash",
        tier: 3,
        style: :trickroom,
        core: [:HATTERENE, :COPPERAJAH, :TORKOAL, :ORANGURU, :CONKELDURR, :DUSCLOPS],
        lead: [:HATTERENE, :ORANGURU],
      },
      {
        name: "Trick Room Turbo",
        tier: 4,
        style: :trickroom,
        core: [:HATTERENE, :COPPERAJAH, :TORKOAL, :INCINEROAR, :AMOONGUSS, :DUSCLOPS],
        lead: [:DUSCLOPS, :INCINEROAR],
      },

      #=========================================================================
      # HYPER OFFENSE
      #=========================================================================
      {
        name: "Hyper Offense Core",
        tier: 3,
        style: :hyper_offense,
        core: [:DRAGAPULT, :GRIMMSNARL, :EXCADRILL, :TOGEKISS, :GYARADOS, :ARCANINE],
        lead: [:GRIMMSNARL, :DRAGAPULT],
      },
      {
        name: "All-Out Attacker",
        tier: 4,
        style: :hyper_offense,
        core: [:DRAGAPULT, :GRIMMSNARL, :RILLABOOM, :INCINEROAR, :KINGAMBIT, :IRONHANDS],
        lead: [:GRIMMSNARL, :DRAGAPULT],
      },

      #=========================================================================
      # GOODSTUFF / BALANCE
      #=========================================================================
      {
        name: "Balanced Goodstuff",
        tier: 3,
        style: :goodstuff,
        core: [:INCINEROAR, :RILLABOOM, :TOGEKISS, :GASTRODON, :MILOTIC, :LUCARIO],
        lead: [:INCINEROAR, :TOGEKISS],
      },
      {
        name: "VGC Goodstuff",
        tier: 4,
        style: :goodstuff,
        core: [:INCINEROAR, :RILLABOOM, :AMOONGUSS, :KINGAMBIT, :ARMAROUGE, :MAUSHOLD],
        lead: [:INCINEROAR, :RILLABOOM],
      },
      {
        name: "Bulky Offense",
        tier: 3,
        style: :balance,
        core: [:SLOWBRO, :SCIZOR, :HITMONTOP, :MILOTIC, :METAGROSS, :ARCANINE],
        lead: [:HITMONTOP, :MILOTIC],
      },
      {
        name: "Intimidate Cycle",
        tier: 4,
        style: :balance,
        core: [:INCINEROAR, :HITMONTOP, :ARCANINE, :AMOONGUSS, :KINGDRA, :METAGROSS],
        lead: [:INCINEROAR, :HITMONTOP],
      },

      #=========================================================================
      # TAILWIND
      #=========================================================================
      {
        name: "Tailwind Rush",
        tier: 3,
        style: :offense,
        core: [:WHIMSICOTT, :GARCHOMP, :ARCANINE, :GYARADOS, :METAGROSS, :TOGEKISS],
        lead: [:WHIMSICOTT, :GARCHOMP],
      },
      {
        name: "Tailwind Control",
        tier: 4,
        style: :offense,
        core: [:WHIMSICOTT, :GARCHOMP, :INCINEROAR, :RILLABOOM, :DRAGAPULT, :SYLVEON],
        lead: [:WHIMSICOTT, :DRAGAPULT],
      },

      #=========================================================================
      # TIER 1 — Beginner doubles: simple pairs, no synergy required
      #=========================================================================
    {
      name: "Bug Buddies",
      tier: 1,
      style: :simple,
      core: [:CATERPIE, :WEEDLE, :LEDYBA, :SPINARAK],
      lead: [:CATERPIE, :WEEDLE],
    },
    {
      name: "Route 1 Duo",
      tier: 1,
      style: :simple,
      core: [:RATTATA, :PIDGEY, :SENTRET, :ZIGZAGOON],
      lead: [:RATTATA, :PIDGEY],
    },
    {
      name: "Playground Scrap",
      tier: 1,
      style: :simple,
      core: [:MACHOP, :GEODUDE, :SANDSHREW, :MANKEY],
      lead: [:MACHOP, :GEODUDE],
    },
    {
      name: "Little Sparks",
      tier: 1,
      style: :simple,
      core: [:PIKACHU, :SHINX, :MAGNEMITE, :VOLTORB],
      lead: [:PIKACHU, :SHINX],
    },
    {
      name: "Baby Ghosts",
      tier: 1,
      style: :simple,
      core: [:GASTLY, :SHUPPET, :DUSKULL, :DRIFLOON],
      lead: [:GASTLY, :SHUPPET],
    },
    {
      name: "Little Garden",
      tier: 1,
      style: :simple,
      core: [:ODDISH, :BELLSPROUT, :BUDEW, :HOPPIP],
      lead: [:ODDISH, :BELLSPROUT],
    },

    #=========================================================================
    # TIER 2 — Mid doubles: basic combos, early evolutions
    #=========================================================================
    {
      name: "Intimidate Pair",
      tier: 2,
      style: :offense,
      core: [:GROWLITHE, :STARAVIA, :MACHOKE, :GOLBAT, :GRAVELER, :HAUNTER],
      lead: [:GROWLITHE, :STARAVIA],
    },
    {
      name: "Follow Me Basics",
      tier: 2,
      style: :balance,
      core: [:CLEFAIRY, :MARILL, :KADABRA, :ROSELIA, :KROKOROK, :TOGETIC],
      lead: [:CLEFAIRY, :MARILL],
    },
    {
      name: "Prankster Pressure",
      tier: 2,
      style: :offense,
      core: [:MURKROW, :COTTONEE, :LUXIO, :MISDREAVUS, :SEADRA, :GABITE],
      lead: [:MURKROW, :COTTONEE],
    },
    {
      name: "Rock Steady",
      tier: 2,
      style: :balance,
      core: [:ONIX, :BOLDORE, :RHYHORN, :POLIWHIRL, :NOCTOWL, :ARBOK],
      lead: [:ONIX, :RHYHORN],
    },
    {
      name: "Water Route",
      tier: 2,
      style: :balance,
      core: [:GOLDUCK, :SEADRA, :LOMBRE, :STARAVIA, :LAMPENT, :MACHOKE],
      lead: [:GOLDUCK, :SEADRA],
    },
    {
      name: "Dark Alley",
      tier: 2,
      style: :offense,
      core: [:MIGHTYENA, :KROKOROK, :HAUNTER, :GOLBAT, :METANG, :PUPITAR],
      lead: [:MIGHTYENA, :KROKOROK],
    },
    ]

    #=========================================================================
    # Lookup
    #=========================================================================

    # Find a random doubles team that matches the given tier.
    # @param tier [Integer] DDS tier (1-4)
    # @param style [Symbol, nil] optional archetype filter
    # @return [Hash, nil]
    def self.find_team(tier, style = nil)
      candidates = TEAMS.select { |t| t[:tier] <= tier }
      if style
        styled = candidates.select { |t| t[:style] == style }
        candidates = styled unless styled.empty?
      end
      return nil if candidates.empty?
      candidates.sample
    end

    # Resolve lead pair from a team definition.
    # Returns the 2 lead species first, then the remaining bench species.
    # @param team [Hash] a TEAMS entry
    # @return [Array<Symbol>] ordered species list (leads first)
    def self.ordered_species(team)
      leads = team[:lead] || team[:core][0..1]
      bench = team[:core] - leads
      leads + bench.shuffle
    end

    #=========================================================================
    # Build — creates a full party from a doubles team definition
    #=========================================================================

    # @param team   [Hash]    a TEAMS entry
    # @param tier   [Integer] DDS tier
    # @param battle [Battle]  for player level reference
    # @return [Array<Pokemon>]
    def self.build_doubles_team(team, tier, battle)
      return [] unless team

      # Player level reference
      player_party = battle.pbParty(0)
      player_levels = player_party.select { |p| p && !p.egg? }.map(&:level)
      return [] if player_levels.empty?

      avg_plv = (player_levels.sum.to_f / player_levels.size).round
      max_plv = player_levels.max

      # Trainer for ownership
      opponent = battle.opponent
      trainer_obj = opponent.is_a?(Array) ? opponent[0] : opponent

      species_list = ordered_species(team)
      party = []

      species_list.each_with_index do |species_sym, i|
        next unless GameData::Species.exists?(species_sym)

        # Level with small variance
        variance = rand(-1..1)
        level = (avg_plv + variance).clamp(
          DynamicDifficulty::MIN_SCALED_LEVEL,
          DynamicDifficulty::MAX_SCALED_LEVEL
        )

        pkmn = Pokemon.new(species_sym, level, trainer_obj, false)
        pkmn.reset_moves

        # Apply competitive doubles set if available
        set = CompetitiveSets.find_best_set(species_sym, tier, 0, :doubles)
        if set
          CompetitiveSets.apply_set(pkmn, set)
        else
          # Fallback: try singles set
          set = CompetitiveSets.find_best_set(species_sym, tier, 0, :singles)
          CompetitiveSets.apply_set(pkmn, set) if set
        end

        party << pkmn
      end

      party
    end
  end
end
