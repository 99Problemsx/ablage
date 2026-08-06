#===============================================================================
# [SC] Battle Arena - Configuration
# Version: 1.0.0
# Post-game challenge tower with themed floors, streaks, and rewards.
#===============================================================================

module SCBattleArena
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # ARENA FLOORS
  # Each floor has a theme, trainer pool, and milestone reward.
  #=============================================================================

  FLOORS = {
    1  => { :name => "Ember Floor",    :theme => :FIRE,    :level => 50, :trainers => 3 },
    2  => { :name => "Frost Floor",    :theme => :ICE,     :level => 52, :trainers => 3 },
    3  => { :name => "Thunder Floor",  :theme => :ELECTRIC,:level => 54, :trainers => 3 },
    4  => { :name => "Shadow Floor",   :theme => :DARK,    :level => 56, :trainers => 3 },
    5  => { :name => "Dragon Floor",   :theme => :DRAGON,  :level => 58, :trainers => 3 },
    6  => { :name => "Steel Floor",    :theme => :STEEL,   :level => 60, :trainers => 3 },
    7  => { :name => "Psychic Floor",  :theme => :PSYCHIC, :level => 62, :trainers => 3 },
    8  => { :name => "Ghost Floor",    :theme => :GHOST,   :level => 64, :trainers => 3 },
    9  => { :name => "Champion Floor", :theme => :MIXED,   :level => 66, :trainers => 4 },
    10 => { :name => "Apex Floor",     :theme => :LEGENDARY, :level => 70, :trainers => 1 },
  }

  #=============================================================================
  # MILESTONE REWARDS (granted on first clear of a floor)
  #=============================================================================

  MILESTONE_REWARDS = {
    3  => [[:RARECANDY, 3]],
    5  => [[:PPUP, 2], [:RARECANDY, 3]],
    7  => [[:PPMAX, 1], [:RARECANDY, 5]],
    9  => [[:MASTERBALL, 1]],
    10 => [[:ABILITYCAPSULE, 1], [:RARECANDY, 10]],
  }

  #=============================================================================
  # BATTLE RULES
  #=============================================================================

  PARTY_SIZE_LIMIT = 3        # Max Pokemon per challenge
  LEVEL_CAP_ENABLED = true    # Scale player Pokemon down to floor level?
  HEAL_BETWEEN_TRAINERS = false
  ITEMS_ALLOWED = false       # Can player use items in battle?

  #=============================================================================
  # STREAK SYSTEM
  #=============================================================================

  # Bonus rewards per streak milestone
  STREAK_MILESTONES = {
    10 => [[:RARECANDY, 5]],
    25 => [[:PPMAX, 2]],
    50 => [[:MASTERBALL, 1]],
  }

  #=============================================================================
  # ARENA TRAINER TYPE (used in PBS trainers)
  #=============================================================================

  ARENA_TRAINER_TYPE = :POKEMONTRAINER_Arena

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_FLOOR_CLEAR = "Pkmn move learnt"
  SE_STREAK      = "GUI sel decision"
  BGM_ARENA      = nil  # Set to arena-specific BGM
end
