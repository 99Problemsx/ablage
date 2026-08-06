#===============================================================================
# Dynamic Difficulty System - Battle Hooks
# Hooks into Essentials' battle flow to record results and apply tier overrides
#===============================================================================

module DynamicDifficulty
  module BattleHooks
    #===========================================================================
    # Extract battle statistics from a finished battle
    #===========================================================================

    # Called from the pbEndOfBattle alias; gathers everything the
    # PerformanceTracker needs.
    #
    # @param battle [Battle] the Essentials battle object
    # @param decision [Integer] 1=win, 2=loss, 3=draw/flee, 4=run, 5=capture
    # @return [Hash, nil] stats hash, or nil if DDS shouldn't track this battle
    def self.extract_battle_stats(battle, decision)
      # Only track wins (1) and losses (2)
      return nil unless [1, 2].include?(decision)

      # Only track trainer battles (wild battles are too variable)
      return nil unless battle.trainerBattle?

      # Count fainted Pokémon on each side
      player_party   = battle.pbParty(0)
      opponent_party = battle.pbParty(1)

      player_fainted = player_party.count { |p| p && !p.egg? && p.fainted? }
      player_total   = player_party.count { |p| p && !p.egg? }
      opp_fainted    = opponent_party.count { |p| p && !p.egg? && p.fainted? }
      opp_total      = opponent_party.count { |p| p && !p.egg? }

      # Average level of each side for level-difference scaling
      player_levels = player_party.select { |p| p && !p.egg? }.map(&:level)
      opp_levels    = opponent_party.select { |p| p && !p.egg? }.map(&:level)
      avg_player_lv = player_levels.empty? ? 50 : (player_levels.sum.to_f / player_levels.size)
      avg_opp_lv    = opp_levels.empty?    ? 50 : (opp_levels.sum.to_f / opp_levels.size)

      # Trainer class for difficulty weighting
      trainer_class = nil
      if battle.opponent && battle.opponent.is_a?(Array)
        trainer_class = battle.opponent[0]&.trainer_type rescue nil
      elsif battle.opponent
        trainer_class = battle.opponent.trainer_type rescue nil
      end

      {
        won:              (decision == 1),
        turns:            battle.turnCount || 0,
        player_fainted:   player_fainted,
        player_total:     [player_total, 1].max,
        opponent_fainted:  opp_fainted,
        opponent_total:    [opp_total, 1].max,
        avg_player_level:  avg_player_lv,
        avg_opp_level:     avg_opp_lv,
        trainer_class:     trainer_class
      }
    end

    #===========================================================================
    # Main post-battle callback
    #===========================================================================

    def self.on_battle_end(battle, decision)
      return unless DynamicDifficulty::ENABLED
      return unless $PokemonSystem&.dynamic_difficulty == 1
      return if DynamicDifficulty.paused?

      stats = extract_battle_stats(battle, decision)
      return unless stats

      # Record the battle in the performance tracker
      DynamicDifficulty::PerformanceTracker.record_battle(stats)

      # Log the new state
      DynamicDifficulty.log(DynamicDifficulty::TierEngine.summary)
    end

    #===========================================================================
    # Pre-battle: apply the DDS tier override
    #===========================================================================

    def self.before_battle(battle = nil)
      return unless DynamicDifficulty::ENABLED
      return unless $PokemonSystem&.dynamic_difficulty == 1
      return if DynamicDifficulty.paused?

      # Clear competitive set tracking from prior battle
      DynamicDifficulty::CompetitiveSets.clear_applied

      DynamicDifficulty::TierEngine.apply_override
      # Build a fresh team from species pools (if applicable for this tier)
      DynamicDifficulty::TeamBuilder.build_team(battle) if battle
      # Scale the opponent's team after the tier override is in effect
      DynamicDifficulty::TeamScaler.scale_team(battle) if battle
    end

    #===========================================================================
    # Post-battle: clear the DDS tier override
    #===========================================================================

    def self.after_battle
      DynamicDifficulty::TierEngine.clear_override
    end
  end
end

#===============================================================================
# Hook into Battle#pbEndOfBattle (post-battle recording + tier clear)
#===============================================================================

class Battle
  alias dds_pbEndOfBattle pbEndOfBattle unless method_defined?(:dds_pbEndOfBattle)
  def pbEndOfBattle
    ret = dds_pbEndOfBattle
    # Record performance and clear DDS override after battle ends
    DynamicDifficulty::BattleHooks.on_battle_end(self, ret)
    DynamicDifficulty::BattleHooks.after_battle
    ret
  end
end

#===============================================================================
# Hook into battle start — apply DDS tier override before the fight begins
# We alias pbStartBattle in Battle so the override is in effect for AI choices.
#===============================================================================

class Battle
  alias dds_pbStartBattle pbStartBattle unless method_defined?(:dds_pbStartBattle)
  def pbStartBattle
    DynamicDifficulty::BattleHooks.before_battle(self)
    dds_pbStartBattle
  end
end
