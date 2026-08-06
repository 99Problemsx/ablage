#===============================================================================
# Shattered Crowns Script System - Debug Hooks
#===============================================================================
# Intercepts Essentials' PBS writing and redirects to Ruby files.
# This ensures Debug menu changes are saved to the script system.
#===============================================================================

module SCScripts
  module DebugHooks
    @hooks_installed = false
    
    def self.install
      return if @hooks_installed
      return unless SCScripts::PBS_REPLACEMENT_MODE
      
      SCScripts.debug("Installing Debug PBS write hooks", :startup)
      
      install_species_write_hook
      install_move_write_hook
      install_item_write_hook
      install_ability_write_hook
      install_trainer_write_hook
      install_encounter_write_hook
      install_map_metadata_write_hook
      install_compiler_hook
      
      @hooks_installed = true
      SCScripts.debug("Debug hooks installed; PBS writes target Ruby files", :startup)
    end
    
    #---------------------------------------------------------------------------
    # Species Write Hook
    #---------------------------------------------------------------------------
    def self.install_species_write_hook
      return unless defined?(GameData::Species)
      
      # Hook the save/register method if it exists
      if GameData::Species.respond_to?(:register)
        GameData::Species.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            # Call original
            result = original_register(data)
            
            # Also write to Ruby if in PBS replacement mode
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                SCScripts::DebugWriter.write_pokemon(data.id, convert_to_hash(data))
              rescue => e
                SCScripts.error("Failed to write Pokemon to Ruby: #{e.message}")
              end
            end
            
            result
          end
          
          define_method(:convert_to_hash) do |data|
            {
              name: data.real_name,
              types: data.types,
              base_stats: {
                hp: data.base_stats[:HP],
                attack: data.base_stats[:ATTACK],
                defense: data.base_stats[:DEFENSE],
                sp_atk: data.base_stats[:SPECIAL_ATTACK],
                sp_def: data.base_stats[:SPECIAL_DEFENSE],
                speed: data.base_stats[:SPEED]
              },
              gender_ratio: data.gender_ratio,
              growth_rate: data.growth_rate,
              base_exp: data.base_exp,
              catch_rate: data.catch_rate,
              happiness: data.happiness,
              abilities: data.abilities,
              hidden_abilities: data.hidden_abilities,
              moves: data.moves&.map { |lvl, move| { level: lvl, move: move } },
              egg_groups: data.egg_groups,
              hatch_steps: data.hatch_steps,
              height: data.height,
              weight: data.weight,
              color: data.color,
              shape: data.shape,
              category: data.real_category,
              pokedex: data.real_pokedex_entry,
              evolutions: data.evolutions&.map { |e| { species: e[0], method: e[1], param: e[2] } }
            }
          end
        end
      end
      
      SCScripts.debug("Species write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Move Write Hook
    #---------------------------------------------------------------------------
    def self.install_move_write_hook
      return unless defined?(GameData::Move)
      
      if GameData::Move.respond_to?(:register)
        GameData::Move.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            result = original_register(data)
            
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                hash = {
                  name: data.real_name,
                  type: data.type,
                  category: data.category,
                  power: data.power,
                  accuracy: data.accuracy,
                  pp: data.total_pp,
                  target: data.target,
                  priority: data.priority,
                  function_code: data.function_code,
                  flags: data.flags,
                  description: data.real_description
                }
                SCScripts::DebugWriter.write_move(data.id, hash)
              rescue => e
                SCScripts.error("Failed to write Move to Ruby: #{e.message}")
              end
            end
            
            result
          end
        end
      end
      
      SCScripts.debug("Move write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Item Write Hook
    #---------------------------------------------------------------------------
    def self.install_item_write_hook
      return unless defined?(GameData::Item)
      
      if GameData::Item.respond_to?(:register)
        GameData::Item.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            result = original_register(data)
            
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                hash = {
                  name: data.real_name,
                  name_plural: data.real_name_plural,
                  pocket: data.pocket,
                  price: data.price,
                  field_use: data.field_use,
                  battle_use: data.battle_use,
                  flags: data.flags,
                  description: data.real_description
                }
                SCScripts::DebugWriter.write_item(data.id, hash)
              rescue => e
                SCScripts.error("Failed to write Item to Ruby: #{e.message}")
              end
            end
            
            result
          end
        end
      end
      
      SCScripts.debug("Item write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Ability Write Hook
    #---------------------------------------------------------------------------
    def self.install_ability_write_hook
      return unless defined?(GameData::Ability)
      
      if GameData::Ability.respond_to?(:register)
        GameData::Ability.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            result = original_register(data)
            
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                hash = {
                  name: data.real_name,
                  description: data.real_description,
                  flags: data.flags
                }
                SCScripts::DebugWriter.write_ability(data.id, hash)
              rescue => e
                SCScripts.error("Failed to write Ability to Ruby: #{e.message}")
              end
            end
            
            result
          end
        end
      end
      
      SCScripts.debug("Ability write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Trainer Write Hook
    #---------------------------------------------------------------------------
    def self.install_trainer_write_hook
      return unless defined?(GameData::Trainer)
      
      if GameData::Trainer.respond_to?(:register)
        GameData::Trainer.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            result = original_register(data)
            
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                hash = {
                  type: data.trainer_type,
                  name: data.real_name,
                  version: data.version,
                  lose_text: data.real_lose_text,
                  items: data.items,
                  pokemon: data.pokemon&.map do |p|
                    {
                      species: p[:species],
                      level: p[:level],
                      moves: p[:moves],
                      item: p[:item],
                      nature: p[:nature],
                      ability: p[:ability],
                      shiny: p[:shininess]
                    }
                  end
                }
                SCScripts::DebugWriter.write_trainer(data.trainer_type, data.real_name, data.version, hash)
              rescue => e
                SCScripts.error("Failed to write Trainer to Ruby: #{e.message}")
              end
            end
            
            result
          end
        end
      end
      
      SCScripts.debug("Trainer write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Encounter Write Hook
    #---------------------------------------------------------------------------
    def self.install_encounter_write_hook
      return unless defined?(GameData::Encounter)
      
      if GameData::Encounter.respond_to?(:register)
        GameData::Encounter.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            result = original_register(data)
            
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                hash = {
                  map_id: data.map,
                  version: data.version,
                  encounters: {}
                }
                
                data.types&.each do |type, enc_list|
                  hash[:encounters][type] = {
                    density: enc_list[:encounter_density] || 0,
                    pokemon: enc_list[:pokemon]&.map do |p|
                      {
                        species: p[0],
                        probability: p[1],
                        min_level: p[2],
                        max_level: p[3] || p[2]
                      }
                    end
                  }
                end
                
                SCScripts::DebugWriter.write_encounter(data.map, data.version, hash)
              rescue => e
                SCScripts.error("Failed to write Encounter to Ruby: #{e.message}")
              end
            end
            
            result
          end
        end
      end
      
      SCScripts.debug("Encounter write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Map Metadata Write Hook
    #---------------------------------------------------------------------------
    def self.install_map_metadata_write_hook
      return unless defined?(GameData::MapMetadata)
      
      if GameData::MapMetadata.respond_to?(:register)
        GameData::MapMetadata.singleton_class.class_eval do
          alias_method :original_register, :register unless method_defined?(:original_register)
          
          define_method(:register) do |data|
            result = original_register(data)
            
            if SCScripts::PBS_REPLACEMENT_MODE && $DEBUG &&
               !SCScripts::PBSOverride.canonical_compiling
              begin
                hash = {
                  name: data.real_name,
                  outdoor: data.outdoor_map,
                  weather: data.weather,
                  weather_chance: data.weather_chance,
                  bicycle: data.can_bicycle,
                  bicycle_always: data.always_bicycle,
                  dark_map: data.dark_map,
                  safari_map: data.safari_map,
                  dive_map: data.dive_map_id
                }
                SCScripts::DebugWriter.write_map_metadata(data.id, hash)
              rescue => e
                SCScripts.error("Failed to write MapMetadata to Ruby: #{e.message}")
              end
            end
            
            result
          end
        end
      end
      
      SCScripts.debug("MapMetadata write hook installed")
    end
    
    #---------------------------------------------------------------------------
    # Compiler Hook - Prevent PBS file writing
    #---------------------------------------------------------------------------
    def self.install_compiler_hook
      return unless defined?(Compiler)
      
      # Hook into write methods to redirect to Ruby
      if Compiler.respond_to?(:write_pokemon)
        Compiler.singleton_class.class_eval do
          alias_method :original_write_pokemon, :write_pokemon unless method_defined?(:original_write_pokemon)
          
          define_method(:write_pokemon) do
            if SCScripts::PBS_REPLACEMENT_MODE
              SCScripts.log("Skipping PBS write for pokemon.txt (using Ruby scripts)")
              return
            end
            original_write_pokemon
          end
        end
      end
      
      # Hook other write methods similarly...
      [:write_moves, :write_items, :write_abilities, :write_trainers, 
       :write_trainer_types, :write_encounters, :write_types].each do |method|
        next unless Compiler.respond_to?(method)
        
        Compiler.singleton_class.class_eval do
          original_method = "original_#{method}".to_sym
          alias_method original_method, method unless method_defined?(original_method)
          
          define_method(method) do
            if SCScripts::PBS_REPLACEMENT_MODE
              SCScripts.log("Skipping PBS write for #{method} (using Ruby scripts)")
              return
            end
            send(original_method)
          end
        end
      end
      
      SCScripts.debug("Compiler write hooks installed")
    end
  end
end

#===============================================================================
# Auto-install hooks on startup
#===============================================================================
SCScripts::DebugHooks.install if defined?(SCScripts) && SCScripts::PBS_REPLACEMENT_MODE
