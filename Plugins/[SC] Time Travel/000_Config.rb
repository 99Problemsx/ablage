#===============================================================================
# [SC] Time Travel - Configuration
# Version: 1.0.0
# Certain locations exist in Past/Present eras. Switch via Yggdrasil roots.
#===============================================================================

module TimeTravelSystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # ERAS
  #=============================================================================

  ERA_PRESENT = :PRESENT
  ERA_PAST    = :PAST

  ERA_NAMES = {
    ERA_PRESENT => "Present",
    ERA_PAST    => "Ancient Era",
  }

  #=============================================================================
  # MAP PAIRS
  # Each entry maps a present-day map ID to its past counterpart.
  # The player can travel between them at Yggdrasil root events.
  # Format: present_map_id => { :past_map => map_id, :name => "Location Name",
  #                             :badge_req => N, :unlocked_switch => SW }
  #=============================================================================

  MAP_PAIRS = {
    # Example: Asgheim Central (present) <-> Ancient Asgheim (past)
    # Override these IDs with your actual map IDs:
    # 50 => { :past_map => 150, :name => "Asgheim Central",   :badge_req => 3, :unlocked_switch => nil },
    # 60 => { :past_map => 160, :name => "Frosthollow",       :badge_req => 4, :unlocked_switch => nil },
    # 70 => { :past_map => 170, :name => "Verdant Plateau",   :badge_req => 5, :unlocked_switch => nil },
    # 80 => { :past_map => 180, :name => "Nidhoggr's Grove",  :badge_req => 7, :unlocked_switch => nil },
  }

  #=============================================================================
  # VISUAL TRANSITIONS
  #=============================================================================

  TRANSITION_SE          = "Door exit"
  TRANSITION_FLASH_COLOR = Color.new(200, 180, 255)  # Purple-ish Yggdrasil glow
  TRANSITION_FLASH_SPEED = 20
  SCREEN_TONE_PAST       = Tone.new(-30, -20, 10, 30)   # Dimmer, blue-ish
  SCREEN_TONE_PRESENT    = Tone.new(0, 0, 0, 0)         # Normal

  #=============================================================================
  # GAMEPLAY RULES
  #=============================================================================

  # Wild encounter level modifier in past era
  PAST_LEVEL_BONUS = 3

  # Exclusive species in past era (can be encountered as wild)
  PAST_EXCLUSIVE_SPECIES = [:AERODACTYL, :RELICANTH, :ARCHEN, :TIRTOUGA, :CRANIDOS, :SHIELDON]

  # NPCs in the past can reference future events cryptically
  PAST_NPC_PREFIX = "Ancient "

  #=============================================================================
  # EVENT TAG
  # Place on map events to mark Yggdrasil root travel points:
  #   [TimeTravel]
  # Or with a specific location key:
  #   [TimeTravel ASGHEIM]
  #=============================================================================

  EVENT_TAG = "TimeTravel"

  #=============================================================================
  # STATE PERSISTENCE
  # Switches/variables that persist across timelines (shared state)
  # Add game switch IDs here that should remain shared.
  #=============================================================================

  SHARED_SWITCHES = []   # e.g., [50, 51, 52]
  SHARED_VARIABLES = []  # e.g., [10, 11]
end
