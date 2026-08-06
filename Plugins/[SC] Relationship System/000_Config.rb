#===============================================================================
# [SC] Relationship System - Configuration
# Version: 1.0.0
# Tracks relationship points with story companions. Points change via
# dialogue choices, battle actions, and story events. Unlocks exclusive
# cutscenes, team access, and endgame variants.
#===============================================================================

module RelationshipSystem
  #=============================================================================
  # CORE SETTINGS
  #=============================================================================

  # Master switch
  ENABLED = true

  # Debug logging
  DEBUG_MODE = false

  #=============================================================================
  # POINT BOUNDARIES
  #=============================================================================

  # Relationship points clamped to this range per character
  POINTS_MIN = -100
  POINTS_MAX =  100

  # Thresholds for relationship tiers
  TIER_THRESHOLDS = {
    :RIVAL    => -100,  # -100 to -51
    :COLD     =>  -50,  # -50 to -21
    :NEUTRAL  =>  -20,  # -20 to 19
    :WARM     =>   20,  # 20 to 49
    :FRIEND   =>   50,  # 50 to 79
    :BONDED   =>   80   # 80 to 100
  }

  # Default starting points for new characters
  DEFAULT_START_POINTS = 0

  #=============================================================================
  # SCORE TUNING
  #=============================================================================

  # Dialogue choice values (set per event, these are fallback defaults)
  DIALOGUE_POSITIVE = 5
  DIALOGUE_NEGATIVE = -5
  DIALOGUE_NEUTRAL  = 0

  # Battle-related point gains
  BATTLE_PROTECT_ALLY   = 3   # Used Protect/Follow Me to shield ally
  BATTLE_HEAL_ALLY      = 2   # Used healing move on ally in doubles
  BATTLE_KO_THREAT      = 2   # KO'd a mon threatening the ally
  BATTLE_ALLY_FAINTED   = -3  # Ally's Pokemon fainted while you could help
  BATTLE_WIN_TOGETHER   = 1   # Won a doubles battle with companion

  # Story event defaults (override per event)
  STORY_MAJOR_POSITIVE  = 15
  STORY_MAJOR_NEGATIVE  = -15
  STORY_MINOR_POSITIVE  = 8
  STORY_MINOR_NEGATIVE  = -8

  #=============================================================================
  # CHARACTERS
  #=============================================================================

  # Character definitions: id => { name, portrait_key, start_points }
  CHARACTERS = {
    :LYRA => {
      :name         => "Lyra",
      :portrait_key => "lyra",      # Key for rainefallPortraits
      :start_points => 10,
      :guardian      => :XERNEAS
    },
    :KAEL => {
      :name         => "Kael",
      :portrait_key => "kael",
      :start_points => -5,          # Starts cold/reluctant
      :guardian      => :YVELTAL
    },
    :ALDRIC => {
      :name         => "Professor Aldric",
      :portrait_key => "aldric",
      :start_points => 20,          # Mentor warmth
      :guardian      => nil
    },
    :RAGNAR => {
      :name         => "Ragnar",
      :portrait_key => "ragnar",
      :start_points => 0,
      :guardian      => nil
    }
  }

  #=============================================================================
  # UI SETTINGS
  #=============================================================================

  # Graphics folder (relative to Graphics/Pictures/)
  GRAPHICS_FOLDER = "Relationships"

  # Heart icon filenames per tier
  TIER_ICONS = {
    :RIVAL   => "heart_broken",
    :COLD    => "heart_cold",
    :NEUTRAL => "heart_neutral",
    :WARM    => "heart_warm",
    :FRIEND  => "heart_friend",
    :BONDED  => "heart_bonded"
  }

  # Colors per tier (base, shadow)
  TIER_COLORS = {
    :RIVAL   => [Color.new(200, 50, 50),   Color.new(80, 20, 20)],
    :COLD    => [Color.new(100, 150, 220),  Color.new(40, 60, 90)],
    :NEUTRAL => [Color.new(200, 200, 200),  Color.new(80, 80, 80)],
    :WARM    => [Color.new(255, 200, 80),   Color.new(100, 80, 30)],
    :FRIEND  => [Color.new(100, 220, 100),  Color.new(40, 90, 40)],
    :BONDED  => [Color.new(255, 180, 220),  Color.new(100, 70, 90)]
  }

  # Notification display duration (frames)
  NOTIFICATION_DURATION = 120

  # Show point change notifications
  SHOW_NOTIFICATIONS = true

  #=============================================================================
  # CUTSCENE GATES
  #=============================================================================

  # Minimum tier required for exclusive scenes
  # Format: { event_label => { character_id => min_tier } }
  SCENE_REQUIREMENTS = {
    # Example: "lyra_confession" => { :LYRA => :BONDED },
    # Example: "kael_trust"      => { :KAEL => :FRIEND },
  }

  #=============================================================================
  # GIFT SYSTEM
  #=============================================================================

  # Cooldown between gifts to the same character (in player steps)
  GIFT_COOLDOWN_STEPS = 600

  # Default point gain when reaction is unlisted (treated as :NEUTRAL).
  GIFT_POINTS = {
    :LOVED    => 12,
    :LIKED    => 6,
    :NEUTRAL  => 1,
    :DISLIKED => -4,
    :HATED    => -10
  }

  # Per-character item preferences. Items not listed default to :NEUTRAL.
  # Keys are item symbols (PE v21.1 Items PBS IDs).
  GIFT_PREFERENCES = {
    :LYRA => {
      :LOVED    => [:SOOTHEBELL, :LUMBERRY, :MOOMOOMILK],
      :LIKED    => [:ORANBERRY, :PECHABERRY, :HONEY],
      :DISLIKED => [:REVIVE, :REPEL],
      :HATED    => [:RAGECANDYBAR]
    },
    :KAEL => {
      :LOVED    => [:BLACKGLASSES, :DREADPLATE, :SPELLTAG],
      :LIKED    => [:STARDUST, :NUGGET],
      :DISLIKED => [:SOOTHEBELL, :HONEY],
      :HATED    => [:LIGHTBALL]
    },
    :ALDRIC => {
      :LOVED    => [:RARECANDY, :TM01, :TM02],
      :LIKED    => [:STARDUST, :PEARL, :NUGGET],
      :DISLIKED => [:LAVACOOKIE]
    },
    :RAGNAR => {
      :LOVED    => [:PROTEIN, :IRON, :MUSCLEBAND],
      :LIKED    => [:CARBOS, :HPUP, :CALCIUM],
      :DISLIKED => [:SWEETHEART],
      :HATED    => [:LUCKYEGG]
    }
  }
end
