#===============================================================================
# [SC] Trainer Rematch - Configuration
# Version: 1.0.0
# Trainers become re-battleable with scaled teams after story progress.
#===============================================================================

module TrainerRematch
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # REMATCH UNLOCK CONDITIONS
  #=============================================================================

  # Number of badges required before rematches unlock
  BADGES_REQUIRED = 4

  # Cooldown (in-game steps) between rematches with same trainer
  COOLDOWN_STEPS = 500

  # Maximum rematch tier (how many times a trainer can be rematched)
  MAX_REMATCH_TIER = 5

  #=============================================================================
  # SCALING
  #=============================================================================

  # Level boost per rematch tier
  LEVEL_BOOST_PER_TIER = 5

  # Add held items at tier 2+
  ADD_ITEMS_AT_TIER = 2

  # Evolve unevolved Pokemon at tier 3+
  EVOLVE_AT_TIER = 3

  # Maximize IVs at tier 4+
  MAX_IVS_AT_TIER = 4

  # Use competitive movesets at tier 5 (integrates with DDS if available)
  COMPETITIVE_AT_TIER = 5

  #=============================================================================
  # VISUAL CUE
  #=============================================================================

  # Event self-switch used to indicate rematch availability
  # Set this switch via event conditions to show exclamation mark etc.
  REMATCH_SELF_SWITCH = "C"

  # Exclamation icon event indicator (requires Event Indicators plugin)
  USE_EVENT_INDICATORS = true
  INDICATOR_ICON = "exclamation_blue"

  #=============================================================================
  # REWARDS
  #=============================================================================

  # Bonus money multiplier per rematch tier
  MONEY_MULTIPLIER = {
    1 => 1.5,
    2 => 2.0,
    3 => 2.5,
    4 => 3.0,
    5 => 4.0
  }

  # Bonus item chance per rematch victory
  BONUS_ITEM_CHANCE = 30  # percent
  BONUS_ITEMS = [
    [:RARECANDY, 1],
    [:PPUP, 1],
    [:NUGGET, 1],
    [:HEARTSCALE, 2]
  ]

  #=============================================================================
  # TRAINER REGISTRATION
  # Map trainer events to rematch pools.
  # Format: { trainer_type_and_name => { map_id, event_id } }
  # Or use event comment tags: [Rematch]
  #=============================================================================
  REGISTERED_TRAINERS = {
    # Example:
    # "POKEMONTRAINER_May" => { :map_id => 10, :event_id => 5 },
  }
end
