#===============================================================================
# [SC] Pokemon Affection - Configuration
# Version: 1.0.0
# Affection value per Pokemon that grants in-battle bonuses.
#===============================================================================

module PokemonAffection
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # AFFECTION LEVELS (0-255 internal value)
  #=============================================================================
  LEVEL_THRESHOLDS = {
    0 => :NONE,       # 0-49
    50 => :LOW,       # 50-99
    100 => :MEDIUM,   # 100-149
    150 => :HIGH,     # 150-199
    200 => :MAX       # 200-255
  }

  MAX_AFFECTION = 255

  #=============================================================================
  # AFFECTION GAIN SOURCES
  #=============================================================================
  GAIN_WALK_STEPS     = 300   # Steps per +1 affection (lead Pokemon)
  GAIN_LEVEL_UP       = 5     # On level up
  GAIN_EVOLUTION       = 10   # On evolution
  GAIN_HEAL_CENTER    = 3     # Healed at Pokemon Center
  GAIN_USE_ITEM       = 2     # Used a healing item on it
  GAIN_WIN_BATTLE     = 1     # Won a trainer battle
  GAIN_FOLLOWING       = 1    # Per 200 steps while following (Following Pokemon EX)

  LOSS_FAINT          = -5    # On faint
  LOSS_DEPOSIT_PC     = -2    # Deposited to PC

  #=============================================================================
  # BATTLE BONUSES (chance-based, checked once per applicable moment)
  #=============================================================================

  # Chance to survive a fatal hit at 1 HP (like Affection Endure)
  ENDURE_CHANCE = {
    :NONE   => 0,
    :LOW    => 0,
    :MEDIUM => 5,   # 5%
    :HIGH   => 12,
    :MAX    => 20
  }

  # Chance for boosted critical hit ratio
  CRIT_BOOST_CHANCE = {
    :NONE   => 0,
    :LOW    => 0,
    :MEDIUM => 0,
    :HIGH   => 8,
    :MAX    => 15
  }

  # Chance to cure status at end of turn
  STATUS_CURE_CHANCE = {
    :NONE   => 0,
    :LOW    => 0,
    :MEDIUM => 0,
    :HIGH   => 5,
    :MAX    => 12
  }

  # Boosted EXP multiplier
  EXP_MULTIPLIER = {
    :NONE   => 1.0,
    :LOW    => 1.0,
    :MEDIUM => 1.1,
    :HIGH   => 1.15,
    :MAX    => 1.2
  }

  #=============================================================================
  # MESSAGES
  #=============================================================================
  MSG_ENDURE    = "{1} toughed it out so you wouldn't feel sad!"
  MSG_CRIT      = "{1} is so in sync with you that the move became a critical hit!"
  MSG_CURE      = "{1} shook off its {2} so you wouldn't worry!"
  MSG_EXP_BOOST = "{1} gained a bit more Exp. Points from the bond with you!"

  #=============================================================================
  # DISPLAY
  #=============================================================================
  # Show affection hearts in Summary screen
  SHOW_IN_SUMMARY = true

  # Heart icon file (relative to Graphics/Pictures/)
  HEART_ICON = "affection_heart"
end
