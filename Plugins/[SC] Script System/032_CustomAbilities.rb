#===============================================================================
# Shattered Crowns Script System - Custom Abilities
#===============================================================================
# Define new abilities or modify existing ones in Ruby.
#===============================================================================

module GameData
  #=============================================================================
  # CustomAbility - Define abilities in Ruby
  #=============================================================================
  class CustomAbility < ScriptBase
    @abilities = {}
    
    class << self
      attr_accessor :abilities
    end
    
    #---------------------------------------------------------------------------
    # Define a custom ability
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = AbilityBuilder.new(id)
      yield(builder) if block_given?
      @abilities[id] = builder.to_data
      SCScripts.log("Registered custom ability: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Get ability data
    #---------------------------------------------------------------------------
    def self.get(id)
      @abilities[id]
    end
    
    def self.all
      @abilities
    end
  end
  
  #=============================================================================
  # AbilityBuilder
  #=============================================================================
  class AbilityBuilder
    def initialize(id)
      @id = id
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @description = ""
      
      # Triggers
      @on_switch_in = nil
      @on_switch_out = nil
      @on_end_of_turn = nil
      @on_taking_damage = nil
      @on_dealing_damage = nil
      @on_faint = nil
      @on_stat_change = nil
      @on_status = nil
      
      # Modifiers
      @damage_modifier = nil
      @accuracy_modifier = nil
      @speed_modifier = nil
      @type_immunity = nil
      @weather_immunity = nil
      @stat_boost = nil
    end
    
    def name(text)
      @name = text
    end
    
    def description(text)
      @description = text
    end
    
    #---------------------------------------------------------------------------
    # Trigger callbacks
    #---------------------------------------------------------------------------
    def on_switch_in(&block)
      @on_switch_in = block
    end
    
    def on_switch_out(&block)
      @on_switch_out = block
    end
    
    def on_end_of_turn(&block)
      @on_end_of_turn = block
    end
    
    def on_taking_damage(&block)
      @on_taking_damage = block
    end
    
    def on_dealing_damage(&block)
      @on_dealing_damage = block
    end
    
    def on_faint(&block)
      @on_faint = block
    end
    
    def on_stat_change(&block)
      @on_stat_change = block
    end
    
    def on_status(&block)
      @on_status = block
    end
    
    #---------------------------------------------------------------------------
    # Modifiers
    #---------------------------------------------------------------------------
    def damage_modifier(&block)
      @damage_modifier = block
    end
    
    def accuracy_modifier(&block)
      @accuracy_modifier = block
    end
    
    def speed_modifier(&block)
      @speed_modifier = block
    end
    
    def immune_to_type(*types)
      @type_immunity = types.flatten
    end
    
    def immune_to_weather(*weathers)
      @weather_immunity = weathers.flatten
    end
    
    # Permanent stat boost (like Huge Power)
    def boost_stat(stat, multiplier)
      @stat_boost ||= {}
      @stat_boost[stat] = multiplier
    end
    
    def to_data
      {
        id: @id,
        name: @name,
        description: @description,
        on_switch_in: @on_switch_in,
        on_switch_out: @on_switch_out,
        on_end_of_turn: @on_end_of_turn,
        on_taking_damage: @on_taking_damage,
        on_dealing_damage: @on_dealing_damage,
        on_faint: @on_faint,
        on_stat_change: @on_stat_change,
        on_status: @on_status,
        damage_modifier: @damage_modifier,
        accuracy_modifier: @accuracy_modifier,
        speed_modifier: @speed_modifier,
        type_immunity: @type_immunity,
        weather_immunity: @weather_immunity,
        stat_boost: @stat_boost
      }
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::CustomAbility.define :SHADOW_CLOAK do |a|
#   a.name "Shadow Cloak"
#   a.description "Evades attacks more easily in the dark."
#   
#   a.accuracy_modifier do |user, target, move, accuracy|
#     if $game_screen.weather_type == :Sandstorm
#       accuracy * 0.8  # 20% evasion boost
#     else
#       accuracy
#     end
#   end
# end
#
# GameData::CustomAbility.define :VENGEFUL_SPIRIT do |a|
#   a.name "Vengeful Spirit"
#   a.description "Attack rises sharply when an ally faints."
#   
#   a.on_faint do |pokemon, battle|
#     pokemon.pbRaiseStatStage(:ATTACK, 2, pokemon)
#     battle.pbDisplay("#{pokemon.name}'s Vengeful Spirit activated!")
#   end
# end
#
# GameData::CustomAbility.define :ELEMENTAL_SHIELD do |a|
#   a.name "Elemental Shield"
#   a.description "Immune to Fire and Ice type moves."
#   a.immune_to_type :FIRE, :ICE
# end
