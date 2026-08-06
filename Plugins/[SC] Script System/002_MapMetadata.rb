#===============================================================================
# Shattered Crowns Script System - MapMetadata
#===============================================================================
# DSL for defining map metadata properties.
#===============================================================================

module GameData
  class MapMetadata
    # Class-level storage for this map's metadata
    class << self
      attr_accessor :map_id, :real_name, :map_BGM, :outdoor_map, :announce_location
      attr_accessor :weather, :environment, :bicycle_usable, :can_teleport
      attr_accessor :diving_map, :dark_map, :snap_edges, :battle_background
      attr_accessor :wild_battle_BGM, :trainer_battle_BGM, :wild_victory_BGM
      attr_accessor :trainer_victory_BGM, :wild_capture_ME, :town_map_position
      attr_accessor :safaris_zone, :town_map_size, :battle_environment
    end
    
    #---------------------------------------------------------------------------
    # DSL method for defining metadata in a block
    #---------------------------------------------------------------------------
    def self.metadata(&block)
      instance_eval(&block) if block_given?
      register_to_game_data
    end
    
    #---------------------------------------------------------------------------
    # Register this metadata to the game's system
    #---------------------------------------------------------------------------
    def self.register_to_game_data
      return unless @map_id
      
      data = {
        real_name:          @real_name,
        map_BGM:            @map_BGM,
        outdoor_map:        @outdoor_map,
        announce_location:  @announce_location,
        weather:            @weather,
        environment:        @environment,
        bicycle_usable:     @bicycle_usable,
        can_teleport:       @can_teleport,
        diving_map:         @diving_map,
        dark_map:           @dark_map,
        snap_edges:         @snap_edges,
        battle_background:  @battle_background,
        wild_battle_BGM:    @wild_battle_BGM,
        trainer_battle_BGM: @trainer_battle_BGM,
        wild_victory_BGM:   @wild_victory_BGM,
        trainer_victory_BGM: @trainer_victory_BGM,
        wild_capture_ME:    @wild_capture_ME,
        town_map_position:  @town_map_position,
        safari_zone:        @safari_zone,
        town_map_size:      @town_map_size,
        battle_environment: @battle_environment
      }.compact
      
      ScriptRegistry.register_map(@map_id, data)
    end
    
    #---------------------------------------------------------------------------
    # Inherit and set map ID
    #---------------------------------------------------------------------------
    def self.inherited(subclass)
      # Extract map ID from class name (e.g., Map33 -> 33)
      if subclass.name =~ /Map(\d+)$/
        subclass.map_id = $1.to_i
      end
    end
  end
end
