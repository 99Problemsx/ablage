#===============================================================================
# [SC] Map Events Import - Runtime Spawner
#===============================================================================
# Converts MapEvents DSL definitions into native RPG::Event objects and
# inserts them into $game_map at map-load time. Hand-placed .rxdata
# events are preserved (COLLISION_POLICY in 000_Config.rb controls the
# tie-break).
#
# Hook point: Game_Map#setup runs at every map transfer. We post-process
# @events after the standard load.
#===============================================================================

module MapEventsImport
  #-----------------------------------------------------------------------------
  # Build an RPG::Event from an EventBuilder
  #-----------------------------------------------------------------------------
  def self.build_rpg_event(builder)
    ev = RPG::Event.new(builder.x, builder.y)
    ev.id   = builder.event_id
    ev.name = builder.name

    if builder.pages_data.empty?
      ev.pages = [build_rpg_page(MapEvents::PageBuilder.new(:default))]
    else
      ev.pages = builder.pages_data.map { |p| build_rpg_page(p) }
    end

    ev
  end

  #-----------------------------------------------------------------------------
  # Build an RPG::Event::Page from a PageBuilder
  #-----------------------------------------------------------------------------
  def self.build_rpg_page(page_data)
    page = RPG::Event::Page.new

    # Conditions
    cond = page.condition
    if page_data.conditions[:switch1]
      cond.switch1_valid = true
      cond.switch1_id    = resolve_switch(page_data.conditions[:switch1][:id])
    end
    if page_data.conditions[:switch2]
      cond.switch2_valid = true
      cond.switch2_id    = resolve_switch(page_data.conditions[:switch2][:id])
    end
    if page_data.conditions[:variable]
      v = page_data.conditions[:variable]
      cond.variable_valid = true
      cond.variable_id    = resolve_variable(v[:id])
      cond.variable_value = v[:value]
    end
    if page_data.conditions[:self_switch]
      ss = page_data.conditions[:self_switch]
      cond.self_switch_valid = true
      cond.self_switch_ch    = ss[:letter]
    end

    # Graphic
    if page_data.graphic_data
      g = page_data.graphic_data
      page.graphic.character_name = g[:character_name].to_s
      page.graphic.direction      = g[:direction]
      page.graphic.pattern        = g[:pattern]
      page.graphic.tile_id        = g[:tile_id] || 0
      page.graphic.character_hue  = g[:hue] || 0
    end

    # Move type + options
    page.move_type  = page_data.move_type_val
    page.move_speed = page_data.speed_val
    page.move_frequency = page_data.frequency_val

    opts = page_data.options
    page.step_anime    = opts[:step_anime]
    page.walk_anime    = opts[:walk_anime]
    page.direction_fix = opts[:direction_fix]
    page.through       = opts[:through]
    page.always_on_top = opts[:always_on_top]

    # Trigger
    page.trigger = page_data.trigger_id

    # Commands — convert each PageBuilder command into RPG::EventCommand
    page.list = build_command_list(page_data.commands)

    page
  end

  #-----------------------------------------------------------------------------
  # Convert command builder list into RPG::EventCommand objects
  #-----------------------------------------------------------------------------
  def self.build_command_list(commands)
    list = []
    commands.each do |cmd|
      case cmd[:type]
      when :script
        list << RPG::EventCommand.new(355, 0, [cmd[:code].to_s])
      when :message
        list << RPG::EventCommand.new(101, 0, [cmd[:text].to_s])
      when :set_switch
        switch_id, value = cmd[:args]
        list << RPG::EventCommand.new(123, 0, [resolve_switch(switch_id), value ? 0 : 1])
      when :set_self_switch
        letter, value = cmd[:args]
        list << RPG::EventCommand.new(123, 0, [letter, value ? 0 : 1])
      when :set_variable
        var_id, value = cmd[:args]
        list << RPG::EventCommand.new(122, 0, [resolve_variable(var_id), resolve_variable(var_id), 0, 0, value])
      when :wait
        list << RPG::EventCommand.new(106, 0, [cmd[:args][0] || 1])
      end
    end
    # Terminator
    list << RPG::EventCommand.new(0, 0, [])
    list
  end

  #-----------------------------------------------------------------------------
  # Switch/variable ID resolver — accepts Integer or Symbol (named via
  # the SC Script System's switches/variables module).
  #-----------------------------------------------------------------------------
  def self.resolve_switch(id)
    return id if id.is_a?(Integer)
    if defined?(SwitchesVariables) && SwitchesVariables.respond_to?(:switch_id)
      resolved = SwitchesVariables.switch_id(id)
      return resolved if resolved.is_a?(Integer) && resolved > 0
    end
    # Fallback: hash to a deterministic ID in a high range (avoid clash)
    1000 + (id.to_s.hash.abs % 1000)
  end

  def self.resolve_variable(id)
    return id if id.is_a?(Integer)
    if defined?(SwitchesVariables) && SwitchesVariables.respond_to?(:variable_id)
      resolved = SwitchesVariables.variable_id(id)
      return resolved if resolved.is_a?(Integer) && resolved > 0
    end
    1000 + (id.to_s.hash.abs % 1000)
  end

  #-----------------------------------------------------------------------------
  # Apply spawned events to the current map's @events hash.
  # Called from the Game_Map#setup alias below.
  #-----------------------------------------------------------------------------
  def self.apply_to_map(game_map)
    return unless ENABLED
    map_data = MapEvents.for_map(game_map.map_id)
    return unless map_data

    map_data.events.each do |id, builder|
      target_id = id
      collision = game_map.events.key?(target_id)

      if collision
        case COLLISION_POLICY
        when :SKIP
          echoln "[MapEventsImport] SKIP — map #{game_map.map_id} event #{target_id} already exists in .rxdata" if DEBUG_MODE
          next
        when :REPLACE
          echoln "[MapEventsImport] REPLACE — map #{game_map.map_id} event #{target_id}" if DEBUG_MODE
        when :MERGE
          # Append spawn pages to existing event
          existing = game_map.events[target_id]
          if existing && existing.respond_to?(:event)
            new_pages = build_rpg_event(builder).pages
            existing.event.pages.concat(new_pages)
            echoln "[MapEventsImport] MERGE — appended #{new_pages.length} pages to map #{game_map.map_id} event #{target_id}" if DEBUG_MODE
          end
          next
        end
      end

      # Bump to SPAWN_ID_BASE range if no collision policy resolved
      if !collision && target_id < SPAWN_ID_BASE
        # Optional: respect the SPAWN_ID_BASE convention only for non-named events
        # For now, allow any ID
      end

      rpg_event = build_rpg_event(builder)
      rpg_event.id = target_id

      begin
        game_event = Game_Event.new(game_map.map_id, rpg_event)
        game_map.events[target_id] = game_event
        echoln "[MapEventsImport] SPAWNED map #{game_map.map_id} event #{target_id} (#{builder.name}) at (#{builder.x},#{builder.y})" if DEBUG_MODE
      rescue => e
        echoln "[MapEventsImport] ERROR spawning map #{game_map.map_id} event #{target_id}: #{e.message}"
      end
    end

    # Clear .rxdata events if this is a spawn-only map
    if SPAWN_ONLY_MAPS.include?(game_map.map_id)
      game_map.events.delete_if { |id, _| !map_data.events.key?(id) }
    end
  end
end


#===============================================================================
# Hook: Game_Map#setup
#===============================================================================
class Game_Map
  unless method_defined?(:_sc_map_events_import_orig_setup)
    alias_method :_sc_map_events_import_orig_setup, :setup
  end

  def setup(map_id)
    _sc_map_events_import_orig_setup(map_id)
    MapEventsImport.apply_to_map(self) if defined?(MapEventsImport)
  end
end


#===============================================================================
# Auto-load event manifests from EVENT_SCRIPTS_PATH
#===============================================================================
module MapEventsImport
  def self.load_all_manifests
    return unless ENABLED
    path = EVENT_SCRIPTS_PATH
    return unless Dir.exist?(path)

    count = 0
    Dir.glob("#{path}/**/*.rb").sort.each do |file|
      begin
        load file
        count += 1
      rescue => e
        echoln "[MapEventsImport] ERROR loading #{file}: #{e.message}"
      end
    end
    echoln "[MapEventsImport] Loaded #{count} event manifest(s)" if count > 0 && DEBUG_MODE
    count
  end
end

# Load manifests on game start
EventHandlers.add(:on_start_new_game, :sc_map_events_load,
  proc { MapEventsImport.load_all_manifests }
) if defined?(EventHandlers)

# Also on game-load to ensure manifests are present after a save reload
EventHandlers.add(:on_player_load, :sc_map_events_load_on_continue,
  proc { MapEventsImport.load_all_manifests }
) if defined?(EventHandlers)
