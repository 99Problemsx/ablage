#===============================================================================
# [SC] Spirit Realm - Configuration
# Version: 1.0.0
# Alternate-dimension dungeons via Yggdrasil portals. Shadow encounters,
# void corruption, and ties to Nidhoggr's influence.
#===============================================================================

module SpiritRealm
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # PORTAL DEFINITIONS
  # Each portal connects an overworld location to a spirit realm dungeon.
  #=============================================================================

  PORTALS = {
    # :ASGHEIM_PORTAL => {
    #   :name           => "Yggdrasil Root - Asgheim",
    #   :overworld_map  => 5,
    #   :realm_map      => 200,
    #   :realm_entry_x  => 10,
    #   :realm_entry_y  => 15,
    #   :required_badge => 3,
    #   :corruption     => 1,   # Corruption tier (1-3)
    # },
    # :FROSTPEAK_RIFT => {
    #   :name           => "Void Rift - Frostpeak",
    #   :overworld_map  => 20,
    #   :realm_map      => 201,
    #   :realm_entry_x  => 8,
    #   :realm_entry_y  => 12,
    #   :required_badge => 5,
    #   :corruption     => 2,
    # },
    # :NIDHOGGR_GATE => {
    #   :name           => "Nidhoggr's Gate",
    #   :overworld_map  => 50,
    #   :realm_map      => 210,
    #   :realm_entry_x  => 15,
    #   :realm_entry_y  => 15,
    #   :required_badge => 8,
    #   :corruption     => 3,
    # },
  }

  #=============================================================================
  # VOID CORRUPTION
  # While in the Spirit Realm, corruption accumulates per step.
  # High corruption causes negative effects.
  #=============================================================================

  CORRUPTION_ENABLED     = true
  CORRUPTION_PER_STEP    = 1
  CORRUPTION_MAX         = 100

  # Effects at corruption thresholds
  CORRUPTION_EFFECTS = {
    25  => :SCREEN_TINT,     # Screen darkens
    50  => :RANDOM_DAMAGE,   # Party takes minor damage
    75  => :WILD_AMBUSH,     # Forced wild encounter
    100 => :FORCED_EXIT,     # Expelled from realm
  }

  #=============================================================================
  # SHADOW POKEMON ENCOUNTERS
  # Boosted-stat shadow variants encountered in the Spirit Realm
  #=============================================================================

  SHADOW_LEVEL_BOOST  = 5    # Shadow Pokemon are +5 levels above area
  SHADOW_STAT_BOOST   = 10   # % stat boost on shadow Pokemon
  SHADOW_ENCOUNTER_RATE = 30 # % chance an encounter is a shadow variant

  # Species that can spawn from the WILD_AMBUSH corruption effect. Picked
  # at random, weighted equally. Level is the current corruption / 2.
  SHADOW_AMBUSH_SPECIES = [:GENGAR, :HAUNTER, :MISDREAVUS, :SHUPPET, :YAMASK]

  #=============================================================================
  # PURIFICATION
  # After catching shadow Pokemon, they can be purified
  #=============================================================================

  PURIFICATION_STEPS = 1000  # Steps to purify a shadow Pokemon
  PURIFICATION_ITEM  = nil   # Or set to item symbol for instant purify

  #=============================================================================
  # VISUAL
  #=============================================================================

  REALM_SCREEN_TONE = Tone.new(-40, -60, 20, 60)  # Purple-ish dark tint
  CORRUPTION_TONE   = Tone.new(-80, -80, -20, 100) # Deep void at high corruption

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_ENTER_REALM  = "Door enter"
  SE_EXIT_REALM   = "Door exit"
  SE_CORRUPTION   = "GUI sel buzzer"
  BGM_SPIRIT      = nil  # Set to spirit realm BGM
end
