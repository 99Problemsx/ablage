#===============================================================================
# Shattered Crowns Script System - Item Definitions
#===============================================================================
# Complete PBS replacement for items.txt
# Defines items using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Item - Define game items
  #=============================================================================
  class Item
    # Item pockets
    POCKETS = {
      items: 1,
      medicine: 2,
      pokeballs: 3,
      tms_hms: 4,
      berries: 5,
      mail: 6,
      battle_items: 7,
      key_items: 8
    }
    
    # Item categories
    CATEGORIES = [
      :None, :Medicine, :PokeBall, :TM, :HM, :TR, :Berry, :Mail,
      :BattleItem, :KeyItem, :MegaStone, :ZCrystal, :Fossil,
      :Mulch, :Apricorn, :Gem, :EvolutionStone, :TypeEnhancer,
      :Hold, :Plate, :Memory, :Incense
    ]
    
    attr_reader :id, :name, :name_plural, :pocket, :price, :sell_price, :bp_price
    attr_reader :category, :field_use, :battle_use, :consumable, :show_quantity
    attr_reader :move, :flags, :description, :fling_power, :fling_effect
    attr_reader :natural_gift_type, :natural_gift_power
    
    alias __sc_v22_initialize initialize unless method_defined?(:__sc_v22_initialize)
    def initialize(data)
      return __sc_v22_initialize(data) if data.key?(:pbs_file_suffix)
      @id = data[:id]
      @name = data[:name] || data[:real_name] || "Unnamed"
      @name_plural = data[:name_plural] || data[:real_name_plural] || "#{@name}s"
      @pocket = data[:pocket] || 1
      @price = data[:price] || 0
      @sell_price = data[:sell_price] || (@price / 2)
      @bp_price = data[:bp_price]
      @category = data[:category] || :None
      @field_use = data[:field_use]
      @battle_use = data[:battle_use]
      @consumable = data[:consumable]
      @consumable = true if @consumable.nil?
      @show_quantity = data[:show_quantity]
      @show_quantity = true if @show_quantity.nil?
      @move = data[:move]
      @flags = data[:flags] || []
      @description = data[:description] || data[:real_description]
      @fling_power = data[:fling_power]
      @fling_effect = data[:fling_effect]
      @natural_gift_type = data[:natural_gift_type]
      @natural_gift_power = data[:natural_gift_power]
      # Essentials compatibility - map SC field names to Essentials expected names
      @real_name = @name
      @real_name_plural = @name_plural
      @real_description = @description || "???"
      @real_portion_name = nil
      @real_portion_name_plural = nil
      @pbs_file_suffix = ""
    end
    
    def is_key_item?; @pocket == 8; end
    def is_tm?; @category == :TM; end
    def is_hm?; @category == :HM; end
    def is_tr?; @category == :TR; end
    def is_pokeball?; @category == :PokeBall; end
    def is_berry?; @category == :Berry; end
    def is_mail?; @category == :Mail; end
    def is_mega_stone?; @category == :MegaStone; end
    def is_gem?; @category == :Gem; end
    def is_evolution_stone?; @category == :EvolutionStone; end
    def valuable?; @price > 0; end

    # Preserve v22's translated accessors for canonical PBS-backed items while
    # still returning the direct SC values for DSL-backed items.
    def name
      return @name if @name
      pbGetMessageFromHash(MessageTypes::ITEM_NAMES, @real_name)
    end

    def name_plural
      return @name_plural if @name_plural
      pbGetMessageFromHash(MessageTypes::ITEM_NAME_PLURALS, @real_name_plural)
    end

    def portion_name
      return pbGetMessageFromHash(MessageTypes::ITEM_PORTION_NAMES, @real_portion_name) if @real_portion_name
      name
    end

    def portion_name_plural
      return pbGetMessageFromHash(MessageTypes::ITEM_PORTION_NAME_PLURALS, @real_portion_name_plural) if @real_portion_name_plural
      name_plural
    end

    def description
      return @description if @description
      ret = pbGetMessageFromHash(MessageTypes::ITEM_DESCRIPTIONS, @real_description)
      return GameData::Move.get(@move).description if ret.nil? && is_machine?
      ret || "???"
    end
    
    #---------------------------------------------------------------------------
    # Define a new item
    # Usage:
    #   GameData::Item.define :POTION do |item|
    #     item.name "Potion"
    #     item.pocket :medicine
    #     item.price 300
    #     item.field_use :heal_hp
    #     item.description "Restores 20 HP."
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = ItemBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_item(id, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Get item data
    #---------------------------------------------------------------------------
    def self.get(id)
      id = DSL.to_id(id)
      return self::DATA[id] if const_defined?(:DATA) && self::DATA.has_key?(id)
      data = ScriptRegistry.get_item(id)
      return nil unless data
      self.new(data)
    end
    
    def self.exists?(id)
      id = DSL.to_id(id)
      return true if const_defined?(:DATA) && self::DATA.has_key?(id)
      !ScriptRegistry.get_item(id).nil?
    end
    
    def self.keys
      canonical = const_defined?(:DATA) ? self::DATA.keys : []
      (canonical + ScriptRegistry.items.keys).uniq
    end

    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value { |item| seen[item.id] = true; yield(item) }
      end
      ScriptRegistry.items.each do |id, data|
        next if seen[id]
        yield(self.new(data))
      end
    end

    def self.count
      keys.count
    end
    
    # Get pocket ID
    def self.pocket_id(name)
      POCKETS[name.to_sym] || 1
    end
  end
  
  #=============================================================================
  # ItemBuilder - Builder for item data
  #=============================================================================
  class ItemBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.split('_').map(&:capitalize).join(' '),
        name_plural: nil,
        pocket: 1,
        price: 0,
        sell_price: nil,
        bp_price: nil,
        category: :None,
        field_use: nil,
        battle_use: nil,
        consumable: true,
        show_quantity: true,
        move: nil,
        flags: [],
        description: "No description."
      }
    end
    
    # Basic properties
    def name(val); @data[:name] = val; end
    def name_plural(val); @data[:name_plural] = val; end
    def description(val); @data[:description] = val; end
    
    # Pocket
    def pocket(val)
      if val.is_a?(Symbol) || val.is_a?(String)
        @data[:pocket] = Item::POCKETS[val.to_sym] || 1
      else
        @data[:pocket] = val
      end
    end
    
    # Shortcuts for pockets
    def items_pocket; @data[:pocket] = 1; end
    def medicine_pocket; @data[:pocket] = 2; end
    def pokeballs_pocket; @data[:pocket] = 3; end
    def tms_pocket; @data[:pocket] = 4; end
    def berries_pocket; @data[:pocket] = 5; end
    def mail_pocket; @data[:pocket] = 6; end
    def battle_pocket; @data[:pocket] = 7; end
    def key_items_pocket; @data[:pocket] = 8; end
    
    # Pricing
    def price(val); @data[:price] = val; @data[:sell_price] ||= val / 2; end
    def sell_price(val); @data[:sell_price] = val; end
    def bp_price(val); @data[:bp_price] = val; end
    
    # Category
    def category(val); @data[:category] = val; end
    
    # Usage
    def field_use(val); @data[:field_use] = val; end
    def battle_use(val); @data[:battle_use] = val; end
    
    # Properties
    def consumable(val = true); @data[:consumable] = val; end
    def not_consumable; @data[:consumable] = false; end
    def hide_quantity; @data[:show_quantity] = false; end
    def show_quantity(val = true); @data[:show_quantity] = val; end
    
    # TM/HM/TR moves
    def teaches(move); @data[:move] = DSL.to_id(move); end
    def move(val); @data[:move] = DSL.to_id(val); end
    
    # Flags
    def flags(*vals)
      @data[:flags].concat(vals.flatten.map { |f| DSL.to_id(f) })
    end
    
    # Common item flags
    def key_item
      @data[:pocket] = 8
      @data[:flags] << :KeyItem
      @data[:consumable] = false
    end
    
    def tm
      @data[:pocket] = 4
      @data[:category] = :TM
    end
    
    def hm
      @data[:pocket] = 4
      @data[:category] = :HM
      @data[:consumable] = false
    end
    
    def tr
      @data[:pocket] = 4
      @data[:category] = :TR
    end
    
    def pokeball
      @data[:pocket] = 3
      @data[:category] = :PokeBall
    end
    
    def berry
      @data[:pocket] = 5
      @data[:category] = :Berry
    end
    
    def mega_stone
      @data[:category] = :MegaStone
      @data[:consumable] = false
    end
    
    def z_crystal
      @data[:category] = :ZCrystal
      @data[:consumable] = false
    end
    
    def evo_stone
      @data[:category] = :EvolutionStone
    end
    
    def mail
      @data[:pocket] = 6
      @data[:category] = :Mail
    end
    
    # Fling data
    def fling_power(val); @data[:fling_power] = val; end
    def fling_effect(val); @data[:fling_effect] = val; end
    
    # Natural Gift (for berries)
    def natural_gift(type:, power:)
      @data[:natural_gift_type] = DSL.to_id(type)
      @data[:natural_gift_power] = power
    end
    
    def to_data
      @data[:flags].uniq!
      # Set plural name if not set
      @data[:name_plural] ||= "#{@data[:name]}s"
      @data.compact
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Item
  GameData::Item
end
