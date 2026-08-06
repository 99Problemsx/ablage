#===============================================================================
# [SC] NPC Daily Schedules - Schedule Engine
#===============================================================================
# Core engine that applies schedules to NPCs based on time of day.
# Hooks into map entry and frame updates to keep NPCs in sync.
#===============================================================================
#
# TABLE OF CONTENTS
# -----------------
# 1. NPCScheduleEngine       - Main engine module
# 2. Event Hooks              - Map entry/exit/frame update hooks
# 3. Map Transfer Handling    - Cross-map NPC appearance
#
#===============================================================================

module NPCScheduleEngine
  # Throttle: only re-check schedules when the hour changes
  @last_checked_hour = -1
  @initialized = false
  # SC FIX (review C4): per-frame throttle for the patrol updater. The hot
  # path used to call pbGetTimeNow.hour (Time allocation) every frame — at
  # 60 fps that's 60 Time objects/sec of GC pressure.
  @frame_skip = 0
  PATROL_FRAME_INTERVAL = 6  # process patrols ~10× per second instead of 60

  class << self
    attr_accessor :last_checked_hour, :initialized, :frame_skip
  end

  #=============================================================================
  # 1. MAIN UPDATE - Called each frame (throttled to hour changes)
  #=============================================================================
  def self.update
    return unless $game_map && $PokemonGlobal
    return unless NPCScheduleData.any?

    # Throttle expensive work to every Nth frame
    @frame_skip += 1
    return if @frame_skip < PATROL_FRAME_INTERVAL
    @frame_skip = 0

    current_hour = pbGetTimeNow.hour

    # Only do a full refresh when the hour changes
    if current_hour != @last_checked_hour
      apply_schedules_for_current_map(current_hour)
      @last_checked_hour = current_hour
      $PokemonGlobal.npc_last_applied_hour = current_hour
    end

    # Update patrol routes (now also throttled)
    update_patrol_routes(current_hour)
  end

  #=============================================================================
  # 2. APPLY SCHEDULES - Process all scheduled NPCs on current map
  #=============================================================================
  def self.apply_schedules_for_current_map(hour = nil)
    return unless $game_map
    hour ||= pbGetTimeNow.hour
    map_id = $game_map.map_id

    # Process NPCs whose "home map" is this map
    NPCScheduleData.npcs_on_map(map_id).each do |npc_key|
      apply_schedule_to_npc(npc_key, hour)
    end

    # Process NPCs registered via event comments on this map
    process_comment_schedules(hour)
  end

  #=============================================================================
  # 3. APPLY SCHEDULE TO SINGLE NPC
  #=============================================================================
  def self.apply_schedule_to_npc(npc_key, hour = nil)
    return unless $game_map
    hour ||= pbGetTimeNow.hour

    # Check if NPC is locked (story override)
    if npc_locked?(npc_key)
      return
    end

    entry = NPCScheduleData.active_entry(npc_key, hour)
    event_id = npc_key.is_a?(Array) ? npc_key[1] : nil
    return unless event_id

    event = $game_map.events[event_id]
    return unless event

    apply_entry_to_event(event, entry, npc_key)
  end

  #=============================================================================
  # 4. APPLY ENTRY TO EVENT - The actual NPC state changes
  #=============================================================================
  def self.apply_entry_to_event(event, entry, npc_key = nil)
    if entry.nil?
      # No active schedule slot — use default state (visible, original position)
      restore_event_defaults(event, npc_key)
      return
    end

    # Visibility
    if entry.visible == false
      event.transparent = true
      event.through = true
    else
      event.transparent = false
      event.through = false
    end

    # Position (only if on same map and position specified)
    if entry.x && entry.y
      # Only move if not already at target position
      if event.x != entry.x || event.y != entry.y
        event.moveto(entry.x, entry.y)
      end
    end

    # Direction
    if entry.direction
      dir = entry.direction
      # Validate direction
      if [2, 4, 6, 8].include?(dir)
        event.turn_generic(dir)
      end
    end

    # Speed override
    if entry.speed
      event.move_speed = entry.speed
    end

    # Graphic override
    if entry.graphic
      event.character_name = entry.graphic
    end

    # Self-switch management
    apply_self_switches(event, entry, npc_key)
  end

  #=============================================================================
  # 5. SELF-SWITCH MANAGEMENT
  #=============================================================================
  def self.apply_self_switches(event, entry, npc_key)
    return unless npc_key.is_a?(Array)
    map_id = npc_key[0]
    event_id = npc_key[1]

    # Clear any previously set schedule self-switches
    prev = get_schedule_state(npc_key, :active_self_switch)
    if prev && prev != entry.self_switch
      key = [map_id, event_id, prev]
      $game_self_switches[key] = false
    end

    # Set the new self-switch if specified
    if entry.self_switch
      key = [map_id, event_id, entry.self_switch]
      $game_self_switches[key] = true
      set_schedule_state(npc_key, :active_self_switch, entry.self_switch)
    else
      set_schedule_state(npc_key, :active_self_switch, nil)
    end

    $game_map.need_refresh = true
  end

  #=============================================================================
  # 6. PATROL ROUTE SYSTEM
  #=============================================================================
  @patrol_states = {}  # { npc_key => { index: 0, wait: 0 } }

  def self.update_patrol_routes(hour = nil)
    return unless $game_map
    hour ||= pbGetTimeNow.hour    # SC FIX (review C4): receive hour from caller to avoid double Time-alloc
    map_id = $game_map.map_id

    # SC FIX (review C4): early-out before the per-NPC loop when nothing on
    # this map is patrolling — avoids the loop allocation overhead entirely.
    npcs = NPCScheduleData.npcs_on_map(map_id)
    return if npcs.empty?

    npcs.each do |npc_key|
      next if npc_locked?(npc_key)
      entry = NPCScheduleData.active_entry(npc_key, hour)
      next unless entry && entry.route && entry.visible != false

      event_id = npc_key[1]
      event = $game_map.events[event_id]
      next unless event
      next if event.moving?

      state = @patrol_states[npc_key] ||= { index: 0, wait: 0 }

      # Wait between moves
      if state[:wait] > 0
        state[:wait] -= 1
        next
      end

      route = entry.route
      cmd = route[state[:index]]
      execute_patrol_command(event, cmd)

      state[:index] = (state[:index] + 1) % route.length
      state[:wait] = 20  # ~0.33 seconds at 60fps between moves
    end
  end

  def self.execute_patrol_command(event, cmd)
    case cmd
    when :down       then event.move_down
    when :up         then event.move_up
    when :left       then event.move_left
    when :right      then event.move_right
    when :random     then event.move_random
    when :toward     then event.move_toward_player
    when :away       then event.move_away_from_player
    when :wait       then nil  # Just skip (wait handled by state[:wait])
    when :turn_down  then event.turn_generic(2)
    when :turn_left  then event.turn_generic(4)
    when :turn_right then event.turn_generic(6)
    when :turn_up    then event.turn_generic(8)
    end
  end

  #=============================================================================
  # 7. EVENT DEFAULT RESTORATION
  #=============================================================================
  @event_defaults = {}  # { [map_id, event_id] => { x:, y:, direction:, ... } }

  def self.save_event_defaults(event)
    key = [$game_map.map_id, event.id]
    return if @event_defaults[key]  # Only save once per map load
    @event_defaults[key] = {
      x: event.x, y: event.y,
      direction: event.direction,
      transparent: event.transparent,
      through: event.through,
      character_name: event.character_name,
      move_speed: event.move_speed
    }
  end

  def self.restore_event_defaults(event, npc_key = nil)
    key = [$game_map.map_id, event.id]
    defaults = @event_defaults[key]
    return unless defaults

    event.transparent = defaults[:transparent]
    event.through = defaults[:through]
    if event.x != defaults[:x] || event.y != defaults[:y]
      event.moveto(defaults[:x], defaults[:y])
    end
    event.turn_generic(defaults[:direction]) if defaults[:direction]
    event.character_name = defaults[:character_name] if defaults[:character_name]
    event.move_speed = defaults[:move_speed] if defaults[:move_speed]

    # Clear any schedule self-switches
    if npc_key.is_a?(Array)
      prev = get_schedule_state(npc_key, :active_self_switch)
      if prev
        ss_key = [npc_key[0], npc_key[1], prev]
        $game_self_switches[ss_key] = false
        set_schedule_state(npc_key, :active_self_switch, nil)
        $game_map.need_refresh = true
      end
    end
  end

  #=============================================================================
  # 8. SCHEDULE STATE TRACKING (per-session, not saved)
  #=============================================================================
  @schedule_states = {}  # { npc_key => { field => value } }

  def self.get_schedule_state(npc_key, field)
    return nil unless @schedule_states[npc_key]
    @schedule_states[npc_key][field]
  end

  def self.set_schedule_state(npc_key, field, value)
    @schedule_states[npc_key] ||= {}
    @schedule_states[npc_key][field] = value
  end

  #=============================================================================
  # 9. NPC LOCK SYSTEM - Prevent schedule from applying (story overrides)
  #=============================================================================
  def self.lock_npc(npc_key)
    $PokemonGlobal.npc_schedule_locks ||= {}
    $PokemonGlobal.npc_schedule_locks[npc_key] = true
  end

  def self.unlock_npc(npc_key)
    return unless $PokemonGlobal.npc_schedule_locks
    $PokemonGlobal.npc_schedule_locks.delete(npc_key)
  end

  def self.npc_locked?(npc_key)
    return false unless $PokemonGlobal&.npc_schedule_locks
    $PokemonGlobal.npc_schedule_locks[npc_key] == true
  end

  #=============================================================================
  # 10. RESET / CLEANUP
  #=============================================================================
  def self.on_map_enter
    @event_defaults.clear
    @patrol_states.clear
    @last_checked_hour = -1

    return unless $game_map && NPCScheduleData.any?

    # Save defaults for all scheduled events on this map
    map_id = $game_map.map_id
    NPCScheduleData.npcs_on_map(map_id).each do |npc_key|
      event_id = npc_key[1]
      event = $game_map.events[event_id]
      save_event_defaults(event) if event
    end

    # Also save defaults for comment-tagged events
    $game_map.events.each_value do |event|
      if event_has_schedule_comment?(event)
        save_event_defaults(event)
      end
    end

    # Apply schedules immediately
    apply_schedules_for_current_map
  end

  def self.on_map_leave
    @event_defaults.clear
    @patrol_states.clear
  end

  #=============================================================================
  # 11. COMMENT SCHEDULE DETECTION (helper for engine)
  #=============================================================================
  def self.event_has_schedule_comment?(event)
    rpg_event = event.instance_variable_get(:@event) rescue nil
    return false unless rpg_event&.pages
    rpg_event.pages.each do |page|
      next unless page&.list
      page.list.each do |cmd|
        next if cmd.code != 108 && cmd.code != 408
        return true if cmd.parameters[0].to_s.strip =~ /\[Schedule\b/i
      end
    end
    false
  end

  # Placeholder — implemented in Comment Parser file
  def self.process_comment_schedules(hour)
    # Implemented in [003] Comment_Parser.rb
  end
end

#===============================================================================
# EVENT HOOKS
#===============================================================================

# On entering a new map — initialize and apply schedules
EventHandlers.add(:on_enter_map, :npc_schedules_enter,
  proc { |old_map_id|
    NPCScheduleEngine.on_map_enter
  }
)

# On leaving a map — cleanup
EventHandlers.add(:on_leave_map, :npc_schedules_leave,
  proc { |new_map_id, new_map|
    NPCScheduleEngine.on_map_leave
  }
)

# Frame update — check for hour changes and update patrols
EventHandlers.add(:on_frame_update, :npc_schedules_update,
  proc {
    NPCScheduleEngine.update
  }
)
