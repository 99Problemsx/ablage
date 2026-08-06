#===============================================================================
# [SC] Pokemon Affection - Battle Bonuses
# Endure, Crit Boost, Status Cure, EXP Boost
#===============================================================================
# NOTE: Endure and Crit Boost are now implemented as direct alias hooks
# in [SC] Script System / 025_EventBridge.rb because EventHandler procs
# cannot modify the caller's local variables (e.g. damage, crit result).
#
# Status Cure uses :on_battle_turn_end which IS now triggered by the bridge.
# EXP Boost is handled by PE's built-in AFFECTION_EFFECTS (line 155-158
# of 003_Battle_ExpAndMoveLearning.rb).
#===============================================================================

#===============================================================================
# Affection Status Cure (end of turn) — works via :on_battle_turn_end bridge
#===============================================================================

EventHandlers.add(:on_battle_turn_end, :sc_affection_status_cure,
  proc { |battle|
    next unless PokemonAffection::ENABLED
    battle.allSameSideBattlers(0).each do |battler|
      next unless battler && battler.pokemon
      next unless battler.status != :NONE
      pkmn = battler.pokemon
      level = pkmn.affection_level
      chance = PokemonAffection::STATUS_CURE_CHANCE[level] || 0
      next if chance == 0
      if rand(100) < chance
        old_status = battler.status.to_s.downcase
        battler.pbCureStatus(false)
        battle.pbDisplay(_INTL(PokemonAffection::MSG_CURE, pkmn.name, old_status))
      end
    end
  }
)
