#===============================================================================
# Shattered Crowns - Global Metadata DSL
#===============================================================================
# Extends GameData::Metadata and GameData::PlayerMetadata with Ruby DSL support
#===============================================================================

module GameData
  class Metadata
    class << self
      def define(&block)
        builder = MetadataBuilder.new
        yield(builder) if block_given?
        data = builder.build
        
        # Store in ScriptRegistry
        ScriptRegistry.register(:metadata, :global, data)
        
        data
      end
    end
  end
  
  class MetadataBuilder
    def initialize
      @data = {
        start_money: 3000,
        start_item_storage: [],
        home: nil,
        storage_creator: nil,
        wild_battle_bgm: nil,
        trainer_battle_bgm: nil,
        wild_victory_bgm: nil,
        trainer_victory_bgm: nil,
        surf_bgm: nil,
        bicycle_bgm: nil
      }
    end
    
    def start_money(value)
      @data[:start_money] = value.to_i
    end
    
    def start_item_storage(*items)
      @data[:start_item_storage] = items.flatten.map { |i| i.is_a?(Symbol) ? i : i.to_sym }
    end
    
    def home(*args)
      @data[:home] = args.map(&:to_i)
    end
    
    def storage_creator(value)
      @data[:storage_creator] = value.to_s
    end
    
    def wild_battle_bgm(value)
      @data[:wild_battle_bgm] = value.to_s
    end
    
    def trainer_battle_bgm(value)
      @data[:trainer_battle_bgm] = value.to_s
    end
    
    def wild_victory_bgm(value)
      @data[:wild_victory_bgm] = value.to_s
    end
    
    def trainer_victory_bgm(value)
      @data[:trainer_victory_bgm] = value.to_s
    end
    
    def surf_bgm(value)
      @data[:surf_bgm] = value.to_s
    end
    
    def bicycle_bgm(value)
      @data[:bicycle_bgm] = value.to_s
    end
    
    def build
      @data
    end
  end
  
  #=============================================================================
  # Player Metadata
  #=============================================================================
  
  class PlayerMetadata
    class << self
      def define(player_id, &block)
        builder = PlayerMetadataBuilder.new(player_id)
        yield(builder) if block_given?
        data = builder.build
        
        ScriptRegistry.register(:player_metadata, player_id, data)
        
        data
      end
    end
  end
  
  class PlayerMetadataBuilder
    def initialize(player_id)
      @data = {
        id: player_id,
        trainer_type: nil,
        walk_charset: nil,
        run_charset: nil,
        cycle_charset: nil,
        surf_charset: nil,
        dive_charset: nil,
        fish_charset: nil,
        surf_fish_charset: nil
      }
    end
    
    def trainer_type(value)
      @data[:trainer_type] = value.is_a?(Symbol) ? value : value.to_sym
    end
    
    def walk_charset(value)
      @data[:walk_charset] = value.to_s
    end
    
    def run_charset(value)
      @data[:run_charset] = value.to_s
    end
    
    def cycle_charset(value)
      @data[:cycle_charset] = value.to_s
    end
    
    def surf_charset(value)
      @data[:surf_charset] = value.to_s
    end
    
    def dive_charset(value)
      @data[:dive_charset] = value.to_s
    end
    
    def fish_charset(value)
      @data[:fish_charset] = value.to_s
    end
    
    def surf_fish_charset(value)
      @data[:surf_fish_charset] = value.to_s
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
    def get_metadata
      @data ||= {}
      @data[:metadata] ||= {}
      @data[:metadata][:global]
    end
    
    def get_player_metadata(id)
      @data ||= {}
      @data[:player_metadata] ||= {}
      @data[:player_metadata][id]
    end
    
    def all_player_metadata
      @data ||= {}
      @data[:player_metadata] ||= {}
      @data[:player_metadata]
    end
  end
end
