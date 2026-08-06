#===============================================================================
# Shattered Crowns Script System - GameData Base
#===============================================================================
# Core module and base class for all GameData types.
# Provides a complete registry system that replaces PBS data loading.
#===============================================================================

module GameData
  #=============================================================================
  # ScriptRegistry - Central registry for ALL game data
  #=============================================================================
  module ScriptRegistry
    #---------------------------------------------------------------------------
    # Storage for all data types
    #---------------------------------------------------------------------------
    @maps = {}
    @encounters = {}
    @trainers = {}
    @trainer_types = {}
    @animations = {}
    @pokemon = {}
    @pokemon_forms = {}
    @moves = {}
    @abilities = {}
    @items = {}
    @types = {}
    @type_chart = {}
    @map_connections = []
    @regional_dexes = {}
    @town_map = {}
    @metadata = {}
    
    # Tracking for PBS replacement
    @compiled = false
    @load_order = []
    
    class << self
      attr_accessor :maps, :encounters, :trainers, :trainer_types, :animations
      attr_accessor :pokemon, :pokemon_forms, :moves, :abilities, :items
      attr_accessor :types, :type_chart, :map_connections
      attr_accessor :regional_dexes, :town_map, :metadata
      attr_accessor :compiled, :load_order
    end
    
    #---------------------------------------------------------------------------
    # Map Data Registration
    #---------------------------------------------------------------------------
    def self.register_map(map_id, data)
      @maps[map_id] = data
      SCScripts.debug("Registered map data for Map #{map_id}")
    end
    
    def self.register_encounter(key, data)
      @encounters[key] = data
      SCScripts.debug("Registered encounters: #{key}")
    end
    
    def self.register_trainer(key, data)
      @trainers[key] = data
      SCScripts.debug("Registered trainer: #{key}")
    end
    
    def self.register_trainer_type(id, data)
      @trainer_types[id] = data
      SCScripts.debug("Registered trainer type: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Pokemon Data Registration
    #---------------------------------------------------------------------------
    def self.register_pokemon(id, data)
      @pokemon[id] = data
      @load_order << [:pokemon, id] unless @load_order.include?([:pokemon, id])
      SCScripts.debug("Registered Pokemon: #{id}")
    end
    
    def self.register_pokemon_form(species, form, data)
      @pokemon_forms[species] ||= {}
      @pokemon_forms[species][form] = data
      SCScripts.debug("Registered Pokemon form: #{species} Form #{form}")
    end
    
    #---------------------------------------------------------------------------
    # Move Data Registration
    #---------------------------------------------------------------------------
    def self.register_move(id, data)
      @moves[id] = data
      @load_order << [:move, id] unless @load_order.include?([:move, id])
      SCScripts.debug("Registered move: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Ability Data Registration
    #---------------------------------------------------------------------------
    def self.register_ability(id, data)
      @abilities[id] = data
      @load_order << [:ability, id] unless @load_order.include?([:ability, id])
      SCScripts.debug("Registered ability: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Item Data Registration
    #---------------------------------------------------------------------------
    def self.register_item(id, data)
      @items[id] = data
      @load_order << [:item, id] unless @load_order.include?([:item, id])
      SCScripts.debug("Registered item: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Type Data Registration
    #---------------------------------------------------------------------------
    def self.register_type(id, data)
      @types[id] = data
      @load_order << [:type, id] unless @load_order.include?([:type, id])
      SCScripts.debug("Registered type: #{id}")
    end
    
    def self.set_type_effectiveness(attacking, defending, multiplier)
      @type_chart[attacking] ||= {}
      @type_chart[attacking][defending] = multiplier
    end
    
    #---------------------------------------------------------------------------
    # Getters
    #---------------------------------------------------------------------------
    def self.get_map(map_id)
      @maps[map_id]
    end
    
    def self.get_encounters(key)
      @encounters[key]
    end
    
    def self.get_trainer(key)
      @trainers[key]
    end
    
    def self.get_trainer_by_event(map_id, event_id)
      key = "#{map_id}_#{event_id}"
      @trainers[key]
    end
    
    def self.get_pokemon(id)
      @pokemon[id]
    end
    
    def self.get_pokemon_form(species, form)
      return nil unless @pokemon_forms[species]
      @pokemon_forms[species][form]
    end
    
    def self.get_move(id)
      @moves[id]
    end
    
    def self.get_ability(id)
      @abilities[id]
    end
    
    def self.get_item(id)
      @items[id]
    end
    
    def self.get_type(id)
      @types[id]
    end
    
    def self.get_trainer_type(id)
      @trainer_types[id]
    end
    
    def self.get_type_effectiveness(attacking, defending)
      return 1.0 unless @type_chart[attacking]
      @type_chart[attacking][defending] || 1.0
    end
    
    #---------------------------------------------------------------------------
    # Generic register/get_data - delegates to top-level ScriptRegistry
    # Allows code inside module GameData to call ScriptRegistry.register(...)
    # without needing the :: prefix.
    #---------------------------------------------------------------------------
    def self.register(category, key, data)
      ::ScriptRegistry.register(category, key, data)
    end
    
    def self.get_data(category, key)
      ::ScriptRegistry.get_data(category, key)
    end
    
    #---------------------------------------------------------------------------
    # Statistics & Debug
    #---------------------------------------------------------------------------
    def self.stats
      {
        maps: @maps.count,
        encounters: @encounters.count,
        trainers: @trainers.count,
        trainer_types: @trainer_types.count,
        pokemon: @pokemon.count,
        pokemon_forms: @pokemon_forms.values.map(&:count).sum,
        moves: @moves.count,
        abilities: @abilities.count,
        items: @items.count,
        types: @types.count
      }
    end
    
    def self.print_stats
      values = stats.map { |type, count| "#{type}=#{count}" }
      SCScripts.log(values.join(" | "), :info, :registry)
    end
    
    #---------------------------------------------------------------------------
    # Clear all data (for hot reload)
    #---------------------------------------------------------------------------
    def self.clear_all
      @maps.clear
      @encounters.clear
      @trainers.clear
      @trainer_types.clear
      @animations.clear
      @pokemon.clear
      @pokemon_forms.clear
      @moves.clear
      @abilities.clear
      @items.clear
      @types.clear
      @type_chart.clear
      @map_connections.clear
      @regional_dexes.clear
      @load_order.clear
      @compiled = false
    end
  end
  
  #=============================================================================
  # ScriptBase - Base class for all script definitions
  #=============================================================================
  class ScriptBase
    class << self
      attr_accessor :current_map_id, :current_context
      
      # Set the current map context for registrations
      def for_map(map_id)
        @current_map_id = map_id
        yield if block_given?
        @current_map_id = nil
      end
      
      # Set a named context
      def with_context(context)
        @current_context = context
        yield if block_given?
        @current_context = nil
      end
    end
  end
  
  #=============================================================================
  # DSL Helper - Makes defining data cleaner
  #=============================================================================
  module DSL
    # Symbolize string keys
    def self.symbolize_keys(hash)
      return hash unless hash.is_a?(Hash)
      hash.transform_keys(&:to_sym).transform_values do |v|
        v.is_a?(Hash) ? symbolize_keys(v) : v
      end
    end
    
    # Convert to internal ID format
    def self.to_id(name)
      return name if name.is_a?(Symbol)
      name.to_s.upcase.gsub(/[^A-Z0-9_]/, '_').to_sym
    end
  end
end

#===============================================================================
# Top-level ScriptRegistry
#===============================================================================
# Generic data store used by SpeciesMetrics, RegionalDex, and BerryPlant DSLs.
# Separate from GameData::ScriptRegistry which handles core PBS data.
#===============================================================================
module ScriptRegistry
  class << self
    def register(category, key, data)
      @data ||= {}
      @data[category] ||= {}
      @data[category][key] = data
    end

    def get_data(category, key)
      @data ||= {}
      @data[category] ||= {}
      @data[category][key]
    end
  end
end
