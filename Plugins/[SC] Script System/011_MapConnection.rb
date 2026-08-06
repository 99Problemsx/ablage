#===============================================================================
# Shattered Crowns Script System - Map Connections
#===============================================================================
# Define map connections between areas.
#===============================================================================

module GameData
  #=============================================================================
  # MapConnection - Define connections between maps
  #=============================================================================
  class MapConnection
    @connections = []
    
    class << self
      attr_accessor :connections
    end
    
    #---------------------------------------------------------------------------
    # Define a connection
    # Usage: MapConnection.define 3, :East, 5, :West
    #---------------------------------------------------------------------------
    #---------------------------------------------------------------------------
    # Define a connection
    # Usage: MapConnection.define 3, :East, 5, :West
    #        or block syntax with builder
    #---------------------------------------------------------------------------
    def self.define(map1_id = nil, edge1 = nil, map2_id = nil, edge2 = nil, offset = 0, &block)
      if block_given?
        builder = ConnectionBuilder.new
        yield(builder)
        @connections << builder.to_data
        SCScripts.log("Registered map connection: Map #{builder.data[:map1]} <-> Map #{builder.data[:map2]}")
      else
        connection = {
          map1: map1_id,
          edge1: edge1,
          offset1: offset,
          map2: map2_id,
          edge2: edge2,
          offset2: 0 # Default for simple syntax
        }
        @connections << connection
        SCScripts.log("Registered map connection: Map #{map1_id} #{edge1} <-> Map #{map2_id} #{edge2}")
      end
    end
    
    #---------------------------------------------------------------------------
    # Bulk define connections
    #---------------------------------------------------------------------------
    def self.bulk_define(&block)
      instance_eval(&block) if block_given?
    end
    
    def self.connect(map1_id, edge1, map2_id, edge2, offset = 0)
      define(map1_id, edge1, map2_id, edge2, offset)
    end
    
    #---------------------------------------------------------------------------
    # Get connections for a map
    #---------------------------------------------------------------------------
    def self.for_map(map_id)
      @connections.select { |c| c[:map1] == map_id || c[:map2] == map_id }
    end
    
    #---------------------------------------------------------------------------
    # Get all connections
    #---------------------------------------------------------------------------
    def self.all
      @connections
    end
  end

  #=============================================================================
  # ConnectionBuilder - Builder for map connections
  #=============================================================================
  class ConnectionBuilder
    attr_reader :data
    
    def initialize
      @data = {}
    end
    
    def map1(val);    @data[:map1] = val; end
    def edge1(val);   @data[:edge1] = val; end
    def offset1(val); @data[:offset1] = val; end
    
    def map2(val);    @data[:map2] = val; end
    def edge2(val);   @data[:edge2] = val; end
    def offset2(val); @data[:offset2] = val; end
    
    def to_data
      @data
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::MapConnection.bulk_define do
#   connect 3, :East, 4, :West      # Lappet Town -> Route 1
#   connect 4, :East, 5, :West      # Route 1 -> Viridian City
#   connect 5, :North, 6, :South    # Viridian City -> Route 2
#   connect 5, :West, 7, :East      # Viridian City -> Route 22
# end
