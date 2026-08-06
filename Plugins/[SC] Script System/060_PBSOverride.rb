#===============================================================================
# Shattered Crowns Script System - PBS Override Hooks
#===============================================================================
# Intercepts PBS loading and replaces it with script-based data.
# This is the core of the PBS replacement system.
#===============================================================================

# RGSS doesn't include Ruby's stdlib, so define OpenStruct if missing
unless defined?(OpenStruct)
  class OpenStruct
    def initialize(hash = {})
      @table = {}
      hash.each { |k, v| @table[k.to_sym] = v }
    end

    def [](key)
      @table[key.to_sym]
    end

    def []=(key, value)
      @table[key.to_sym] = value
      define_singleton_method(key) { @table[key.to_sym] } unless respond_to?(key)
      define_singleton_method("#{key}=") { |val| @table[key.to_sym] = val } unless respond_to?("#{key}=")
    end

    def respond_to_missing?(name, include_private = false)
      @table.key?(name.to_s.chomp('=').to_sym) || super
    end

    def method_missing(name, *args)
      key = name.to_s
      if key.end_with?('=')
        self[key.chomp('=')] = args[0]
      elsif @table.key?(name)
        @table[name]
      else
        nil
      end
    end

    def to_h
      @table.dup
    end
  end
end

module SCScripts
  #=============================================================================
  # PBS Override Module
  #=============================================================================
  module PBSOverride
    @initialized = false
    @overrides_installed = false
    @canonical_compiling = false
    
    class << self
      attr_accessor :initialized, :overrides_installed, :canonical_compiling
    end
    
    #---------------------------------------------------------------------------
    # Install all PBS override hooks
    #---------------------------------------------------------------------------
    def self.install_hooks
      return if @overrides_installed
      
      SCScripts.debug("Installing PBS override hooks", :startup)
      
      install_species_hooks
      install_move_hooks
      install_ability_hooks
      install_item_hooks
      install_type_hooks
      install_trainer_type_hooks
      install_trainer_hooks
      install_encounter_hooks
      install_ribbon_hooks
      install_map_metadata_hooks
      install_map_connection_hooks
      install_regional_dex_hooks
      install_metadata_hooks
      install_town_map_hooks
      install_species_metrics_hooks
      install_safe_load_all_hook
      
      @overrides_installed = true
      SCScripts.debug("PBS override hooks installed", :startup)
    end
    
    #---------------------------------------------------------------------------
    # Species/Pokemon Hooks
    #---------------------------------------------------------------------------
    def self.install_species_hooks
      return unless defined?(GameData::Species)
      
      # Store original methods
      GameData::Species.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        alias_method :original_get_species_form, :get_species_form if method_defined?(:get_species_form) && !method_defined?(:original_get_species_form)
        
        # Override get to check script registry, with original (DSL) first
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          # Try original first (050_Pokemon.rb returns proper instances)
          if respond_to?(:original_get)
            begin
              result = original_get(id)
              return result if result
            rescue StandardError
            end
          end
          # Fall back to ScriptRegistry + OpenStruct wrapper
          script_data = GameData::ScriptRegistry.get_pokemon(id)
          return wrap_script_species(id, script_data) if script_data
          nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_pokemon(id)
          return wrap_script_species(id, script_data) if script_data
          nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_exists?)
            begin
              return true if original_exists?(id)
            rescue StandardError
            end
          end
          return true if GameData::ScriptRegistry.get_pokemon(id)
          false
        end
        
        # Override get_species_form: try original first, then ScriptRegistry
        define_method(:get_species_form) do |species, form = 0|
          return nil if !species
          # Recursion guard — prevents stack overflow from circular calls
          @_gsf_depth ||= 0
          if @_gsf_depth > 3
            return nil
          end
          @_gsf_depth += 1
          begin
            # Safely convert species-like objects to Symbol
            if species.respond_to?(:species) && !species.is_a?(Symbol) && !species.is_a?(String)
              species = species.species
            end
            species = species.to_sym if species.is_a?(String)
            # Direct DATA lookup — bypasses validate to prevent stack overflow
            f = form || 0
            if self.const_defined?(:DATA)
              data_hash = self::DATA
              trial = sprintf("%s_%d", species, f).to_sym
              species_key = data_hash[trial] ? trial : species
              result = data_hash[species_key]
              return result if result
            end
            # Fall back to ScriptRegistry (with cache to avoid repeated OpenStruct creation)
            @_wrapped_cache ||= {}
            if form && form > 0
              form_id = sprintf("%s_%d", species, form).to_sym
              return @_wrapped_cache[form_id] if @_wrapped_cache.key?(form_id)
              script_data = GameData::ScriptRegistry.get_pokemon(form_id)
              if script_data
                @_wrapped_cache[form_id] = wrap_script_species(form_id, script_data)
                return @_wrapped_cache[form_id]
              end
            end
            return @_wrapped_cache[species] if @_wrapped_cache.key?(species)
            script_data = GameData::ScriptRegistry.get_pokemon(species)
            if script_data
              @_wrapped_cache[species] = wrap_script_species(species, script_data)
              return @_wrapped_cache[species]
            end
            nil
          ensure
            @_gsf_depth -= 1
          end
        end
        
        # Wrapper to convert script data to GameData::Species format
        define_method(:wrap_script_species) do |id, data|
          return nil unless data
          
          # Create a struct-like object that mimics GameData::Species
          species_data = OpenStruct.new(data)

          # --- Critical identity attributes that Essentials expects ---
          # The engine uses .species (not .id) for the species symbol
          species_data.id = id
          # Force-define .id so it always returns the Symbol, even if
          # Object#id prevents method_missing dispatch (same fix as items/moves).
          id_sym = id
          species_data.define_singleton_method(:id) { id_sym }
          species_data.species = data[:species] || id
          species_data.id_number = data[:dex_number] || data[:id_number] || 0
          species_data.form = data[:form] || 0
          species_data.real_name = data[:real_name] || data[:name] || id.to_s
          species_data.real_form_name = data[:real_form_name] || data[:form_name] || ""
          species_data.real_category = data[:real_category] || data[:category] || ""
          species_data.real_pokedex_entry = data[:real_pokedex_entry] || data[:pokedex_entry] || ""
          
          # Growth / breeding / catch
          species_data.growth_rate = data[:growth_rate] || :Medium
          species_data.gender_ratio = data[:gender_ratio] || :Female50Percent
          species_data.catch_rate = data[:catch_rate] || 45
          species_data.happiness = data[:happiness] || 70
          species_data.hatch_steps = data[:hatch_steps] || 0
          species_data.base_exp = data[:base_exp] || 50
          
          # Types, abilities
          species_data.types = data[:types] || [:NORMAL]
          species_data.abilities = data[:abilities] || []
          species_data.hidden_abilities = data[:hidden_abilities] || []
          
          # Movement / visual
          species_data.height = data[:height] || 1.0
          species_data.weight = data[:weight] || 1.0
          species_data.color = data[:color] || :Red
          species_data.shape = data[:shape] || :Head
          species_data.habitat = data[:habitat] || :None
          species_data.generation = data[:generation] || 0
          species_data.flags = (data[:flags] || []).map { |f| f.to_s }
          
          # Moves / eggs
          species_data.moves = data[:moves] || []
          species_data.tutor_moves = data[:tutor_moves] || []
          species_data.egg_moves = data[:egg_moves] || []
          species_data.egg_groups = data[:egg_groups] || [:Undiscovered]
          
          # Evolutions
          species_data.evolutions = data[:evolutions] || []
          
          # Wild items
          species_data.wild_item_common = data[:wild_item_common] || []
          species_data.wild_item_uncommon = data[:wild_item_uncommon] || []
          species_data.wild_item_rare = data[:wild_item_rare] || []
          
          # Mega / form data
          species_data.mega_stone = data[:mega_stone]
          species_data.mega_move = data[:mega_move]
          species_data.unmega_form = data[:unmega_form] || 0
          species_data.mega_message = data[:mega_message] || 0
          species_data.pbs_file_suffix = data[:pbs_file_suffix] || ""
          species_data.pokedex_form = data[:pokedex_form] || data[:form] || 0
          
          # EVs - normalize lowercase keys to Essentials uppercase stat IDs
          raw_evs = data[:evs] || data[:ev_yield] || {}
          stat_key_map = {
            :hp => :HP, :attack => :ATTACK, :defense => :DEFENSE,
            :sp_atk => :SPECIAL_ATTACK, :special_attack => :SPECIAL_ATTACK,
            :sp_def => :SPECIAL_DEFENSE, :special_defense => :SPECIAL_DEFENSE,
            :speed => :SPEED
          }
          normalized_evs = {}
          raw_evs.each { |k, v| normalized_evs[stat_key_map[k] || k] = v }
          # Ensure all main stat keys exist (default 0) so lookups never return nil
          [:HP, :ATTACK, :DEFENSE, :SPECIAL_ATTACK, :SPECIAL_DEFENSE, :SPEED].each { |s| normalized_evs[s] ||= 0 }
          species_data.evs = normalized_evs
          
          # SOS Battles plugin attributes (defaults match [DBK_002] SOS Battles)
          species_data.rival_species  = data[:rival_species]  || []
          species_data.sos_species    = data[:sos_species]    || [species_data.species]
          species_data.sos_conditional = data[:sos_conditional] || []
          species_data.sos_call_rate  = data[:sos_call_rate]  || 0
          
          # Map base stats to Essentials format (both key styles)
          if data[:base_stats]
            species_data.base_stats = {
              :HP => data[:base_stats][:hp] || data[:base_stats][:HP] || 0,
              :ATTACK => data[:base_stats][:attack] || data[:base_stats][:ATTACK] || 0,
              :DEFENSE => data[:base_stats][:defense] || data[:base_stats][:DEFENSE] || 0,
              :SPECIAL_ATTACK => data[:base_stats][:sp_atk] || data[:base_stats][:SPECIAL_ATTACK] || 0,
              :SPECIAL_DEFENSE => data[:base_stats][:sp_def] || data[:base_stats][:SPECIAL_DEFENSE] || 0,
              :SPEED => data[:base_stats][:speed] || data[:base_stats][:SPEED] || 0
            }
          else
            species_data.base_stats = { :HP => 50, :ATTACK => 50, :DEFENSE => 50,
                                        :SPECIAL_ATTACK => 50, :SPECIAL_DEFENSE => 50, :SPEED => 50 }
          end
          
          # --- Methods that original GameData::Species instances provide ---
          # NOTE: Use self[:key] instead of self.key to avoid collisions
          # with global functions (e.g. global `evolutions(species)` in
          # ChallengeGenerator_Pokemon). RGSS makes top-level defs public
          # on Object, so they get found before method_missing.
          def species_data.base_form
            df = default_form
            (df && df >= 0) ? df : (self[:form] || 0)
          end
          
          def species_data.default_form
            flags = self[:flags]
            return -1 unless flags
            flags.each do |flag|
              return $~[1].to_i if flag.to_s =~ /^DefaultForm_(\d+)$/i
            end
            -1
          end
          
          def species_data.form_simple
            self[:form] || 0
          end
          
          def species_data.single_gendered?
            gr_val = self[:gender_ratio]
            return false unless gr_val
            gr = GameData::GenderRatio.try_get(gr_val) rescue nil
            gr ? gr.single_gendered? : false
          end
          
          def species_data.base_stat_total
            stats = self[:base_stats]
            return 0 unless stats
            stats.values.compact.sum
          end
          
          def species_data.has_flag?(flag)
            flags = self[:flags]
            return false unless flags
            flags.any? { |f| f.to_s.downcase == flag.to_s.downcase }
          end
          
          def species_data.name
            self[:real_name] || self[:id].to_s
          end
          
          def species_data.form_name
            self[:real_form_name] || ""
          end
          
          def species_data.category
            self[:real_category] || ""
          end
          
          def species_data.pokedex_entry
            self[:real_pokedex_entry] || ""
          end
          
          def species_data.get_evolutions(exclude_invalid = false)
            evos = self[:evolutions]
            return [] unless evos
            ret = []
            evos.each do |evo|
              if evo.is_a?(Hash)
                ret.push([evo[:species], evo[:method], evo[:parameter]])
              elsif evo.is_a?(Array)
                next if evo[3]  # prevolution
                next if evo[1] == :None && exclude_invalid
                ret.push([evo[0], evo[1], evo[2]])
              end
            end
            ret
          end
          
          def species_data.get_family_evolutions(exclude_invalid = true)
            ret = []
            self.get_evolutions(exclude_invalid).each do |evo|
              ret.push([self[:species], evo[0], evo[1], evo[2]])
              evo_species = GameData::Species.get_species_form(evo[0], 0)
              if evo_species
                evo_species.get_family_evolutions(exclude_invalid).each { |e| ret.push(e) }
              end
            end
            ret
          end
          
          def species_data.get_egg_moves
            self[:egg_moves] || []
          end
          
          def species_data.get_baby_species(check_items = false, item1 = nil, item2 = nil)
            self[:species]
          end
          
          def species_data.get_previous_species
            self[:species]
          end
          
          def species_data.get_family_species
            sp = self[:species]
            evos = self.get_family_evolutions
            ret = [sp]
            evos.each { |e| ret.push(e[1]) if !ret.include?(e[1]) }
            ret
          end
          
          def species_data.minimum_level
            moves = self[:moves]
            return 1 unless moves && !moves.empty?
            min = moves.map { |m| m.is_a?(Array) ? m[0] : 1 }.min
            [min || 1, 1].max
          end
          
          # DBK Dynamax compatibility: species eligibility check
          def species_data.dynamax_able?
            return false if self[:mega_stone] || self[:mega_move]
            return false if has_flag?("CannotDynamax")
            return true
          end
          
          def species_data.dynamax_form?
            return true if self[:gmax_move]
            return false
          end
          
          species_data
        end
        
        # Unified each: yields species from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          if self.const_defined?(:DATA)
            self::DATA.each_value do |species|
              next if seen[species.id]
              seen[species.id] = true
              block.call(species)
            end
          end
          registry = GameData::ScriptRegistry.pokemon rescue nil
          if registry
            registry.each do |id, data|
              next if seen[id]
              seen[id] = true
              block.call(wrap_script_species(id, data))
            end
          end
        end
        
        define_method(:each_species) do |&block|
          self.each(&block)
        end
      end
      
      SCScripts.debug("Species hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Move Hooks
    #---------------------------------------------------------------------------
    def self.install_move_hooks
      return unless defined?(GameData::Move)
      
      GameData::Move.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          # Handle Integer IDs (possible Object#id corruption from OpenStruct)
          if id.is_a?(Integer)
            if respond_to?(:original_get)
              begin
                result = original_get(id)
                return result if result
              rescue StandardError
              end
            end
            # Can't resolve a bare integer to a move; return stub
            return wrap_script_move(:"UNKNOWN_#{id}", { name: "???" })
          end
          # Try original first (051_Moves.rb returns proper instances)
          if respond_to?(:original_get)
            begin
              result = original_get(id)
              return result if result
            rescue StandardError
            end
          end
          # Fall back to ScriptRegistry + OpenStruct wrapper
          script_data = GameData::ScriptRegistry.get_move(id)
          return wrap_script_move(id, script_data) if script_data
          # Last resort stub so plugins don't crash calling .name on nil
          wrap_script_move(id, { name: id.to_s })
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          # Handle Integer IDs (possible Object#id corruption from OpenStruct)
          if id.is_a?(Integer)
            if respond_to?(:original_try_get)
              begin
                result = original_try_get(id)
                return result if result
              rescue StandardError
              end
            end
            return nil
          end
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_move(id)
          return wrap_script_move(id, script_data) if script_data
          nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          # Handle Integer IDs (possible Object#id corruption from OpenStruct)
          if id.is_a?(Integer)
            if respond_to?(:original_exists?)
              begin
                return true if original_exists?(id)
              rescue StandardError
              end
            end
            return false
          end
          if respond_to?(:original_exists?)
            begin
              return true if original_exists?(id)
            rescue StandardError
            end
          end
          return true if GameData::ScriptRegistry.get_move(id)
          false
        end
        
        define_method(:wrap_script_move) do |id, data|
          return nil unless data
          move_data = OpenStruct.new(data)
          move_data.id               = id
          # Force-define .id so it always returns the Symbol, even if
          # Object#id prevents method_missing dispatch (same fix as items).
          id_sym = id
          move_data.define_singleton_method(:id) { id_sym }
          move_data.real_name        = data[:real_name] || data[:name] || id.to_s
          move_data.real_description = data[:real_description] || data[:description] || ""
          move_data.type             = data[:type] || :NORMAL
          # Normalize category: convert symbols to integers for Essentials compatibility
          raw_cat = data[:category] || 0
          move_data.category         = case raw_cat
                                       when Integer then raw_cat
                                       when :physical, :Physical, "physical" then 0
                                       when :special, :Special, "special" then 1
                                       when :status, :Status, "status" then 2
                                       else 0
                                       end
          move_data.power            = data[:power] || data[:base_damage] || 0
          move_data.base_damage      = move_data.power
          move_data.accuracy         = data[:accuracy] || 100
          move_data.total_pp         = data[:total_pp] || data[:pp] || 5
          move_data.target           = data[:target] || :NearOther
          move_data.priority         = data[:priority] || 0
          move_data.function_code    = data[:function_code] || "None"
          move_data.flags            = (data[:flags] || []).map { |f| f.to_s }
          move_data.effect_chance    = data[:effect_chance] || 0
          move_data.pbs_file_suffix  = data[:pbs_file_suffix] || ""
          # Methods Essentials expects
          def move_data.name
            self[:real_name] || self[:id].to_s
          end
          def move_data.description
            self[:real_description] || ""
          end
          def move_data.has_flag?(flag)
            f = self[:flags]
            return false unless f
            f.any? { |fl| fl.to_s.downcase == flag.to_s.downcase }
          end
          def move_data.physical?
            return false if (self[:power] || 0) == 0
            return self[:category] == 0
          end
          def move_data.special?
            return false if (self[:power] || 0) == 0
            return self[:category] == 1
          end
          def move_data.status?
            return self[:category] == 2
          end
          def move_data.damaging?
            return self[:category] != 2
          end
          move_data
        end
        
        # Unified each: yields moves from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          if self.const_defined?(:DATA)
            self::DATA.each_value do |move|
              next if seen[move.id]
              seen[move.id] = true
              block.call(move)
            end
          end
          registry = GameData::ScriptRegistry.moves rescue nil
          if registry
            registry.each do |id, data|
              next if seen[id]
              seen[id] = true
              block.call(wrap_script_move(id, data))
            end
          end
        end
      end
      
      SCScripts.debug("Move hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Ability Hooks
    #---------------------------------------------------------------------------
    def self.install_ability_hooks
      return unless defined?(GameData::Ability)
      
      GameData::Ability.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          # Normalize: extract symbol from objects that have .id
          id = id.id if id.respond_to?(:id) && !id.is_a?(Symbol) && !id.is_a?(String) && !id.is_a?(Integer)
          id = id.to_sym if id.is_a?(String)
          # Try original first (052_Abilities.rb returns proper instances)
          if respond_to?(:original_get)
            begin
              result = original_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_ability(id)
          return wrap_script_ability(id, script_data) if script_data
          nil
        end
        
        define_method(:try_get) do |id|
          id = id.id if id.respond_to?(:id) && !id.is_a?(Symbol) && !id.is_a?(String) && !id.is_a?(Integer)
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_ability(id)
          return wrap_script_ability(id, script_data) if script_data
          nil
        end
        
        define_method(:exists?) do |id|
          id = id.id if id.respond_to?(:id) && !id.is_a?(Symbol) && !id.is_a?(String) && !id.is_a?(Integer)
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_exists?)
            begin
              return true if original_exists?(id)
            rescue StandardError
            end
          end
          return true if GameData::ScriptRegistry.get_ability(id)
          false
        end
        
        define_method(:wrap_script_ability) do |id, data|
          return nil unless data
          GameData::Ability.new(data)
        end
        
        # Unified each: yields abilities from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          if self.const_defined?(:DATA)
            self::DATA.each_value do |ability|
              next if seen[ability.id]
              seen[ability.id] = true
              block.call(ability)
            end
          end
          registry = GameData::ScriptRegistry.abilities rescue nil
          if registry
            registry.each do |id, data|
              next if seen[id]
              seen[id] = true
              block.call(wrap_script_ability(id, data))
            end
          end
        end
      end
      
      SCScripts.debug("Ability hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Item Hooks
    #---------------------------------------------------------------------------
    def self.install_item_hooks
      return unless defined?(GameData::Item)
      
      GameData::Item.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          # Try original first (053_Items.rb returns proper instances)
          if respond_to?(:original_get)
            begin
              result = original_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_item(id)
          return wrap_script_item(id, script_data) if script_data
          nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_item(id)
          return wrap_script_item(id, script_data) if script_data
          nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_exists?)
            begin
              return true if original_exists?(id)
            rescue StandardError
            end
          end
          return true if GameData::ScriptRegistry.get_item(id)
          false
        end
        
        define_method(:wrap_script_item) do |id, data|
          return nil unless data
          item_data = OpenStruct.new(data)
          item_data.id = id
          # Force-define .id so it always returns the Symbol, even if
          # Object#id or respond_to?(:id) prevents method_missing dispatch.
          id_sym = id
          item_data.define_singleton_method(:id) { id_sym }
          item_data.real_name = data[:name] || data[:real_name]
          item_data.real_name_plural = data[:name_plural] || data[:real_name_plural]
          item_data.real_description = data[:description] || data[:real_description]
          
          def item_data.has_flag?(flag)
            flags = self[:flags]
            return false unless flags
            flags.any? { |f| f.to_s.downcase == flag.to_s.downcase }
          end
          
          def item_data.name
            self[:real_name] || self[:name] || self[:id].to_s
          end
          
          def item_data.portion_name
            self.name
          end
          
          item_data
        end
        
        # Unified each: yields items from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          # 1. Yield from compiled PBS DATA (if any exist)
          if self.const_defined?(:DATA)
            self::DATA.each_value do |item|
              next if seen[item.id]
              seen[item.id] = true
              block.call(item)
            end
          end
          # 2. Yield from ScriptRegistry (SC-defined items)
          registry = GameData::ScriptRegistry.items rescue nil
          if registry
            registry.each do |id, data|
              next if seen[id]
              seen[id] = true
              block.call(wrap_script_item(id, data))
            end
          end
        end
      end
      
      SCScripts.debug("Item hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Type Hooks
    #---------------------------------------------------------------------------
    def self.install_type_hooks
      return unless defined?(GameData::Type)
      
      GameData::Type.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          # The SC Type DSL replaces Essentials' original getter. Always prefer
          # the canonical DATA table when it contains the requested type. This
          # is essential while moves.txt is compiled immediately after types.txt.
          if self.const_defined?(:DATA) && self::DATA.has_key?(id)
            return self::DATA[id]
          end
          # Try original first (054_Types.rb returns proper GameData::Type instances)
          if respond_to?(:original_get)
            begin
              result = original_get(id)
              return result if result
            rescue StandardError
            end
          end
          # Fall back to ScriptRegistry + OpenStruct wrapper
          script_data = GameData::ScriptRegistry.get_type(id)
          return wrap_script_type(id, script_data) if script_data
          nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          if self.const_defined?(:DATA) && self::DATA.has_key?(id)
            return self::DATA[id]
          end
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_type(id)
          return wrap_script_type(id, script_data) if script_data
          nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if self.const_defined?(:DATA) && self::DATA.has_key?(id)
          if respond_to?(:original_exists?)
            begin
              return true if original_exists?(id)
            rescue StandardError
            end
          end
          return true if GameData::ScriptRegistry.get_type(id)
          false
        end
        
        define_method(:wrap_script_type) do |id, data|
          return nil unless data
          type_data = OpenStruct.new(data)
          type_data.id = id
          type_data.real_name       = data[:real_name] || data[:name] || id.to_s
          type_data.icon_position   = data[:icon_position]   || 0
          type_data.special_type    = data[:special_type]    || false
          type_data.pseudo_type     = data[:pseudo_type]     || false
          type_data.weaknesses      = data[:weaknesses]      || data[:super_effective] || []
          type_data.resistances     = data[:resistances]     || data[:not_effective]   || []
          type_data.immunities      = data[:immunities]      || data[:no_effect]       || []
          type_data.flags           = (data[:flags] || []).map { |f| f.to_s }
          type_data.pbs_file_suffix = data[:pbs_file_suffix] || ""
          # Methods that Essentials expects on Type objects
          def type_data.name
            self[:real_name] || self[:id].to_s
          end
          def type_data.physical?; !self[:special_type]; end
          def type_data.special?;  !!self[:special_type]; end
          def type_data.has_flag?(flag)
            f = self[:flags]
            return false unless f
            f.any? { |fl| fl.to_s.downcase == flag.to_s.downcase }
          end
          type_data
        end
        
        # Unified each: yields types from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          if self.const_defined?(:DATA)
            self::DATA.each_value do |type|
              next if seen[type.id]
              seen[type.id] = true
              block.call(type)
            end
          end
          registry = GameData::ScriptRegistry.types rescue nil
          if registry
            registry.each do |id, data|
              next if seen[id]
              seen[id] = true
              block.call(wrap_script_type(id, data))
            end
          end
        end
      end
      
      SCScripts.debug("Type hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Trainer Type Hooks (for PBS trainer_types.txt replacement)
    # Prevents Errno::ENOENT when trainer_types.dat doesn't exist
    #---------------------------------------------------------------------------
    # Convert gender value to integer: Male/male/0 -> 0, Female/female/1 -> 1, else -> 2
    def self.normalize_gender(val)
      return 2 if val.nil?
      return val if val.is_a?(Integer)
      case val.to_s.downcase
      when 'male', '0'   then 0
      when 'female', '1' then 1
      else 2
      end
    end
    
    def self.install_trainer_type_hooks
      return unless defined?(GameData::TrainerType)
      
      GameData::TrainerType.singleton_class.class_eval do
        # Override load to populate DATA from ScriptRegistry instead of .dat file
        define_method(:load) do
          registry_data = GameData::ScriptRegistry.trainer_types
          if registry_data && !registry_data.empty?
            data_hash = {}
            registry_data.each do |id, d|
              hash = {
                id:              id,
                real_name:       d[:name] || d[:real_name] || id.to_s,
                gender:          SCScripts::PBSOverride.normalize_gender(d[:gender]),
                base_money:      d[:base_money] || 30,
                skill_level:     d[:skill_level] || d[:base_money] || 30,
                flags:           d[:flags] || [],
                intro_BGM:       d[:intro_BGM],
                battle_BGM:      d[:battle_BGM],
                victory_BGM:     d[:victory_BGM],
                pbs_file_suffix: d[:pbs_file_suffix] || ""
              }
              data_hash[id] = GameData::TrainerType.new(hash)
            end
            const_set(:DATA, data_hash) if !data_hash.empty?
          else
            # Fall back to loading from .dat file if it exists
            dat_path = "Data/#{self::DATA_FILENAME}"
            if File.exist?(dat_path)
              const_set(:DATA, load_data(dat_path))
            else
              SCScripts.warn("No trainer type data available (no .dat file and no script registry data)")
              const_set(:DATA, {}) unless const_defined?(:DATA)
            end
          end
        end
        
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          # Try original first (055_Trainers.rb version)
          if respond_to?(:original_get)
            begin
              result = original_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_trainer_type(id)
          if script_data
            hash = {
              id:              id,
              real_name:       script_data[:name] || script_data[:real_name] || id.to_s,
              gender:          SCScripts::PBSOverride.normalize_gender(script_data[:gender]),
              base_money:      script_data[:base_money] || 30,
              skill_level:     script_data[:skill_level] || script_data[:base_money] || 30,
              flags:           script_data[:flags] || [],
              intro_BGM:       script_data[:intro_BGM],
              battle_BGM:      script_data[:battle_BGM],
              victory_BGM:     script_data[:victory_BGM],
              pbs_file_suffix: script_data[:pbs_file_suffix] || ""
            }
            return GameData::TrainerType.new(hash)
          end
          nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(id)
              return result if result
            rescue StandardError
            end
          end
          script_data = GameData::ScriptRegistry.get_trainer_type(id)
          if script_data
            hash = {
              id:              id,
              real_name:       script_data[:name] || script_data[:real_name] || id.to_s,
              gender:          SCScripts::PBSOverride.normalize_gender(script_data[:gender]),
              base_money:      script_data[:base_money] || 30,
              skill_level:     script_data[:skill_level] || script_data[:base_money] || 30,
              flags:           script_data[:flags] || [],
              intro_BGM:       script_data[:intro_BGM],
              battle_BGM:      script_data[:battle_BGM],
              victory_BGM:     script_data[:victory_BGM],
              pbs_file_suffix: script_data[:pbs_file_suffix] || ""
            }
            return GameData::TrainerType.new(hash)
          end
          nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          if respond_to?(:original_exists?)
            begin
              return true if original_exists?(id)
            rescue StandardError
            end
          end
          return true if GameData::ScriptRegistry.get_trainer_type(id)
          false
        end
        
        # Unified each: yields trainer types from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          if self.const_defined?(:DATA)
            self::DATA.each_value do |tt|
              next if seen[tt.id]
              seen[tt.id] = true
              block.call(tt)
            end
          end
          registry = GameData::ScriptRegistry.trainer_types rescue nil
          if registry
            registry.each do |id, data|
              next if seen[id]
              seen[id] = true
              normalized = data.dup
              normalized[:gender] = GameData::TrainerTypeBuilder.normalize_gender(normalized[:gender]) if defined?(GameData::TrainerTypeBuilder)
              block.call(GameData::TrainerType.new(normalized))
            end
          end
        end
      end
      
      SCScripts.debug("Trainer type hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Trainer Hooks (for PBS trainers.txt replacement)
    #---------------------------------------------------------------------------
    def self.install_trainer_hooks
      return unless defined?(GameData::Trainer)
      
      GameData::Trainer.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        alias_method :original_each, :each if method_defined?(:each) && !method_defined?(:original_each)
        
        # Unified each: yields proper GameData::Trainer objects from both DATA and ScriptRegistry
        define_method(:each) do |&block|
          return unless block
          seen = {}
          # First yield from Essentials DATA (compiled trainers.dat)
          begin
            if self.const_defined?(:DATA) && self::DATA.is_a?(Hash)
              self::DATA.each_value do |trainer|
                next unless trainer.is_a?(GameData::Trainer)
                key = [trainer.trainer_type, trainer.real_name, trainer.version]
                next if seen[key]
                seen[key] = true
                block.call(trainer)
              end
            end
          rescue StandardError
          end
          # Then yield from ScriptRegistry (SC DSL trainers)
          begin
            registry = GameData::ScriptRegistry.trainers rescue nil
            if registry.is_a?(Hash)
              registry.each do |reg_key, data|
                next unless data.is_a?(Hash)
                tr_type = data[:type] || data[:trainer_type]
                tr_name = data[:name] || data[:real_name]
                next unless tr_type && tr_name
                tr_ver  = data[:version] || 0
                key = [tr_type, tr_name, tr_ver]
                next if seen[key]
                seen[key] = true
                # Wrap into proper GameData::Trainer object
                begin
                  trainer = wrap_script_trainer(tr_type, tr_name, tr_ver, data)
                  block.call(trainer) if trainer
                rescue StandardError
                  # If wrapping fails, yield a minimal OpenStruct-like object
                  wrapper = OpenStruct.new
                  wrapper.trainer_type = tr_type
                  wrapper.real_name    = tr_name
                  wrapper.version      = tr_ver
                  wrapper.pokemon      = data[:pokemon] || data[:party] || []
                  block.call(wrapper)
                end
              end
            end
          rescue StandardError
          end
        end
        
        define_method(:get) do |trainer_type, name, version = 0|
          # Try original first (may be SC's get or Essentials' get)
          if respond_to?(:original_get)
            begin
              result = original_get(trainer_type, name, version)
              return result if result.is_a?(GameData::Trainer)
              # SC's get returns raw hash — wrap it into a proper Trainer object
              return wrap_script_trainer(trainer_type, name, version, result) if result.is_a?(Hash)
            rescue StandardError
            end
          end
          # Fall back to ScriptRegistry
          key = "#{trainer_type}_#{name}_#{version}"
          script_data = GameData::ScriptRegistry.get_trainer(key)
          return wrap_script_trainer(trainer_type, name, version, script_data) if script_data
          # Last resort: check Essentials DATA hash directly
          begin
            data_key = [trainer_type.to_sym, name.to_s, version.to_i]
            result = self::DATA[data_key]
            return result if result.is_a?(GameData::Trainer)
          rescue StandardError
          end
          nil
        end
        
        define_method(:try_get) do |trainer_type, name, version = 0|
          # Try original first (may be SC's get or Essentials' get)
          if respond_to?(:original_try_get)
            begin
              result = original_try_get(trainer_type, name, version)
              return result if result.is_a?(GameData::Trainer)
              # SC's try_get returns raw hash — wrap it
              return wrap_script_trainer(trainer_type, name, version, result) if result.is_a?(Hash)
            rescue StandardError
            end
          end
          # Fall back to ScriptRegistry
          key = "#{trainer_type}_#{name}_#{version}"
          script_data = GameData::ScriptRegistry.get_trainer(key)
          return wrap_script_trainer(trainer_type, name, version, script_data) if script_data
          # Last resort: check Essentials DATA hash directly
          begin
            data_key = [trainer_type.to_sym, name.to_s, version.to_i]
            result = self::DATA[data_key]
            return result if result.is_a?(GameData::Trainer)
          rescue StandardError
          end
          nil
        end
        
        define_method(:exists?) do |trainer_type, name, version = 0|
          # Try original first
          has_original = (respond_to?(:original_exists?) rescue false)
          if has_original
            begin
              return true if original_exists?(trainer_type, name, version)
            rescue StandardError
            end
          end
          key = "#{trainer_type}_#{name}_#{version}"
          return !GameData::ScriptRegistry.get_trainer(key).nil?
        end
        
        define_method(:wrap_script_trainer) do |trainer_type, name, version, data|
          return nil unless data
          # Resolve trainer_type and name from data if nil
          trainer_type = trainer_type || data[:type] || data[:trainer_type] || :POKEMON_TRAINER
          name = name || data[:name] || data[:real_name] || "Unknown"
          version = version || data[:version] || 0
          # Essentials v22 indexes trainer IVs/EVs by stat ID. The SC DSL also
          # accepts the legacy six-value PBS array, so normalize it here before
          # GameData::Trainer#initialize tries to use Symbol keys on the array.
          normalize_stat_values = proc do |values|
            next values if values.is_a?(Hash)
            next nil if !values
            normalized = {}
            GameData::Stat.each_main do |stat|
              value = if values.is_a?(Array)
                        values[stat.pbs_order]
                      else
                        values
                      end
              normalized[stat.id] = (value || 0).to_i
            end
            normalized
          end
          # Convert SC party format to Essentials pokemon array format
          party = data[:party] || data[:pokemon] || []
          pokemon = party.map do |p|
            pkmn = {
              species: p[:species],
              level:   p[:level] || 10
            }
            pkmn[:moves]       = p[:moves]        if p[:moves]
            pkmn[:item]        = p[:item]          if p[:item]
            pkmn[:ability]     = p[:ability]       if p[:ability]
            pkmn[:ability_index] = p[:ability_index] if p[:ability_index]
            pkmn[:nature]      = p[:nature]        if p[:nature]
            pkmn[:gender]      = p[:gender]        if p[:gender]
            pkmn[:shininess]   = p[:shininess] || p[:shiny] if p[:shininess] || p[:shiny]
            pkmn[:form]        = p[:form]          if p[:form]
            pkmn[:real_name]   = p[:name] || p[:real_name] || p[:nickname] if p[:name] || p[:real_name] || p[:nickname]
            pkmn[:shadowness]  = p[:shadowness] || p[:shadow] if p[:shadowness] || p[:shadow]
            pkmn[:poke_ball]   = p[:poke_ball] || p[:ball] if p[:poke_ball] || p[:ball]
            pkmn[:happiness]   = p[:happiness]     if p[:happiness]
            pkmn[:iv]          = normalize_stat_values.call(p[:iv]) if p[:iv]
            pkmn[:ev]          = normalize_stat_values.call(p[:ev]) if p[:ev]
            pkmn[:dynamax_lvl] = p[:dynamax_level] if p[:dynamax_level]
            pkmn[:tera_type]   = p[:tera_type]     if p[:tera_type]
            pkmn[:nickname]    = p[:nickname]       if p[:nickname]
            pkmn
          end
          # Build Essentials-compatible hash
          tt_sym = trainer_type.is_a?(Symbol) ? trainer_type : trainer_type.to_s.to_sym
          hash = {
            id:              [tt_sym, name.to_s, version.to_i],
            trainer_type:    tt_sym,
            real_name:       data[:name] || data[:real_name] || name.to_s,
            version:         version.to_i,
            items:           data[:items] || [],
            real_lose_text:  data[:lose_text] || data[:real_lose_text] || "...",
            pokemon:         pokemon,
            pbs_file_suffix: ""
          }
          GameData::Trainer.new(hash)
        end
      end
      
      SCScripts.debug("Trainer hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Encounter Hooks
    #---------------------------------------------------------------------------
    def self.install_encounter_hooks
      return unless defined?(GameData::Encounter)
      
      GameData::Encounter.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        
        define_method(:get) do |map_id, version = 0|
          # Check script registry first
          key = "#{map_id}_#{version}"
          script_data = GameData::ScriptRegistry.get_encounters(key)
          return wrap_script_encounter(script_data) if script_data
          original_get(map_id, version) rescue nil
        end
        
        define_method(:wrap_script_encounter) do |data|
          return nil unless data
          # Return the engine-compatible adapter (step_chances / types) from 056_Encounters.rb.
          # A bare OpenStruct(data) has no #step_chances/#types → PokemonEncounters#setup crashed
          # with "undefined method `each' for nil" (its method_missing returns nil) → no encounters.
          return GameData::EncounterData.new(data) if defined?(GameData::EncounterData)
          OpenStruct.new(data)
        end
      end
      
      SCScripts.debug("Encounter hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Ribbon Hooks
    #---------------------------------------------------------------------------
    def self.install_ribbon_hooks
      return unless defined?(GameData::Ribbon)
      
      GameData::Ribbon.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        alias_method :original_exists?, :exists? if method_defined?(:exists?) && !method_defined?(:original_exists?)
        
        define_method(:get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_ribbon(id)
          return wrap_script_ribbon(id, script_data) if script_data
          original_get(id) rescue nil
        end
        
        define_method(:try_get) do |id|
          id = id.to_sym if id.is_a?(String)
          script_data = GameData::ScriptRegistry.get_ribbon(id)
          return wrap_script_ribbon(id, script_data) if script_data
          original_try_get(id) rescue nil
        end
        
        define_method(:exists?) do |id|
          id = id.to_sym if id.is_a?(String)
          return true if GameData::ScriptRegistry.get_ribbon(id)
          original_exists?(id) rescue false
        end
        
        define_method(:wrap_script_ribbon) do |id, data|
          return nil unless data
          ribbon_data = OpenStruct.new(data)
          ribbon_data.id = id
          ribbon_data.real_name = data[:name]
          ribbon_data.real_description = data[:description]
          ribbon_data
        end
      end
      
      SCScripts.debug("Ribbon hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Map Metadata Hooks
    #---------------------------------------------------------------------------
    def self.install_map_metadata_hooks
      return unless defined?(GameData::MapMetadata)
      
      GameData::MapMetadata.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_try_get, :try_get if method_defined?(:try_get) && !method_defined?(:original_try_get)
        
        define_method(:get) do |map_id|
          script_data = GameData::ScriptRegistry.get_map(map_id)
          return wrap_script_metadata(map_id, script_data) if script_data
          original_get(map_id) rescue nil
        end
        
        define_method(:try_get) do |map_id|
          script_data = GameData::ScriptRegistry.get_map(map_id)
          return wrap_script_metadata(map_id, script_data) if script_data
          original_try_get(map_id) rescue nil
        end
        
        define_method(:wrap_script_metadata) do |map_id, data|
          return nil unless data
          metadata = OpenStruct.new(data)
          metadata.id = map_id
          metadata.real_name = data[:real_name]
          # Add has_flag? method for DBK compatibility (e.g. PowerSpot, DistortionWorld)
          flags = data[:flags] || []
          def metadata.has_flag?(flag)
            f = self[:flags] || []
            f.any? { |fl| fl.to_s.downcase == flag.to_s.downcase }
          end
          metadata
        end
      end
      
      SCScripts.debug("Map metadata hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Map Connection Hooks
    #---------------------------------------------------------------------------
    def self.install_map_connection_hooks
      return unless defined?(GameData::MapConnection)
      
      GameData::MapConnection.singleton_class.class_eval do
        alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
        alias_method :original_each, :each if method_defined?(:each) && !method_defined?(:original_each)
        
        # Get connection by ID
        define_method(:get) do |id|
          script_data = ScriptRegistry.get_map_connection(id)
          return OpenStruct.new(script_data) if script_data
          original_get(id) rescue nil
        end
        
        # Iterate over all connections
        define_method(:each) do |&block|
          ScriptRegistry.all_map_connections.each_value do |data|
            block.call(OpenStruct.new(data)) if block
          end
        end
        
        # Get connections for a specific map
        define_method(:connections_for) do |map_id|
          ScriptRegistry.connections_for_map(map_id).map { |c| OpenStruct.new(c) }
        end
      end
      
      SCScripts.debug("Map connection hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Regional Dex Hooks
    #---------------------------------------------------------------------------
    def self.install_regional_dex_hooks
      return unless defined?(GameData::RegionalDex) || defined?(pbGetRegionalNumber)
      
      if defined?(GameData::RegionalDex)
        GameData::RegionalDex.singleton_class.class_eval do
          alias_method :original_get, :get if method_defined?(:get) && !method_defined?(:original_get)
          
          define_method(:get) do |dex_id|
            script_data = ScriptRegistry.get_regional_dex(dex_id)
            return OpenStruct.new(script_data) if script_data
            original_get(dex_id) rescue nil
          end
          
          # Get species list for a dex
          define_method(:species_list) do |dex_id|
            dex = ScriptRegistry.get_regional_dex(dex_id)
            dex ? dex[:species] : []
          end
          
          # Get regional dex number for a species
          define_method(:dex_number) do |dex_id, species|
            ScriptRegistry.regional_dex_number(dex_id, species)
          end
        end
      end
      
      # Also hook pbGetRegionalNumber if it exists
      if defined?(pbGetRegionalNumber)
        original_method = method(:pbGetRegionalNumber)
        define_method(:pbGetRegionalNumber) do |dex_id, species|
          num = ScriptRegistry.regional_dex_number(dex_id, species)
          return num if num
          original_method.call(dex_id, species) rescue 0
        end
      end
      
      SCScripts.debug("Regional dex hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Global Metadata Hooks
    #---------------------------------------------------------------------------
    def self.install_metadata_hooks
      return unless defined?(GameData::Metadata) || defined?(GameData::PlayerMetadata)
      
      if defined?(GameData::Metadata)
        GameData::Metadata.singleton_class.class_eval do
          alias_method :original_get_meta, :get if method_defined?(:get) && !method_defined?(:original_get_meta)
          
          define_method(:get) do
            # Prefer the canonical v22 metadata object compiled from
            # PBS/metadata.txt. Script metadata is an optional override only.
            if self.const_defined?(:DATA) && self::DATA.has_key?(0)
              return self::DATA[0]
            end
            data = ScriptRegistry.get_metadata
            return OpenStruct.new(data) if data
            original_get_meta rescue nil
          end
        end
      end
      
      if defined?(GameData::PlayerMetadata)
        GameData::PlayerMetadata.singleton_class.class_eval do
          alias_method :original_get_player, :get if method_defined?(:get) && !method_defined?(:original_get_player)
          
          define_method(:get) do |player_id|
            if self.const_defined?(:DATA)
              return self::DATA[player_id] if self::DATA.has_key?(player_id)
              return self::DATA[1] if self::DATA.has_key?(1)
            end
            data = ScriptRegistry.get_player_metadata(player_id)
            return OpenStruct.new(data) if data
            original_get_player(player_id) if respond_to?(:original_get_player)
          end
        end
      end
      
      SCScripts.debug("Metadata hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Town Map Hooks
    #---------------------------------------------------------------------------
    def self.install_town_map_hooks
      return unless defined?(GameData::TownMap)
      
      GameData::TownMap.singleton_class.class_eval do
        alias_method :original_get_tm, :get if method_defined?(:get) && !method_defined?(:original_get_tm)
        
        define_method(:get) do |region_id|
          data = ScriptRegistry.get_town_map(region_id)
          return OpenStruct.new(data) if data
          original_get_tm(region_id) if respond_to?(:original_get_tm)
        end
        
        define_method(:fly_destinations) do |region_id|
          ScriptRegistry.fly_destinations(region_id)
        end
      end
      
      SCScripts.debug("Town map hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Species Metrics Hooks
    #---------------------------------------------------------------------------
    def self.install_species_metrics_hooks
      return unless defined?(GameData::SpeciesMetrics)
      
      GameData::SpeciesMetrics.singleton_class.class_eval do
        alias_method :original_get_sm, :get if method_defined?(:get) && !method_defined?(:original_get_sm)
        alias_method :original_get_species_form_sm, :get_species_form if method_defined?(:get_species_form) && !method_defined?(:original_get_species_form_sm)
        
        define_method(:get) do |species_id|
          data = GameData::ScriptRegistry.get_species_metrics(species_id)
          return OpenStruct.new(data) if data
          original_get_sm(species_id) if respond_to?(:original_get_sm)
        end
        
        # Get metrics for a specific form — delegate to original (which handles
        # DATA, female sprites, ALCREMIE, etc.) and only intercept from
        # ScriptRegistry when the original fails.
        define_method(:get_species_form) do |species, form = 0, female = false|
          # Try original first (Animated Pokemon System version handles DATA properly)
          if respond_to?(:original_get_species_form_sm)
            begin
              result = original_get_species_form_sm(species, form, female)
              return result if result
            rescue => e
              # Original failed — fall through to ScriptRegistry
            end
          end
          
          # Fall back to ScriptRegistry
          if female
            gender_id = "#{species}_#{form}_female".to_sym
            data = GameData::ScriptRegistry.get_species_metrics(gender_id)
            return OpenStruct.new(data) if data
          end
          
          form_id = "#{species}_#{form}".to_sym
          data = GameData::ScriptRegistry.get_species_metrics(form_id)
          return OpenStruct.new(data) if data
          
          data = GameData::ScriptRegistry.get_species_metrics(species)
          return OpenStruct.new(data) if data
          
          nil
        end
      end
      
      SCScripts.debug("Species metrics hooks installed")
    end
    
    #---------------------------------------------------------------------------
    # Universal Safe Load Hook
    # Overrides GameData.load_all so that ANY missing .dat file is handled
    # gracefully instead of crashing. The SC Script System populates DATA
    # via Ruby DSL (define blocks) so .dat files are often absent.
    #---------------------------------------------------------------------------
    def self.install_safe_load_all_hook
      GameData.define_singleton_method(:load_all) do
        self.constants.each do |c|
          klass = self.const_get(c)
          next if !klass.is_a?(Class)
          next if !klass.const_defined?(:DATA_FILENAME)
          begin
            # If DATA is already populated by script definitions, skip loading
            if klass.const_defined?(:DATA) && !klass::DATA.nil? && !klass::DATA.empty?
              next
            end
            klass.load
          rescue Errno::ENOENT => e
            # .dat file missing — not an error when SC Script System is active
            dat_name = klass::DATA_FILENAME rescue c.to_s
            SCScripts.debug("Skipped loading #{dat_name} (file not found, data from scripts)")
            # Ensure DATA exists as an empty hash so later code doesn't crash
            if !klass.const_defined?(:DATA) || klass::DATA.nil?
              klass.const_set(:DATA, {})
            end
          end
        end
      end
      
      SCScripts.debug("Safe GameData.load_all hook installed")
    end
  end
end

# Hook PBS override installation into Compiler
#===============================================================================
module SCScripts
  module CompilerHook
    # Intercept PBS compilation to inject script data
    def self.install
      return unless defined?(Compiler)
      
      # Check if we should bypass PBS entirely
      if SCScripts::PBS_REPLACEMENT_MODE
        Compiler.singleton_class.class_eval do
          # Store original compile methods
          alias_method :original_compile_all, :compile_all if method_defined?(:compile_all) && !method_defined?(:original_compile_all)
          
          define_method(:compile_all) do |*args|
            # Load script data first
            SCScripts.log("Loading script-based data instead of PBS files...")
            SCScripts::Loader.load_all_data
            
            # Skip PBS files that are replaced
            SCScripts.log("Script system owns #{SCScripts::PBS_FILES_TO_REPLACE.length} PBS data files")
            SCScripts.debug("PBS ownership: #{SCScripts::PBS_FILES_TO_REPLACE.join(', ')}")
            
            # The Ruby registry currently extends the PBS data, but it does not
            # define every required v22 dataset (notably global/player metadata,
            # phone, berries and several core GameData tables). Skipping the
            # Essentials compiler leaves those DATA hashes empty and can also
            # delete their .dat files after a failed compile. Always rebuild the
            # canonical PBS data first; the installed registry hooks continue to
            # provide SC overrides on top of it.
            # Hooks may already have been installed by the on_start handler.
            # Hide their fallback registries while Essentials rebuilds DATA;
            # otherwise GameData.exists? reports each PBS section as an already
            # existing duplicate (e.g. NORMAL in types.txt).
            registry_names = [
              :maps, :encounters, :trainers, :trainer_types, :animations,
              :pokemon, :pokemon_forms, :moves, :abilities, :items, :types,
              :type_chart, :regional_dexes, :town_map, :metadata
            ]
            registry_snapshot = {}
            registry_names.each do |name|
              registry_snapshot[name] = GameData::ScriptRegistry.send(name)
              GameData::ScriptRegistry.send("#{name}=", {})
            end
            connections_snapshot = GameData::ScriptRegistry.map_connections
            GameData::ScriptRegistry.map_connections = []
            generic_snapshot = ScriptRegistry.instance_variable_get(:@data)
            ScriptRegistry.instance_variable_set(:@data, {})
            SCScripts::PBSOverride.canonical_compiling = true
            begin
              # A failed compile removes all mandatory .dat files. In that
              # state v22's timestamp/category check can be confused by the SC
              # classes added to GameData, so explicitly request a complete
              # rebuild. Normal boots retain the ordinary incremental path.
              missing_canonical_data = [
                "types.dat", "moves.dat", "abilities.dat", "items.dat",
                "species.dat", "metadata.dat", "player_metadata.dat"
              ].any? { |filename| !FileTest.exist?("Data/#{filename}") }
              requested_full_compile = args[0] || missing_canonical_data
              original_compile_all(requested_full_compile)
            ensure
              SCScripts::PBSOverride.canonical_compiling = false
              registry_snapshot.each do |name, value|
                GameData::ScriptRegistry.send("#{name}=", value)
              end
              GameData::ScriptRegistry.map_connections = connections_snapshot
              ScriptRegistry.instance_variable_set(:@data, generic_snapshot)
            end

            # Install registry fallbacks only after the canonical compiler has
            # finished. In particular, its exists? checks must see only the
            # GameData table currently being rebuilt, not the already loaded
            # ScriptRegistry copy of the same section.
            SCScripts::PBSOverride.install_hooks
            
            SCScripts.log("Script data compilation complete!")
          end
        end
        
        SCScripts.debug("Compiler hook installed (PBS replacement mode)")
      end
    end
  end
end

# Install compiler hook immediately
SCScripts::CompilerHook.install

#===============================================================================
# Override MapFactoryHelper.getMapConnections to handle missing dat file
# and load from GameData::MapConnection::RAW_CONNECTIONS (Script System DSL).
#===============================================================================
module MapFactoryHelper
  def self.getMapConnections
    if !@@MapConnections
      @@MapConnections = []
      # Try loading compiled PBS data first
      begin
        conns = load_data("Data/map_connections.dat")
      rescue Errno::ENOENT
        conns = []
      end
      # If no compiled data, fall back to Script System DSL definitions
      if conns.empty? && defined?(GameData::MapConnection::RAW_CONNECTIONS)
        conns = GameData::MapConnection::RAW_CONNECTIONS.map { |c| c.clone }
      end
      conns.each do |conn|
        dimensions = getMapDims(conn[0])
        next if dimensions[0] == 0 || dimensions[1] == 0
        dimensions = getMapDims(conn[3])
        next if dimensions[0] == 0 || dimensions[1] == 0
        edge = getMapEdge(conn[0], conn[1])
        case conn[1]
        when "N", "S"
          conn[1] = conn[2]
          conn[2] = edge
        when "E", "W"
          conn[1] = edge
        end
        edge = getMapEdge(conn[3], conn[4])
        case conn[4]
        when "N", "S"
          conn[4] = conn[5]
          conn[5] = edge
        when "E", "W"
          conn[4] = edge
        end
        conn[2] = 0 if !conn[2].is_a?(Integer)
        conn[5] = 0 if !conn[5].is_a?(Integer)
        @@MapConnections[conn[0]] = [] if !@@MapConnections[conn[0]]
        @@MapConnections[conn[0]].push(conn)
        @@MapConnections[conn[3]] = [] if !@@MapConnections[conn[3]]
        @@MapConnections[conn[3]].push(conn)
      end
    end
    return @@MapConnections
  end
end

#===============================================================================
# Override pbLoadRegionalDexes to handle missing dat file
# This global method does a direct load_data() call that bypasses GameData hooks.
# Returns an empty array when no .dat file exists (SC uses ScriptRegistry instead).
#===============================================================================
def pbLoadRegionalDexes
  $game_temp = Game_Temp.new if !$game_temp
  if !$game_temp.regional_dexes_data
    begin
      $game_temp.regional_dexes_data = load_data("Data/regional_dexes.dat")
    rescue Errno::ENOENT
      $game_temp.regional_dexes_data = []
    end
  end
  return $game_temp.regional_dexes_data
end

#===============================================================================
# Override pbAllRegionalSpecies to return [] instead of nil
# The original returns nil for invalid dex or empty data, but callers
# like Player::Pokedex#seen_any? call .each on the result without nil-checking.
#===============================================================================
def pbAllRegionalSpecies(region_dex)
  return [] if region_dex < 0
  dex_list = pbLoadRegionalDexes[region_dex]
  return (!dex_list || dex_list.length == 0) ? [] : dex_list.clone
end

#===============================================================================
# Eager initialisation for NON-DEBUG (release) mode
#===============================================================================
# In debug mode Compiler.main → compile_all fires the CompilerHook which loads
# script data and installs the PBS override hooks (including the safe
# GameData.load_all wrapper).
#
# In release mode ($DEBUG is false) Compiler.main returns immediately, so
# compile_all is never called and the hooks are never installed.  We must do it
# ourselves BEFORE Game.initialize calls GameData.load_all.
#===============================================================================
unless $DEBUG
  SCScripts::Loader.load_all_data
  SCScripts::PBSOverride.install_hooks
end
