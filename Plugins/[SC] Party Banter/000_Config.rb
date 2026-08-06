#===============================================================================
# [SC] Party Banter - Configuration
# Version: 1.0.0
# Context-sensitive dialogue from following Pokemon and story companions.
#===============================================================================

module PartyBanter
  #=============================================================================
  # CORE SETTINGS
  #=============================================================================
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # TRIGGER SETTINGS
  #=============================================================================

  # Cooldown between banter lines (in map steps)
  COOLDOWN_STEPS = 80

  # Minimum steps on a new map before banter can trigger
  MAP_ENTRY_DELAY = 15

  # Chance per step (after cooldown) that banter triggers (1-100)
  TRIGGER_CHANCE = 12

  # Maximum banters per map visit (prevents spam)
  MAX_PER_MAP = 3

  #=============================================================================
  # TRIGGER TYPES (priority order - higher = checked first)
  #=============================================================================
  TRIGGERS = {
    :LOW_HP       => { :priority => 100, :condition => :party_low_hp? },
    :WEATHER      => { :priority => 80,  :condition => :special_weather? },
    :STORY_EVENT  => { :priority => 90,  :condition => :post_story_event? },
    :NEW_AREA     => { :priority => 50,  :condition => :new_area? },
    :POKEMON_TYPE => { :priority => 40,  :condition => :type_relevant? },
    :TIME_OF_DAY  => { :priority => 30,  :condition => :time_based? },
    :RANDOM       => { :priority => 10,  :condition => :always_true }
  }

  #=============================================================================
  # DISPLAY SETTINGS
  #=============================================================================

  # Display mode: :portrait, :bubble, :message
  DISPLAY_MODE = :portrait

  # Speech bubble duration (frames) if using bubble mode
  BUBBLE_DURATION = 180

  # Sound effect for banter
  BANTER_SE = "GUI sel cursor"

  #=============================================================================
  # COMPANION SPEAKER IDS
  # Maps story companion to their portrait/name for banter
  #=============================================================================
  COMPANION_SPEAKERS = {
    :LYRA   => { :name => "Lyra",   :portrait => "lyra_happy" },
    :KAEL   => { :name => "Kael",   :portrait => "kael_smirk" },
    :ALDRIC => { :name => "Aldric", :portrait => "aldric_calm" }
  }
end
