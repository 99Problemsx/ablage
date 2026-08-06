#===============================================================================
# Shattered Crowns - Town Map DSL
#===============================================================================
# Extends GameData::TownMap with Ruby DSL support
# Format: GameData::TownMap.define REGION_ID do |t| ... end
#===============================================================================

module GameData
  class TownMap
    class << self
      def define(region_id, &block)
        builder = TownMapBuilder.new(region_id)
        yield(builder) if block_given?
        data = builder.build
        
        ScriptRegistry.register(:town_maps, region_id, data)
        
        data
      end
    end
  end
  
  class TownMapBuilder
    def initialize(region_id)
      @data = {
        id: region_id,
        name: nil,
        filename: nil,
        points: []
      }
    end
    
    def name(value)
      @data[:name] = value.to_s
    end
    
    def filename(value)
      @data[:filename] = value.to_s
    end
    
    # Add a point on the town map
    # Format: x, y, name, [fly_dest], [map_id], [fly_x], [fly_y], [switch]
    def point(x, y, name = nil, *args)
      point_data = {
        x: x.to_i,
        y: y.to_i,
        name: name
      }
      
      # Parse remaining arguments
      if args.length >= 1
        # Could be fly_dest (string) or map_id (number)
        if args[0].is_a?(String)
          point_data[:fly_destination] = args[0]
          point_data[:map_id] = args[1].to_i if args[1]
          point_data[:fly_x] = args[2].to_i if args[2]
          point_data[:fly_y] = args[3].to_i if args[3]
          point_data[:switch] = args[4].to_i if args[4]
        else
          point_data[:map_id] = args[0].to_i
          point_data[:fly_x] = args[1].to_i if args[1]
          point_data[:fly_y] = args[2].to_i if args[2]
          point_data[:switch] = args[3].to_i if args[3]
        end
      end
      
      @data[:points] << point_data
    end
    
    def build
      @data
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions
#===============================================================================

module ScriptRegistry
  class << self
    def get_town_map(region_id)
      @data ||= {}
      @data[:town_maps] ||= {}
      @data[:town_maps][region_id]
    end
    
    def all_town_maps
      @data ||= {}
      @data[:town_maps] ||= {}
      @data[:town_maps]
    end
    
    # Get fly destinations for a region
    def fly_destinations(region_id)
      town_map = get_town_map(region_id)
      return [] unless town_map
      
      town_map[:points].select { |p| p[:map_id] }
    end
  end
end
