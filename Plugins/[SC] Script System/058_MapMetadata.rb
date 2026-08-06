#===============================================================================
# Shattered Crowns - Map Metadata DSL
#===============================================================================
# Extends GameData::MapMetadata with Ruby DSL support
# Format: GameData::MapMetadata.define MAP_ID do |m| ... end
#===============================================================================

module GameData
  class MapMetadata
    class << self
      alias_method :original_register_metadata, :register if method_defined?(:register)
      
      def define(map_id, &block)
        builder = MapMetadataBuilder.new(map_id)
        yield(builder) if block_given?
        data = builder.build
        
        # Store in ScriptRegistry
        ScriptRegistry.register(:map_metadata, map_id, data)
        
        # Also register with GameData if method exists
        if respond_to?(:original_register_metadata)
          original_register_metadata(data)
        elsif respond_to?(:register)
          register(data)
        end
        
        data
      end
    end
  end
  
  #=============================================================================
  # MapMetadata Builder
  #=============================================================================
  
  class MapMetadataBuilder
    def initialize(map_id)
      @data = {
        id: map_id,
        real_name: nil,
        outdoor_map: false,
        show_area: false,
        map_position: nil,
        map_size: nil,
        battle_back: nil,
        environment: nil,
        weather: nil,
        healing_spot: nil,
        bicycle: false,
        bicycle_always: false,
        dark_map: false,
        safari_map: false,
        dive_map: nil,
        snap_edges: false,
        dungeon: false,
        flags: []
      }
    end
    
    def name(value)
      @data[:real_name] = value
    end
    
    def outdoor(value = true)
      @data[:outdoor_map] = value
    end
    
    def show_area(value = true)
      @data[:show_area] = value
    end
    
    def map_position(region, x, y)
      @data[:map_position] = [region.to_i, x.to_i, y.to_i]
    end
    
    def map_size(width, squares_or_height = nil)
      if squares_or_height
        @data[:map_size] = [width.to_i, squares_or_height.to_s]
      else
        @data[:map_size] = [width.to_i]
      end
    end
    
    def battle_back(value)
      @data[:battle_back] = value.to_s
    end
    
    def environment(value)
      @data[:environment] = value.is_a?(Symbol) ? value : value.to_sym
    end
    
    def weather(type, chance = 100)
      type_sym = type.is_a?(Symbol) ? type : type.to_sym
      @data[:weather] = [type_sym, chance.to_i]
    end
    
    def healing_spot(map_id, x, y)
      @data[:healing_spot] = [map_id.to_i, x.to_i, y.to_i]
    end
    
    def bicycle(value = true)
      @data[:bicycle] = value
    end
    
    def bicycle_always(value = true)
      @data[:bicycle_always] = value
    end
    
    def dark_map(value = true)
      @data[:dark_map] = value
    end
    
    def safari_map(value = true)
      @data[:safari_map] = value
    end
    
    def dive_map(map_id)
      @data[:dive_map] = map_id.to_i
    end
    
    def snap_edges(value = true)
      @data[:snap_edges] = value
    end
    
    def dungeon(value = true)
      @data[:dungeon] = value
    end
    
    def flags(*args)
      if args.length == 1 && args[0].is_a?(Array)
        @data[:flags] = args[0].map { |f| f.is_a?(Symbol) ? f : f.to_sym }
      else
        @data[:flags] = args.map { |f| f.is_a?(Symbol) ? f : f.to_sym }
      end
    end
    
    def build
      @data
    end
  end
end

#===============================================================================
# ScriptRegistry Extension for MapMetadata
#===============================================================================

module ScriptRegistry
  class << self
    def get_map_metadata(id)
      @data ||= {}
      @data[:map_metadata] ||= {}
      @data[:map_metadata][id]
    end
    
    def all_map_metadata
      @data ||= {}
      @data[:map_metadata] ||= {}
      @data[:map_metadata]
    end
  end
end

#===============================================================================
# PBSOverride Hook for MapMetadata
#===============================================================================

module PBSOverride
  class << self
    alias_method :original_get_map_metadata, :hook_map_metadata if method_defined?(:hook_map_metadata)
    
    def hook_map_metadata
      return unless SCScripts::PBS_REPLACEMENT_MODE rescue false
      
      # Hook GameData::MapMetadata.get if not already hooked
      if defined?(GameData::MapMetadata) && !@map_metadata_hooked
        GameData::MapMetadata.singleton_class.class_eval do
          alias_method :original_get_mmd, :get if method_defined?(:get) && !method_defined?(:original_get_mmd)
          
          def get(id)
            # Try ScriptRegistry first
            data = ScriptRegistry.get_map_metadata(id)
            return data if data
            
            # Fall back to original
            original_get_mmd(id) if respond_to?(:original_get_mmd)
          end
        end
        @map_metadata_hooked = true
      end
    end
  end
end
