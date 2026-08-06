#===============================================================================
# Shattered Crowns Script System - Configuration
#===============================================================================
# COMPLETE PBS REPLACEMENT SYSTEM
# This system completely replaces PBS text files with Ruby script definitions.
#===============================================================================

# FileUtils stub - RGSS does not include Ruby's fileutils library
unless defined?(FileUtils)
  module FileUtils
    def self.mkdir_p(path)
      return if path.nil? || path.empty?
      parts = path.gsub("\\", "/").split("/")
      current = ""
      parts.each do |part|
        current = current.empty? ? part : "#{current}/#{part}"
        Dir.mkdir(current) unless current.empty? || Dir.exist?(current)
      end
    end
  end
end

module SCScripts
  #=============================================================================
  # Version Information
  #=============================================================================
  VERSION = "2.0.0"
  NAME = "Shattered Crowns Script System"
  
  #=============================================================================
  # Path Configuration
  #=============================================================================
  # Base path for all script data
  SCRIPTS_BASE_PATH = "Plugins/[SC] Script System"
  
  # Individual paths for different data types
  MAP_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Maps"
  ANIMATION_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Animations"
  POKEMON_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Pokemon"
  MOVES_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Moves"
  ABILITIES_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Abilities"
  ITEMS_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Items"
  TYPES_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Types"
  TRAINERS_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Trainers"
  ENCOUNTERS_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Encounters"
  RIBBONS_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Ribbons"
  
  # Plugin-specific script paths
  PLUGIN_SCRIPTS_PATH = "#{SCRIPTS_BASE_PATH}/Plugins"
  
  #=============================================================================
  # PBS Paths (for migration)
  #=============================================================================
  PBS_PATH = "PBS"
  PBS_PLUGINS_PATH = "PBS/Plugins"
  
  #=============================================================================
  # PBS Replacement Mode
  #=============================================================================
  # When true, completely bypasses PBS loading and uses only script definitions
  # When false, merges script definitions with PBS data (scripts take priority)
  PBS_REPLACEMENT_MODE = true
  
  # Main PBS files to replace
  PBS_FILES_TO_REPLACE = [
    "pokemon.txt",
    "pokemon_forms.txt",
    "pokemon_base_Gen_9_Pack.txt",
    "pokemon_forms_Gen_9_Pack.txt",
    "pokemon_forms_gmax.txt",
    "pokemon_metrics.txt",
    "moves.txt",
    "moves_Gen_9_Pack.txt",
    "moves_dynamax.txt",
    "moves_zpower.txt",
    "moves_terastal.txt",
    "abilities.txt",
    "abilities_Gen_9_Pack.txt",
    "items.txt",
    "items_custom.txt",
    "items_Gen_9_Pack.txt",
    "items_Gen_9_Pack_TM.txt",
    "items_dynamax.txt",
    "items_terastal.txt",
    "items_zpower.txt",
    "items_mark_charm.txt",
    "items_raid_bait.txt",
    "types.txt",
    "types_stellar.txt",
    "trainers.txt",
    "trainer_types.txt",
    "encounters.txt",
    "map_metadata.txt",
    "map_connections.txt",
    "town_map.txt",
    "regional_dexes.txt",
    "ribbons.txt"
  ]
  
  # Plugin PBS folders to process
  PBS_PLUGIN_FOLDERS = [
    "[DBK] Dynamax",
    "[DBK] Raid Battles",
    "[DBK] SOS Battles",
    "[DBK] Terastallization",
    "[DBK] Wonder Launcher",
    "[DBK] Z-Power"
  ]
  
  #=============================================================================
  # Debug & Logging
  #=============================================================================
  # Toggle plugin-internal verbose logging. Independent of engine $DEBUG.
  DEBUG = $DEBUG
  LOG_LEVEL = :info  # :debug, :info, :warn, :error
  VERBOSE_REGISTRATIONS = false
  
  # Log levels
  LOG_LEVELS = { debug: 0, info: 1, warn: 2, error: 3 }

  @registration_counts = Hash.new(0)
  @summary_counts = Hash.new(0)

  def self.timestamp
    Time.now.strftime("%H:%M:%S.%L")
  rescue StandardError
    "--:--:--.---"
  end

  def self.channel_name(channel)
    channel.to_s.upcase[0, 8].ljust(8)
  end

  def self.write_line(message, level = :info, channel = :scripts)
    label = level.to_s.upcase.ljust(5)
    echoln("[#{timestamp}] [SC/#{channel_name(channel)}] #{label} #{message}")
  end

  # Individual DSL registrations are useful while authoring one definition,
  # but make the regular boot log unreadable. Count them and print one compact
  # summary after all loose story/data scripts have loaded.
  def self.capture_registration(message)
    return false if VERBOSE_REGISTRATIONS
    match = /^Registered\s+([^:]+):\s*(.+)$/i.match(message.to_s)
    return false if !match
    kind = match[1].strip.downcase.gsub(/\s+/, "_").to_sym
    @registration_counts[kind] += 1
    true
  end

  # PBS fallback details are reflected in the final registry totals. Keep only
  # a source count during normal boots instead of one line for every file/type.
  def self.capture_pbs_source(message)
    return false if message.to_s !~ /\A(?:Registered|Merged)\s+\d+\s+.+\s+from\s+.+\z/i
    track_summary(:pbs_sources_parsed)
    true
  end

  def self.track_summary(key, amount = 1)
    @summary_counts[key.to_sym] += amount
  end

  def self.flush_summaries
    if !@registration_counts.empty?
      values = @registration_counts.keys.sort_by { |key| key.to_s }.map do |key|
        "#{key.to_s.tr('_', ' ')}=#{@registration_counts[key]}"
      end
      write_line("Definitions: #{values.join(' | ')}", :info, :registry)
      @registration_counts.clear
    end
    if !@summary_counts.empty?
      values = @summary_counts.keys.sort_by { |key| key.to_s }.map do |key|
        "#{key.to_s.tr('_', ' ')}=#{@summary_counts[key]}"
      end
      write_line(values.join(" | "), :info, :summary)
      @summary_counts.clear
    end
  end

  def self.section(title)
    write_line("--- #{title} ---", :info, :startup)
  end
  
  def self.log(message, level = :info, channel = :scripts)
    return unless DEBUG
    text = message.to_s
    # A few legacy callers encoded severity into the message itself.
    if text =~ /\AERROR:\s*/i
      level = :error if level == :info
      text = text.sub(/\AERROR:\s*/i, "")
    elsif text =~ /\A(?:WARNING|WARN):\s*/i
      level = :warn if level == :info
      text = text.sub(/\A(?:WARNING|WARN):\s*/i, "")
    end
    return if LOG_LEVELS[level] < LOG_LEVELS[LOG_LEVEL]
    return if level == :info && capture_registration(text)
    return if level == :info && capture_pbs_source(text)
    write_line(text, level, channel)
  end
  
  def self.debug(message, channel = :scripts)
    log(message, :debug, channel)
  end
  
  def self.warn(message, channel = :scripts)
    log(message, :warn, channel)
  end
  
  def self.error(message, channel = :scripts)
    log(message, :error, channel)
  end
  
  #=============================================================================
  # Path Helper Methods
  #=============================================================================
  def self.all_data_paths
    [
      MAP_SCRIPTS_PATH,
      ANIMATION_SCRIPTS_PATH,
      POKEMON_SCRIPTS_PATH,
      MOVES_SCRIPTS_PATH,
      ABILITIES_SCRIPTS_PATH,
      ITEMS_SCRIPTS_PATH,
      TYPES_SCRIPTS_PATH,
      TRAINERS_SCRIPTS_PATH,
      ENCOUNTERS_SCRIPTS_PATH,
      RIBBONS_SCRIPTS_PATH,
      PLUGIN_SCRIPTS_PATH
    ]
  end
  
  def self.ensure_all_directories
    return unless $DEBUG  # Don't create directories in release installs
    all_data_paths.each do |path|
      unless Dir.exist?(path)
        begin
          FileUtils.mkdir_p(path)
          log("Created directory: #{path}")
        rescue => e
          error("Could not create directory #{path}: #{e.message}")
        end
      end
    end
    
    # Also create plugin subdirectories
    PBS_PLUGIN_FOLDERS.each do |plugin|
      plugin_path = "#{PLUGIN_SCRIPTS_PATH}/#{plugin}"
      unless Dir.exist?(plugin_path)
        begin
          FileUtils.mkdir_p(plugin_path)
          log("Created plugin directory: #{plugin_path}")
        rescue => e
          error("Could not create plugin directory #{plugin_path}: #{e.message}")
        end
      end
    end
  end
  
  #=============================================================================
  # Get all PBS files (including plugin PBS)
  #=============================================================================
  def self.all_pbs_files
    files = []
    
    # Main PBS folder
    if Dir.exist?(PBS_PATH)
      Dir.glob("#{PBS_PATH}/*.txt").each do |file|
        files << { path: file, type: :main, name: File.basename(file) }
      end
    end
    
    # Plugin PBS folders
    if Dir.exist?(PBS_PLUGINS_PATH)
      PBS_PLUGIN_FOLDERS.each do |plugin|
        plugin_path = "#{PBS_PLUGINS_PATH}/#{plugin}"
        next unless Dir.exist?(plugin_path)
        
        Dir.glob("#{plugin_path}/*.txt").each do |file|
          files << { path: file, type: :plugin, plugin: plugin, name: File.basename(file) }
        end
      end
    end
    
    files
  end
end
