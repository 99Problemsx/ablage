#===============================================================================
# Dynamic Difficulty System - Tier Engine
# Maps performance score → AI tier override and applies it before each battle
#===============================================================================

module DynamicDifficulty
  module TierEngine
    #===========================================================================
    # Tier Resolution — converts score to an AI override value
    #===========================================================================

    # Returns [override_value, label] for the current score
    def self.resolve_tier(score = nil)
      score ||= PerformanceTracker.score
      DynamicDifficulty::TIER_THRESHOLDS.each do |max_score, override, label|
        return [override, label] if score <= max_score
      end
      # Fallback: extreme
      last = DynamicDifficulty::TIER_THRESHOLDS.last
      [last[1], last[2]]
    end

    # Human-readable tier name for UI display
    def self.current_tier_label
      _override, label = resolve_tier
      label
    end

    # The numeric override (or nil for "natural")
    def self.current_override_value
      override, _label = resolve_tier
      override
    end

    #===========================================================================
    # Badge-Based Tier Capping
    #===========================================================================

    # Clamps the override so it doesn't exceed the badge-based cap
    def self.apply_badge_cap(override)
      return override unless override
      cap = DynamicDifficulty.max_tier_for_badges
      return override unless cap
      if override > cap
        DynamicDifficulty.log("Badge cap: override #{override} clamped to #{cap}")
        return cap
      end
      override
    end

    #===========================================================================
    # Apply / Clear Override — wires into the AAI's game variable
    #===========================================================================

    # Called before battle: sets the AI mode variable if DDS wants to override
    def self.apply_override
      return unless DynamicDifficulty::ENABLED
      return unless $PokemonSystem&.dynamic_difficulty == 1

      # If an event already set the variable, respect it (boss fights etc.)
      if DynamicDifficulty::RESPECT_EVENT_OVERRIDE
        current = $game_variables[DynamicDifficulty::AI_MODE_VARIABLE] rescue 0
        if current != 0 && !PerformanceTracker.data[:dds_set_override]
          DynamicDifficulty.log("Skipping override — event variable already set to #{current}")
          return
        end
      end

      override = current_override_value
      override = apply_badge_cap(override)

      if override
        $game_variables[DynamicDifficulty::AI_MODE_VARIABLE] = override
        PerformanceTracker.data[:current_override] = override
        PerformanceTracker.data[:dds_set_override] = true
        DynamicDifficulty.log("Applied AI tier override: #{override} (#{current_tier_label}) | score=#{PerformanceTracker.score}")
      else
        # Natural zone — clear any previous DDS override
        clear_override
      end
    end

    # Called after battle: removes DDS-set override so it doesn't bleed
    def self.clear_override
      if PerformanceTracker.data[:dds_set_override]
        $game_variables[DynamicDifficulty::AI_MODE_VARIABLE] = 0
        PerformanceTracker.data[:current_override] = nil
        PerformanceTracker.data[:dds_set_override] = false
        DynamicDifficulty.log("Cleared AI tier override (back to natural)")
      end
    end

    #===========================================================================
    # Summary — debug display of current state
    #===========================================================================

    def self.summary
      score = PerformanceTracker.score
      override, label = resolve_tier(score)
      override = apply_badge_cap(override)
      win_rate = (PerformanceTracker.recent_win_rate * 100).round(1)
      badges = $player&.badge_count rescue 0
      "Score: #{score} | Tier: #{label}#{override ? " (override=#{override})" : ""} | " \
      "Win Rate: #{win_rate}% | W#{PerformanceTracker.win_streak}/L#{PerformanceTracker.loss_streak} | " \
      "Badges: #{badges}"
    end
  end

  #=============================================================================
  # PUBLIC SCRIPT API — for use in events, cutscenes, and other plugins
  #=============================================================================

  # Returns the current performance score (-50..50)
  def self.score
    PerformanceTracker.score
  end

  # Returns the current tier label string ("Beginner", "Mid", etc.)
  def self.current_tier
    TierEngine.current_tier_label
  end

  # Returns the current tier override value (Integer or nil)
  def self.current_override
    TierEngine.current_override_value
  end

  # Returns the recent win rate as a float (0.0..1.0)
  def self.win_rate(window = 10)
    PerformanceTracker.recent_win_rate(window)
  end

  # Returns total tracked battles
  def self.total_battles
    PerformanceTracker.total_battles
  end

  # Temporarily pause DDS (e.g. during a story segment)
  # Clears any active override immediately.
  def self.pause!
    PerformanceTracker.data[:paused] = true
    TierEngine.clear_override
    log("DDS PAUSED via script API")
  end

  # Resume DDS after a pause
  def self.resume!
    PerformanceTracker.data[:paused] = false
    log("DDS RESUMED via script API")
  end

  # Is DDS currently paused?
  def self.paused?
    PerformanceTracker.data[:paused] == true
  end

  # Force a specific score (for debug or story events)
  def self.set_score(value)
    PerformanceTracker.data[:score] = value.clamp(SCORE_MIN, SCORE_MAX)
    log("Score forced to #{PerformanceTracker.score} via script API")
  end

  # Full reset (new game plus, debug)
  def self.reset!
    PerformanceTracker.reset!
  end

  # One-line summary for debug console
  def self.summary
    TierEngine.summary
  end
end
