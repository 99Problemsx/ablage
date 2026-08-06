#===============================================================================
# Shattered Crowns Script System - Script Loader
#===============================================================================
# Automatically loads all script data from Data/Scripts folders.
# This replaces PBS file loading with Ruby script loading.
#===============================================================================

module SCScripts
  module Loader
    @data_loaded = false

    #---------------------------------------------------------------------------
    # Load all scripts and data
    #---------------------------------------------------------------------------
    def self.load_all
      load_all_data
      SCScripts.log("All scripts loaded successfully!")
    end

    #---------------------------------------------------------------------------
    # Load all data scripts (replaces PBS loading)
    #---------------------------------------------------------------------------
    def self.load_all_data
      return if @data_loaded
      @data_loaded = true
      SCScripts.log("Loading script-based game data...")
      
      # Load in dependency order
      load_type_scripts       # Types must be first
      load_ability_scripts    # Abilities before Pokemon
      load_move_scripts       # Moves before Pokemon
      load_item_scripts       # Items before Pokemon (for held items, evo stones)
      load_pokemon_scripts    # Pokemon need types, abilities, moves
      load_trainer_scripts    # Trainers need Pokemon
      load_encounter_scripts  # Encounters need Pokemon
      load_ribbon_scripts     # Ribbons
      load_config_scripts     # Metadata, town maps, phone contacts (needs types for trainer_type)
      load_dungeon_scripts    # Dungeon parameters (needs to be before maps)
      load_map_scripts        # Maps and encounters
      load_animation_scripts  # Battle animations
      load_story_scripts      # Story/chapter definitions
      load_battle_facility_scripts # Battle Tower/Facility data
      load_example_scripts    # Example/extra scripts
      
      # Load Plugin-specific scripts
      load_plugin_scripts

      # Replace hundreds of per-definition messages with one useful total.
      SCScripts.flush_summaries
      
      # Parse any remaining PBS files that need conversion
      parse_pbs_fallback if SCScripts::PBS_REPLACEMENT_MODE
      
      # Compile and validate all data
      SCScripts::Compiler.compile_all if defined?(SCScripts::Compiler)

      SCScripts.flush_summaries
      
      SCScripts.log("Game data loading complete!")
    end
    
    #---------------------------------------------------------------------------
    # Load scripts from Plugin folders
    #---------------------------------------------------------------------------
    def self.load_plugin_scripts
      return unless defined?(SCScripts::PLUGIN_SCRIPTS_PATH)
      plugin_path = SCScripts::PLUGIN_SCRIPTS_PATH
      # Check if directory exists on disk OR data bundle is available
      return unless Dir.exist?(plugin_path) || sc_data_bundle

      SCScripts.log("Loading plugin scripts...")
      total_count = 0

      # Load from each plugin folder (load_scripts_from handles bundle fallback)
      SCScripts::PBS_PLUGIN_FOLDERS.each do |folder_name|
        plugin_folder = "#{plugin_path}/#{folder_name}"
        count = load_scripts_from(plugin_folder, "#{folder_name} scripts")
        total_count += count
      end

      SCScripts.log("Loaded #{total_count} total plugin scripts") if total_count > 0
    end
    
    #---------------------------------------------------------------------------
    # Parse PBS files as fallback for non-converted data
    #---------------------------------------------------------------------------
    def self.parse_pbs_fallback
      return unless defined?(SCScripts::PBSParser)
      
      SCScripts.log("Parsing remaining PBS files...")
      SCScripts::PBSParser.load_all_pbs
    end
    
    #---------------------------------------------------------------------------
    # Load scripts from a specific path
    #---------------------------------------------------------------------------
    def self.load_scripts_from(path, description = "scripts")
      # Try filesystem first (development mode with loose files)
      if Dir.exist?(path)
        count = 0
        Dir.glob("#{path}/**/*.rb").sort.each do |file|
          begin
            load file
            count += 1
          rescue => e
            SCScripts.error("ERROR loading #{file}: #{e.message}")
          end
        end
        SCScripts.log("Loaded #{count} #{description}") if count > 0
        return count
      end
      # Fallback: load from RGSSAD archive via data bundle (load_data → PhysFS)
      load_from_bundle(path, description)
    end

    #---------------------------------------------------------------------------
    # Data bundle for RGSSAD archive loading
    # Ruby's File.read does NOT go through PhysFS, so it cannot read files
    # from the RGSSAD archive.  Instead, all .rb data files are bundled into
    # Data/sc_data.rxdata (a Marshal'd hash) which load_data CAN read from
    # the archive.
    #
    # Format: { "dir/path" => [ ["relative/file.rb", "content"], ... ], ... }
    #---------------------------------------------------------------------------
    @sc_data = nil
    @sc_data_loaded = false

    def self.sc_data_bundle
      unless @sc_data_loaded
        @sc_data_loaded = true
        bundle_path = "Data/sc_data.rxdata"
        exists = defined?(pbRgssExists?) ? pbRgssExists?(bundle_path) : FileTest.exist?(bundle_path)
        return nil if !exists
        begin
          @sc_data = load_data(bundle_path)
          total = @sc_data.values.sum { |v| v.size }
          SCScripts.log("SC data bundle loaded (#{@sc_data.size} directories, #{total} files)")
        rescue StandardError
          @sc_data = nil
        end
      end
      @sc_data
    end

    def self.load_from_bundle(path, description)
      bundle = sc_data_bundle
      return 0 unless bundle
      normalized = path.gsub("\\", "/")
      entries = bundle[normalized]
      return 0 unless entries && !entries.empty?
      count = 0
      entries.each do |file_path, content|
        begin
          eval(content, TOPLEVEL_BINDING, file_path, 1)
          count += 1
        rescue => e
          SCScripts.error("ERROR loading #{file_path} from bundle: #{e.message}")
        end
      end
      SCScripts.log("Loaded #{count} #{description} (from bundle)") if count > 0
      count
    end

    #---------------------------------------------------------------------------
    # Individual loaders for each data type
    #---------------------------------------------------------------------------
    def self.load_type_scripts
      load_scripts_from(SCScripts::TYPES_SCRIPTS_PATH, "type definitions")
    end
    
    def self.load_ability_scripts
      load_scripts_from(SCScripts::ABILITIES_SCRIPTS_PATH, "ability definitions")
    end
    
    def self.load_move_scripts
      load_scripts_from(SCScripts::MOVES_SCRIPTS_PATH, "move definitions")
    end
    
    def self.load_item_scripts
      load_scripts_from(SCScripts::ITEMS_SCRIPTS_PATH, "item definitions")
    end
    
    def self.load_pokemon_scripts
      load_scripts_from(SCScripts::POKEMON_SCRIPTS_PATH, "Pokemon definitions")
    end
    
    def self.load_trainer_scripts
      load_scripts_from(SCScripts::TRAINERS_SCRIPTS_PATH, "trainer definitions")
    end
    
    def self.load_encounter_scripts
      load_scripts_from(SCScripts::ENCOUNTERS_SCRIPTS_PATH, "encounter definitions")
    end
    
    def self.load_ribbon_scripts
      load_scripts_from(SCScripts::RIBBONS_SCRIPTS_PATH, "ribbon definitions")
    end
    
    def self.load_map_scripts
      path = SCScripts::MAP_SCRIPTS_PATH
      # Collect file list from filesystem or data bundle
      entries = nil    # array of [file_path, content_or_nil]
      use_eval = false
      if Dir.exist?(path)
        entries = Dir.glob("#{path}/**/*.rb").sort.map { |f| [f, nil] }
      else
        bundle = sc_data_bundle
        if bundle
          normalized = path.gsub("\\", "/")
          bundle_entries = bundle[normalized]
          if bundle_entries && !bundle_entries.empty?
            entries = bundle_entries  # already [file_path, content]
            use_eval = true
          end
        end
      end
      return 0 unless entries && !entries.empty?

      count = 0
      entries.each do |file_path, content|
        begin
          filename = File.basename(file_path, '.rb')
          map_id = extract_map_id(filename)

          if map_id
            GameData::ScriptBase.for_map(map_id) do
              if use_eval
                eval(content, TOPLEVEL_BINDING, file_path, 1)
              else
                load file_path
              end
            end
          else
            if use_eval
              eval(content, TOPLEVEL_BINDING, file_path, 1)
            else
              load file_path
            end
          end

          count += 1
        rescue => e
          SCScripts.error("ERROR loading #{file_path}: #{e.message}")
        end
      end

      SCScripts.log("Loaded #{count} map scripts") if count > 0
      count
    end
    
    def self.load_animation_scripts
      load_scripts_from(SCScripts::ANIMATION_SCRIPTS_PATH, "animation scripts")
    end
    
    def self.load_config_scripts
      path = "Data/Scripts/Config"
      load_scripts_from(path, "config scripts (metadata, town maps, etc.)")
    end
    
    def self.load_dungeon_scripts
      path = "Data/Scripts/Dungeons"
      load_scripts_from(path, "dungeon definitions")
    end
    
    def self.load_story_scripts
      path = "Data/Scripts/Story"
      load_scripts_from(path, "story scripts")
    end
    
    def self.load_battle_facility_scripts
      path = "Data/Scripts/BattleFacility"
      load_scripts_from(path, "battle facility scripts")
    end
    
    def self.load_example_scripts
      path = "Data/Scripts/Examples"
      load_scripts_from(path, "example scripts")
    end
    
    #---------------------------------------------------------------------------
    # Extract map ID from filename
    #---------------------------------------------------------------------------
    def self.extract_map_id(filename)
      # Pattern: starts with number (e.g., "033_Route101")
      if filename =~ /^(\d+)[_\s]/
        return $1.to_i
      end
      
      # Pattern: "Map" followed by number
      if filename =~ /Map\s*(\d+)/i
        return $1.to_i
      end
      
      nil
    end
    
    #---------------------------------------------------------------------------
    # Reload a specific data type
    #---------------------------------------------------------------------------
    def self.reload_data_type(type)
      case type.to_sym
      when :types     then load_type_scripts
      when :abilities then load_ability_scripts
      when :moves     then load_move_scripts
      when :items     then load_item_scripts
      when :pokemon   then load_pokemon_scripts
      when :trainers  then load_trainer_scripts
      when :encounters then load_encounter_scripts
      when :ribbons    then load_ribbon_scripts
      when :maps      then load_map_scripts
      when :animations then load_animation_scripts
      else
        SCScripts.warn("Unknown data type: #{type}")
        return false
      end
      
      # Recompile after reload
      SCScripts::Compiler.compiled = false
      SCScripts::Compiler.compile_all if defined?(SCScripts::Compiler)
      true
    end
  end
end

#===============================================================================
# Hook into game startup to load scripts
#===============================================================================
module SCScripts
  module GameStartup
    def self.trigger
      SCScripts.section("#{SCScripts::NAME} v#{SCScripts::VERSION}")
      
      if SCScripts::PBS_REPLACEMENT_MODE
        SCScripts.log("Mode: FULL PBS REPLACEMENT")
      else
        SCScripts.log("Mode: PBS MERGE (scripts take priority)")
      end
      
      # Create directories if they don't exist
      ensure_directories
      
      # Install PBS override hooks
      SCScripts::PBSOverride.install_hooks if defined?(SCScripts::PBSOverride)
      
      # Install Debug write hooks (redirect PBS writes to Ruby)
      SCScripts::DebugHooks.install if defined?(SCScripts::DebugHooks)
      
      # Load all scripts
      Loader.load_all

      SCScripts.flush_summaries
      SCScripts.log("Startup complete!")
    end
    
    def self.ensure_directories
      SCScripts.ensure_all_directories
    end
  end
end

# Trigger on game start (after other plugins load)
EventHandlers.add(:on_start, :sc_script_system_startup,
  proc {
    SCScripts::GameStartup.trigger
  }
)
