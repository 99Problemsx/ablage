#===============================================================================
# [SC] Battle Rewards Ex - Battle Hooks & Display
#===============================================================================

#===============================================================================
# Track metrics during battle
#===============================================================================

EventHandlers.add(:on_start_battle, :sc_rewards_start,
  proc {
    next unless BattleRewardsEx::ENABLED
    $BattleMetrics ||= BattleMetrics.new
    $BattleMetrics.reset
  }
)

# Track faints
EventHandlers.add(:on_faint, :sc_rewards_faint,
  proc { |_battle, battler|
    next unless BattleRewardsEx::ENABLED
    next unless $BattleMetrics
    # Player's side = even indices (0, 2)
    if battler.index.even?
      $BattleMetrics.party_faints += 1
    end
  }
)

# Track item usage
EventHandlers.add(:on_battle_item_use, :sc_rewards_item,
  proc { |_battle, _item, _battler|
    next unless BattleRewardsEx::ENABLED
    next unless $BattleMetrics
    $BattleMetrics.items_used += 1
  }
)

# Track move usage and super-effectiveness
EventHandlers.add(:on_move_usage, :sc_rewards_move,
  proc { |_battle, move, user, targets|
    next unless BattleRewardsEx::ENABLED
    next unless $BattleMetrics
    next unless user.index.even?  # Player's side

    $BattleMetrics.total_attacks += 1 if move.damagingMove?
    targets.each do |target|
      next unless target.index.odd?  # Opponent's side
      effectiveness = target.damageState.typeMod if target.damageState
      if effectiveness && Effectiveness.super_effective?(effectiveness)
        $BattleMetrics.se_hits += 1
      end
    end
  }
)

# Track turns
EventHandlers.add(:on_battle_turn_end, :sc_rewards_turn,
  proc { |_battle|
    next unless BattleRewardsEx::ENABLED
    next unless $BattleMetrics
    $BattleMetrics.total_turns += 1
  }
)

#===============================================================================
# End of battle — calculate rank and award rewards
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_rewards_end,
  proc { |decision, _canLose|
    next unless BattleRewardsEx::ENABLED
    next unless $BattleMetrics
    next unless decision == 1  # Win only
    next if BattleRewardsEx::SKIP_WILD && !$game_temp.respond_to?(:last_trainer_name)

    # Check minimum party size
    # (Skip if opponent had too few Pokemon)
    next if $BattleMetrics.total_turns < 1

    score = BattleScoring.calculate({
      party_faints:   $BattleMetrics.party_faints,
      items_used:     $BattleMetrics.items_used,
      total_turns:    $BattleMetrics.total_turns,
      se_hits:        $BattleMetrics.se_hits,
      total_attacks:  $BattleMetrics.total_attacks,
      statuses_taken: $BattleMetrics.statuses_taken
    })

    rank = BattleScoring.rank_for_score(score)
    opponent_name = ""

    # Record
    $BattleRewardsData ||= BattleRewardsSaveData.new
    $BattleRewardsData.record(rank, score, opponent_name)

    # Display rank
    pbSEPlay(BattleRewardsEx::SE_RANK_REVEAL)
    pbMessage(_INTL("\\n\\c[1]Battle Rank: {1}\\c[0]  (Score: {2}/100)", rank.to_s, score))

    # Award reward
    rewards = BattleRewardsEx::RANK_REWARDS[rank]
    if rewards && !rewards.empty?
      reward = rewards.sample
      item_sym, qty = reward
      if GameData::Item.exists?(item_sym)
        $bag.add(item_sym, qty)
        item_name = GameData::Item.get(item_sym).name
        pbSEPlay(BattleRewardsEx::SE_REWARD)
        pbMessage(_INTL("\\nBonus reward: {1} x{2}!", item_name, qty))
      end
    end
  }
)
