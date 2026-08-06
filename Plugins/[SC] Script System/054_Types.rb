#===============================================================================
# Shattered Crowns Script System - Type Definitions
#===============================================================================
# Complete PBS replacement for types.txt
# Defines Pokemon types and type effectiveness chart using Ruby DSL.
#===============================================================================

module GameData
  #=============================================================================
  # Type - Define Pokemon types
  #=============================================================================
  class Type
    # Type effectiveness multipliers
    SUPER_EFFECTIVE = 2.0
    NOT_EFFECTIVE = 0.5
    NO_EFFECT = 0.0
    NORMAL = 1.0
    
    #---------------------------------------------------------------------------
    # Define a new type
    # Usage:
    #   GameData::Type.define :FIRE do |type|
    #     type.name "Fire"
    #     type.icon_position 1
    #     type.special_type  # Pre-Gen 4 physical/special split
    #     type.super_effective_against :GRASS, :ICE, :BUG, :STEEL
    #     type.not_effective_against :FIRE, :WATER, :ROCK, :DRAGON
    #   end
    #---------------------------------------------------------------------------
    attr_reader :id, :name, :icon_position, :super_effective, :not_effective
    attr_reader :no_effect, :weaknesses, :resistances, :immunities, :flags
    
    alias __sc_v22_initialize initialize unless method_defined?(:__sc_v22_initialize)
    def initialize(data)
      return __sc_v22_initialize(data) if data.key?(:pbs_file_suffix)
      @id = data[:id]
      # Accept both the SC DSL keys and Essentials' canonical PBS keys. The
      # latter passes :real_name/:pseudo_type into this initializer.
      @name = data[:name] || data[:real_name] || "Unnamed"
      @icon_position = data[:icon_position] || 0
      @is_pseudo_type = data[:is_pseudo_type] || data[:pseudo_type] || false
      @special_type = data[:special_type] || false
      @flags = data[:flags] || []
      @super_effective = data[:super_effective] || []
      @not_effective = data[:not_effective] || []
      @no_effect = data[:no_effect] || []
      @weaknesses = data[:weaknesses] || []
      @resistances = data[:resistances] || []
      @immunities = data[:immunities] || []
      # Essentials compatibility - map SC field names to Essentials expected names
      @real_name = @name
      @pseudo_type = @is_pseudo_type
      @pbs_file_suffix = ""
    end
    
    def pseudo_type?; @is_pseudo_type; end
    def special_type?; @special_type; end
    def physical_type?; !@special_type; end

    def name
      return @name if @name
      pbGetMessageFromHash(MessageTypes::TYPE_NAMES, @real_name)
    end
    
    #---------------------------------------------------------------------------
    # Define a new type
    # Usage:
    #   GameData::Type.define :FIRE do |type|
    #     type.name "Fire"
    #     type.icon_position 1
    #     type.special_type  # Pre-Gen 4 physical/special split
    #     type.super_effective_against :GRASS, :ICE, :BUG, :STEEL
    #     type.not_effective_against :FIRE, :WATER, :ROCK, :DRAGON
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = TypeBuilder.new(id)
      yield(builder) if block_given?
      data = builder.to_data
      ScriptRegistry.register_type(id, data)
      
      # Register effectiveness data
      data[:super_effective]&.each do |target|
        ScriptRegistry.set_type_effectiveness(id, target, SUPER_EFFECTIVE)
      end
      data[:not_effective]&.each do |target|
        ScriptRegistry.set_type_effectiveness(id, target, NOT_EFFECTIVE)
      end
      data[:no_effect]&.each do |target|
        ScriptRegistry.set_type_effectiveness(id, target, NO_EFFECT)
      end
    end
    
    #---------------------------------------------------------------------------
    # Get type data
    #---------------------------------------------------------------------------
    def self.get(id)
      id = DSL.to_id(id)
      # Essentials' PBS compiler fills DATA before it compiles moves. Prefer
      # that canonical v22 table; the SC registry is an additive fallback.
      return self::DATA[id] if const_defined?(:DATA) && self::DATA.has_key?(id)
      data = ScriptRegistry.get_type(id)
      return nil unless data
      self.new(data)
    end
    
    def self.exists?(id)
      id = DSL.to_id(id)
      return true if const_defined?(:DATA) && self::DATA.has_key?(id)
      !ScriptRegistry.get_type(id).nil?
    end
    
    def self.keys
      canonical = const_defined?(:DATA) ? self::DATA.keys : []
      (canonical + ScriptRegistry.types.keys).uniq
    end

    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value do |type|
          seen[type.id] = true
          yield(type)
        end
      end
      ScriptRegistry.types.each do |id, data|
        next if seen[id]
        yield(self.new(data))
      end
    end

    def self.count
      keys.count
    end
    
    #---------------------------------------------------------------------------
    # Get effectiveness between types
    #---------------------------------------------------------------------------
    def self.effectiveness(attacking, defending)
      ScriptRegistry.get_type_effectiveness(
        DSL.to_id(attacking),
        DSL.to_id(defending)
      )
    end
    
    def self.super_effective?(attacking, defending)
      effectiveness(attacking, defending) >= SUPER_EFFECTIVE
    end
    
    def self.not_effective?(attacking, defending)
      eff = effectiveness(attacking, defending)
      eff > NO_EFFECT && eff < NORMAL
    end
    
    def self.immune?(attacking, defending)
      effectiveness(attacking, defending) <= NO_EFFECT
    end
  end
  
  #=============================================================================
  # TypeBuilder - Builder for type data
  #=============================================================================
  class TypeBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.capitalize,
        icon_position: 0,
        is_pseudo_type: false,
        special_type: false,  # For pre-Gen4 split
        flags: [],
        super_effective: [],
        not_effective: [],
        no_effect: []
      }
    end
    
    # Basic properties
    def name(val); @data[:name] = val; end
    def icon_position(val); @data[:icon_position] = val; end
    
    # Type categories (pre-Gen4)
    def special_type; @data[:special_type] = true; end
    def physical_type; @data[:special_type] = false; end
    
    # Pseudo types (like ???)
    def pseudo_type; @data[:is_pseudo_type] = true; end
    
    # Effectiveness definitions
    def super_effective_against(*types)
      @data[:super_effective].concat(types.flatten.map { |t| DSL.to_id(t) })
    end
    
    def not_effective_against(*types)
      @data[:not_effective].concat(types.flatten.map { |t| DSL.to_id(t) })
    end
    
    def no_effect_against(*types)
      @data[:no_effect].concat(types.flatten.map { |t| DSL.to_id(t) })
    end
    
    # Alias methods (offensive directions only)
    alias_method :strong_against, :super_effective_against
    alias_method :weak_against, :not_effective_against
    alias_method :immune_to_damage_from, :no_effect_against
    
    # Defensive properties - what types THIS type is weak/resistant/immune to
    def weaknesses(*types)
      @data[:weaknesses] ||= []
      @data[:weaknesses].concat(types.flatten.map { |t| DSL.to_id(t) })
    end
    
    def resistances(*types)
      @data[:resistances] ||= []
      @data[:resistances].concat(types.flatten.map { |t| DSL.to_id(t) })
    end
    
    def immunities(*types)
      @data[:immunities] ||= []
      @data[:immunities].concat(types.flatten.map { |t| DSL.to_id(t) })
    end
    
    alias_method :icon_pos, :icon_position
    
    # Flags
    def flags(*vals)
      @data[:flags].concat(vals.flatten.map { |f| DSL.to_id(f) })
    end
    
    def to_data
      @data[:super_effective].uniq!
      @data[:not_effective].uniq!
      @data[:no_effect].uniq!
      @data[:weaknesses]&.uniq!
      @data[:resistances]&.uniq!
      @data[:immunities]&.uniq!
      @data[:flags].uniq!
      @data.compact
    end
  end
end

#===============================================================================
# TypeChart - Shortcut for defining the whole type chart at once
#===============================================================================
module GameData
  module TypeChart
    #---------------------------------------------------------------------------
    # Define multiple effectiveness relations at once
    # Usage:
    #   GameData::TypeChart.define do
    #     super_effective :FIRE, against: [:GRASS, :ICE, :BUG, :STEEL]
    #     not_effective :FIRE, against: [:FIRE, :WATER, :ROCK, :DRAGON]
    #     no_effect :ELECTRIC, against: [:GROUND]
    #   end
    #---------------------------------------------------------------------------
    def self.define(&block)
      instance_eval(&block) if block_given?
    end
    
    def self.super_effective(attacking, against: [])
      attacking = DSL.to_id(attacking)
      against.each do |defending|
        ScriptRegistry.set_type_effectiveness(attacking, DSL.to_id(defending), Type::SUPER_EFFECTIVE)
      end
    end
    
    def self.not_effective(attacking, against: [])
      attacking = DSL.to_id(attacking)
      against.each do |defending|
        ScriptRegistry.set_type_effectiveness(attacking, DSL.to_id(defending), Type::NOT_EFFECTIVE)
      end
    end
    
    def self.no_effect(attacking, against: [])
      attacking = DSL.to_id(attacking)
      against.each do |defending|
        ScriptRegistry.set_type_effectiveness(attacking, DSL.to_id(defending), Type::NO_EFFECT)
      end
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Type
  GameData::Type
end
