#===============================================================================
# Shattered Crowns Script System - Move Definitions
#===============================================================================
# Complete PBS replacement for moves.txt
# Defines moves using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Move - Define battle moves
  #=============================================================================
  class Move
    attr_reader :id, :name, :description, :type, :category, :power, :accuracy
    attr_reader :pp, :priority, :target, :function_code, :effect_chance
    attr_reader :flags, :multi_hit, :recoil, :drain, :z_power, :z_effect, :max_power
    attr_reader :contact, :protect, :mirror_move, :snatch, :magic_coat, :kings_rock
    attr_reader :sound, :gravity, :heal_block, :punch, :bite, :pulse, :bomb
    attr_reader :powder, :dance, :high_crit
    
    alias __sc_v22_initialize initialize unless method_defined?(:__sc_v22_initialize)
    def initialize(data)
      return __sc_v22_initialize(data) if data.key?(:pbs_file_suffix)
      @id = data[:id]
      @name = data[:name] || data[:real_name] || "Unnamed"
      @description = data[:description] || data[:real_description]
      @type = data[:type] || :NORMAL
      # Normalize category: SC uses symbols, Essentials expects integers (0/1/2)
      raw_cat = data[:category] || :physical
      @category = case raw_cat
                  when Integer then raw_cat
                  when :physical, :Physical, "physical" then 0
                  when :special, :Special, "special" then 1
                  when :status, :Status, "status" then 2
                  else 0
                  end
      @power = data[:power] || 0
      @accuracy = data[:accuracy] || 100
      @pp = data[:pp] || data[:total_pp] || 5
      @priority = data[:priority] || 0
      @target = data[:target] || :NearOther
      @function_code = data[:function_code] || "None"
      @effect_chance = data[:effect_chance] || 0
      
      @flags = data[:flags] || []
      @multi_hit = data[:multi_hit]
      @recoil = data[:recoil]
      @drain = data[:drain]
      @z_power = data[:z_power]
      @z_effect = data[:z_effect]
      @max_power = data[:max_power]
      
      # Essentials compatibility - map SC field names to Essentials expected names
      @total_pp = @pp
      @real_name = @name
      @real_description = @description || "???"
      @pbs_file_suffix = ""
      
      # Boolean flags
      @contact = data[:contact]
      @protect = data[:protect]
      @mirror_move = data[:mirror_move]
      @snatch = data[:snatch]
      @magic_coat = data[:magic_coat]
      @kings_rock = data[:kings_rock]
      @sound = data[:sound]
      @gravity = data[:gravity]
      @heal_block = data[:heal_block]
      @punch = data[:punch]
      @bite = data[:bite]
      @pulse = data[:pulse]
      @bomb = data[:bomb]
      @powder = data[:powder]
      @dance = data[:dance]
      @high_crit = data[:high_crit]
    end
    
    def physical?; @category == 0; end
    def special?; @category == 1; end
    def status?; @category == 2; end
    def damaging?; @category != 2; end

    # attr_reader :name/:description above would otherwise replace Essentials'
    # translated accessors for canonical PBS records (which store @real_*).
    def name
      return @name if @name
      pbGetMessageFromHash(MessageTypes::MOVE_NAMES, @real_name)
    end

    def description
      return @description if @description
      pbGetMessageFromHash(MessageTypes::MOVE_DESCRIPTIONS, @real_description)
    end
    
    #---------------------------------------------------------------------------
    # Define a new move
    # Usage:
    #   GameData::Move.define :THUNDERBOLT do |move|
    #     move.name "Thunderbolt"
    #     ...
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = MoveBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_move(id, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Get move data
    #---------------------------------------------------------------------------
    def self.get(id)
      id = DSL.to_id(id)
      return self::DATA[id] if const_defined?(:DATA) && self::DATA.has_key?(id)
      data = ScriptRegistry.get_move(id)
      return nil unless data
      self.new(data)
    end
    
    def self.exists?(id)
      id = DSL.to_id(id)
      return true if const_defined?(:DATA) && self::DATA.has_key?(id)
      !ScriptRegistry.get_move(id).nil?
    end
    
    def self.keys
      canonical = const_defined?(:DATA) ? self::DATA.keys : []
      (canonical + ScriptRegistry.moves.keys).uniq
    end

    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value { |move| seen[move.id] = true; yield(move) }
      end
      ScriptRegistry.moves.each do |id, data|
        next if seen[id]
        yield(self.new(data))
      end
    end

    def self.count
      keys.count
    end
  end
  
  #=============================================================================
  # MoveBuilder - Builder for move data
  #=============================================================================
  class MoveBuilder
    attr_reader :id
    
    # Move categories
    CATEGORIES = [:physical, :special, :status]
    
    # Move targets
    TARGETS = [
      :None, :User, :NearAlly, :UserOrNearAlly, :AllAllies, :UserAndAllies,
      :NearFoe, :RandomNearFoe, :AllNearFoes, :Foe, :AllFoes,
      :NearOther, :AllNearOthers, :Other, :AllBattlers,
      :UserSide, :FoeSide, :BothSides
    ]
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.split('_').map(&:capitalize).join(' '),
        type: :NORMAL,
        category: 0,
        power: 0,
        accuracy: 100,
        pp: 5,
        target: :NearOther,
        priority: 0,
        function_code: "None",
        effect_chance: 0,
        contact: false,
        protect: true,
        mirror_move: true,
        snatch: false,
        magic_coat: false,
        kings_rock: true,
        sound: false,
        gravity: true,
        heal_block: true,
        punch: false,
        bite: false,
        pulse: false,
        bomb: false,
        powder: false,
        dance: false,
        high_crit: false,
        flags: [],
        description: "No description."
      }
    end
    
    # Basic properties
    def name(val); @data[:name] = val; end
    def description(val); @data[:description] = val; end
    def type(val); @data[:type] = DSL.to_id(val); end
    
    # Category
    CATEGORY_MAP = { physical: 0, special: 1, status: 2 }
    def category(val)
      val = val.to_s.downcase.to_sym
      raise "Invalid category: #{val}" unless CATEGORY_MAP.key?(val)
      @data[:category] = CATEGORY_MAP[val]
    end
    def physical; @data[:category] = 0; end
    def special; @data[:category] = 1; end
    def status; @data[:category] = 2; end
    
    # Battle stats
    def power(val); @data[:power] = val; end
    def base_power(val); @data[:power] = val; end
    def accuracy(val); @data[:accuracy] = val; end
    def pp(val); @data[:pp] = val; end
    alias_method :total_pp, :pp
    def priority(val); @data[:priority] = val; end
    
    # Target
    def target(val); @data[:target] = val; end
    def targets_user; @data[:target] = :User; end
    def targets_all_foes; @data[:target] = :AllNearFoes; end
    def targets_all_allies; @data[:target] = :AllAllies; end
    def targets_all; @data[:target] = :AllNearOthers; end
    
    # Function code (effect handler)
    def function_code(val); @data[:function_code] = val; end
    def effect(val); @data[:function_code] = val; end
    def effect_chance(val); @data[:effect_chance] = val; end
    
    # Flags as boolean methods
    def makes_contact; @data[:contact] = true; end
    def contact(val = true); @data[:contact] = val; end
    
    def bypasses_protect; @data[:protect] = false; end
    def blocked_by_protect(val = true); @data[:protect] = val; end
    
    def cannot_mirror; @data[:mirror_move] = false; end
    def can_snatch; @data[:snatch] = true; end
    def can_magic_coat; @data[:magic_coat] = true; end
    def no_kings_rock; @data[:kings_rock] = false; end
    
    def sound_based; @data[:sound] = true; @data[:flags] << :Sound; end
    def blocked_by_gravity; @data[:gravity] = false; end
    def blocked_by_heal_block; @data[:heal_block] = false; end
    
    # Move type flags
    def punching; @data[:punch] = true; @data[:flags] << :Punch; end
    def biting; @data[:bite] = true; @data[:flags] << :Bite; end
    def pulse_move; @data[:pulse] = true; @data[:flags] << :Pulse; end
    def bomb_move; @data[:bomb] = true; @data[:flags] << :Bomb; end
    def powder_move; @data[:powder] = true; @data[:flags] << :Powder; end
    def dance_move; @data[:dance] = true; @data[:flags] << :Dance; end
    def slicing; @data[:flags] << :Slicing; end
    def wind; @data[:flags] << :Wind; end
    
    def high_crit_ratio; @data[:high_crit] = true; @data[:flags] << :HighCriticalHitRate; end
    
    # Additional flags
    def flags(*vals)
      @data[:flags].concat(vals.flatten.map { |f| DSL.to_id(f) })
    end
    
    # Multi-hit moves
    def multi_hit(min, max = nil)
      @data[:multi_hit] = max ? [min, max] : min
    end
    
    # Recoil/drain
    def recoil(percent); @data[:recoil] = percent; end
    def drain(percent); @data[:drain] = percent; end
    
    # Charge/recharge
    def two_turn; @data[:flags] << :TwoTurnMove; end
    def must_recharge; @data[:flags] << :MustRecharge; end
    
    # Z-Move and Max Move
    def z_move(power:, effect: nil)
      @data[:z_power] = power
      @data[:z_effect] = effect if effect
    end
    
    def max_move(power:)
      @data[:max_power] = power
    end
    
    def to_data
      @data[:flags].uniq!
      @data.compact
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Move
  GameData::Move
end
