#===============================================================================
# [SC] Battle Rewards Ex - Configuration
# Version: 1.0.0
# Ranks battles S/A/B/C based on performance. Awards bonus items.
#===============================================================================

module BattleRewardsEx
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # RANKING THRESHOLDS (score out of 100)
  #=============================================================================
  RANK_THRESHOLDS = {
    :S => 90,
    :A => 70,
    :B => 45,
    :C => 0
  }

  #=============================================================================
  # SCORING WEIGHTS
  #=============================================================================
  SCORE_NO_FAINTS       = 30   # Full party survived
  SCORE_NO_ITEMS_USED   = 15   # Didn't use healing items
  SCORE_SPEED_BASE      = 25   # Base for turn efficiency
  SCORE_SPEED_PER_TURN  = -3   # Penalty per turn (after grace period)
  SCORE_SPEED_GRACE     = 4    # Free turns before penalty
  SCORE_SE_HITS         = 20   # Used super-effective moves
  SCORE_NO_STATUS       = 10   # Party didn't get statused

  #=============================================================================
  # REWARDS PER RANK
  # Format: { rank => [[:ITEM_SYMBOL, quantity], ...] }
  # Items are chosen randomly from the list for that rank
  #=============================================================================
  RANK_REWARDS = {
    :S => [
      [:RARECANDY, 1],
      [:PPUP, 1],
      [:NUGGET, 1],
      [:ABILITYCAPSULE, 1]
    ],
    :A => [
      [:FULLRESTORE, 2],
      [:MAXREVIVE, 1],
      [:PPMAX, 1]
    ],
    :B => [
      [:HYPERPOTION, 2],
      [:REVIVE, 2],
      [:ULTRABALL, 3]
    ],
    :C => []  # No bonus for C rank
  }

  #=============================================================================
  # DISPLAY SETTINGS
  #=============================================================================
  SE_RANK_REVEAL = "Pkmn exp full"
  SE_REWARD      = "Mining reveal"

  RANK_COLORS = {
    :S => Color.new(255, 215, 0),    # Gold
    :A => Color.new(100, 200, 255),   # Blue
    :B => Color.new(200, 200, 200),   # Silver
    :C => Color.new(180, 130, 80)     # Bronze
  }

  #=============================================================================
  # FILTERS
  #=============================================================================

  # Only rank battles against these trainer types (nil = all trainers)
  RANKED_TRAINER_TYPES = nil

  # Minimum opponent party size to rank
  MIN_OPPONENT_PARTY = 2

  # Skip ranking for wild battles
  SKIP_WILD = true

  # Achievement integration
  # ACHIEVEMENT_S_RANK = :BATTLE_PERFECTIONIST  # Unlock after 10 S-ranks
  S_RANK_COUNT_FOR_ACHIEVEMENT = 10
end
