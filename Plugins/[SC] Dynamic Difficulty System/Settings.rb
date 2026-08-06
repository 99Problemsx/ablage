#===============================================================================
# Dynamic Difficulty System - Settings & Configuration
# Version: 1.4.0
# Integrates with [000_AAI] Advanced AI System
#===============================================================================

module DynamicDifficulty
  #=============================================================================
  # CORE SETTINGS
  #=============================================================================

  # Master switch — enables/disables the entire DDS
  ENABLED = true

  # Debug logging to console
  DEBUG_MODE = false

  #=============================================================================
  # PERFORMANCE SCORE BOUNDARIES
  #=============================================================================

  # Performance score is clamped to this range
  SCORE_MIN = -50
  SCORE_MAX =  50

  #=============================================================================
  # SCORE CHANGE TUNING
  #=============================================================================

  # Base score change per battle
  WIN_BASE  =  8
  LOSS_BASE = -8

  # Streak bonus: +/- STREAK_STEP per consecutive same-outcome battle
  STREAK_STEP = 2
  STREAK_CAP  = 8   # Max bonus from streaks

  # Dominance bonus caps (added on top of base + streak)
  DOMINANCE_WIN_CAP  =  6   # Max extra for crushing wins
  DOMINANCE_LOSS_CAP = -4   # Max extra for devastating losses

  # Decay: pulls score toward 0 each battle (prevents runaway difficulty)
  DECAY_RATE = 2

  #=============================================================================
  # GRACE PERIOD
  #=============================================================================
  # Number of trainer battles to ignore before DDS starts adjusting.
  # Gives the player time to settle in before the system kicks in.
  GRACE_PERIOD = 5

  #=============================================================================
  # TRAINER CLASS WEIGHTING
  #=============================================================================
  # Multiplier applied to the score delta based on opponent trainer class.
  # Losing to a Gym Leader shouldn't tank your score as hard as losing to a
  # Youngster, and beating one should reward more.
  #
  # Any trainer class not listed here defaults to 1.0.
  TRAINER_CLASS_WEIGHTS = {
    :LEADER      => 0.6,   # Gym Leaders — expected to be tough
    :ELITEFOUR   => 0.5,   # Elite Four
    :CHAMPION    => 0.4,   # Champion
    :RIVAL       => 0.8,   # Rival fights
    :BOSS        => 0.5,   # Custom boss trainers
    :YOUNGSTER   => 1.3,   # Easy trainers — losing hurts more, winning less
    :LASS        => 1.3,
    :BUGCATCHER  => 1.3,
  }

  # Default weight for trainer classes not in the table above
  TRAINER_CLASS_DEFAULT_WEIGHT = 1.0

  #=============================================================================
  # LEVEL DIFFERENCE SCALING
  #=============================================================================
  # When the player is significantly over- or under-levelled, dominance is
  # scaled down so stomping under-levelled trainers doesn't inflate the score.
  #
  # If avg_player_level - avg_opp_level >= LEVEL_GAP_THRESHOLD, the dominance
  # bonus is multiplied by LEVEL_GAP_REDUCTION (e.g. 0.3 = 30% of normal).
  LEVEL_GAP_THRESHOLD = 10
  LEVEL_GAP_REDUCTION = 0.3

  #=============================================================================
  # BADGE-BASED TIER CAP
  #=============================================================================
  # Prevents the AI from reaching extreme tiers too early in the story.
  # Maps badge count → maximum allowed tier override.
  # nil = no cap (any tier is allowed).
  BADGE_TIER_CAPS = {
    0 => 2,     # No badges: max Mid
    1 => 2,     # 1 badge:   max Mid
    2 => 3,     # 2 badges:  max Pro
    3 => 3,     # 3 badges:  max Pro
    4 => nil,   # 4+ badges: uncapped
  }

  # Returns the max tier override allowed for the current badge count
  def self.max_tier_for_badges
    badges = $player&.badge_count rescue 0
    # Find the highest matching key
    cap = nil
    BADGE_TIER_CAPS.keys.sort.reverse_each do |threshold|
      if badges >= threshold
        cap = BADGE_TIER_CAPS[threshold]
        break
      end
    end
    cap
  end

  #=============================================================================
  # OSCILLATION DAMPING
  #=============================================================================
  # Smooths score changes when the player is alternating wins and losses.
  # Uses a rolling window: if the last DAMPING_WINDOW battles alternate
  # W-L-W-L, the score delta is multiplied by DAMPING_FACTOR.
  DAMPING_WINDOW = 6
  DAMPING_FACTOR = 0.5

  #=============================================================================
  # TEAM SCALING
  #=============================================================================
  # When enabled, opponent trainer teams are dynamically scaled based on
  # the current DDS tier.  Beginner/Mid tiers weaken trainers; Pro/Extreme
  # tiers strengthen them with competitive-quality sets.
  #
  # Natural tier (no override) never scales — the game plays as designed.
  #=============================================================================

  # Master switch for team scaling (independent of DDS score tracking)
  TEAM_SCALING_ENABLED = true

  # Absolute level clamp — scaled levels will never exceed this
  MAX_SCALED_LEVEL = 100

  # Minimum level — scaled levels will never go below this
  MIN_SCALED_LEVEL = 2

  # Level target per tier.  :base selects the reference point from the
  # player's party; :offset is added to that reference.
  # For Beginner/Mid the offset is negative (weaker); Pro/Extreme positive.
  # :only_up means we never lower a mon below its original level (Pro/Extreme
  # shouldn't nerf a boss whose defined level is already high).
  LEVEL_SCALE_CONFIG = {
    1 => { base: :avg, offset: -3, only_up: false },   # Beginner
    2 => { base: :avg, offset: -1, only_up: false },   # Mid
    3 => { base: :avg, offset:  1, only_up: true  },   # Pro
    4 => { base: :max, offset:  2, only_up: true  },   # Extreme
  }

  # IV ranges per tier [min, max] — each stat is randomised in this range
  IV_RANGES = {
    1 => [0,  10],    # Beginner — weak IVs
    2 => [10, 20],    # Mid      — mediocre
    3 => [25, 31],    # Pro      — strong
    4 => [31, 31],    # Extreme  — perfect
  }

  # EV mode per tier
  #   :clear        — zero all EVs
  #   :keep         — leave EVs as defined in trainer data
  #   :competitive  — apply role-based 252/252/4 spreads
  EV_MODES = {
    1 => :clear,
    2 => :clear,
    3 => :competitive,
    4 => :competitive,
  }

  # Role-based EV spreads (used when EV_MODES[tier] == :competitive)
  EV_SPREADS = {
    physical_sweeper: { HP: 4,   ATTACK: 252, DEFENSE: 0,   SPECIAL_ATTACK: 0,   SPECIAL_DEFENSE: 0,   SPEED: 252 },
    special_sweeper:  { HP: 4,   ATTACK: 0,   DEFENSE: 0,   SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 0,   SPEED: 252 },
    physical_wall:    { HP: 252, ATTACK: 0,   DEFENSE: 252, SPECIAL_ATTACK: 0,   SPECIAL_DEFENSE: 4,   SPEED: 0   },
    special_wall:     { HP: 252, ATTACK: 0,   DEFENSE: 4,   SPECIAL_ATTACK: 0,   SPECIAL_DEFENSE: 252, SPEED: 0   },
    bulky_physical:   { HP: 252, ATTACK: 252, DEFENSE: 0,   SPECIAL_ATTACK: 0,   SPECIAL_DEFENSE: 4,   SPEED: 0   },
    bulky_special:    { HP: 252, ATTACK: 0,   DEFENSE: 0,   SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4,   SPEED: 0   },
    balanced:         { HP: 128, ATTACK: 0,   DEFENSE: 64,  SPECIAL_ATTACK: 0,   SPECIAL_DEFENSE: 64,  SPEED: 128 },
  }

  # Nature optimization — maps detected role → preferred natures
  # Index 0 = Extreme (speed-boosting), index 1 = Pro (power-boosting)
  ROLE_NATURES = {
    physical_sweeper: [:JOLLY,  :ADAMANT],
    special_sweeper:  [:TIMID,  :MODEST],
    physical_wall:    [:IMPISH, :IMPISH],
    special_wall:     [:CALM,   :CALM],
    bulky_physical:   [:ADAMANT,:ADAMANT],
    bulky_special:    [:MODEST, :MODEST],
    balanced:         [:ADAMANT,:MODEST],   # picks based on higher offensive stat
  }

  # Items assigned to Beginner-tier mons (nil = no item)
  BEGINNER_ITEMS = [nil, nil, :ORANBERRY, :SITRUSBERRY]

  # Items assigned to Mid-tier mons that don't already have one
  MID_ITEMS = [:SITRUSBERRY, :ORANBERRY, :RAWSTBERRY, :CHERIBERRY, :PECHABERRY]

  # Competitive items by role — Pro picks randomly, Extreme picks index 0
  COMPETITIVE_ITEMS = {
    physical_sweeper: [:CHOICEBAND,  :LIFEORB,    :CHOICESCARF, :MUSCLEBAND],
    special_sweeper:  [:CHOICESPECS, :LIFEORB,    :CHOICESCARF, :WISEGLASSES],
    physical_wall:    [:LEFTOVERS,   :ROCKYHELMET,:SITRUSBERRY],
    special_wall:     [:LEFTOVERS,   :ASSAULTVEST,:SITRUSBERRY],
    bulky_physical:   [:ASSAULTVEST, :LEFTOVERS,  :LIFEORB],
    bulky_special:    [:ASSAULTVEST, :LEFTOVERS,  :LIFEORB],
    balanced:         [:LEFTOVERS,   :SITRUSBERRY,:LIFEORB],
  }

  # Trainer classes that should NEVER be scaled (hand-crafted boss teams etc.)
  SCALING_EXEMPT_TRAINERS = [
    # :CHAMPION,   # uncomment to exempt Champions
    # :BOSS,       # uncomment to exempt custom boss class
  ]

  # Game Switch that, when ON, disables team scaling for the current battle.
  # Useful for event-scripted fights.  Set to nil to disable this check.
  SCALING_EXEMPT_SWITCH = nil   # e.g. 95

  #=============================================================================
  # TEAM BUILDING (from species pools)
  #=============================================================================
  # When enabled, the TeamBuilder module REPLACES the opponent's party with
  # Pokémon drawn from curated species pools that match the trainer's class
  # theme and the player's progression through the game.
  #
  # This runs BEFORE TeamScaler, so built teams still get full IV/EV/nature/
  # item optimisation.  Natural tier never triggers building.
  #=============================================================================

  # Master switch for pool-based team building
  TEAM_BUILDING_ENABLED = true

  # Which DDS tier overrides trigger team building
  # 1 = Beginner, 2 = Mid, 3 = Pro, 4 = Extreme
  TEAM_BUILD_TIERS = [1, 2, 3, 4]

  # Trainer types that should NEVER get rebuilt teams.
  # Boss fights, gym leaders, rivals, story trainers — anything hand-crafted.
  BUILDING_EXEMPT_TRAINERS = [
    # --- Kanto Gym Leaders ---
    :LEADER_Brock, :LEADER_Misty, :LEADER_Surge, :LEADER_Erika,
    :LEADER_Koga, :LEADER_Sabrina, :LEADER_Blaine, :LEADER_Giovanni,
    # --- Shattered Crowns Gym Leaders ---
    :LEADER_FLORA, :LEADER_MARINA, :LEADER_ROCKY, :LEADER_FROST,
    :LEADER_VOLT, :LEADER_TERRA, :LEADER_IRON, :LEADER_DRAKE,
    # --- Elite Four & Champion ---
    :ELITEFOUR_Lorelei, :ELITEFOUR_Bruno, :ELITEFOUR_Agatha,
    :ELITEFOUR_Lance, :CHAMPION,
    # --- Rivals ---
    :RIVAL1, :RIVAL2, :RIVAL_RAGNAR,
    # --- Story / Boss ---
    :GENERAL_SHADE, :MALACHAR, :CULT_LEADER,
    :GUARDIAN_ECHO, :SHADOW_SELF,
    :PROFESSOR_ALDRIC,
    # --- Companions & Testers ---
    :COMPANION_LYRA, :COMPANION_KAEL,
    :AITESTER_M, :AITESTER_F,
  ]

  # Game switch that, when ON, disables team building for that battle.
  BUILDING_EXEMPT_SWITCH = nil   # e.g. 96

  #=============================================================================
  # COMPETITIVE SETS (VGC-style builds for Pro/Extreme)
  #=============================================================================
  # When enabled, Pokémon built by TeamBuilder (or in DoublesTeams) receive
  # curated competitive movesets, abilities, natures, items, and EV spreads
  # from the DDS_Sets_Gen*.rb data files.
  #
  # Applied sets are protected from TeamScaler overwriting ability/nature/
  # item/EVs — only level scaling still applies.
  #=============================================================================

  # Master switch for competitive set application
  COMPETITIVE_SETS_ENABLED = true

  # Master switch for pre-built doubles team compositions
  # When enabled AND a doubles battle is detected, DoublesTeams replaces
  # the opponent's party with a synergistic core matching their tier.
  DOUBLES_TEAMS_ENABLED = true

  # Minimum DDS tier required for doubles teams to trigger (1 = Beginner)
  DOUBLES_TEAMS_MIN_TIER = 1

  #---------------------------------------------------------------------------
  # Progression — badge count → :early / :mid / :late
  #---------------------------------------------------------------------------
  PROGRESSION_BADGES = {
    0 => :early, 1 => :early, 2 => :early,
    3 => :mid,   4 => :mid,   5 => :mid,
    6 => :late,  7 => :late,  8 => :late,
  }

  #---------------------------------------------------------------------------
  # Team size [min, max] per DDS tier × progression stage
  #---------------------------------------------------------------------------
  TEAM_SIZE_CONFIG = {
    1 => { early: [1, 2], mid: [2, 3], late: [2, 3] },   # Beginner
    2 => { early: [2, 3], mid: [2, 3], late: [3, 4] },   # Mid
    3 => { early: [2, 3], mid: [3, 4], late: [4, 5] },   # Pro
    4 => { early: [3, 4], mid: [4, 5], late: [5, 6] },   # Extreme
  }

  #---------------------------------------------------------------------------
  # Trainer class → pool group mapping
  # Any class not listed here won't trigger team building (keeps original).
  #---------------------------------------------------------------------------
  CLASS_POOL_MAP = {
    # --- Common trainers ---
    :YOUNGSTER        => :normal,
    :LASS             => :fairy_cute,
    :CAMPER           => :normal,
    :PICNICKER        => :normal,
    :BUGCATCHER       => :bug,
    :HIKER            => :rock_ground,
    :BIKER            => :dark_fire,
    :ROCKER           => :dark_fire,
    :BIRDKEEPER       => :flying,
    :FISHERMAN        => :water,
    :SAILOR           => :water_fighting,
    :SWIMMER_M        => :water,
    :SWIMMER_F        => :water,
    :SWIMMER2_M       => :water,
    :SWIMMER2_F       => :water,
    :TUBER_M          => :water,
    :TUBER_F          => :water,
    :TUBER2_M         => :water,
    :TUBER2_F         => :water,
    # --- Fighting ---
    :BLACKBELT        => :fighting,
    :CRUSHGIRL        => :fighting,
    :CUEBALL          => :fighting,
    # --- Psychic / Ghost ---
    :PSYCHIC_M        => :psychic,
    :PSYCHIC_F        => :psychic,
    :CHANNELER        => :ghost,
    :JUGGLER          => :psychic,
    # --- Science / Tech ---
    :SCIENTIST        => :electric_steel,
    :SUPERNERD        => :electric_steel,
    :ENGINEER         => :electric_steel,
    # --- Nature / Grass ---
    :AROMALADY        => :grass,
    # --- Elegant / Rich ---
    :BEAUTY           => :fairy_cute,
    :GENTLEMAN        => :mixed_strong,
    :LADY             => :mixed_strong,
    # --- Generalists ---
    :POKEMONBREEDER   => :mixed_balanced,
    :POKEMANIAC       => :mixed_strong,
    :TAMER            => :mixed_strong,
    :PAINTER          => :mixed_balanced,
    :GAMBLER          => :mixed_balanced,
    :BURGLAR          => :dark_fire,
    :RUINMANIAC       => :rock_ground,
    :COOLTRAINER_M    => :mixed_strong,
    :COOLTRAINER_F    => :mixed_strong,
    :POKEMONRANGER_M  => :mixed_balanced,
    :POKEMONRANGER_F  => :mixed_balanced,
    # --- Evil teams ---
    :TEAMROCKET_M     => :poison_dark,
    :TEAMROCKET_F     => :poison_dark,
    :ROCKETBOSS       => :poison_dark,
    :CULTIST          => :dark_psychic,
    :CULTIST_F        => :dark_psychic,
    :CULT_ACOLYTE     => :dark_psychic,
    :CULT_PRIEST      => :dark_psychic,
  }

  #---------------------------------------------------------------------------
  # Species Pools — curated per pool group per progression stage
  #
  # Each entry can be:
  #   :SPECIES_SYMBOL               — base form, e.g. :PIKACHU
  #   { species: :SPECIES, form: 1 } — specific form
  #
  # Add / remove freely.  The builder picks from these with type diversity.
  #---------------------------------------------------------------------------
  SPECIES_POOLS = {
    # -----------------------------------------------------------------------
    # NORMAL / COMMON — Youngster, Camper, Picnicker
    # -----------------------------------------------------------------------
    normal: {
      early: [
        :RATTATA, :PIDGEY, :SENTRET, :ZIGZAGOON, :BIDOOF,
        :SPEAROW, :NIDORAN_M, :NIDORAN_F, :MEOWTH, :EEVEE,
      ],
      mid: [
        :RATICATE, :PIDGEOTTO, :FURRET, :LINOONE, :BIBAREL,
        :NIDORINO, :NIDORINA, :PERSIAN, :FEAROW, :PIKACHU,
        :GIRAFARIG, :ZANGOOSE, :DUNSPARCE,
      ],
      late: [
        :PIDGEOT, :NIDOKING, :NIDOQUEEN, :SNORLAX, :TAUROS,
        :STOUTLAND, :STARAPTOR, :AMBIPOM, :URSARING, :ZANGOOSE,
        :LOPUNNY, :CINCCINO, :PYROAR,
      ],
    },

    # -----------------------------------------------------------------------
    # FAIRY / CUTE — Lass, Beauty
    # -----------------------------------------------------------------------
    fairy_cute: {
      early: [
        :JIGGLYPUFF, :CLEFAIRY, :EEVEE, :IGGLYBUFF, :SKITTY,
        :RALTS, :TOGEPI, :AZURILL, :HAPPINY, :BUNEARY,
      ],
      mid: [
        :WIGGLYTUFF, :CLEFABLE, :KIRLIA, :TOGETIC, :DELCATTY,
        :SYLVEON, :MARILL, :AUDINO, :CHANSEY, :ROSELIA,
        :LEAVANNY, :LILLIGANT,
      ],
      late: [
        :GARDEVOIR, :TOGEKISS, :FLORGES, :SYLVEON, :CLEFABLE,
        :AZUMARILL, :HATTERENE, :ALCREMIE, :PRIMARINA,
        :BLISSEY, :WIGGLYTUFF, :RAPIDASH,
      ],
    },

    # -----------------------------------------------------------------------
    # BUG — Bug Catcher
    # -----------------------------------------------------------------------
    bug: {
      early: [
        :CATERPIE, :WEEDLE, :METAPOD, :KAKUNA, :WURMPLE,
        :LEDYBA, :SPINARAK, :SURSKIT, :KRICKETOT,
      ],
      mid: [
        :BUTTERFREE, :BEEDRILL, :VENOMOTH, :SCYTHER, :PINSIR,
        :HERACROSS, :LEDIAN, :ARIADOS, :YANMA, :MASQUERAIN,
        :NINJASK, :VOLBEAT, :ILLUMISE,
      ],
      late: [
        :SCIZOR, :HERACROSS, :VOLCARONA, :GALVANTULA, :SCOLIPEDE,
        :ACCELGOR, :ESCAVALIER, :PINSIR, :YANMEGA, :VIKAVOLT,
        :FROSMOTH, :CENTISKORCH,
      ],
    },

    # -----------------------------------------------------------------------
    # ROCK / GROUND — Hiker, Ruin Maniac
    # -----------------------------------------------------------------------
    rock_ground: {
      early: [
        :GEODUDE, :ONIX, :SANDSHREW, :DIGLETT, :MACHOP,
        :ROGGENROLA, :DWEBBLE, :CUBONE, :NOSEPASS, :RHYHORN,
      ],
      mid: [
        :GRAVELER, :STEELIX, :SANDSLASH, :DUGTRIO, :MACHOKE,
        :BOLDORE, :CRUSTLE, :MAROWAK, :RHYDON, :PUPITAR,
        :LUNATONE, :SOLROCK,
      ],
      late: [
        :GOLEM, :STEELIX, :RHYPERIOR, :TYRANITAR, :GIGALITH,
        :EXCADRILL, :HIPPOWDON, :GARCHOMP, :MAMOSWINE,
        :COALOSSAL, :CONKELDURR,
      ],
    },

    # -----------------------------------------------------------------------
    # FLYING / BIRD — Bird Keeper
    # -----------------------------------------------------------------------
    flying: {
      early: [
        :PIDGEY, :SPEAROW, :ZUBAT, :HOOTHOOT, :TAILLOW,
        :STARLY, :MURKROW, :WINGULL, :DODUO,
      ],
      mid: [
        :PIDGEOTTO, :FEAROW, :GOLBAT, :NOCTOWL, :SWELLOW,
        :STARAVIA, :PELIPPER, :DODRIO, :XATU, :SWOOBAT,
        :SIGILYPH,
      ],
      late: [
        :PIDGEOT, :CROBAT, :STARAPTOR, :BRAVIARY, :MANDIBUZZ,
        :HONCHKROW, :TOGEKISS, :TALONFLAME, :CORVIKNIGHT,
        :NOIVERN, :HAWLUCHA,
      ],
    },

    # -----------------------------------------------------------------------
    # WATER — Fisherman, Swimmer, Tuber
    # -----------------------------------------------------------------------
    water: {
      early: [
        :MAGIKARP, :GOLDEEN, :POLIWAG, :TENTACOOL, :STARYU,
        :PSYDUCK, :SHELLDER, :HORSEA, :LOTAD, :WINGULL,
      ],
      mid: [
        :GYARADOS, :SEAKING, :POLIWHIRL, :TENTACRUEL, :STARMIE,
        :GOLDUCK, :CLOYSTER, :SEADRA, :LOMBRE, :PELIPPER,
        :LANTURN, :QUAGSIRE, :WHISCASH,
      ],
      late: [
        :GYARADOS, :LAPRAS, :VAPOREON, :STARMIE, :KINGDRA,
        :MILOTIC, :JELLICENT, :TOXAPEX, :DRACOVISH,
        :GASTRODON, :POLITOED, :LUDICOLO,
      ],
    },

    # -----------------------------------------------------------------------
    # WATER + FIGHTING — Sailor
    # -----------------------------------------------------------------------
    water_fighting: {
      early: [
        :MACHOP, :POLIWAG, :TENTACOOL, :MAGIKARP, :MANKEY,
        :KRABBY, :SHELLDER, :STARYU,
      ],
      mid: [
        :MACHOKE, :POLIWHIRL, :TENTACRUEL, :KINGLER, :PRIMEAPE,
        :CLOYSTER, :GOLDUCK, :DEWOTT,
      ],
      late: [
        :MACHAMP, :POLIWRATH, :GYARADOS, :CONKELDURR, :KINGLER,
        :TENTACRUEL, :LAPRAS, :KOMMO_O, :URSHIFU,
      ],
    },

    # -----------------------------------------------------------------------
    # FIGHTING — Black Belt, Crush Girl, Cue Ball
    # -----------------------------------------------------------------------
    fighting: {
      early: [
        :MACHOP, :MANKEY, :TYROGUE, :MEDITITE, :MAKUHITA,
        :RIOLU, :TIMBURR,
      ],
      mid: [
        :MACHOKE, :PRIMEAPE, :HITMONLEE, :HITMONCHAN, :MEDICHAM,
        :HARIYAMA, :HERACROSS, :LUCARIO, :GURDURR, :TOXICROAK,
      ],
      late: [
        :MACHAMP, :LUCARIO, :CONKELDURR, :HERACROSS, :MEDICHAM,
        :GALLADE, :BLAZIKEN, :INFERNAPE, :KOMMO_O,
        :PANGORO, :HAWLUCHA,
      ],
    },

    # -----------------------------------------------------------------------
    # PSYCHIC — Psychic, Juggler
    # -----------------------------------------------------------------------
    psychic: {
      early: [
        :ABRA, :DROWZEE, :RALTS, :NATU, :SPOINK,
        :SLOWPOKE, :WOBBUFFET, :ESPURR,
      ],
      mid: [
        :KADABRA, :HYPNO, :KIRLIA, :XATU, :GRUMPIG,
        :SLOWBRO, :MR_MIME, :MEOWSTIC, :SIGILYPH, :GOTHITA,
      ],
      late: [
        :ALAKAZAM, :GARDEVOIR, :GALLADE, :ESPEON, :METAGROSS,
        :REUNICLUS, :GOTHITELLE, :SLOWKING, :STARMIE,
        :HATTERENE, :ORBEETLE,
      ],
    },

    # -----------------------------------------------------------------------
    # GHOST — Channeler
    # -----------------------------------------------------------------------
    ghost: {
      early: [
        :GASTLY, :SHUPPET, :DUSKULL, :LITWICK, :MISDREAVUS,
        :YAMASK, :PHANTUMP, :DRIFLOON,
      ],
      mid: [
        :HAUNTER, :BANETTE, :DUSCLOPS, :LAMPENT, :MISMAGIUS,
        :COFAGRIGUS, :TREVENANT, :DRIFBLIM, :SABLEYE,
      ],
      late: [
        :GENGAR, :CHANDELURE, :DUSKNOIR, :MISMAGIUS, :BANETTE,
        :TREVENANT, :SPIRITOMB, :POLTEAGEIST, :DRAGAPULT,
        :AEGISLASH, :FROSLASS,
      ],
    },

    # -----------------------------------------------------------------------
    # DARK / FIRE — Biker, Rocker, Burglar
    # -----------------------------------------------------------------------
    dark_fire: {
      early: [
        :GROWLITHE, :VULPIX, :HOUNDOUR, :POOCHYENA, :MURKROW,
        :STUNKY, :SANDILE, :LITLEO,
      ],
      mid: [
        :ARCANINE, :NINETALES, :HOUNDOOM, :MIGHTYENA, :HONCHKROW,
        :SKUNTANK, :KROKOROK, :PYROAR, :SHIFTRY, :ABSOL,
      ],
      late: [
        :ARCANINE, :HOUNDOOM, :HONCHKROW, :KROOKODILE,
        :WEAVILE, :ZOROARK, :BISHARP, :HYDREIGON,
        :INCINEROAR, :GRIMMSNARL, :OBSTAGOON,
      ],
    },

    # -----------------------------------------------------------------------
    # ELECTRIC / STEEL — Scientist, Super Nerd, Engineer
    # -----------------------------------------------------------------------
    electric_steel: {
      early: [
        :MAGNEMITE, :VOLTORB, :PIKACHU, :ELEKID, :SHINX,
        :BELDUM, :KLINK, :GRUBBIN,
      ],
      mid: [
        :MAGNETON, :ELECTRODE, :RAICHU, :ELECTABUZZ, :LUXIO,
        :METANG, :KLANG, :CHARJABUG, :JOLTEON, :ROTOM,
      ],
      late: [
        :MAGNEZONE, :ELECTRODE, :ELECTIVIRE, :LUXRAY, :METAGROSS,
        :KLINKLANG, :VIKAVOLT, :JOLTEON, :AMPHAROS,
        :ROTOM, :DURALUDON, :TOGEDEMARU,
      ],
    },

    # -----------------------------------------------------------------------
    # GRASS — Aroma Lady
    # -----------------------------------------------------------------------
    grass: {
      early: [
        :ODDISH, :BELLSPROUT, :BUDEW, :CHERUBI, :PETILIL,
        :SUNKERN, :HOPPIP, :COTTONEE,
      ],
      mid: [
        :GLOOM, :WEEPINBELL, :ROSELIA, :IVYSAUR, :BRELOOM,
        :LILLIGANT, :WHIMSICOTT, :LEAVANNY, :SKIPLOOM,
      ],
      late: [
        :VILEPLUME, :VICTREEBEL, :ROSERADE, :VENUSAUR, :BRELOOM,
        :LILLIGANT, :WHIMSICOTT, :FERROTHORN, :AMOONGUSS,
        :TSAREENA, :GOGOAT, :APPLETUN,
      ],
    },

    # -----------------------------------------------------------------------
    # POISON / DARK — Team Rocket
    # -----------------------------------------------------------------------
    poison_dark: {
      early: [
        :ZUBAT, :EKANS, :KOFFING, :GRIMER, :RATTATA,
        :SANDILE, :STUNKY, :TRUBBISH,
      ],
      mid: [
        :GOLBAT, :ARBOK, :WEEZING, :MUK, :RATICATE,
        :KROKOROK, :SKUNTANK, :GARBODOR, :HAUNTER, :HOUNDOUR,
      ],
      late: [
        :CROBAT, :ARBOK, :WEEZING, :MUK, :HONCHKROW,
        :KROOKODILE, :DRAPION, :TOXICROAK, :GENGAR,
        :HOUNDOOM, :BISHARP, :SALAZZLE,
      ],
    },

    # -----------------------------------------------------------------------
    # DARK / PSYCHIC — Cultists
    # -----------------------------------------------------------------------
    dark_psychic: {
      early: [
        :GASTLY, :MURKROW, :RALTS, :DROWZEE, :NATU,
        :INKAY, :MISDREAVUS, :POOCHYENA,
      ],
      mid: [
        :HAUNTER, :HONCHKROW, :KIRLIA, :HYPNO, :XATU,
        :MALAMAR, :MISMAGIUS, :MIGHTYENA, :ABSOL, :SABLEYE,
      ],
      late: [
        :GENGAR, :HONCHKROW, :GARDEVOIR, :ALAKAZAM, :MALAMAR,
        :SPIRITOMB, :WEAVILE, :ZOROARK, :HATTERENE,
        :GRIMMSNARL, :HYDREIGON, :CHANDELURE,
      ],
    },

    # -----------------------------------------------------------------------
    # MIXED STRONG — Cool Trainer, Gentleman, Lady, Poké Maniac, Tamer
    # -----------------------------------------------------------------------
    mixed_strong: {
      early: [
        :EEVEE, :GROWLITHE, :MACHOP, :ABRA, :DRATINI,
        :LARVITAR, :STARYU, :BAGON, :GIBLE, :RIOLU,
      ],
      mid: [
        :ARCANINE, :MACHOKE, :KADABRA, :DRAGONAIR, :PUPITAR,
        :STARMIE, :SHELGON, :GABITE, :LUCARIO, :ELECTABUZZ,
        :MAGNETON, :PILOSWINE,
      ],
      late: [
        :DRAGONITE, :TYRANITAR, :METAGROSS, :SALAMENCE, :GARCHOMP,
        :LUCARIO, :ARCANINE, :ALAKAZAM, :GENGAR, :STARMIE,
        :GYARADOS, :SCIZOR, :TOGEKISS, :HYDREIGON,
      ],
    },

    # -----------------------------------------------------------------------
    # MIXED BALANCED — Breeder, Ranger, Painter, Gambler
    # -----------------------------------------------------------------------
    mixed_balanced: {
      early: [
        :EEVEE, :PIKACHU, :ODDISH, :GEODUDE, :PSYDUCK,
        :MEOWTH, :PIDGEY, :NIDORAN_M, :NIDORAN_F, :POLIWAG,
      ],
      mid: [
        :JOLTEON, :FLAREON, :VAPOREON, :GLOOM, :GRAVELER,
        :GOLDUCK, :PERSIAN, :PIDGEOTTO, :NIDOKING, :POLIWHIRL,
        :ROSELIA, :HERACROSS,
      ],
      late: [
        :SYLVEON, :ESPEON, :UMBREON, :LEAFEON, :GLACEON,
        :VILEPLUME, :GOLEM, :STARMIE, :NIDOQUEEN, :POLIWRATH,
        :ROSERADE, :HERACROSS, :BLISSEY,
      ],
    },
  }

  #=============================================================================
  # SCORE → AI TIER MAPPING
  #=============================================================================

  TIER_THRESHOLDS = [
    # [max_score, override_value, label]
    [-20,  1, "Beginner"],
    [ -5,  2, "Mid"],
    [ 15, nil, "Natural"],
    [ 35,  3, "Pro"],
    [ 999, 4, "Extreme"]
  ]

  #=============================================================================
  # BATTLE HISTORY
  #=============================================================================

  HISTORY_SIZE = 30

  #=============================================================================
  # INTEGRATION
  #=============================================================================

  AI_MODE_VARIABLE = 100
  RESPECT_EVENT_OVERRIDE = true

  #=============================================================================
  # LOGGING HELPER
  #=============================================================================

  def self.log(message, category = "DDS")
    return unless DEBUG_MODE
    echoln "[#{category}] #{message}"
  end
end

#===============================================================================
# PokemonSystem Extension — stores the player's DDS toggle preference
#===============================================================================

class PokemonSystem
  attr_writer :dynamic_difficulty

  alias dds_initialize initialize unless method_defined?(:dds_initialize)
  def initialize
    dds_initialize
    @dynamic_difficulty = 1  # Default ON (0 = Off, 1 = On)
  end

  # Nil-safe reader — old saves won't have the ivar set
  def dynamic_difficulty
    @dynamic_difficulty = 1 if @dynamic_difficulty.nil?
    @dynamic_difficulty
  end
end

#===============================================================================
# Save Data Registration — persists DDS tracking data across saves
#===============================================================================

# The global data hash that holds all DDS state
$DynamicDifficultyData = nil

SaveData.register(:dynamic_difficulty_data) do
  save_value { $DynamicDifficultyData }
  load_value { |value|
    $DynamicDifficultyData = value || DynamicDifficulty::PerformanceTracker.default_data
  }
  new_game_value { DynamicDifficulty::PerformanceTracker.default_data }
end
