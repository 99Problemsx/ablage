#===============================================================================
# [SC] Battle Rewards Ex - Scoring Engine
#===============================================================================

module BattleScoring
  # Calculate battle rank from tracked metrics
  def self.calculate(metrics)
    score = 0

    # No faints bonus
    if metrics[:party_faints] == 0
      score += BattleRewardsEx::SCORE_NO_FAINTS
    end

    # No items used
    if metrics[:items_used] == 0
      score += BattleRewardsEx::SCORE_NO_ITEMS_USED
    end

    # Turn efficiency
    turns = metrics[:total_turns] || 1
    grace = BattleRewardsEx::SCORE_SPEED_GRACE
    turn_penalty = [0, (turns - grace) * BattleRewardsEx::SCORE_SPEED_PER_TURN].min
    score += BattleRewardsEx::SCORE_SPEED_BASE + turn_penalty

    # Super-effective usage
    if metrics[:se_hits] && metrics[:se_hits] > 0
      se_ratio = metrics[:se_hits].to_f / [metrics[:total_attacks], 1].max
      score += (BattleRewardsEx::SCORE_SE_HITS * se_ratio).round
    end

    # No status conditions taken
    if metrics[:statuses_taken] == 0
      score += BattleRewardsEx::SCORE_NO_STATUS
    end

    score.clamp(0, 100)
  end

  def self.rank_for_score(score)
    BattleRewardsEx::RANK_THRESHOLDS.each do |rank, threshold|
      return rank if score >= threshold
    end
    :C
  end
end

#===============================================================================
# Battle Metrics Tracker
#===============================================================================

class BattleMetrics
  attr_accessor :party_faints, :items_used, :total_turns,
                :se_hits, :total_attacks, :statuses_taken

  def initialize
    reset
  end

  def reset
    @party_faints   = 0
    @items_used     = 0
    @total_turns    = 0
    @se_hits        = 0
    @total_attacks  = 0
    @statuses_taken = 0
  end
end

#===============================================================================
# Save Data — track S-rank count, battle history
#===============================================================================

class BattleRewardsSaveData
  attr_accessor :s_rank_count, :total_ranked, :rank_history

  def initialize
    @s_rank_count = 0
    @total_ranked = 0
    @rank_history = []  # Last 20 results: [rank, score, opponent_name]
  end

  def record(rank, score, opponent = "")
    @total_ranked += 1
    @s_rank_count += 1 if rank == :S
    @rank_history.push([rank, score, opponent])
    @rank_history.shift if @rank_history.length > 20
  end
end

SaveData.register(:battle_rewards_data) do
  save_value { $BattleRewardsData }
  load_value { |val| $BattleRewardsData = val || BattleRewardsSaveData.new }
  new_game_value { BattleRewardsSaveData.new }
end

#===============================================================================
# Global tracker instance (reset each battle)
#===============================================================================

$BattleMetrics = BattleMetrics.new
