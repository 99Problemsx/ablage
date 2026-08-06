#===============================================================================
# [SC] Nemesis System - Configuration
# Version: 1.0.0
# Rival trainers that remember your defeats, grow stronger, and hunt you down.
#===============================================================================

module NemesisSystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # NEMESIS GENERATION
  #=============================================================================

  # Trainer type used for generated nemeses
  NEMESIS_TRAINER_TYPE = :POKEMONTRAINER_Nemesis

  # Max simultaneous nemeses
  MAX_NEMESES = 3

  # Chance (%) a loss generates a nemesis
  GENERATION_CHANCE = 60

  # Minimum badges before system activates
  MIN_BADGES = 2

  #=============================================================================
  # NEMESIS POWER SCALING
  # Each defeat the player suffers makes the nemesis stronger.
  # Each time the nemesis defeats you again, it ranks up.
  #=============================================================================

  RANKS = {
    1 => { :title => "Upstart",     :level_boost => 0,  :iv_boost => 0,  :item => false },
    2 => { :title => "Rival",       :level_boost => 2,  :iv_boost => 5,  :item => false },
    3 => { :title => "Threat",      :level_boost => 4,  :iv_boost => 10, :item => true },
    4 => { :title => "Overlord",    :level_boost => 6,  :iv_boost => 15, :item => true },
    5 => { :title => "Archnemesis", :level_boost => 10, :iv_boost => 20, :item => true },
  }

  MAX_RANK = 5

  #=============================================================================
  # NEMESIS ENCOUNTER
  # Steps before a nemesis can ambush the player on the overworld
  #=============================================================================

  AMBUSH_MIN_STEPS     = 300
  AMBUSH_MAX_STEPS     = 800
  AMBUSH_CHANCE        = 30   # % chance per step check after cooldown

  #=============================================================================
  # TAUNT LINES (indexed by rank)
  #=============================================================================

  TAUNT_LINES = {
    1 => ["You got lucky last time!", "I've been training for this!"],
    2 => ["Remember me? I'm stronger now.", "This time you won't escape!"],
    3 => ["I've studied your every move.", "Your team can't stop me now!"],
    4 => ["I am your shadow. Your weakness made me.", "Kneel before me!"],
    5 => ["I am inevitable.", "Everything you are... I've surpassed."],
  }

  #=============================================================================
  # DEFEAT LINES (when player beats the nemesis)
  #=============================================================================

  DEFEAT_LINES = {
    1 => "No... not again!",
    2 => "You've bested me... for now.",
    3 => "Impossible... I was supposed to be stronger!",
    4 => "How?! I had every advantage!",
    5 => "You... truly are the Chosen.",
  }

  #=============================================================================
  # REWARDS (by rank when defeated)
  #=============================================================================

  REWARDS = {
    1 => [[:RARECANDY, 1]],
    2 => [[:RARECANDY, 2], [:NUGGET, 1]],
    3 => [[:RARECANDY, 3], [:PPUP, 1]],
    4 => [[:RARECANDY, 5], [:PPMAX, 1], [:NUGGET, 3]],
    5 => [[:RARECANDY, 5], [:MASTERBALL, 1], [:ABILITYCAPSULE, 1]],
  }

  #=============================================================================
  # NEMESIS SPECIES POOL (by type theme)
  # When generated, nemeses pick a type theme and build a team from it.
  #=============================================================================

  TYPE_THEMES = [:FIRE, :WATER, :DARK, :DRAGON, :GHOST, :FIGHTING, :STEEL, :PSYCHIC]

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_AMBUSH    = "Battle roar"
  SE_DEFEATED  = "Pkmn move learnt"
  SE_RANK_UP   = "GUI sel buzzer"
end
