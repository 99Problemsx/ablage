#===============================================================================
# [SC] Reputation System - Configuration
# Version: 1.0.0
# Faction reputation affecting shops, quests, NPC reactions.
#===============================================================================

module ReputationSystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # REPUTATION BOUNDS
  #=============================================================================
  REP_MIN = -100
  REP_MAX =  100

  #=============================================================================
  # REPUTATION TIERS
  #=============================================================================
  TIERS = {
    :HATED     => -100,
    :DISLIKED  =>  -50,
    :NEUTRAL   =>  -10,
    :LIKED     =>   20,
    :RESPECTED =>   50,
    :REVERED   =>   80
  }

  #=============================================================================
  # FACTIONS
  #=============================================================================
  FACTIONS = {
    :ASGHEIM_GUARD => {
      :name  => "Asgheim Guard",
      :desc  => "The protectors of Asgheim's cities and roads.",
      :start => 0,
      :color => Color.new(100, 150, 255)
    },
    :HAND_RESISTANCE => {
      :name  => "Hand Resistance",
      :desc  => "Underground fighters opposing the Shattered Hand.",
      :start => 0,
      :color => Color.new(200, 100, 255)
    },
    :MERCHANT_GUILD => {
      :name  => "Merchant Guild",
      :desc  => "Traders and craftsmen who keep the economy alive.",
      :start => 0,
      :color => Color.new(255, 200, 80)
    },
    :SCHOLARS_CIRCLE => {
      :name  => "Scholar's Circle",
      :desc  => "Researchers studying the ancient seals and legends.",
      :start => 10,
      :color => Color.new(100, 220, 180)
    },
    :ASTORIA_REMNANTS => {
      :name  => "Astoria Remnants",
      :desc  => "The last keepers of the Forgotten Region's secrets.",
      :start => -20,  # Starts distrustful of outsiders
      :color => Color.new(220, 180, 255)
    }
  }

  #=============================================================================
  # SHOP DISCOUNTS/MARKUPS BY TIER
  #=============================================================================
  SHOP_MODIFIERS = {
    :HATED     => 1.5,   # 50% more expensive
    :DISLIKED  => 1.2,
    :NEUTRAL   => 1.0,
    :LIKED     => 0.95,
    :RESPECTED => 0.85,
    :REVERED   => 0.75   # 25% discount
  }

  #=============================================================================
  # UI SETTINGS
  #=============================================================================
  GRAPHICS_FOLDER = "Reputation"
  SE_REP_CHANGE   = "GUI sel decision"
  SHOW_NOTIFICATIONS = true
end
