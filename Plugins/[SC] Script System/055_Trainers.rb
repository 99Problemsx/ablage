#===============================================================================
# Shattered Crowns Script System - Trainer Definitions
#===============================================================================
# Complete PBS replacement for trainers.txt and trainer_types.txt
# Defines trainer data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # TrainerType - Define trainer types (classes)
  #=============================================================================
  class TrainerType
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = TrainerTypeBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_trainer_type(id, builder.to_data)
    end
    
    def self.get(id)
      id = DSL.to_id(id)
      return self::DATA[id] if const_defined?(:DATA) && self::DATA.has_key?(id)
      data = ScriptRegistry.get_trainer_type(id)
      return self.new({ id: id, real_name: "Unknown", gender: 2 }) if data.nil?
      # Normalize gender from Symbol (:Male/:Female) to Integer (0/1/2) for Essentials
      normalized = data.dup
      normalized[:gender] = TrainerTypeBuilder.normalize_gender(normalized[:gender])
      return self.new(normalized)
    end
    
    def self.exists?(id)
      id = DSL.to_id(id)
      return true if const_defined?(:DATA) && self::DATA.has_key?(id)
      !ScriptRegistry.get_trainer_type(id).nil?
    end
    
    def self.keys
      canonical = const_defined?(:DATA) ? self::DATA.keys : []
      (canonical + ScriptRegistry.trainer_types.keys).uniq
    end

    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value { |trainer_type| seen[trainer_type.id] = true; yield(trainer_type) }
      end
      ScriptRegistry.trainer_types.each do |id, data|
        next if seen[id]
        normalized = data.dup
        normalized[:id] = id
        normalized[:gender] = TrainerTypeBuilder.normalize_gender(normalized[:gender])
        yield(self.new(normalized))
      end
    end

    def self.count
      keys.count
    end
  end
  
  #=============================================================================
  # TrainerTypeBuilder
  #=============================================================================
  class TrainerTypeBuilder
    attr_reader :id
    
    # Normalize gender symbol/string to integer for Essentials compatibility
    def self.normalize_gender(val)
      case val
      when Integer then val
      when Symbol, String
        case val.to_s.downcase
        when 'male', 'm', '0'   then 0
        when 'female', 'f', '1' then 1
        else 2
        end
      else 2
      end
    end
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        real_name: id.to_s.split('_').map(&:capitalize).join(' '),
        gender: 0,
        base_money: 30,
        skill_level: 50,
        skill_code: nil,
        intro_BGM: nil,
        battle_BGM: nil,
        victory_BGM: nil,
        flags: []
      }
    end
    
    def name(value);        @data[:real_name] = value; self; end
    def gender(value);      @data[:gender] = self.class.normalize_gender(value); self; end
    def base_money(value);  @data[:base_money] = value; self; end
    def skill_level(value); @data[:skill_level] = value; self; end
    def skill_code(value);  @data[:skill_code] = value; self; end
    def intro_bgm(value);   @data[:intro_BGM] = value; self; end
    def battle_bgm(value);  @data[:battle_BGM] = value; self; end
    def victory_bgm(value); @data[:victory_BGM] = value; self; end
    def flags(*values);     @data[:flags] = values.flatten; self; end
    
    def to_data
      d = @data.dup
      d[:gender] = self.class.normalize_gender(d[:gender])
      d
    end
  end
  
  #=============================================================================
  # Trainer - Define individual trainers
  #=============================================================================
  class Trainer
    def self.define(type, name, version = 0, &block)
      type = DSL.to_id(type)
      key = "#{type}_#{name}_#{version}"
      builder = TrainerBuilder.new(type, name, version)
      yield(builder) if block_given?
      ScriptRegistry.register_trainer(key, builder.to_data)
    end
    
    def self.get(type, name, version = 0)
      canonical_key = [DSL.to_id(type), name, version]
      if const_defined?(:DATA) && self::DATA.has_key?(canonical_key)
        return self::DATA[canonical_key]
      end
      key = "#{DSL.to_id(type)}_#{name}_#{version}"
      ScriptRegistry.get_trainer(key)
    end
    
    def self.exists?(type, name, version = 0)
      !get(type, name, version).nil?
    end
    
    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value do |trainer|
          seen[[trainer.trainer_type, trainer.real_name, trainer.version]] = true
          yield(trainer)
        end
      end
      ScriptRegistry.trainers.each do |key, data|
        identity = [data[:type], data[:name], data[:version] || 0]
        next if seen[identity]
        # Essentials callers expect a single object with .trainer_type, .real_name, .version
        wrapper = OpenStruct.new(data)
        wrapper.trainer_type = data[:type]
        wrapper.real_name    = data[:name]
        wrapper.version      = data[:version] || 0
        yield(wrapper)
      end
    end
    
    def self.count
      canonical = const_defined?(:DATA) ? self::DATA.length : 0
      canonical + ScriptRegistry.trainers.count
    end
  end
  
  #=============================================================================
  # TrainerBuilder
  #=============================================================================
  class TrainerBuilder
    attr_reader :type, :name, :version
    
    def initialize(type, name, version)
      @type = type
      @name = name
      @version = version
      @data = {
        type: type,
        name: name,
        version: version,
        lose_text: nil,
        items: [],
        pokemon: []
      }
      @current_pokemon = nil
    end
    
    def lose_text(value);    @data[:lose_text] = value; self; end
    def items(*values);      @data[:items] = values.flatten; self; end
    def skill_level(value);  @data[:skill_level] = value; self; end
    def double_battle(value = true); @data[:double_battle] = value; self; end
    
    def pokemon(species, level, &block)
      pkmn_builder = TrainerPokemonBuilder.new(species, level)
      yield(pkmn_builder) if block_given?
      @data[:pokemon] << pkmn_builder.to_data
      self
    end
    
    def to_data
      @data.dup
    end
  end
  
  #=============================================================================
  # TrainerPokemonBuilder
  #=============================================================================
  class TrainerPokemonBuilder
    def initialize(species, level)
      @data = {
        species: DSL.to_id(species),
        level: level,
        moves: nil,
        item: nil,
        gender: nil,
        nature: nil,
        ability: nil,
        iv: nil,
        ev: nil,
        happiness: nil,
        ball: nil,
        shiny: false,
        shadow: false,
        form: nil,
        nickname: nil
      }
    end
    
    def moves(*values);    @data[:moves] = values.flatten; self; end
    def item(value);       @data[:item] = value; self; end
    def gender(value);     @data[:gender] = value; self; end
    def nature(value);     @data[:nature] = value; self; end
    def ability(value);    @data[:ability] = value; self; end
    def ability_index(value); @data[:ability_index] = value; self; end
    def iv(value);         @data[:iv] = value; self; end
    def ev(value);         @data[:ev] = value; self; end
    def happiness(value);  @data[:happiness] = value; self; end
    def ball(value);       @data[:ball] = value; self; end
    def shiny(value = true); @data[:shiny] = value; self; end
    def shadow(value = true); @data[:shadow] = value; self; end
    def form(value);       @data[:form] = value; self; end
    def nickname(value);   @data[:nickname] = value; self; end
    def dynamax_level(value); @data[:dynamax_level] = value; self; end
    def tera_type(value);  @data[:tera_type] = value; self; end

    # v22/DSL: zusaetzlich Setter-Schreibweise (p.moves = [...]) neben der Methoden-Form.
    def level=(v);         @data[:level] = v; end
    def moves=(v);         @data[:moves] = Array(v).flatten; end
    def item=(v);          @data[:item] = v; end
    def gender=(v);        @data[:gender] = v; end
    def nature=(v);        @data[:nature] = v; end
    def ability=(v);       @data[:ability] = v; end
    def ability_index=(v); @data[:ability_index] = v; end
    def iv=(v);            @data[:iv] = v; end
    def ev=(v);            @data[:ev] = v; end
    def happiness=(v);     @data[:happiness] = v; end
    def ball=(v);          @data[:ball] = v; end
    def shiny=(v);         @data[:shiny] = v; end
    def shadow=(v);        @data[:shadow] = v; end
    def form=(v);          @data[:form] = v; end
    def nickname=(v);      @data[:nickname] = v; end
    def dynamax_level=(v); @data[:dynamax_level] = v; end
    def tera_type=(v);     @data[:tera_type] = v; end

    def to_data
      @data.dup
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions for Trainers
#===============================================================================
module GameData
  module ScriptRegistry
    class << self
      def trainer_types
        @trainer_types ||= {}
      end
      
      def trainers
        @trainers ||= {}
      end
      
      def register_trainer_type(id, data)
        trainer_types[id] = data
      end
      
      def get_trainer_type(id)
        trainer_types[id]
      end
      
      def register_trainer(key, data)
        trainers[key] = data
      end
      
      def get_trainer(key)
        trainers[key]
      end
    end
  end
end
