#===============================================================================
# Shattered Crowns Script System - Custom Items
#===============================================================================
# Define new items with custom effects in Ruby.
#===============================================================================

module GameData
  #=============================================================================
  # CustomItem - Define items in Ruby
  #=============================================================================
  class CustomItem < ScriptBase
    @items = {}
    
    class << self
      attr_accessor :items
    end
    
    #---------------------------------------------------------------------------
    # Define a custom item
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = ItemBuilder.new(id)
      yield(builder) if block_given?
      @items[id] = builder.to_data
      SCScripts.log("Registered custom item: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Use an item
    #---------------------------------------------------------------------------
    def self.use(id, target = nil)
      item = @items[id]
      return false unless item
      
      if item[:on_use]
        item[:on_use].call(target)
        return true
      end
      
      false
    end
    
    #---------------------------------------------------------------------------
    # Get item data
    #---------------------------------------------------------------------------
    def self.get(id)
      @items[id]
    end
    
    def self.all
      @items
    end
  end
  
  #=============================================================================
  # ItemBuilder
  #=============================================================================
  class ItemBuilder
    def initialize(id)
      @id = id
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @description = ""
      @pocket = 1  # Items pocket
      @price = 0
      @consumable = true
      @usable_in_battle = false
      @usable_on_pokemon = false
      @usable_overworld = true
      
      # Effects
      @on_use = nil
      @on_use_pokemon = nil
      @in_battle_use = nil
      @held_effect = nil
    end
    
    def name(text)
      @name = text
    end
    
    def description(text)
      @description = text
    end
    
    def pocket(num)
      @pocket = num
    end
    
    def price(amount)
      @price = amount
    end
    
    def consumable(val = true)
      @consumable = val
    end
    
    def key_item
      @pocket = 8  # Key Items pocket
      @consumable = false
    end
    
    def medicine
      @pocket = 2  # Medicine pocket
      @usable_on_pokemon = true
    end
    
    def battle_item
      @usable_in_battle = true
    end
    
    #---------------------------------------------------------------------------
    # Effect callbacks
    #---------------------------------------------------------------------------
    
    # General use (overworld)
    def on_use(&block)
      @on_use = block
      @usable_overworld = true
    end
    
    # Use on Pokemon
    def on_use_pokemon(&block)
      @on_use_pokemon = block
      @usable_on_pokemon = true
    end
    
    # Battle use
    def in_battle(&block)
      @in_battle_use = block
      @usable_in_battle = true
    end
    
    # Held item effect
    def when_held(&block)
      @held_effect = block
    end
    
    #---------------------------------------------------------------------------
    # Common effects helpers
    #---------------------------------------------------------------------------
    def heals_hp(amount)
      on_use_pokemon do |pokemon, item|
        if pokemon.hp < pokemon.totalhp
          pokemon.hp = [pokemon.hp + amount, pokemon.totalhp].min
          pbMessage("#{pokemon.name} recovered #{amount} HP!")
          true
        else
          pbMessage("It won't have any effect.")
          false
        end
      end
    end
    
    def cures_status(*statuses)
      on_use_pokemon do |pokemon, item|
        if statuses.include?(pokemon.status) || statuses.include?(:any)
          pokemon.status = :NONE
          pbMessage("#{pokemon.name} was cured!")
          true
        else
          pbMessage("It won't have any effect.")
          false
        end
      end
    end
    
    def teaches_move(move)
      on_use_pokemon do |pokemon, item|
        if pokemon.compatibleWithMove?(move)
          pokemon.learn_move(move)
          true
        else
          pbMessage("#{pokemon.name} can't learn this move.")
          false
        end
      end
    end
    
    def boosts_stat_in_battle(stat, stages)
      in_battle do |pokemon, battler, battle|
        battler.pbRaiseStatStage(stat, stages, battler)
      end
    end
    
    def to_data
      {
        id: @id,
        name: @name,
        description: @description,
        pocket: @pocket,
        price: @price,
        consumable: @consumable,
        usable_in_battle: @usable_in_battle,
        usable_on_pokemon: @usable_on_pokemon,
        usable_overworld: @usable_overworld,
        on_use: @on_use,
        on_use_pokemon: @on_use_pokemon,
        in_battle_use: @in_battle_use,
        held_effect: @held_effect
      }
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::CustomItem.define :MEGA_ELIXIR do |item|
#   item.name "Mega Elixir"
#   item.description "Fully restores the HP and PP of all party Pokemon."
#   item.medicine
#   item.price 5000
#   
#   item.on_use do
#     $player.party.each do |poke|
#       poke.heal_HP
#       poke.heal_PP
#     end
#     pbMessage("All Pokemon were fully restored!")
#     true
#   end
# end
#
# GameData::CustomItem.define :STAT_BOOSTER do |item|
#   item.name "Power Candy"
#   item.description "Raises Attack in battle."
#   item.battle_item
#   item.boosts_stat_in_battle(:ATTACK, 2)
# end
#
# GameData::CustomItem.define :SHADOW_STONE do |item|
#   item.name "Shadow Stone"
#   item.description "A mysterious stone that pulses with dark energy."
#   item.key_item
#   
#   item.on_use do
#     pbMessage("The Shadow Stone pulses ominously...")
#     SW.set(SW::USED_SHADOW_STONE)
#     true
#   end
# end
#
# GameData::CustomItem.define :LUCKY_CHARM do |item|
#   item.name "Lucky Charm"
#   item.description "When held, increases critical hit ratio."
#   item.consumable false
#   
#   item.when_held do |pokemon, holder|
#     # Increase crit ratio
#     holder.effects[:CriticalBoost] = 1
#   end
# end
