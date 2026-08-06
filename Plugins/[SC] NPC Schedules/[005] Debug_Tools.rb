#===============================================================================
# [SC] NPC Daily Schedules - Debug Tools
#===============================================================================
# Debug menu entries and hotkeys for testing NPC schedules in-game.
#===============================================================================
#
# TABLE OF CONTENTS
# -----------------
# 1. Debug Menu Integration   - Menu entries under Debug > NPC Schedules
# 2. Debug Overlay             - On-screen NPC schedule info
# 3. Time Override             - Simulate different hours for testing
#
#===============================================================================

module NPCScheduleDebug
  @overlay_visible = false
  @time_override = nil  # nil = use real time, Integer = forced hour
  @overlay_sprites = []

  class << self
    attr_accessor :overlay_visible, :time_override
  end

  #=============================================================================
  # 1. DEBUG MENU
  #=============================================================================
  def self.open_debug_menu
    commands = [
      "Show Schedule Info",
      "Toggle NPC Overlay",
      "Set Time Override",
      "Clear Time Override",
      "Force Refresh Schedules",
      "List All Scheduled NPCs",
      "Lock/Unlock NPC",
      "Simulate 24h Cycle"
    ]

    loop do
      cmd = pbMessage("\\ts[]NPC Schedule Debug", commands, -1)
      break if cmd < 0
      case cmd
      when 0 then show_schedule_info
      when 1 then toggle_overlay
      when 2 then set_time_override
      when 3 then clear_time_override
      when 4 then force_refresh
      when 5 then list_all_scheduled
      when 6 then lock_unlock_menu
      when 7 then simulate_cycle
      end
    end
  end

  #=============================================================================
  # Show current schedule state for all NPCs on this map
  #=============================================================================
  def self.show_schedule_info
    return unless $game_map
    hour = current_debug_hour
    map_id = $game_map.map_id
    lines = ["Map #{map_id} | Hour: #{hour}"]
    lines << "---"

    # DSL-defined schedules
    NPCScheduleData.npcs_on_map(map_id).each do |npc_key|
      entry = NPCScheduleData.active_entry(npc_key, hour)
      event = $game_map.events[npc_key[1]]
      name = event ? (event.name rescue "Event #{npc_key[1]}") : "Event #{npc_key[1]}"
      locked = NPCScheduleEngine.npc_locked?(npc_key) ? " [LOCKED]" : ""

      if entry
        vis = entry.visible == false ? "HIDDEN" : "visible"
        pos = (entry.x && entry.y) ? "(#{entry.x},#{entry.y})" : "(default)"
        lbl = entry.label ? " [#{entry.label}]" : ""
        lines << "#{name}#{locked}: #{vis} #{pos}#{lbl}"
      else
        lines << "#{name}#{locked}: no active slot"
      end
    end

    # Comment-parsed schedules
    comment_schedules = NPCScheduleCommentParser.scan_map_events
    comment_schedules.each do |event_id, entries|
      event = $game_map.events[event_id]
      name = event ? (event.name rescue "Event #{event_id}") : "Event #{event_id}"
      active = entries.find { |e| e.active_at?(hour) }
      if active
        vis = active.visible == false ? "HIDDEN" : "visible"
        pos = (active.x && active.y) ? "(#{active.x},#{active.y})" : "(default)"
        lbl = active.label ? " [#{active.label}]" : ""
        lines << "#{name} (comment): #{vis} #{pos}#{lbl}"
      else
        lines << "#{name} (comment): no active slot"
      end
    end

    if lines.length <= 2
      lines << "(no scheduled NPCs on this map)"
    end

    pbMessage(lines.join("\n"))
  end

  #=============================================================================
  # Toggle debug overlay showing NPC schedule icons
  #=============================================================================
  def self.toggle_overlay
    @overlay_visible = !@overlay_visible
    pbMessage("NPC Schedule overlay: #{@overlay_visible ? 'ON' : 'OFF'}")
  end

  #=============================================================================
  # Set a time override for testing
  #=============================================================================
  def self.set_time_override
    hour = pbMessageFreeText("Enter hour (0-23):", "", false, 2)
    return if hour.nil? || hour.empty?
    h = hour.to_i
    if h >= 0 && h <= 23
      @time_override = h
      # Monkey-patch pbGetTimeNow temporarily... actually, just force refresh
      NPCScheduleEngine.last_checked_hour = -1
      NPCScheduleEngine.apply_schedules_for_current_map(h)
      pbMessage("Time override set to hour #{h}. Schedules refreshed.")
    else
      pbMessage("Invalid hour. Must be 0-23.")
    end
  end

  def self.clear_time_override
    @time_override = nil
    NPCScheduleEngine.last_checked_hour = -1
    NPCScheduleEngine.update
    pbMessage("Time override cleared. Using real time.")
  end

  def self.current_debug_hour
    @time_override || pbGetTimeNow.hour
  end

  #=============================================================================
  # Force refresh all schedules
  #=============================================================================
  def self.force_refresh
    NPCScheduleEngine.last_checked_hour = -1
    NPCScheduleEngine.apply_schedules_for_current_map
    pbMessage("Schedules force-refreshed.")
  end

  #=============================================================================
  # List all registered NPC schedules (across all maps)
  #=============================================================================
  def self.list_all_scheduled
    if NPCScheduleData.schedules.empty?
      pbMessage("No NPC schedules registered via DSL.\nUse [Schedule] comments in events or pbDefineNPCSchedule.")
      return
    end

    lines = ["All Registered NPC Schedules:"]
    NPCScheduleData.schedules.each do |npc_key, entries|
      if npc_key.is_a?(Array)
        lines << "Map #{npc_key[0]}, Event #{npc_key[1]}: #{entries.length} slot(s)"
        entries.each do |e|
          hrs = e.hours.length > 6 ? "#{e.hours.first}-#{e.hours.last}" : e.hours.join(",")
          vis = e.visible == false ? "hidden" : "visible"
          lbl = e.label ? " (#{e.label})" : ""
          lines << "  Hours [#{hrs}] #{vis}#{lbl}"
        end
      else
        lines << "#{npc_key}: #{entries.length} slot(s)"
      end
    end

    pbMessage(lines.join("\n"))
  end

  #=============================================================================
  # Lock/Unlock NPC menu
  #=============================================================================
  def self.lock_unlock_menu
    return unless $game_map
    map_id = $game_map.map_id
    npcs = NPCScheduleData.npcs_on_map(map_id)

    # Also check comment-scheduled NPCs
    NPCScheduleCommentParser.scan_map_events.each_key do |eid|
      key = [map_id, eid]
      npcs << key unless npcs.include?(key)
    end

    if npcs.empty?
      pbMessage("No scheduled NPCs on this map.")
      return
    end

    names = npcs.map do |k|
      event = $game_map.events[k[1]]
      name = event ? (event.name rescue "Event #{k[1]}") : "Event #{k[1]}"
      locked = NPCScheduleEngine.npc_locked?(k) ? " [LOCKED]" : ""
      "#{name}#{locked}"
    end

    cmd = pbMessage("Select NPC:", names, -1)
    return if cmd < 0

    npc_key = npcs[cmd]
    if NPCScheduleEngine.npc_locked?(npc_key)
      NPCScheduleEngine.unlock_npc(npc_key)
      NPCScheduleEngine.apply_schedule_to_npc(npc_key)
      pbMessage("NPC unlocked. Schedule resumed.")
    else
      NPCScheduleEngine.lock_npc(npc_key)
      pbMessage("NPC locked. Schedule paused.")
    end
  end

  #=============================================================================
  # Simulate a 24-hour cycle (fast-forward through all hours)
  #=============================================================================
  def self.simulate_cycle
    pbMessage("Simulating 24h cycle... Watch NPC positions change.")
    (0..23).each do |h|
      NPCScheduleEngine.apply_schedules_for_current_map(h)
      # Brief pause to see each hour
      Graphics.update
      pbWait(15)  # ~0.25 seconds per hour
    end
    # Restore to current hour
    NPCScheduleEngine.last_checked_hour = -1
    NPCScheduleEngine.apply_schedules_for_current_map
    pbMessage("24h simulation complete.")
  end
end

#===============================================================================
# HOOK: Override engine's hour check to use debug override
#===============================================================================
module NPCScheduleEngine
  class << self
    alias_method :_original_update, :update

    def update
      return unless $game_map && $PokemonGlobal
      return unless NPCScheduleData.any? || has_comment_schedules?

      # Use debug hour override if set
      current_hour = NPCScheduleDebug.time_override || pbGetTimeNow.hour

      if current_hour != @last_checked_hour
        apply_schedules_for_current_map(current_hour)
        @last_checked_hour = current_hour
        $PokemonGlobal.npc_last_applied_hour = current_hour
      end

      update_patrol_routes
    end
  end

  def self.has_comment_schedules?
    return false unless $game_map
    $game_map.events.each_value do |event|
      return true if event_has_schedule_comment?(event)
    end
    false
  end
end

#===============================================================================
# DEBUG MENU REGISTRATION
#===============================================================================
# Add to Essentials debug menu if it exists
if defined?(MenuHandlers)
  MenuHandlers.add(:debug_menu, :npc_schedules, {
    "name"        => "NPC Schedules",
    "parent"      => :main,
    "description" => "Debug NPC daily schedule positions and visibility.",
    "effect"      => proc { |sprites, viewport|
      NPCScheduleDebug.open_debug_menu
    }
  })
end
