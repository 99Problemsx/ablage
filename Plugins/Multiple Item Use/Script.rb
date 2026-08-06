#===============================================================================
# Multiple Item Use Plugin
# Version 1.0.0
# Compatible with Bag Screen w/int. Party and Terastallization plugins
#===============================================================================

#===============================================================================
# Standard pbBagUseItem function for multiple item usage
#===============================================================================
def pbBagUseItem(bag, item, scene, screen, chosen, bagscene=nil)
  itm     = GameData::Item.get(item)
  useType = itm.field_use
  found   = false
  pkmn    = $player.party[chosen]
  
  if itm.is_machine?    # TM, HM or TR
    if $player.pokemon_count == 0
      pbMessage(_INTL("There is no Pokémon.")) { screen.pbUpdate }
      return 0
    end
    machine = itm.move
    return 0 if !machine
    movename = GameData::Move.get(machine).name
    move     = GameData::Move.get(machine).id
    movelist = nil; bymachine = false; oneusemachine = false
    if movelist != nil && movelist.is_a?(Array)
      for i in 0...movelist.length
        movelist[i] = GameData::Move.get(movelist[i]).id
      end
    end
    if pkmn.egg?
      pbMessage(_INTL("Eggs can't be taught any moves.")) { screen.pbUpdate }
    elsif pkmn.shadowPokemon?
      pbMessage(_INTL("Shadow Pokémon can't be taught any moves.")) { screen.pbUpdate }
    elsif movelist && !movelist.any? { |j| j == pkmn.species }
      pbMessage(_INTL("{1} can't learn {2}.", pkmn.name, movename)) { screen.pbUpdate }
    elsif !pkmn.compatible_with_move?(move)
      pbMessage(_INTL("{1} can't learn {2}.", pkmn.name, movename)) { screen.pbUpdate }
    else
      if pbLearnMove(pkmn, move, false, bymachine) { screen.pbUpdate }
        pkmn.add_first_move(move) if oneusemachine
        bag.remove(itm) if itm.consumed_after_use?
      end
    end
    screen.pbRefresh; screen.pbUpdate
    return 1
  elsif useType == 1 # Item is usable on a Pokémon
    if $player.pokemon_count == 0
      pbMessage(_INTL("There is no Pokémon.")) { screen.pbUpdate }
      return 0
    end
    qty = 1
    ret = false
    
    # Check for Tera Shards (if Terastallization plugin is available)
    if defined?(GameData::Item) && itm.respond_to?(:is_tera_shard?) && itm.is_tera_shard?
      tera = itm.tera_shard_type
      qty = [1, Settings::TERA_SHARDS_REQUIRED].max
      qty = 1 if !GameData::Type.exists?(tera)
      if !$bag.has?(item, qty)
        pbMessage(_INTL("You don't have enough {1}..." +
                        "\nYou need {2} Tera Shards to change a Pokémon's Tera Type.", itm.portion_name_plural, qty))
        return 0
      end
    else
      # Standard multiple item usage
      max_at_once = ItemHandlers.triggerUseOnPokemonMaximum(item, pkmn)
      max_at_once = [max_at_once, $bag.quantity(item)].min
      if max_at_once > 1
        qty = pbChooseNumber(
          _INTL("How many {1} do you want to use?", GameData::Item.get(item).portion_name_plural), max_at_once
        )
      end
    end
    
    screen.pbRefresh
    if pbCheckUseOnPokemon(item, pkmn, screen) && qty > 0
      if defined?(GameData::Item) && itm.respond_to?(:is_tera_shard?) && itm.is_tera_shard?
        # Tera Shard handling
        ret = ItemHandlers.triggerUseOnPokemon(item, qty, pkmn, screen)
        if ret && useType == 1 && itm.consumed_after_use?
          $bag.remove(item, qty)
          screen.pbRefresh
        end
      else
        # Standard multiple item handling
        ret = ItemHandlers.triggerUseOnPokemon(item, qty, pkmn, screen)
        if ret && useType == 1 && itm.consumed_after_use?
          $bag.remove(item, qty)
          screen.pbRefresh
          # Show confirmation message for multiple items
          if qty > 1
            item_name = qty == 1 ? itm.portion_name : itm.portion_name_plural
            screen.pbDisplay(_INTL("You used {1}x {2}!", qty, item_name)) { screen.pbUpdate }
          end
        end
      end
      
      if !$bag.has?(item)
        if defined?(GameData::Item) && itm.respond_to?(:is_tera_shard?) && itm.is_tera_shard? && qty > 1
          screen.pbDisplay(_INTL("Not enough {1} remaining...", itm.portion_name_plural)) { screen.pbUpdate }
        else
          screen.pbDisplay(_INTL("You used your last {1}.", itm.portion_name)) { screen.pbUpdate }
        end
        # Only change cursor if Bag Screen w/int. Party plugin is available
        if screen.respond_to?(:pbChangeCursor)
          screen.pbChangeCursor(2)
        end
      end
      screen.pbRefresh
    end
    bagscene.pbRefresh if bagscene
    return 1
  else
    pbMessage(_INTL("Can't use that here.")) { screen.pbUpdate }
    return 0
  end
end
