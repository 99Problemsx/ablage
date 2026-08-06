#===============================================================================
# Mega Stone Consumption
#===============================================================================
# After a Pokémon Mega Evolves, its Mega Stone is permanently consumed.
# The item is removed from the Pokémon and NOT restored at end of battle.
#===============================================================================

class Battle
  alias sc_consume_mega_stone_pbMegaEvolve pbMegaEvolve unless method_defined?(:sc_consume_mega_stone_pbMegaEvolve)
  def pbMegaEvolve(idxBattler)
    battler = @battlers[idxBattler]
    # Remember if the battler had a mega stone before evolving
    had_mega_stone = battler && battler.pokemon && battler.item_id &&
                     GameData::Item.try_get(battler.item_id)&.is_mega_stone?
    mega_stone_name = battler.itemName if had_mega_stone
    # Perform the actual Mega Evolution
    sc_consume_mega_stone_pbMegaEvolve(idxBattler)
    # After Mega Evolution, consume the Mega Stone
    return unless had_mega_stone && battler.mega?
    # Remove the item from the battler
    battler.item = nil
    # Clear initialItems so the stone is NOT restored at end of battle
    if battler.pbOwnedByPlayer?
      party_index = battler.pokemonIndex
      @initialItems[0][party_index] = nil if @initialItems[0]
    end
    # Also remove from the underlying Pokémon object directly
    battler.pokemon.item = nil if battler.pokemon
    pbDisplay(_INTL("The {1} was consumed by the Mega Evolution energy!", mega_stone_name))
  end
end
