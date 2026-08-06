#===============================================================================
# Advanced AI System - Deterministic Switch Decisions
#
# Problem (user-reported): at max skill the move choice looks deterministic,
# but whether the AI switches or not still varies between identical runs.
#
# Cause: pbChooseToSwitchOut consults EVERY registered ShouldSwitch /
# ShouldNotSwitch handler (vanilla + Gen9 pack + v21.1 Hotfixes) in insertion
# order, and the vanilla-derived ones roll dice:
#   - :high_damage_from_foe        -> 25-50% chance to switch (002_AI_Switch)
#   - :battler_has_super_effective_move -> 50% chance to VETO a chosen switch
#   - :cure_status_problem_by_switching_out -> 70% rolls (vanilla + Gen9)
#   - :significant_eor_damage      -> 50% roll for Leech Seed
#   - :asleep (v21.1 version)      -> 60% "don't bother" roll
#   - :absorb_foe_move             -> 70% roll + random move pick
#   - :sudden_death                -> HP-based roll
# These fire BEFORE AAI's own scored (fully deterministic) switch handler, so
# they add coin-flips on top of — and sometimes against — AAI's decision.
#
# Fix: while pbChooseToSwitchOut runs for an Advanced-AI-qualified trainer,
# pbAIRandom returns its maximum roll instead of a random one. Every
# chance-gated branch then resolves the same way every time:
#   - "roll < X% to trigger" branches never trigger (the dice-only triggers
#     like :high_damage_from_foe defer to AAI's own scoring), and
#   - "roll < X% to skip" branches never skip (sensible deterministic triggers
#     like the v21.1 :asleep handler fire whenever their conditions are met).
# All purely conditional handler logic (Perish Song, Yawn, useless battler,
# lethal hazards, etc.) is untouched. Trainers below the AAI skill threshold
# keep the vanilla dice. Gated by AdvancedAI::DETERMINISTIC_SWITCH_LOGIC.
#
# The stub works at consultation time, so it also covers dice in handlers
# added by plugins that load after AAI.
#===============================================================================

class Battle::AI
  alias_method :aai_dice_pbChooseToSwitchOut, :pbChooseToSwitchOut unless method_defined?(:aai_dice_pbChooseToSwitchOut) || private_method_defined?(:aai_dice_pbChooseToSwitchOut)

  def pbChooseToSwitchOut(terrible_moves = false)
    suppress = defined?(AdvancedAI::DETERMINISTIC_SWITCH_LOGIC) &&
               AdvancedAI::DETERMINISTIC_SWITCH_LOGIC && @trainer
    if suppress
      skill = (@trainer.instance_variable_get(:@aai_skill_override) rescue nil) || @trainer.skill
      suppress = AdvancedAI.qualifies_for_advanced_ai?(skill)
    end
    return aai_dice_pbChooseToSwitchOut(terrible_moves) unless suppress
    @aai_suppress_decision_dice = true
    begin
      aai_dice_pbChooseToSwitchOut(terrible_moves)
    ensure
      @aai_suppress_decision_dice = false
    end
  end

  alias_method :aai_dice_pbAIRandom, :pbAIRandom unless method_defined?(:aai_dice_pbAIRandom) || private_method_defined?(:aai_dice_pbAIRandom)

  def pbAIRandom(x)
    return [x.to_i - 1, 0].max if @aai_suppress_decision_dice
    aai_dice_pbAIRandom(x)
  end
end
