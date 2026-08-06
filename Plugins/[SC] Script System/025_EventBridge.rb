#===============================================================================
# [SC] Event Bridge v1.0.0
#
# Injects EventHandler triggers that [SC] plugins depend on but that
# Pokemon Essentials v21.1 does not natively fire.
#===============================================================================

#===============================================================================
# 1. :on_faint - when any battler faints
#===============================================================================
class Battle::Battler
  alias sc_bridge_pbFaint pbFaint unless method_defined?(:sc_bridge_pbFaint)
  def pbFaint(showMessage = true)
    sc_bridge_pbFaint(showMessage)
    EventHandlers.trigger(:on_faint, @battle, self) if fainted?
  end
end

#===============================================================================
# 2. :on_pokemon_level_up - when a Pokemon gains a level in battle
#===============================================================================
class Battle
  alias sc_bridge_pbGainExpOne pbGainExpOne unless method_defined?(:sc_bridge_pbGainExpOne)
  def pbGainExpOne(idxParty, defeatedBattler, numPartic, expShare, expAll, showMessages = true)
    pkmn = pbParty(0)[idxParty]
    old_level = pkmn&.level || 0
    sc_bridge_pbGainExpOne(idxParty, defeatedBattler, numPartic, expShare, expAll, showMessages)
    if pkmn && pkmn.level > old_level
      EventHandlers.trigger(:on_pokemon_level_up, pkmn)
    end
  end
end

#===============================================================================
# 3. :on_pokemon_evolved - after evolution completes
#===============================================================================
class PokemonEvolutionScene
  alias sc_bridge_pbEvolution pbEvolution unless method_defined?(:sc_bridge_pbEvolution)
  def pbEvolution(cancancel = true)
    old_species = @pokemon&.species
    sc_bridge_pbEvolution(cancancel)
    if @pokemon && @pokemon.species != old_species
      EventHandlers.trigger(:on_pokemon_evolved, @pokemon)
    end
  end
end

#===============================================================================
# 4. :on_pokemon_center_heal - when party is healed at a Pokecenter
#
# Plugins like Challenge Modes' NO_POKEMON_CENTER and LIMITED_HEALING wrap
# pbPokeCenterPC and short-circuit with `return false` when the heal is
# blocked. We respect that — only trigger :on_pokemon_center_heal if the
# inner call didn't explicitly say "blocked". Otherwise downstream listeners
# (Affection happiness gain, Companion reaction, etc.) would think a heal
# happened when none did.
#===============================================================================
alias sc_bridge_pbPokeCenterPC pbPokeCenterPC unless defined?(sc_bridge_pbPokeCenterPC)
def pbPokeCenterPC(*args)
  ret = sc_bridge_pbPokeCenterPC(*args)
  EventHandlers.trigger(:on_pokemon_center_heal) unless ret == false
  return ret
end

#===============================================================================
# 5. :on_pokemon_received - when a Pokemon is added to the party
#===============================================================================
alias sc_bridge_pbAddPokemon pbAddPokemon unless defined?(sc_bridge_pbAddPokemon)
def pbAddPokemon(*args)
  ret = sc_bridge_pbAddPokemon(*args)
  if ret
    pkmn = args[0]
    pkmn = $player.party.last if !pkmn.is_a?(Pokemon)
    EventHandlers.trigger(:on_pokemon_received, pkmn) if pkmn.is_a?(Pokemon)
  end
  return ret
end

alias sc_bridge_pbAddToPartySilent pbAddToPartySilent unless defined?(sc_bridge_pbAddToPartySilent)
def pbAddToPartySilent(*args)
  ret = sc_bridge_pbAddToPartySilent(*args)
  if ret
    pkmn = args[0]
    pkmn = $player.party.last if !pkmn.is_a?(Pokemon)
    EventHandlers.trigger(:on_pokemon_received, pkmn) if pkmn.is_a?(Pokemon)
  end
  return ret
end

alias sc_bridge_pbAddForeignPokemon pbAddForeignPokemon unless defined?(sc_bridge_pbAddForeignPokemon)
def pbAddForeignPokemon(*args)
  ret = sc_bridge_pbAddForeignPokemon(*args)
  if ret
    pkmn = args[0]
    pkmn = $player.party.last if !pkmn.is_a?(Pokemon)
    EventHandlers.trigger(:on_pokemon_received, pkmn) if pkmn.is_a?(Pokemon)
  end
  return ret
end

#===============================================================================
# 6. :on_wild_pokemon_caught - after catching a wild Pokemon
#===============================================================================
class Battle
  alias sc_bridge_pbThrowPokeBall pbThrowPokeBall unless method_defined?(:sc_bridge_pbThrowPokeBall)
  def pbThrowPokeBall(idxBattler, ball, *args)
    battler = @battlers[idxBattler]
    was_captured = battler&.captured
    sc_bridge_pbThrowPokeBall(idxBattler, ball, *args)
    if battler&.captured && !was_captured && battler.pokemon
      EventHandlers.trigger(:on_wild_pokemon_caught, battler.pokemon)
    end
  end
end

# 7. :on_pokemon_ko - handled in unified pbReduceHP hook below (section 16)

#===============================================================================
# 8. :on_battle_turn_end / :on_battle_end_round - end of each battle round
#===============================================================================
class Battle
  alias sc_bridge_pbEndOfRoundPhase pbEndOfRoundPhase unless method_defined?(:sc_bridge_pbEndOfRoundPhase)
  def pbEndOfRoundPhase
    ret = sc_bridge_pbEndOfRoundPhase
    EventHandlers.trigger(:on_battle_turn_end, self)
    EventHandlers.trigger(:on_battle_end_round, self)
    return ret
  end
end

#===============================================================================
# 9. :on_move_usage - after a move finishes
#===============================================================================
class Battle::Move
  alias sc_bridge_pbEndOfMoveUsageEffect pbEndOfMoveUsageEffect unless method_defined?(:sc_bridge_pbEndOfMoveUsageEffect)
  def pbEndOfMoveUsageEffect(user, targets, numHits, switchedBattlers)
    sc_bridge_pbEndOfMoveUsageEffect(user, targets, numHits, switchedBattlers)
    EventHandlers.trigger(:on_move_usage, @battle, self, user, targets)
  end
end

#===============================================================================
# 10. :on_battle_item_use - when a player uses an item in battle
#===============================================================================
class Battle
  alias sc_bridge_pbUseItemOnBattler pbUseItemOnBattler unless method_defined?(:sc_bridge_pbUseItemOnBattler)
  def pbUseItemOnBattler(item, idxParty, userBattler)
    ret = sc_bridge_pbUseItemOnBattler(item, idxParty, userBattler)
    EventHandlers.trigger(:on_battle_item_use, self, item, userBattler)
    return ret
  end

  alias sc_bridge_pbUseItemOnPokemon pbUseItemOnPokemon unless method_defined?(:sc_bridge_pbUseItemOnPokemon)
  def pbUseItemOnPokemon(item, idxParty, userBattler)
    ret = sc_bridge_pbUseItemOnPokemon(item, idxParty, userBattler)
    EventHandlers.trigger(:on_battle_item_use, self, item, userBattler)
    return ret
  end
end

#===============================================================================
# 11. :on_battle_update - once per battle scene frame update
#===============================================================================
class Battle::Scene
  alias sc_bridge_pbFrameUpdate pbFrameUpdate unless method_defined?(:sc_bridge_pbFrameUpdate)
  def pbFrameUpdate(cw = nil)
    sc_bridge_pbFrameUpdate(cw)
    EventHandlers.trigger(:on_battle_update, @battle) if @battle
  end
end

#===============================================================================
# 12. :on_game_load - when a saved game is loaded
#===============================================================================
module Game
  class << self
    alias sc_bridge_load load unless method_defined?(:sc_bridge_load)
  end
  def self.load(save_data)
    sc_bridge_load(save_data)
    EventHandlers.trigger(:on_game_load)
  end
end

#===============================================================================
# 13. :on_game_start - when a new game begins
#===============================================================================
module Game
  class << self
    alias sc_bridge_start_new start_new unless method_defined?(:sc_bridge_start_new)
  end
  def self.start_new(*args)
    sc_bridge_start_new(*args)
    EventHandlers.trigger(:on_game_start)
  end
end

#===============================================================================
# 14. :on_open_pause_menu - when the pause menu opens
#===============================================================================
class Scene_Map
  alias sc_bridge_call_menu call_menu unless method_defined?(:sc_bridge_call_menu)
  def call_menu
    EventHandlers.trigger(:on_open_pause_menu)
    sc_bridge_call_menu
  end
end

# 15. :on_pokemon_stat_calculated - NOT bridged.
# PE's EventHandlers.trigger does not support return values, so the Rune
# System handler (which uses `next value`) cannot modify stats this way.
# Rune stat boosts need a direct calc_stats alias instead.

#===============================================================================
# DIRECT ALIAS HOOKS - Affection Battle Bonuses
# Cannot be implemented via EventHandler procs because they need to
# modify local variables / return values in the calling method.
#===============================================================================

if defined?(PokemonAffection)

  # Affection Endure - handled in unified pbReduceHP hook below (section 16)

  # Affection Crit Boost
  class Battle::Move
    alias sc_affection_pbIsCritical? pbIsCritical? unless method_defined?(:sc_affection_pbIsCritical?)
    def pbIsCritical?(user, target)
      ret = sc_affection_pbIsCritical?(user, target)
      if !ret && PokemonAffection::ENABLED && user.index.even? && user.pokemon
        level = user.pokemon.affection_level
        chance = PokemonAffection::CRIT_BOOST_CHANCE[level] || 0
        if chance > 0 && rand(100) < chance
          ret = true
          @battle.pbDisplay(_INTL(PokemonAffection::MSG_CRIT, user.pokemon.name)) if @battle
        end
      end
      return ret
    end
  end

end
#===============================================================================
# 16. Unified pbReduceHP hook (KO tracking + Affection Endure)
# Consolidated to avoid triple-aliasing pbReduceHP.
#===============================================================================
class Battle::Battler
  alias sc_bridge_unified_pbReduceHP pbReduceHP unless method_defined?(:sc_bridge_unified_pbReduceHP)
  def pbReduceHP(amt, anim = true, registerDamage = true, anyAnim = true)
    # --- Affection Endure check (before damage) ---
    if defined?(PokemonAffection) && PokemonAffection::ENABLED &&
       @index.even? && @hp > 0 && amt >= @hp && @pokemon
      level = @pokemon.affection_level
      chance = PokemonAffection::ENDURE_CHANCE[level] || 0
      if chance > 0 && rand(100) < chance
        amt = @hp - 1
        @battle.pbDisplay(_INTL(PokemonAffection::MSG_ENDURE, @pokemon.name)) if @battle
      end
    end
    # --- Apply damage ---
    was_alive = @hp > 0
    ret = sc_bridge_unified_pbReduceHP(amt, anim, registerDamage, anyAnim)
    # --- KO event (after damage) ---
    if was_alive && fainted? && @battle
      attacker = nil
      @battle.allOtherSideBattlers(@index).each do |b|
        attacker = b if !b.fainted?
        break if attacker
      end
      EventHandlers.trigger(:on_pokemon_ko, @battle, attacker, self) if attacker
    end
    return ret
  end
end

#===============================================================================
# 17. :on_event_interaction - when a map event starts executing
#    Passes the Game_Event object so handlers can scan comment tags.
# 18. :on_event_comment_tag - fires for each [Tag params] in event comments
#    Passes (event, tag_name, params_array).
#===============================================================================
class Interpreter
  alias sc_bridge_setup setup unless method_defined?(:sc_bridge_setup)
  def setup(list, event_id, map_id = nil)
    sc_bridge_setup(list, event_id, map_id)
    if event_id > 0 && $game_map
      event = $game_map.events[event_id]
      if event
        EventHandlers.trigger(:on_event_interaction, event)
        # Parse comment tags and trigger :on_event_comment_tag
        @list&.each do |cmd|
          next unless cmd.code == 108 || cmd.code == 408
          line = cmd.parameters[0].to_s.strip
          if line =~ /\[(\w+)\s*(.*?)\]/
            tag = $1
            params = $2.to_s.strip.split(/\s+/)
            EventHandlers.trigger(:on_event_comment_tag, event, tag, params)
          end
        end
      end
    end
  end
end

