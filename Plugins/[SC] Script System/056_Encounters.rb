#===============================================================================
# Shattered Crowns Script System - Encounter Definitions
#===============================================================================
# Complete PBS replacement for encounters.txt
# Defines wild encounter data using Ruby DSL instead of text files.
#===============================================================================

module GameData
  #=============================================================================
  # Encounter - Define wild encounters per map
  #=============================================================================
  class Encounter
    def self.define(map_id, version = 0, &block)
      key = "#{map_id}_#{version}"
      builder = EncounterBuilder.new(map_id, version)
      yield(builder) if block_given?
      ScriptRegistry.register_encounter(key, builder.to_data)
    end
    
    def self.get(map_id, version = 0)
      if const_defined?(:DATA)
        trial_key = sprintf("%s_%d", map_id, version).to_sym
        fallback_key = sprintf("%s_0", map_id).to_sym
        return self::DATA[trial_key] if self::DATA.has_key?(trial_key)
        return self::DATA[fallback_key] if self::DATA.has_key?(fallback_key)
      end
      key = "#{map_id}_#{version}"
      data = ScriptRegistry.get_encounter(key)
      data ? EncounterData.new(data) : nil
    end
    
    def self.exists?(map_id, version = 0)
      !get(map_id, version).nil?
    end
    
    def self.for_map(map_id)
      results = []
      ScriptRegistry.encounters.each do |key, data|
        results << data if data[:map_id] == map_id
      end
      results
    end
    
    def self.each
      if const_defined?(:DATA)
        self::DATA.each_value { |encounter| yield(encounter) }
      end
      ScriptRegistry.encounters.each_value { |data| yield(EncounterData.new(data)) }
    end
    
    def self.count
      canonical = const_defined?(:DATA) ? self::DATA.length : 0
      canonical + ScriptRegistry.encounters.count
    end
  end
  
  #=============================================================================
  # EncounterData — adapter exposing the SC encounter hash through the engine's
  # GameData::Encounter API (step_chances / types), keyed by EncounterType ids.
  # (Without this, PokemonEncounters#setup calls .step_chances on a plain Hash →
  #  nil.each crash → no wild encounters.)
  #=============================================================================
  class EncounterData
    def initialize(data); @data = data || {}; end
    def map_id;  @data[:map_id]; end
    def map;     @data[:map_id]; end
    def version; @data[:version] || 0; end
    def pbs_file_suffix; ""; end
    def [](k); @data[k]; end

    # => { :Land => 21, ... }
    def step_chances
      out = {}
      (@data[:encounters] || {}).each do |sc_key, enc|
        id = EncounterData.engine_type_id(sc_key)
        out[id] = (enc[:density] || 0) if id
      end
      out
    end

    # => { :Land => [[prob, species, min_lv, max_lv], ...], ... }
    def types
      out = {}
      (@data[:encounters] || {}).each do |sc_key, enc|
        id = EncounterData.engine_type_id(sc_key)
        next unless id
        out[id] = (enc[:pokemon] || []).map do |p|
          lo = p[:min_level] || 1
          [p[:probability] || 0, p[:species], lo, p[:max_level] || lo]
        end
      end
      out
    end

    # SC stores lowercase keys (:land); the engine indexes by EncounterType id
    # (:Land). Match case-insensitively so the casing is never hardcoded.
    def self.engine_type_id(sc_key)
      k = sc_key.to_s.downcase
      if @type_cache.nil? || @type_cache.empty?
        @type_cache = {}
        GameData::EncounterType.each { |et| @type_cache[et.id.to_s.downcase] = et.id } if defined?(GameData::EncounterType)
      end
      @type_cache[k]
    end
  end

  #=============================================================================
  # EncounterBuilder
  #=============================================================================
  class EncounterBuilder
    attr_reader :map_id, :version

    ENCOUNTER_TYPES = [
      :land, :landday, :landnight, :landmorning,
      :water, :cave, :cavewater,
      :oldrod, :goodrod, :superrod,
      :rocksmash, :headbuttlow, :headbutthigh,
      :pokeradar, :bugcontest
    ]

    def initialize(map_id, version)
      @map_id = map_id
      @version = version
      @densities = {}
      @data = {
        map_id: map_id,
        version: version,
        encounters: {}
      }
    end

    # Canonical DSL (see PBS_REPLACEMENT_GUIDE.md):
    #   e.density :Land, 25
    #   e.method  :Land do |m|
    #     m.rate 20, :PIDGEY, level: 2..4
    #   end
    # Type symbols are accepted in any case (:Land / :land / "Land") and
    # normalized to the lowercase keys used internally / in ENCOUNTER_TYPES.
    def self.normalize_type(type)
      type.to_s.downcase.to_sym
    end

    # Declare the encounter density for a type. Stored until the matching
    # `method` block builds the slot list (densities may be declared up front).
    def density(type, value)
      @densities[EncounterBuilder.normalize_type(type)] = value
      self
    end

    # Define the encounter slot list for a type.
    def method(type, &block)
      key = EncounterBuilder.normalize_type(type)
      enc_builder = EncounterListBuilder.new(key, @densities[key] || 0)
      block.call(enc_builder) if block
      @data[:encounters][key] = enc_builder.to_data
      self
    end

    # Dynamic method generation for all encounter types — alternate direct form:
    #   e.land(25) { |m| m.add(:PIDGEY, 2..4, 20) }
    ENCOUNTER_TYPES.each do |type|
      define_method(type) do |density = 0, &block|
        enc_builder = EncounterListBuilder.new(type, density)
        block.call(enc_builder) if block
        @data[:encounters][type] = enc_builder.to_data
        self
      end
    end

    def to_data
      @data.dup
    end
  end
  
  #=============================================================================
  # EncounterListBuilder - Builder for individual encounter list
  #=============================================================================
  class EncounterListBuilder
    def initialize(type, density)
      @type = type
      @density = density
      @pokemon = []
    end
    
    def add(species, level, probability, form: nil)
      species = DSL.to_id(species)

      # Handle level ranges
      if level.is_a?(Range)
        min_level = level.first
        max_level = level.last
      else
        min_level = level
        max_level = level
      end

      @pokemon << {
        species: species,
        form: form,
        min_level: min_level,
        max_level: max_level,
        probability: probability
      }
      self
    end

    # Canonical DSL slot form (see PBS_REPLACEMENT_GUIDE.md):
    #   m.rate 20, :PIDGEY, level: 2..4
    #   m.rate 20, :PIDGEY              # level optional → defaults to 1
    # Note the argument order is (probability, species) — the inverse of `add`.
    def rate(probability, species, level: 1, form: nil)
      add(species, level, probability, form: form)
    end
    
    def to_data
      {
        type: @type,
        density: @density,
        pokemon: @pokemon
      }
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions for Encounters
#===============================================================================
module GameData
  module ScriptRegistry
    class << self
      def encounters
        @encounters ||= {}
      end
      
      def register_encounter(key, data)
        encounters[key] = data
      end
      
      def get_encounter(key)
        encounters[key]
      end
    end
  end
end
