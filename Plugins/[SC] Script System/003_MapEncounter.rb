#===============================================================================
# Shattered Crowns Script System - MapEncounter
#===============================================================================
# DSL for defining wild Pokemon encounters on maps.
#===============================================================================

module GameData
  class MapEncounter
    # Storage for encounter definitions
    @encounters = {}
    @current_type = nil
    @current_density = nil
    @current_slots = []
    
    class << self
      attr_accessor :map_id, :encounters, :current_type, :current_density, :current_slots
    end
    
    #---------------------------------------------------------------------------
    # Register an encounter type (e.g., :Land, :Water, :Cave)
    #---------------------------------------------------------------------------
    def self.register(encounter_type, density = 25, &block)
      @current_type = encounter_type
      @current_density = density
      @current_slots = []
      
      instance_eval(&block) if block_given?
      
      # Store the encounter data
      @encounters[@current_type] = {
        density: @current_density,
        slots: @current_slots.dup
      }
      
      # Register to the game system
      register_to_game_data(@current_type)
      
      @current_type = nil
      @current_density = nil
      @current_slots = []
    end
    
    #---------------------------------------------------------------------------
    # Add an encounter slot
    # Usage: add(chance, Pokemon.new(:PIDGEY), level(2, 4))
    # or:    add(30, Pokemon.new(:PIDGEY, level: [2, 4]))
    #---------------------------------------------------------------------------
    def self.add(chance, pokemon, level_range = nil)
      slot = {
        chance: chance,
        species: pokemon.is_a?(Pokemon) ? pokemon.species : pokemon[:species],
        level_min: nil,
        level_max: nil
      }
      
      # Handle level range
      if level_range.is_a?(Hash)
        slot[:level_min] = level_range[:min]
        slot[:level_max] = level_range[:max]
      elsif level_range.is_a?(Array)
        slot[:level_min] = level_range[0]
        slot[:level_max] = level_range[1]
      elsif pokemon.is_a?(Hash) && pokemon[:level]
        slot[:level_min] = pokemon[:level][0]
        slot[:level_max] = pokemon[:level][1]
      end
      
      @current_slots << slot
    end
    
    #---------------------------------------------------------------------------
    # Helper method for level ranges
    #---------------------------------------------------------------------------
    def self.level(min, max)
      { min: min, max: max }
    end
    
    #---------------------------------------------------------------------------
    # Pokemon helper class for cleaner DSL
    #---------------------------------------------------------------------------
    def self.Pokemon
      EncounterPokemon
    end
    
    #---------------------------------------------------------------------------
    # Register encounters to the game system
    #---------------------------------------------------------------------------
    def self.register_to_game_data(encounter_type)
      return unless @map_id && @encounters[encounter_type]
      ScriptRegistry.register_encounter(@map_id, encounter_type, @encounters[encounter_type])
    end
    
    #---------------------------------------------------------------------------
    # Inherit and set map ID
    #---------------------------------------------------------------------------
    def self.inherited(subclass)
      if defined?(GameData::ScriptBase) && GameData::ScriptBase.current_map_id
        subclass.map_id = GameData::ScriptBase.current_map_id 
      end
      subclass.encounters = {}
    end
  end
  
  #=============================================================================
  # Helper class for Pokemon in encounters
  #=============================================================================
  class EncounterPokemon
    attr_reader :species, :level, :form, :gender
    
    def self.new(species, options = {})
      pokemon = allocate
      pokemon.instance_variable_set(:@species, species)
      pokemon.instance_variable_set(:@level, options[:level])
      pokemon.instance_variable_set(:@form, options[:form] || 0)
      pokemon.instance_variable_set(:@gender, options[:gender])
      pokemon
    end
  end
end

#===============================================================================
# Top-level helper for cleaner syntax
#===============================================================================
def Pokemon
  GameData::EncounterPokemon
end
