#===============================================================================
# [SC] NPC Daily Schedules - Script Helpers
#===============================================================================
# Convenience methods for event scripts and cutscenes.
# All methods prefixed with pb* for Essentials convention.
#===============================================================================
#
# TABLE OF CONTENTS
# -----------------
# 1. Schedule Management      - Define/modify schedules at runtime
# 2. NPC Queries              - Ask where an NPC is / what they're doing
# 3. Lock System              - Story overrides to freeze NPC positions
# 4. Time Helpers              - Quick time checks for event conditions
# 5. Debug Commands            - In-game debugging tools
#
#===============================================================================

#===============================================================================
# 1. SCHEDULE MANAGEMENT
#===============================================================================

# Define a schedule for an NPC using Ruby DSL
# Usage in event script:
#   pbDefineNPCSchedule(5) do |s|
#     s.morning  x: 10, y: 5, direction: 2
#     s.afternoon x: 3, y: 8, direction: 4
#     s.night visible: false
#   end
def pbDefineNPCSchedule(event_id, map_id = nil, &block)
  map_id ||= $game_map.map_id
  npc_key = [map_id, event_id]
  NPCScheduleData.define(npc_key, &block)
  # Immediately apply if on the same map
  if $game_map && $game_map.map_id == map_id
    NPCScheduleEngine.apply_schedule_to_npc(npc_key)
  end
end

# Remove all schedules for an NPC
def pbClearNPCSchedule(event_id, map_id = nil)
  map_id ||= $game_map.map_id
  npc_key = [map_id, event_id]
  NPCScheduleData.schedules.delete(npc_key)
  # Restore defaults
  if $game_map && $game_map.map_id == map_id
    event = $game_map.events[event_id]
    NPCScheduleEngine.restore_event_defaults(event, npc_key) if event
  end
end

# Force-refresh all NPC schedules on current map
def pbRefreshNPCSchedules
  NPCScheduleEngine.apply_schedules_for_current_map
end

#===============================================================================
# 2. NPC QUERIES
#===============================================================================

# Get the active schedule entry for an NPC (returns NPCScheduleEntry or nil)
def pbGetNPCSchedule(event_id, map_id = nil)
  map_id ||= $game_map.map_id
  npc_key = [map_id, event_id]
  NPCScheduleData.active_entry(npc_key)
end

# Check if an NPC is currently visible according to their schedule
def pbNPCVisible?(event_id, map_id = nil)
  entry = pbGetNPCSchedule(event_id, map_id)
  return true unless entry  # No schedule = always visible
  entry.visible != false
end

# Check if an NPC is at a specific location according to their schedule
def pbNPCAt?(event_id, x, y, map_id = nil)
  entry = pbGetNPCSchedule(event_id, map_id)
  return false unless entry
  entry.x == x && entry.y == y
end

# Get the label of an NPC's current schedule slot
def pbNPCActivity(event_id, map_id = nil)
  entry = pbGetNPCSchedule(event_id, map_id)
  return nil unless entry
  entry.label&.to_s
end

# Check if an NPC has any schedule defined
def pbNPCHasSchedule?(event_id, map_id = nil)
  map_id ||= $game_map.map_id
  npc_key = [map_id, event_id]
  !NPCScheduleData.get(npc_key).empty?
end

#===============================================================================
# 3. LOCK SYSTEM - Story overrides
#===============================================================================

# Lock an NPC in place (schedule won't apply until unlocked)
# Use during story events where an NPC must stay put
def pbLockNPCSchedule(event_id, map_id = nil)
  map_id ||= $game_map.map_id
  NPCScheduleEngine.lock_npc([map_id, event_id])
end

# Unlock an NPC to resume their schedule
def pbUnlockNPCSchedule(event_id, map_id = nil)
  map_id ||= $game_map.map_id
  npc_key = [map_id, event_id]
  NPCScheduleEngine.unlock_npc(npc_key)
  # Re-apply schedule immediately
  NPCScheduleEngine.apply_schedule_to_npc(npc_key)
end

# Check if an NPC is locked
def pbNPCScheduleLocked?(event_id, map_id = nil)
  map_id ||= $game_map.map_id
  NPCScheduleEngine.npc_locked?([map_id, event_id])
end

#===============================================================================
# 4. TIME HELPERS - For event conditional branches
#===============================================================================

# Get current hour (0-23)
def pbCurrentHour
  pbGetTimeNow.hour
end

# Check if current hour is within a range
def pbHourBetween?(start_hour, end_hour)
  h = pbGetTimeNow.hour
  if start_hour <= end_hour
    h >= start_hour && h <= end_hour
  else
    # Wrap around midnight
    h >= start_hour || h <= end_hour
  end
end

# Check specific time of day
def pbIsWorkHours?
  pbHourBetween?(9, 17)
end

def pbIsLateNight?
  pbHourBetween?(23, 4)
end

def pbIsDawn?
  pbHourBetween?(5, 6)
end

def pbIsDusk?
  pbHourBetween?(18, 19)
end
