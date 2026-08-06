#===============================================================================
# Shattered Crowns Script System - Custom Moves
#===============================================================================
# Define new moves or modify existing ones in Ruby.
#===============================================================================

module GameData
  #=============================================================================
  # CustomMove - Define moves in Ruby
  #=============================================================================
  class CustomMove < ScriptBase
    @moves = {}
    
    class << self
      attr_accessor :moves
    end
    
    #---------------------------------------------------------------------------
    # Define a custom move
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = MoveBuilder.new(id)
      yield(builder) if block_given?
      @moves[id] = builder.to_data
      SCScripts.log("Registered custom move: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Get move data
    #---------------------------------------------------------------------------
    def self.get(id)
      @moves[id]
    end
    
    def self.all
      @moves
    end
  end
  
  #=============================================================================
  # MoveBuilder
  #=============================================================================
  class MoveBuilder
    def initialize(id)
      @id = id
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @type = :NORMAL
      @category = :Physical  # :Physical, :Special, :Status
      @power = 0
      @accuracy = 100
      @pp = 10
      @target = :NearOther
      @priority = 0
      @function_code = nil
      @flags = []
      @description = ""
      @effect_chance = 0
      @on_use = nil
      @on_hit = nil
      @damage_calc = nil
    end
    
    def name(text)
      @name = text
    end
    
    def type(t)
      @type = t
    end
    
    def physical(power, accuracy = 100)
      @category = :Physical
      @power = power
      @accuracy = accuracy
    end
    
    def special(power, accuracy = 100)
      @category = :Special
      @power = power
      @accuracy = accuracy
    end
    
    def status(accuracy = 100)
      @category = :Status
      @power = 0
      @accuracy = accuracy
    end
    
    def pp(value)
      @pp = value
    end
    
    def priority(value)
      @priority = value
    end
    
    def target(t)
      @target = t
    end
    
    def function_code(code)
      @function_code = code
    end
    
    def flags(*f)
      @flags = f.flatten
    end
    
    def description(text)
      @description = text
    end
    
    def effect_chance(percent)
      @effect_chance = percent
    end
    
    # Custom callbacks
    def on_use(&block)
      @on_use = block
    end
    
    def on_hit(&block)
      @on_hit = block
    end
    
    def damage_calc(&block)
      @damage_calc = block
    end
    
    # Shorthand flags
    def contact
      @flags << :Contact
    end
    
    def sound_based
      @flags << :Sound
    end
    
    def punch
      @flags << :Punch
    end
    
    def biting
      @flags << :Biting
    end
    
    def to_data
      {
        id: @id,
        name: @name,
        type: @type,
        category: @category,
        power: @power,
        accuracy: @accuracy,
        pp: @pp,
        target: @target,
        priority: @priority,
        function_code: @function_code,
        flags: @flags,
        description: @description,
        effect_chance: @effect_chance,
        on_use: @on_use,
        on_hit: @on_hit,
        damage_calc: @damage_calc
      }
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::CustomMove.define :SHADOW_RUSH do |m|
#   m.name "Shadow Rush"
#   m.type :DARK
#   m.physical 80, 100
#   m.pp 15
#   m.contact
#   m.description "A reckless charge attack with shadow energy."
#   m.effect_chance 20
#   m.on_hit do |user, target, move|
#     # 20% chance to lower target's Defense
#     if rand(100) < 20
#       target.pbLowerStatStage(:DEFENSE, 1, user)
#     end
#   end
# end
#
# GameData::CustomMove.define :HEALING_AURA do |m|
#   m.name "Healing Aura"
#   m.type :FAIRY
#   m.status
#   m.pp 5
#   m.target :AllAllies
#   m.description "Heals all allies by 25% of their max HP."
#   m.on_use do |user, targets, move|
#     targets.each do |target|
#       target.pbRecoverHP(target.totalhp / 4)
#     end
#   end
# end
