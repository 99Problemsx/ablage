#===============================================================================
# Shattered Crowns Script System - Pokemon Species Definitions
#===============================================================================
# Complete PBS replacement for pokemon.txt and pokemon_forms.txt
# Defines species data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Species - Define Pokemon species
  #=============================================================================
  class Species
    attr_reader :id, :real_name, :form_name, :species, :form, :pokedex_entry
    attr_reader :type1, :type2, :base_stats, :evs, :catch_rate, :happiness
    attr_reader :base_exp, :growth_rate, :gender_ratio, :hatch_steps, :incense
    attr_reader :moves, :tutor_moves, :egg_moves, :abilities, :hidden_abilities
    attr_reader :wild_item_common, :wild_item_uncommon, :wild_item_rare
    attr_reader :ev_yield, :height, :weight, :color, :shape, :habitat, :generation
    attr_reader :mega_stone, :mega_move, :unmega_form, :mega_message
    attr_reader :back_sprite_x, :back_sprite_y, :front_sprite_x, :front_sprite_y
    attr_reader :front_sprite_altitude, :shadow_sprite_x, :shadow_sprite_y
    attr_reader :egg_groups, :flags, :evolutions
    attr_reader :call_rate_sos, :call_rate_shadow, :call_rate_same
    
    alias __sc_v22_initialize initialize unless method_defined?(:__sc_v22_initialize)
    def initialize(data)
      # PBS records carry this key; keep Essentials' complete v22 data model
      # intact and only use the compact constructor for SC DSL records.
      return __sc_v22_initialize(data) if data.key?(:pbs_file_suffix)
      @id = data[:id]
      @species = data[:species] || @id
      @form = data[:form_number] || 0
      @real_name = data[:name] || "Unnamed"
      @form_name = data[:form_name]
      @pokedex_entry = data[:pokedex_entry]
      
      @types = data[:types] || [:NORMAL]
      @type1 = @types[0]
      @type2 = @types[1]
      
      # Normalize stat keys: SC uses lowercase (:hp, :attack), Essentials expects uppercase (:HP, :ATTACK)
      @base_stats = self.class.normalize_stat_hash(data[:base_stats] || {})
      @evs = self.class.normalize_stat_hash(data[:evs] || {})
      @catch_rate = data[:catch_rate] || 255
      @happiness = data[:happiness] || 70
      @base_exp = data[:base_exp] || 100
      @growth_rate = data[:growth_rate] || :Medium
      @gender_ratio = data[:gender_ratio] || :Female50Percent
      @hatch_steps = data[:hatch_steps] || 5120
      @incense = data[:incense]
      
      @moves = data[:moves] || []
      @tutor_moves = data[:tutor_moves] || []
      @egg_moves = data[:egg_moves] || []
      @abilities = data[:abilities] || []
      @hidden_abilities = data[:hidden_abilities] || []
      
      @wild_item_common = data[:wild_item_common]
      @wild_item_uncommon = data[:wild_item_uncommon]
      @wild_item_rare = data[:wild_item_rare]
      
      @ev_yield = self.class.normalize_stat_hash(data[:ev_yield] || {})
      @height = data[:height] || 1.0
      @weight = data[:weight] || 10.0
      @color = data[:color] || :Red
      @shape = data[:shape] || :Head
      @habitat = data[:habitat]
      @generation = data[:generation] || 1
      
      @mega_stone = data[:mega_stone]
      @mega_move = data[:mega_move]
      @unmega_form = data[:unmega_form]
      @mega_message = data[:mega_message]
      
      @back_sprite_x = data[:back_sprite_x] || 0
      @back_sprite_y = data[:back_sprite_y] || 0
      @front_sprite_x = data[:front_sprite_x] || 0
      @front_sprite_y = data[:front_sprite_y] || 0
      @front_sprite_altitude = data[:front_sprite_altitude] || 0
      @shadow_sprite_x = data[:shadow_sprite_x] || 0
      @shadow_sprite_y = data[:shadow_sprite_y] || 0
      
      @egg_groups = data[:egg_groups] || [:Undiscovered]
      @flags = data[:flags] || []
      @evolutions = data[:evolutions] || []
      
      @call_rate_sos = data[:call_rate_sos]
      @call_rate_shadow = data[:call_rate_shadow]
      @call_rate_same = data[:call_rate_same]
    end
    
    # Normalize SC lowercase stat keys to Essentials uppercase stat IDs
    STAT_KEY_MAP = {
      :hp => :HP, :attack => :ATTACK, :defense => :DEFENSE,
      :sp_atk => :SPECIAL_ATTACK, :special_attack => :SPECIAL_ATTACK,
      :sp_def => :SPECIAL_DEFENSE, :special_defense => :SPECIAL_DEFENSE,
      :speed => :SPEED
    }
    ALL_MAIN_STATS = [:HP, :ATTACK, :DEFENSE, :SPECIAL_ATTACK, :SPECIAL_DEFENSE, :SPEED]
    def self.normalize_stat_hash(hash)
      return {} unless hash.is_a?(Hash)
      normalized = {}
      hash.each do |k, v|
        new_key = STAT_KEY_MAP[k] || k
        normalized[new_key] = v
      end
      # Ensure all main stat keys exist (default 0) so lookups never return nil
      ALL_MAIN_STATS.each { |s| normalized[s] = 0 unless normalized.key?(s) }
      normalized
    end
    
    def name; @real_name; end
    def types; @types; end
    def single_gendered?; [:AlwaysMale, :AlwaysFemale, :Genderless].include?(@gender_ratio); end
    def has_type?(type); @types.include?(DSL.to_id(type)); end
    
    #---------------------------------------------------------------------------
    # Define a new Pokemon species
    # Usage:
    #   GameData::Species.define :PIKACHU do |pkmn|
    #     pkmn.name "Pikachu"
    #     pkmn.types :ELECTRIC
    #     pkmn.base_stats hp: 35, attack: 55, defense: 40, 
    #                     sp_atk: 50, sp_def: 50, speed: 90
    #     ...
    #   end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      id = DSL.to_id(id)
      builder = SpeciesBuilder.new(id)
      yield(builder) if block_given?
      ScriptRegistry.register_pokemon(id, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Define a form for an existing species
    # Usage:
    #   GameData::Species.define_form :PIKACHU, 1 do |form|
    #     form.form_name "Partner Pikachu"
    #     form.base_stats hp: 45, attack: 80, ...
    #   end
    #---------------------------------------------------------------------------
    def self.define_form(species, form_number, &block)
      species = DSL.to_id(species)
      builder = FormBuilder.new(species, form_number)
      yield(builder) if block_given?
      ScriptRegistry.register_pokemon_form(species, form_number, builder.to_data)
    end
    
    #---------------------------------------------------------------------------
    # Get species data
    #---------------------------------------------------------------------------
    def self.get(id)
      id = DSL.to_id(id)
      return self::DATA[id] if const_defined?(:DATA) && self::DATA.has_key?(id)
      data = ScriptRegistry.get_pokemon(id)
      return nil unless data
      self.new(data)
    end
    
    def self.get_form(species, form)
      species = DSL.to_id(species)
      if const_defined?(:DATA)
        key = (form.to_i == 0) ? species : [species, form.to_i]
        return self::DATA[key] if self::DATA.has_key?(key)
      end
      data = ScriptRegistry.get_pokemon_form(species, form)
      return nil unless data
      self.new(data)
    end
    
    def self.exists?(id)
      id = DSL.to_id(id)
      return true if const_defined?(:DATA) && self::DATA.has_key?(id)
      !ScriptRegistry.get_pokemon(id).nil?
    end
    
    def self.keys
      canonical = const_defined?(:DATA) ? self::DATA.keys : []
      (canonical + ScriptRegistry.pokemon.keys).uniq
    end

    def self.each
      seen = {}
      if const_defined?(:DATA)
        self::DATA.each_value { |species| seen[species.id] = true; yield(species) }
      end
      ScriptRegistry.pokemon.each do |id, data|
        next if seen[id]
        yield(self.new(data))
      end
    end

    def self.each_species(&block)
      self.each(&block)
    end

    def self.count
      keys.count
    end
  end
  
  #=============================================================================
  # SpeciesBuilder - Builder for species data
  #=============================================================================
  class SpeciesBuilder
    attr_reader :id
    attr_reader :data
    
    def initialize(id)
      @id = id
      @data = {
        id: id,
        name: id.to_s.capitalize,
        types: [:NORMAL],
        base_stats: { hp: 50, attack: 50, defense: 50, sp_atk: 50, sp_def: 50, speed: 50 },
        gender_ratio: :Female50Percent,
        growth_rate: :Medium,
        base_exp: 50,
        evs: {},
        catch_rate: 255,
        happiness: 70,
        abilities: [],
        hidden_abilities: [],
        moves: [],
        tutor_moves: [],
        egg_moves: [],
        egg_groups: [:Undiscovered],
        hatch_steps: 5120,
        height: 1.0,
        weight: 10.0,
        color: :Gray,
        shape: :Head,
        habitat: nil,
        category: "Unknown",
        pokedex_entry: "No data available.",
        generation: 1,
        flags: [],
        evolutions: [],
        mega_stone: nil,
        mega_move: nil,
        unmega_form: nil,
        mega_message: nil
      }
    end
    
    # Basic info
    def species(val); @data[:species] = DSL.to_id(val); end
    def form(val); @data[:form_number] = val; end
    def name(val); @data[:name] = val; end
    def form_name(val); @data[:form_name] = val; end
    def category(val); @data[:category] = val; end
    def pokedex_entry(val); @data[:pokedex_entry] = val; end
    def generation(val); @data[:generation] = val; end
    
    # Types - can pass one or two
    def types(*val)
      @data[:types] = val.flatten.map { |t| DSL.to_id(t) }
    end
    def type1(val); @data[:types][0] = DSL.to_id(val); end
    def type2(val); @data[:types][1] = DSL.to_id(val); end
    
    # Base Stats
    def base_stats(stats = {})
      @data[:base_stats] = {
        hp:     stats[:hp] || stats[:HP] || 50,
        attack: stats[:attack] || stats[:Attack] || stats[:atk] || 50,
        defense: stats[:defense] || stats[:Defense] || stats[:def] || 50,
        sp_atk: stats[:sp_atk] || stats[:SpAtk] || stats[:special_attack] || 50,
        sp_def: stats[:sp_def] || stats[:SpDef] || stats[:special_defense] || 50,
        speed:  stats[:speed] || stats[:Speed] || stats[:spd] || 50
      }
    end
    
    # EVs yielded
    def evs(vals = {})
      @data[:evs] = {
        hp:     vals[:hp] || vals[:HP] || 0,
        attack: vals[:attack] || vals[:Attack] || 0,
        defense: vals[:defense] || vals[:Defense] || 0,
        sp_atk: vals[:sp_atk] || vals[:SpAtk] || 0,
        sp_def: vals[:sp_def] || vals[:SpDef] || 0,
        speed:  vals[:speed] || vals[:Speed] || 0
      }
    end
    
    # Growth and catch
    def growth_rate(val); @data[:growth_rate] = val; end
    def base_exp(val); @data[:base_exp] = val; end
    def catch_rate(val); @data[:catch_rate] = val; end
    def happiness(val); @data[:happiness] = val; end
    
    # Gender
    def gender_ratio(val); @data[:gender_ratio] = val; end
    def always_male; @data[:gender_ratio] = :AlwaysMale; end
    def always_female; @data[:gender_ratio] = :AlwaysFemale; end
    def genderless; @data[:gender_ratio] = :Genderless; end
    
    # Abilities
    def abilities(*vals)
      @data[:abilities] = vals.flatten.map { |a| DSL.to_id(a) }
    end
    def hidden_abilities(*vals)
      @data[:hidden_abilities] = vals.flatten.map { |a| DSL.to_id(a) }
    end
    
    # Moves - level-up moves
    def moves(&block)
      move_builder = MoveLevelBuilder.new
      yield(move_builder) if block_given?
      @data[:moves] = move_builder.moves
    end
    
    # Individual move at level
    def learns(move, level)
      @data[:moves] << [level, DSL.to_id(move)]
    end
    
    # Tutor and egg moves
    def tutor_moves(*vals)
      @data[:tutor_moves] = vals.flatten.map { |m| DSL.to_id(m) }
    end
    def egg_moves(*vals)
      @data[:egg_moves] = vals.flatten.map { |m| DSL.to_id(m) }
    end
    
    # Breeding
    def egg_groups(*vals)
      @data[:egg_groups] = vals.flatten.map { |g| DSL.to_id(g) }
    end
    def hatch_steps(val); @data[:hatch_steps] = val; end
    
    # Physical characteristics
    def height(val); @data[:height] = val; end
    def weight(val); @data[:weight] = val; end
    def color(val); @data[:color] = val; end
    def shape(val); @data[:shape] = val; end
    def habitat(val); @data[:habitat] = val; end
    
    # Evolutions
    def evolutions(&block)
      evo_builder = EvolutionBuilder.new
      yield(evo_builder) if block_given?
      @data[:evolutions] = evo_builder.evolutions
    end
    
    def evolves_to(species, method, param = nil)
      @data[:evolutions] << {
        species: DSL.to_id(species),
        method: method,
        parameter: param
      }
    end
    
    # Flags (Legendary, Mythical, Ultra Beast, etc.)
    def flags(*vals)
      @data[:flags] = vals.flatten.map { |f| DSL.to_id(f) }
    end
    def legendary; @data[:flags] << :Legendary; end
    def mythical; @data[:flags] << :Mythical; end
    def ultra_beast; @data[:flags] << :UltraBeast; end
    def paradox; @data[:flags] << :Paradox; end
    
    # Mega Evolution
    def mega_stone(val); @data[:mega_stone] = DSL.to_id(val); end
    def mega_move(val); @data[:mega_move] = DSL.to_id(val); end
    
    # Wild held items
    def wild_items(common: nil, uncommon: nil, rare: nil)
      @data[:wild_item_common] = DSL.to_id(common) if common
      @data[:wild_item_uncommon] = DSL.to_id(uncommon) if uncommon
      @data[:wild_item_rare] = DSL.to_id(rare) if rare
    end
    
    # Incense for breeding
    def incense(val); @data[:incense] = DSL.to_id(val); end
    
    # Offspring (for breeding)
    def offspring(*vals)
      @data[:offspring] = vals.flatten.map { |s| DSL.to_id(s) }
    end
    
    # SOS Calling
    def call_rate_sos(val); @data[:call_rate_sos] = val; end
    def call_rate_shadow(val); @data[:call_rate_shadow] = val; end
    def call_rate_same(val); @data[:call_rate_same] = val; end
    
    def to_data
      @data.compact
    end
  end
  
  #=============================================================================
  # FormBuilder - Builder for form data (inherits from species)
  #=============================================================================
  class FormBuilder < SpeciesBuilder
    def initialize(species, form_number)
      super(species)
      @form_number = form_number
      @data[:base_species] = species
      @data[:form_number] = form_number
    end
    
    # Form-specific attributes
    def mega_form; @data[:flags] << :MegaForm; end
    def gmax_form; @data[:flags] << :GmaxForm; end
    def primal_form; @data[:flags] << :PrimalForm; end
    
    def to_data
      @data.compact
    end
  end
  
  #=============================================================================
  # MoveLevelBuilder - Helper for level-up moves
  #=============================================================================
  class MoveLevelBuilder
    attr_reader :moves
    
    def initialize
      @moves = []
    end
    
    # Add move at level
    def at(level, *move_names)
      move_names.flatten.each do |move|
        @moves << [level, DSL.to_id(move)]
      end
    end
    
    # Shorthand for level 1 moves
    def start(*move_names)
      at(1, *move_names)
    end
    
    # Evolution move (level 0)
    def on_evolution(*move_names)
      at(0, *move_names)
    end
  end
  
  #=============================================================================
  # EvolutionBuilder - Helper for evolutions
  #=============================================================================
  class EvolutionBuilder
    attr_reader :evolutions
    
    def initialize
      @evolutions = []
    end
    
    def to(species, method:, param: nil)
      @evolutions << {
        species: DSL.to_id(species),
        method: method,
        parameter: param
      }
    end
    
    # Common evolution methods
    def level_up(species, level)
      to(species, method: :Level, param: level)
    end
    
    def item(species, item_id)
      to(species, method: :Item, param: DSL.to_id(item_id))
    end
    
    def trade(species, item: nil)
      if item
        to(species, method: :TradeItem, param: DSL.to_id(item))
      else
        to(species, method: :Trade)
      end
    end
    
    def friendship(species, time: nil)
      method = case time
               when :day then :HappinessDay
               when :night then :HappinessNight
               else :Happiness
               end
      to(species, method: method)
    end
    
    def level_with_move(species, move)
      to(species, method: :HasMove, param: DSL.to_id(move))
    end
    
    def level_with_type(species, type)
      to(species, method: :HasMoveType, param: DSL.to_id(type))
    end
    
    def location(species, map_id)
      to(species, method: :Location, param: map_id)
    end
    
    def level_male(species, level)
      to(species, method: :LevelMale, param: level)
    end
    
    def level_female(species, level)
      to(species, method: :LevelFemale, param: level)
    end
  end
end

#===============================================================================
# Top-level Shortcut
#===============================================================================
def Species
  GameData::Species
end
