#===============================================================================
# Shattered Crowns Script System - Integration Hooks
#===============================================================================
# Provides integration with Challenge Modes and Dynamic Lighting plugins.
#===============================================================================

module SCScripts
  #=============================================================================
  # Challenge Mode Integration
  #=============================================================================
  module ChallengeMode
    # Check if challenge mode is active
    def self.active?
      return false unless defined?($PokemonGlobal)
      return false unless $PokemonGlobal
      $PokemonGlobal.challenge_mode rescue false
    end
    
    # Check specific challenge modes
    def self.nuzlocke?
      return false unless active?
      ChallengeModes.nuzlocke? rescue false
    end
    
    def self.hardcore?
      return false unless active?
      ChallengeModes.hardcore? rescue false
    end
    
    def self.randomizer?
      return false unless active?
      ChallengeModes.randomizer? rescue false
    end
    
    def self.monotype?
      return false unless active?
      ChallengeModes.monotype? rescue false
    end
    
    def self.level_cap?
      return false unless active?
      ChallengeModes.level_cap? rescue false
    end
    
    # Get current level cap
    def self.level_cap
      return 100 unless level_cap?
      ChallengeModes.get_level_cap rescue 100
    end
    
    # Conditional helper for DSL
    def self.if_challenge(&block)
      yield if active?
    end
    
    def self.unless_challenge(&block)
      yield unless active?
    end
  end
  
  #=============================================================================
  # Dynamic Lighting Integration
  #=============================================================================
  module Lighting
    # Check if lighting system is available. The Dynamic Lighting plugin exposes
    # its API as global pbAddLight / pbRemoveLight / pbAttachLight helpers (there
    # is no `DynamicLighting` module — the old check was always false).
    def self.available?
      defined?(pbAddLight) == "method"
    end

    # Add a free-standing light at tile (x, y).
    # options: :radius, :color, :intensity, :day, :preset
    def self.add_light(x, y, options = {})
      return false unless available?
      pbAddLight(x, y,
                 options[:radius] || 100,
                 options[:color],
                 day:       options.fetch(:day, false),
                 intensity: options[:intensity] || 1.0,
                 preset:    options[:preset])
      true
    rescue => e
      SCScripts.log("Lighting error: #{e.message}")
      false
    end
    
    # Attach a light to a map event so it follows the event.
    # options: :type, :radius, :color, :intensity, :day, :preset
    def self.add_event_light(event, options = {})
      return false unless available?
      return false unless event && $game_map
      event_id = event.is_a?(Integer) ? event : event.id
      ev = $game_map.events[event_id]
      return false unless ev
      id = :"_sc_evt_light_#{$game_map.map_id}_#{event_id}"
      hash = {
        :id        => id,
        :type      => options[:type] || :circle,
        :radius    => options[:radius] || 64,
        :map_x     => ev.x,
        :map_y     => ev.y,
        :map_id    => $game_map.map_id,
        :event     => event_id,
        :day       => options.fetch(:day, false),
        :intensity => options[:intensity] || 1.0
      }
      hash[:color] = options[:color] if options[:color]
      if options[:preset] && defined?(LIGHT_PRESETS) && LIGHT_PRESETS[options[:preset]]
        LIGHT_PRESETS[options[:preset]].each { |k, v| hash[k] = v unless hash.key?(k) }
      end
      GameData::LightEffect.add(hash)
      lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
      lighting.refresh_all(true) if lighting && !lighting.disposed?
      true
    rescue => e
      SCScripts.log("Event lighting error: #{e.message}")
      false
    end

    # Remove a previously attached event light.
    def self.remove_event_light(event)
      return false unless available?
      return false unless $game_map
      event_id = event.is_a?(Integer) ? event : event.id
      pbRemoveLight(:"_sc_evt_light_#{$game_map.map_id}_#{event_id}")
      true
    rescue StandardError
      false
    end
    
    # Preset light colors
    COLORS = {
      fire:     -> { Color.new(255, 150, 50) },
      torch:    -> { Color.new(255, 200, 100) },
      lantern:  -> { Color.new(255, 220, 150) },
      candle:   -> { Color.new(255, 180, 80) },
      crystal:  -> { Color.new(150, 200, 255) },
      magic:    -> { Color.new(200, 150, 255) },
      sunlight: -> { Color.new(255, 255, 200) },
      moonlight: -> { Color.new(180, 200, 255) }
    }
    
    def self.color(preset)
      COLORS[preset]&.call || Color.new(255, 255, 255)
    end
  end
  
  #=============================================================================
  # Hot Reload (Debug Mode Only)
  #=============================================================================
  module HotReload
    @last_load_time = {}
    @enabled = false
    
    def self.enable
      return unless $DEBUG
      @enabled = true
      SCScripts.log("Hot reload enabled")
    end
    
    def self.disable
      @enabled = false
    end
    
    def self.enabled?
      @enabled && $DEBUG
    end
    
    # Check and reload changed files
    def self.check_for_changes
      return unless enabled?
      
      paths = [SCScripts::MAP_SCRIPTS_PATH, SCScripts::ANIMATION_SCRIPTS_PATH]
      
      paths.each do |base_path|
        next unless Dir.exist?(base_path)
        
        Dir.glob("#{base_path}/**/*.rb").each do |file|
          mtime = File.mtime(file)
          
          if @last_load_time[file].nil?
            @last_load_time[file] = mtime
          elsif mtime > @last_load_time[file]
            reload_file(file)
            @last_load_time[file] = mtime
          end
        end
      end
    end
    
    def self.reload_file(file)
      begin
        load file
        SCScripts.log("Hot reloaded: #{File.basename(file)}")
        true
      rescue => e
        SCScripts.log("Hot reload ERROR: #{e.message}")
        false
      end
    end
    
    # Reload all scripts
    def self.reload_all
      SCScripts.log("Reloading all scripts...")
      SCScripts::Loader.load_all
    end
  end
end

#===============================================================================
# Hook hot reload into game update loop (debug only)
#===============================================================================
if $DEBUG
  class Scene_Map
    alias sc_hotreload_update update unless method_defined?(:sc_hotreload_update)
    
    def update
      sc_hotreload_update
      
      # Check for hot reload every 60 frames (1 second)
      @sc_hotreload_counter ||= 0
      @sc_hotreload_counter += 1
      
      if @sc_hotreload_counter >= 60
        @sc_hotreload_counter = 0
        SCScripts::HotReload.check_for_changes if SCScripts::HotReload.enabled?
      end
    end
  end
end
