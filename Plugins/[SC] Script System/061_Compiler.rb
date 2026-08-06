#===============================================================================
# Shattered Crowns Script System - Data Compiler
#===============================================================================
# Compiles script definitions into the game's internal data format.
# This allows the game to use script-defined data at runtime.
#===============================================================================

module SCScripts
  #=============================================================================
  # Data Compiler - Converts script data to game format
  #=============================================================================
  module Compiler
    @compiled = false
    @compile_errors = []
    
    class << self
      attr_accessor :compiled, :compile_errors
    end
    
    #---------------------------------------------------------------------------
    # Compile all script data
    #---------------------------------------------------------------------------
    def self.compile_all
      return if @compiled
      
      SCScripts.section("Data compilation")
      @compile_errors = []
      
      compile_types
      compile_abilities
      compile_moves
      compile_items
      compile_pokemon
      compile_trainers
      compile_encounters
      compile_map_metadata
      
      if @compile_errors.empty?
        @compiled = true
        SCScripts.log("Compilation complete: no errors", :info, :compiler)
      else
        SCScripts.log("Compilation complete: #{@compile_errors.count} error(s)", :warn, :compiler)
        @compile_errors.each { |e| SCScripts.log(e, :error, :compiler) }
      end
      
      GameData::ScriptRegistry.print_stats
    end
    
    #---------------------------------------------------------------------------
    # Compile Types
    #---------------------------------------------------------------------------
    def self.compile_types
      count = 0
      GameData::ScriptRegistry.types.each do |id, data|
        begin
          validate_type(id, data)
          count += 1
        rescue => e
          @compile_errors << "Type #{id}: #{e.message}"
        end
      end
      SCScripts.log("Compiled #{count} types", :info, :compiler)
    end
    
    def self.validate_type(id, data)
      raise "Missing name" unless data[:name]
    end
    
    #---------------------------------------------------------------------------
    # Compile Abilities
    #---------------------------------------------------------------------------
    def self.compile_abilities
      count = 0
      GameData::ScriptRegistry.abilities.each do |id, data|
        begin
          validate_ability(id, data)
          count += 1
        rescue => e
          @compile_errors << "Ability #{id}: #{e.message}"
        end
      end
      SCScripts.log("Compiled #{count} abilities", :info, :compiler)
    end
    
    def self.validate_ability(id, data)
      raise "Missing name" unless data[:name]
    end
    
    #---------------------------------------------------------------------------
    # Compile Moves
    #---------------------------------------------------------------------------
    def self.compile_moves
      count = 0
      GameData::ScriptRegistry.moves.each do |id, data|
        begin
          validate_move(id, data)
          count += 1
        rescue => e
          @compile_errors << "Move #{id}: #{e.message}"
        end
      end
      SCScripts.log("Compiled #{count} moves", :info, :compiler)
    end
    
    def self.validate_move(id, data)
      raise "Missing name" unless data[:name]
      raise "Missing type" unless data[:type]
      # Accept both symbol (:physical/:special/:status) and integer (0/1/2) categories
      valid_sym = [:physical, :special, :status].include?(data[:category])
      valid_int = [0, 1, 2].include?(data[:category])
      raise "Invalid category" unless valid_sym || valid_int
      
      # Validate type exists
      type_id = data[:type]
      unless GameData::ScriptRegistry.get_type(type_id)
        @compile_errors << "Move #{id}: References unknown type #{type_id}"
      end
    end
    
    #---------------------------------------------------------------------------
    # Compile Items
    #---------------------------------------------------------------------------
    def self.compile_items
      count = 0
      GameData::ScriptRegistry.items.each do |id, data|
        begin
          validate_item(id, data)
          count += 1
        rescue => e
          @compile_errors << "Item #{id}: #{e.message}"
        end
      end
      SCScripts.log("Compiled #{count} items", :info, :compiler)
    end
    
    def self.validate_item(id, data)
      raise "Missing name" unless data[:name]
      # Older SC definitions use numeric pockets, while v22 PBS parsing stores
      # GameData::BagPocket IDs such as :Medicine, :PokeBalls and :TMs.
      pocket = data[:pocket]
      pocket = pocket.to_i if pocket.is_a?(String) && pocket.match?(/\A\d+\z/)
      valid_pocket = pocket.is_a?(Integer) && (1..9).include?(pocket)
      if !valid_pocket && defined?(GameData::BagPocket)
        valid_pocket = GameData::BagPocket.exists?(pocket) rescue false
      end
      raise "Invalid bag pocket #{pocket.inspect}" unless valid_pocket
    end
    
    #---------------------------------------------------------------------------
    # Compile Pokemon
    #---------------------------------------------------------------------------
    def self.compile_pokemon
      count = 0
      GameData::ScriptRegistry.pokemon.each do |id, data|
        begin
          validate_pokemon(id, data)
          count += 1
        rescue => e
          @compile_errors << "Pokemon #{id}: #{e.message}"
        end
      end
      
      # Compile forms
      form_count = 0
      GameData::ScriptRegistry.pokemon_forms.each do |species, forms|
        forms.each do |form_num, data|
          begin
            validate_pokemon_form(species, form_num, data)
            form_count += 1
          rescue => e
            @compile_errors << "Pokemon #{species} Form #{form_num}: #{e.message}"
          end
        end
      end
      
      SCScripts.log("Compiled #{count} Pokemon species, #{form_count} forms", :info, :compiler)
    end
    
    def self.validate_pokemon(id, data)
      raise "Missing name" unless data[:name]
      raise "Missing types" unless data[:types] && !data[:types].empty?
      raise "Missing base stats" unless data[:base_stats]
      
      # Validate types exist
      data[:types].each do |type_id|
        unless GameData::ScriptRegistry.get_type(type_id)
          @compile_errors << "Pokemon #{id}: References unknown type #{type_id}"
        end
      end
      
      # Validate abilities exist
      (data[:abilities] || []).each do |ability_id|
        unless GameData::ScriptRegistry.get_ability(ability_id)
          @compile_errors << "Pokemon #{id}: References unknown ability #{ability_id}"
        end
      end
      
      # Validate moves exist
      (data[:moves] || []).each do |level, move_id|
        unless GameData::ScriptRegistry.get_move(move_id)
          @compile_errors << "Pokemon #{id}: References unknown move #{move_id}"
        end
      end
    end
    
    def self.validate_pokemon_form(species, form_num, data)
      # Forms inherit from base species, so fewer validations needed
      return unless data[:types]
      data[:types].each do |type_id|
        unless GameData::ScriptRegistry.get_type(type_id)
          @compile_errors << "Pokemon #{species} Form #{form_num}: References unknown type #{type_id}"
        end
      end
    end
    
    #---------------------------------------------------------------------------
    # Compile Trainers
    #---------------------------------------------------------------------------
    def self.compile_trainers
      count = 0
      GameData::ScriptRegistry.trainers.each do |key, data|
        begin
          validate_trainer(key, data)
          count += 1
        rescue => e
          @compile_errors << "Trainer #{key}: #{e.message}"
        end
      end
      SCScripts.log("Compiled #{count} trainers", :info, :compiler)
    end
    
    def self.validate_trainer(key, data)
      raise "Missing name" unless data[:name]
      # Two data sources use different keys for the trainer type:
      #   PBS parser (063_PBSParser.rb) sets :trainer_type
      #   DSL builder (055_Trainers.rb TrainerBuilder) sets :type
      # Accept either so DSL-defined trainers (Elite Four, Champion Emeritus,
      # Researcher Emeritus) validate instead of failing "Missing trainer type".
      raise "Missing trainer type" unless data[:trainer_type] || data[:type]
      
      # Validate party Pokemon exist
      (data[:party] || []).each do |poke|
        species = poke[:species] || poke
        unless GameData::ScriptRegistry.get_pokemon(species)
          @compile_errors << "Trainer #{key}: References unknown Pokemon #{species}"
        end
      end
    end
    
    #---------------------------------------------------------------------------
    # Compile Encounters
    #---------------------------------------------------------------------------
    def self.compile_encounters
      count = 0
      GameData::ScriptRegistry.encounters.each do |key, data|
        begin
          validate_encounters(key, data)
          count += 1
        rescue => e
          @compile_errors << "Encounters #{key}: #{e.message}"
        end
      end
      SCScripts.log("Compiled #{count} encounter tables", :info, :compiler)
    end
    
    def self.validate_encounters(key, data)
      return unless data[:slots]
      data[:slots].each do |slot|
        species = slot[:species]
        unless GameData::ScriptRegistry.get_pokemon(species)
          @compile_errors << "Encounters #{key}: References unknown Pokemon #{species}"
        end
      end
    end
    
    #---------------------------------------------------------------------------
    # Compile Map Metadata
    #---------------------------------------------------------------------------
    def self.compile_map_metadata
      count = GameData::ScriptRegistry.maps.count
      SCScripts.log("Compiled #{count} map metadata entries", :info, :compiler)
    end
    
    #---------------------------------------------------------------------------
    # Export to Marshal format (for game loading)
    #---------------------------------------------------------------------------
    def self.export_marshal(output_path = "Data/ScriptData")
      FileUtils.mkdir_p(output_path) unless Dir.exist?(output_path)
      
      data_sets = {
        "species" => GameData::ScriptRegistry.pokemon,
        "species_forms" => GameData::ScriptRegistry.pokemon_forms,
        "moves" => GameData::ScriptRegistry.moves,
        "abilities" => GameData::ScriptRegistry.abilities,
        "items" => GameData::ScriptRegistry.items,
        "types" => GameData::ScriptRegistry.types,
        "type_chart" => GameData::ScriptRegistry.type_chart,
        "trainers" => GameData::ScriptRegistry.trainers,
        "trainer_types" => GameData::ScriptRegistry.trainer_types,
        "encounters" => GameData::ScriptRegistry.encounters,
        "maps" => GameData::ScriptRegistry.maps,
        "map_connections" => GameData::ScriptRegistry.map_connections
      }
      
      data_sets.each do |name, data|
        filepath = "#{output_path}/#{name}.dat"
        File.open(filepath, "wb") do |file|
          Marshal.dump(data, file)
        end
        SCScripts.log("Exported #{name} to #{filepath}")
      end
      
      SCScripts.log("Marshal export complete!")
    end
    
    #---------------------------------------------------------------------------
    # Import from Marshal format
    #---------------------------------------------------------------------------
    def self.import_marshal(input_path = "Data/ScriptData")
      return unless Dir.exist?(input_path)
      
      files = {
        "species.dat" => :pokemon,
        "species_forms.dat" => :pokemon_forms,
        "moves.dat" => :moves,
        "abilities.dat" => :abilities,
        "items.dat" => :items,
        "types.dat" => :types,
        "type_chart.dat" => :type_chart,
        "trainers.dat" => :trainers,
        "trainer_types.dat" => :trainer_types,
        "encounters.dat" => :encounters,
        "maps.dat" => :maps,
        "map_connections.dat" => :map_connections
      }
      
      files.each do |filename, registry_key|
        filepath = "#{input_path}/#{filename}"
        next unless File.exist?(filepath)
        
        data = File.open(filepath, "rb") { |f| Marshal.load(f) }
        GameData::ScriptRegistry.send("#{registry_key}=", data)
        SCScripts.log("Imported #{registry_key} from #{filepath}")
      end
      
      SCScripts.log("Marshal import complete!")
    end
    
    #---------------------------------------------------------------------------
    # Generate statistics report
    #---------------------------------------------------------------------------
    def self.generate_report
      stats = GameData::ScriptRegistry.stats
      errors = @compile_errors.count
      
      report = []
      report << "=" * 50
      report << "SHATTERED CROWNS DATA COMPILATION REPORT"
      report << "=" * 50
      report << ""
      report << "Data Statistics:"
      stats.each do |type, count|
        report << "  #{type.to_s.ljust(20)} : #{count}"
      end
      report << ""
      report << "Compilation Status: #{@compiled ? 'SUCCESS' : 'INCOMPLETE'}"
      report << "Errors: #{errors}"
      report << ""
      
      if errors > 0
        report << "Error Details:"
        @compile_errors.each { |e| report << "  - #{e}" }
      end
      
      report << "=" * 50
      
      report.join("\n")
    end
  end
end

#===============================================================================
# Debug Menu Integration
#===============================================================================
module SCScripts
  module CompilerDebug
    def self.add_to_debug_menu
      return unless defined?(MenuHandlers)
      
      MenuHandlers.add(:debug_menu, :sc_compile_data, {
        "name" => "Compile Script Data",
        "parent" => :main,
        "description" => "Compile all script-based game data",
        "effect" => proc {
          SCScripts::Compiler.compile_all
          pbMessage("Compilation complete! Check console for details.")
        }
      })
      
      MenuHandlers.add(:debug_menu, :sc_export_data, {
        "name" => "Export Script Data",
        "parent" => :main,
        "description" => "Export compiled data to Marshal files",
        "effect" => proc {
          SCScripts::Compiler.export_marshal
          pbMessage("Data exported to Data/ScriptData/")
        }
      })
      
      MenuHandlers.add(:debug_menu, :sc_show_report, {
        "name" => "Show Compilation Report",
        "parent" => :main,
        "description" => "Display data compilation statistics",
        "effect" => proc {
          report = SCScripts::Compiler.generate_report
          pbMessage(report)
        }
      })
    end
  end
end
