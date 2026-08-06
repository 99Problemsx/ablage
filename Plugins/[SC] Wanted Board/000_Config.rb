#===============================================================================
# [SC] Wanted Board - Configuration
# Version: 1.0.0
# Rotating bounty board quests in cities — hunt targets for rewards.
#===============================================================================

module WantedBoard
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # BOUNTY POOL
  # Bounties are randomly selected from this pool. Each bounty is a task.
  # type: :catch, :defeat_trainer, :defeat_wild, :fetch_item, :explore
  #=============================================================================

  BOUNTIES = {
    :CATCH_EEVEE => {
      :name        => "Catch an Eevee",
      :description => "An Eevee has been spotted in the wild. Catch one!",
      :type        => :catch,
      :target      => :EEVEE,
      :quantity    => 1,
      :reward_money => 3000,
      :reward_items => [[:RARECANDY, 1]],
      :min_badges   => 0,
      :difficulty   => 1,
    },
    :DEFEAT_GRUNTS => {
      :name        => "Clear the Route",
      :description => "Defeat 3 trainers on the nearby route.",
      :type        => :defeat_trainer,
      :target      => nil,
      :quantity    => 3,
      :reward_money => 5000,
      :reward_items => [],
      :min_badges   => 2,
      :difficulty   => 2,
    },
    :HUNT_GYARADOS => {
      :name        => "Gyarados Hunt",
      :description => "A rampaging Gyarados threatens the lake. Defeat it!",
      :type        => :defeat_wild,
      :target      => :GYARADOS,
      :quantity    => 1,
      :reward_money => 8000,
      :reward_items => [[:MYSTICWATER, 1]],
      :min_badges   => 3,
      :difficulty   => 3,
    },
    :FETCH_STARDUST => {
      :name        => "Stardust Delivery",
      :description => "Collect 3 Stardust for the merchant guild.",
      :type        => :fetch_item,
      :target      => :STARDUST,
      :quantity    => 3,
      :reward_money => 4000,
      :reward_items => [],
      :min_badges   => 1,
      :difficulty   => 1,
    },
    :CATCH_DRAGON => {
      :name        => "Dragon Tamer's Request",
      :description => "Catch any Dragon-type Pokémon.",
      :type        => :catch_type,
      :target      => :DRAGON,
      :quantity    => 1,
      :reward_money => 12000,
      :reward_items => [[:DRAGONSCALE, 1]],
      :min_badges   => 5,
      :difficulty   => 4,
    },
  }

  #=============================================================================
  # BOARD SETTINGS
  #=============================================================================

  # Number of bounties available at a time
  BOARD_SIZE = 3

  # Steps before board refreshes with new bounties
  REFRESH_STEPS = 2000

  # Maximum active bounties player can accept at once
  MAX_ACTIVE = 2

  # Reputation bonus per bounty completed (Reputation System integration)
  REPUTATION_BONUS_FACTION = :MERCHANT_GUILD
  REPUTATION_BONUS_AMOUNT  = 5

  #=============================================================================
  # SOUND
  #=============================================================================
  SE_ACCEPT   = "GUI sel decision"
  SE_COMPLETE = "Pkmn move learnt"
  SE_REFRESH  = "GUI party switch"
end
