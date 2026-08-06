#===============================================================================
# Dynamic Difficulty System - Performance Tracker
# Tracks battle outcomes, streaks, and player performance metrics
#===============================================================================

module DynamicDifficulty
  module PerformanceTracker
    #===========================================================================
    # Default Data — the initial state for a new game
    #===========================================================================

    def self.default_data
      {
        # Current performance score (-50..50)
        :score            => 0,

        # Streak tracking
        :win_streak       => 0,
        :loss_streak      => 0,

        # Lifetime counters
        :total_wins       => 0,
        :total_losses     => 0,
        :total_battles    => 0,

        # Rolling history of recent battles (newest first)
        # Each entry: { :won, :turns, :player_fainted, :player_total,
        #               :opponent_fainted, :opponent_total, :timestamp }
        :history          => [],

        # Current AI tier override applied (nil = natural)
        :current_override => nil,

        # Whether DDS set the override (so we know to clear it)
        :dds_set_override => false
      }
    end

    #===========================================================================
    # Data Access Helpers
    #===========================================================================

    def self.data
      $DynamicDifficultyData ||= default_data
      # Migration: add :total_battles for saves that predate this field
      $DynamicDifficultyData[:total_battles] ||= (
        ($DynamicDifficultyData[:total_wins] || 0) +
        ($DynamicDifficultyData[:total_losses] || 0)
      )
      $DynamicDifficultyData
    end

    def self.score
      data[:score]
    end

    def self.win_streak
      data[:win_streak]
    end

    def self.loss_streak
      data[:loss_streak]
    end

    def self.total_wins
      data[:total_wins]
    end

    def self.total_losses
      data[:total_losses]
    end

    def self.total_battles
      data[:total_battles]
    end

    def self.history
      data[:history]
    end

    def self.current_override
      data[:current_override]
    end

    #===========================================================================
    # Score Manipulation
    #===========================================================================

    # Clamps the performance score within configured boundaries
    def self.clamp_score
      data[:score] = data[:score].clamp(DynamicDifficulty::SCORE_MIN, DynamicDifficulty::SCORE_MAX)
    end

    # Applies decay toward 0 (prevents runaway scores)
    def self.apply_decay
      if data[:score] > 0
        data[:score] = [data[:score] - DynamicDifficulty::DECAY_RATE, 0].max
      elsif data[:score] < 0
        data[:score] = [data[:score] + DynamicDifficulty::DECAY_RATE, 0].min
      end
    end

    #===========================================================================
    # Battle Recording
    #===========================================================================

    # Records a battle outcome and updates all tracking data
    # @param result [Hash] Battle statistics:
    #   :won              [Boolean] Did the player win?
    #   :turns            [Integer] Number of turns the battle lasted
    #   :player_fainted   [Integer] Player Pokemon that fainted
    #   :player_total     [Integer] Total player Pokemon in party
    #   :opponent_fainted [Integer] Opponent Pokemon that fainted
    #   :opponent_total   [Integer] Total opponent Pokemon
    #   :avg_player_level [Float]   Average player party level
    #   :avg_opp_level    [Float]   Average opponent party level
    #   :trainer_class    [Symbol]  Opponent trainer class (e.g. :LEADER)
    def self.record_battle(result)
      return unless DynamicDifficulty::ENABLED
      return unless $PokemonSystem&.dynamic_difficulty == 1

      won = result[:won]

      # --- Update lifetime counters ---
      data[:total_battles] += 1
      if won
        data[:win_streak] += 1
        data[:loss_streak] = 0
        data[:total_wins] += 1
      else
        data[:loss_streak] += 1
        data[:win_streak] = 0
        data[:total_losses] += 1
      end

      # --- Save to history (always, even during grace period) ---
      entry = result.merge(:timestamp => Time.now.to_i)
      data[:history].unshift(entry)
      data[:history] = data[:history].first(DynamicDifficulty::HISTORY_SIZE)

      # --- Grace period: don't adjust score for the first N battles ---
      if data[:total_battles] <= DynamicDifficulty::GRACE_PERIOD
        DynamicDifficulty.log("Grace period: battle #{data[:total_battles]}/#{DynamicDifficulty::GRACE_PERIOD} — skipping score change")
        return
      end

      # --- Calculate score change ---
      delta = calculate_score_delta(result)

      # --- Apply decay first, then delta ---
      apply_decay
      data[:score] += delta
      clamp_score

      DynamicDifficulty.log("Battle recorded: #{won ? 'WIN' : 'LOSS'} | " \
        "delta=#{delta} | score=#{data[:score]} | " \
        "streak=W#{data[:win_streak]}/L#{data[:loss_streak]}")
    end

    #===========================================================================
    # Score Delta Calculation
    #===========================================================================

    def self.calculate_score_delta(result)
      won = result[:won]

      # Base value
      base = won ? DynamicDifficulty::WIN_BASE : DynamicDifficulty::LOSS_BASE

      # Streak bonus
      streak = won ? data[:win_streak] : data[:loss_streak]
      streak_bonus = [streak * DynamicDifficulty::STREAK_STEP, DynamicDifficulty::STREAK_CAP].min
      streak_bonus = -streak_bonus unless won

      # Dominance factor: how cleanly did the player win/lose?
      dominance = calculate_dominance(result)

      # Level-difference scaling: reduce dominance if vastly over/under-levelled
      dominance = apply_level_scaling(dominance, result)

      delta = base + streak_bonus + dominance

      # Trainer class weighting
      delta = apply_trainer_weight(delta, result)

      # Oscillation damping
      delta = apply_oscillation_damping(delta)

      DynamicDifficulty.log("  Delta breakdown: base=#{base} streak=#{streak_bonus} " \
        "dominance=#{dominance} final=#{delta}")
      delta
    end

    # Measures how dominant the outcome was
    # Winning with 0 faints = dominant.  Losing with many faints = devastating.
    def self.calculate_dominance(result)
      won = result[:won]
      player_fainted   = result[:player_fainted]   || 0
      player_total     = result[:player_total]      || 6
      opponent_fainted = result[:opponent_fainted]  || 0
      opponent_total   = result[:opponent_total]    || 6
      turns            = result[:turns]             || 20

      if won
        # Clean sweep bonus: fewer own faints = more dominant
        faint_ratio = 1.0 - (player_fainted.to_f / [player_total, 1].max)
        # Speed bonus: fewer turns = more dominant
        speed_factor = turns <= 10 ? 1.0 : (turns <= 20 ? 0.5 : 0.0)
        raw = (faint_ratio * 4 + speed_factor * 2).round
        [raw, DynamicDifficulty::DOMINANCE_WIN_CAP].min
      else
        # Devastating loss: more own faints + fewer opponent faints = worse
        faint_ratio = player_fainted.to_f / [player_total, 1].max
        opp_survival = 1.0 - (opponent_fainted.to_f / [opponent_total, 1].max)
        raw = -((faint_ratio * 2 + opp_survival * 2).round)
        [raw, DynamicDifficulty::DOMINANCE_LOSS_CAP].max
      end
    end

    #===========================================================================
    # Level Difference Scaling
    #===========================================================================

    # Reduces dominance bonus when the player is significantly over-levelled
    def self.apply_level_scaling(dominance, result)
      avg_player = result[:avg_player_level] || 50
      avg_opp    = result[:avg_opp_level]    || 50
      gap = avg_player - avg_opp

      if gap >= DynamicDifficulty::LEVEL_GAP_THRESHOLD
        # Player is over-levelled: wins are less impressive
        scaled = (dominance * DynamicDifficulty::LEVEL_GAP_REDUCTION).round
        DynamicDifficulty.log("  Level gap #{gap.round}: dominance #{dominance} → #{scaled}")
        return scaled
      elsif gap <= -DynamicDifficulty::LEVEL_GAP_THRESHOLD
        # Player is under-levelled: losses are more forgivable
        scaled = (dominance * DynamicDifficulty::LEVEL_GAP_REDUCTION).round
        DynamicDifficulty.log("  Level gap #{gap.round}: dominance #{dominance} → #{scaled}")
        return scaled
      end

      dominance
    end

    #===========================================================================
    # Trainer Class Weighting
    #===========================================================================

    # Scales the total delta based on the opponent's trainer class
    def self.apply_trainer_weight(delta, result)
      tc = result[:trainer_class]
      return delta unless tc

      weight = DynamicDifficulty::TRAINER_CLASS_WEIGHTS.fetch(
        tc, DynamicDifficulty::TRAINER_CLASS_DEFAULT_WEIGHT
      )
      scaled = (delta * weight).round
      if weight != DynamicDifficulty::TRAINER_CLASS_DEFAULT_WEIGHT
        DynamicDifficulty.log("  Trainer class #{tc}: delta #{delta} × #{weight} = #{scaled}")
      end
      scaled
    end

    #===========================================================================
    # Oscillation Damping
    #===========================================================================

    # Detects W-L-W-L alternation and dampens the score change
    def self.apply_oscillation_damping(delta)
      window = DynamicDifficulty::DAMPING_WINDOW
      recent = data[:history].first(window)
      return delta if recent.size < window

      # Check if results alternate: W-L-W-L or L-W-L-W
      alternating = true
      (1...recent.size).each do |i|
        if recent[i][:won] == recent[i - 1][:won]
          alternating = false
          break
        end
      end

      if alternating
        damped = (delta * DynamicDifficulty::DAMPING_FACTOR).round
        DynamicDifficulty.log("  Oscillation detected: delta #{delta} → #{damped}")
        return damped
      end

      delta
    end

    #===========================================================================
    # Analytics — recent performance window
    #===========================================================================

    # Win rate of the last N battles
    def self.recent_win_rate(window = 10)
      recent = data[:history].first(window)
      return 0.5 if recent.empty?
      wins = recent.count { |b| b[:won] }
      wins.to_f / recent.size
    end

    # Average turns per battle in recent history
    def self.avg_turns(window = 10)
      recent = data[:history].first(window)
      return 20 if recent.empty?
      total = recent.sum { |b| b[:turns] || 20 }
      total.to_f / recent.size
    end

    # Reset all DDS data (for debug or new game plus)
    def self.reset!
      $DynamicDifficultyData = default_data
      DynamicDifficulty.log("Tracker RESET")
    end
  end
end
