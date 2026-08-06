#===============================================================================
# Shattered Crowns - Map Connection DSL
#===============================================================================
# Extends GameData::MapConnection with Ruby DSL support
# Format: GameData::MapConnection.define do |c| c.map1 X; c.edge1 :N ... end
#===============================================================================

module GameData
  class MapConnection
    class << self
      @@connection_id = 0
      
      alias_method :original_register_connection, :register if method_defined?(:register)
      
      def define(&block)
        @@connection_id += 1
        builder = MapConnectionBuilder.new(@@connection_id)
        yield(builder) if block_given?
        data = builder.build
        
        # Store in ScriptRegistry
        ScriptRegistry.register(:map_connections, @@connection_id, data)
        
        # Also register with GameData if method exists
        if respond_to?(:original_register_connection)
          original_register_connection(data)
        elsif respond_to?(:register)
          register(data)
        end
        
        data
      end
      
      def reset_connection_id
        @@connection_id = 0
      end
    end
  end
  
  #=============================================================================
  # MapConnection Builder
  #=============================================================================
  
  class MapConnectionBuilder
    DIRECTION_MAP = {
      :N => :North, :North => :North,
      :S => :South, :South => :South,
      :E => :East, :East => :East,
      :W => :West, :West => :West
    }
    
    def initialize(id)
      @data = {
        id: id,
        map1: nil,
        edge1: nil,
        offset1: 0,
        map2: nil,
        edge2: nil,
        offset2: 0
      }
    end
    
    def map1(value)
      @data[:map1] = value.to_i
    end
    
    def edge1(value)
      @data[:edge1] = normalize_direction(value)
    end
    
    def offset1(value)
      @data[:offset1] = value.to_i
    end
    
    def map2(value)
      @data[:map2] = value.to_i
    end
    
    def edge2(value)
      @data[:edge2] = normalize_direction(value)
    end
    
    def offset2(value)
      @data[:offset2] = value.to_i
    end
    
    # Convenience method to set all at once
    def connect(m1, e1, o1, m2, e2, o2)
      map1(m1)
      edge1(e1)
      offset1(o1)
      map2(m2)
      edge2(e2)
      offset2(o2)
    end
    
    def build
      @data
    end
    
    private
    
    def normalize_direction(dir)
      sym = dir.is_a?(Symbol) ? dir : dir.to_s.to_sym
      DIRECTION_MAP[sym] || sym
    end
  end
end

#===============================================================================
# ScriptRegistry Extension for MapConnection
#===============================================================================

module ScriptRegistry
  class << self
    def get_map_connection(id)
      @data ||= {}
      @data[:map_connections] ||= {}
      @data[:map_connections][id]
    end
    
    def all_map_connections
      @data ||= {}
      @data[:map_connections] ||= {}
      @data[:map_connections]
    end
    
    def connections_for_map(map_id)
      all_map_connections.values.select do |conn|
        conn[:map1] == map_id || conn[:map2] == map_id
      end
    end
  end
end

#===============================================================================
# PBSOverride Hook for MapConnection
#===============================================================================

module PBSOverride
  class << self
    def hook_map_connections
      return unless SCScripts::PBS_REPLACEMENT_MODE rescue false
      
      if defined?(GameData::MapConnection) && !@map_connection_hooked
        # Hook for getting connections by map
        GameData::MapConnection.singleton_class.class_eval do
          alias_method :original_get_conn, :get if method_defined?(:get) && !method_defined?(:original_get_conn)
          
          def get(id)
            data = ScriptRegistry.get_map_connection(id)
            return data if data
            original_get_conn(id) if respond_to?(:original_get_conn)
          end
          
          # Get all connections for a specific map
          def connections_for(map_id)
            ScriptRegistry.connections_for_map(map_id)
          end
        end
        @map_connection_hooked = true
      end
    end
  end
end
