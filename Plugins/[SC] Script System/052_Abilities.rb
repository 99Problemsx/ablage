#===============================================================================
# Shattered Crowns Script System - Ability Definitions
#===============================================================================
# Complete PBS replacement for abilities.txt
# Defines abilities using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Ability - Define Pokemon abilities
  #=============================================================================
  class Ability
    attr_reader :id, :name, :real_name, :description, :flags
    
    alias __sc_v22_initialize initialize unless method_defined?(:__sc_v22_initialize)
    def initialize(data)
      return __sc_v22_initialize(data) if data.key?(:pbs_file_suffix)
      @id = data[:id]
      @real_name = data[:name] || data[:real_name] || "Unnamed"
      @description = data[:description] || data[:real_description]
      @flags = data[:flags] || []
      # Essentials compatibility - map SC field names to Essentials expected names
      @real_description = @description || "???"
      @pbs_file_suffix = ""
    end
    
    def name; @real_name; end

    # The attr_reader above must not replace Essentials' translated accessor.
    # Canonical PBS abilities store their text in @real_description, while
    # script-defined abilities use @description.
    def description
      return @description if @description
      return "???" if !@real_description
      return pbGetMessageFromHash(MessageTypes::ABILITY_DESCRIPTIONS,
                                  @real_description) || @real_description
    end
    
    #---------------------------------------------------------------------------
    # Define a new ability
    # Usage:
    #   GameData::Ability.define :STATIC do |ability|
    #     ability.name "Static"
    #     ability.description "Contact may paralyze."
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = AbilityBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_ability(id, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Get ability data
    #---------------------------------------------------------------------------
    def self.get(id)
      id = DSL.to_id(id)
      return self::DATA[id] if const_defined?(:DATA) && self::DATA.has_key?(id)
      data = ScriptRegistry.get_ability(id)
      return nil unless data
      self.new(data)
    end
    
    def self.exists?(id)
      id = DSL.to_id(id)
      return true if const_defined?(:DATA) && self::DATA.has_key?(id)
      !ScriptRegistry.get_ability(id).nil?
    end
    
    def self.keys
      canonical = const_defined?(:DATA) ? self::DATA.keys : []
      (canonical + ScriptRegistry.abilities.keys).uniq
    end

    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value { |ability| seen[ability.id] = true; yield(ability) }
      end
      ScriptRegistry.abilities.each do |id, data|
        next if seen[id]
        yield(self.new(data))
      end
    end

    def self.count
      keys.count
    end
  end
  
  #=============================================================================
  # AbilityBuilder - Builder for ability data
  #=============================================================================
  class AbilityBuilder
    attr_reader :id
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.split('_').map(&:capitalize).join(' '),
        description: "No description.",
        flags: []
      }
    end
    
    # Basic properties
    def name(val); @data[:name] = val; end
    def description(val); @data[:description] = val; end
    
    # Flags
    def flags(*vals)
      @data[:flags].concat(vals.flatten.map { |f| DSL.to_id(f) })
    end
    
    # Common ability flags
    def cannot_copy; @data[:flags] << :CannotCopy; end
    def cannot_swap; @data[:flags] << :CannotSwap; end
    def cannot_suppress; @data[:flags] << :CannotSuppress; end
    def form_changing; @data[:flags] << :FormChanging; end
    
    def to_data
      @data[:flags].uniq!
      @data.compact
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Ability
  GameData::Ability
end
