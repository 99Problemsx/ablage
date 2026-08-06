#===============================================================================
# [SC] NPC Daily Schedules - Schedule Data
#===============================================================================
# Defines the NPCSchedule data model and DSL for creating schedules.
# NPCs can have time-based positions, visibility, directions, and behaviors.
#===============================================================================
#
# TABLE OF CONTENTS
# -----------------
# 1. NPCScheduleEntry       - Single time slot for an NPC
# 2. NPCScheduleData        - Registry of all NPC schedules
# 3. NPCScheduleBuilder     - DSL builder for defining schedules
# 4. PokemonGlobalMetadata   - Save data extension
#
#===============================================================================

#===============================================================================
# 1. NPCScheduleEntry - A single time slot in an NPC's daily routine
#===============================================================================
# Represents what an NPC does during a specific time range.
# Fields:
#   :hours     - Array of hours (0-23) this slot is active
#   :map_id    - Map the NPC should be on (nil = same map as defined)
#   :x, :y     - Tile position on the map (nil = don't move)
#   :direction - Facing direction: 2=down, 4=left, 6=right, 8=up (nil = keep)
#   :visible   - Whether the NPC is visible (default true)
#   :speed     - Movement speed override (nil = keep default)
#   :graphic   - Sprite override (nil = keep default)
#   :label     - Human-readable name for this slot (e.g. "at_market")
#   :self_switch - Self-switch to activate during this slot (nil = none)
#   :dialogue  - Override dialogue key (nil = use event default)
#   :route     - Array of move commands for patrol behavior (nil = stationary)
#   :condition - Optional proc that must return true for slot to be active
#===============================================================================
class NPCScheduleEntry
  attr_accessor :hours, :map_id, :x, :y, :direction, :visible, :speed
  attr_accessor :graphic, :label, :self_switch, :dialogue, :route, :condition

  def initialize
    @hours      = []
    @map_id     = nil
    @x          = nil
    @y          = nil
    @direction  = nil
    @visible    = true
    @speed      = nil
    @graphic    = nil
    @label      = nil
    @self_switch = nil
    @dialogue   = nil
    @route      = nil
    @condition  = nil
  end

  # Check if this entry is active at the given hour
  def active_at?(hour)
    return false if @hours.empty?
    return false unless @hours.include?(hour)
    return false if @condition && !@condition.call
    true
  end

  # Serialization for save data (exclude procs)
  def to_save_data
    {
      hours: @hours, map_id: @map_id, x: @x, y: @y,
      direction: @direction, visible: @visible, speed: @speed,
      graphic: @graphic, label: @label, self_switch: @self_switch,
      dialogue: @dialogue, route: @route
    }
  end
end

#===============================================================================
# 2. NPCScheduleData - Central registry of all NPC schedules
#===============================================================================
module NPCScheduleData
  @schedules = {}  # { schedule_id => { npc_key => [NPCScheduleEntry, ...] } }

  class << self
    attr_reader :schedules
  end

  #-----------------------------------------------------------------------------
  # Define a schedule for a specific NPC
  # npc_key format: [map_id, event_id] or a Symbol name
  #-----------------------------------------------------------------------------
  def self.define(npc_key, &block)
    builder = NPCScheduleBuilder.new(npc_key)
    yield(builder) if block_given?
    @schedules[npc_key] = builder.entries
  end

  #-----------------------------------------------------------------------------
  # Get all schedule entries for an NPC
  #-----------------------------------------------------------------------------
  def self.get(npc_key)
    @schedules[npc_key] || []
  end

  #-----------------------------------------------------------------------------
  # Get the currently active entry for an NPC
  #-----------------------------------------------------------------------------
  def self.active_entry(npc_key, hour = nil)
    hour ||= pbGetTimeNow.hour
    entries = get(npc_key)
    entries.each do |entry|
      return entry if entry.active_at?(hour)
    end
    nil
  end

  #-----------------------------------------------------------------------------
  # Get all NPCs that have schedules on a given map
  #-----------------------------------------------------------------------------
  def self.npcs_on_map(map_id)
    result = []
    @schedules.each do |npc_key, entries|
      next unless npc_key.is_a?(Array) && npc_key[0] == map_id
      result << npc_key
    end
    result
  end

  #-----------------------------------------------------------------------------
  # Get all NPC keys with any schedule entry targeting a given map at a given hour
  #-----------------------------------------------------------------------------
  def self.npcs_visiting_map(map_id, hour = nil)
    hour ||= pbGetTimeNow.hour
    result = []
    @schedules.each do |npc_key, entries|
      entries.each do |entry|
        if entry.active_at?(hour) && entry.map_id == map_id
          result << npc_key
          break
        end
      end
    end
    result
  end

  #-----------------------------------------------------------------------------
  # Check if any schedules are defined
  #-----------------------------------------------------------------------------
  def self.any?
    !@schedules.empty?
  end

  #-----------------------------------------------------------------------------
  # Clear all (for debug/testing)
  #-----------------------------------------------------------------------------
  def self.clear
    @schedules.clear
  end
end

#===============================================================================
# 3. NPCScheduleBuilder - DSL for building schedule entries
#===============================================================================
class NPCScheduleBuilder
  attr_reader :entries

  def initialize(npc_key)
    @npc_key = npc_key
    @entries = []
  end

  #-----------------------------------------------------------------------------
  # Add a time slot
  # Usage:
  #   slot :morning, hours: (6..11), x: 10, y: 5, direction: 2
  #   slot :night, hours: [20,21,22,23,0,1,2,3,4,5], visible: false
  #-----------------------------------------------------------------------------
  def slot(label = nil, **opts, &block)
    entry = NPCScheduleEntry.new
    entry.label = label

    # Handle hours - accept Range, Array, or preset symbols
    if opts[:hours]
      entry.hours = resolve_hours(opts[:hours])
    elsif opts[:time]
      entry.hours = resolve_time_preset(opts[:time])
    end

    entry.map_id     = opts[:map_id]     if opts.key?(:map_id)
    entry.x          = opts[:x]          if opts.key?(:x)
    entry.y          = opts[:y]          if opts.key?(:y)
    entry.direction  = opts[:direction]  if opts.key?(:direction)
    entry.visible    = opts[:visible]    if opts.key?(:visible)
    entry.speed      = opts[:speed]      if opts.key?(:speed)
    entry.graphic    = opts[:graphic]    if opts.key?(:graphic)
    entry.self_switch = opts[:self_switch] if opts.key?(:self_switch)
    entry.dialogue   = opts[:dialogue]   if opts.key?(:dialogue)
    entry.route      = opts[:route]      if opts.key?(:route)
    entry.condition  = block             if block_given?

    @entries << entry
  end

  #-----------------------------------------------------------------------------
  # Convenience: hidden slot (NPC not present during these hours)
  #-----------------------------------------------------------------------------
  def hidden(label = nil, **opts)
    slot(label, **opts.merge(visible: false))
  end

  #-----------------------------------------------------------------------------
  # Convenience presets for common time slots
  #-----------------------------------------------------------------------------
  def morning(**opts);   slot(:morning,   **opts.merge(hours: (5..11)));  end
  def afternoon(**opts); slot(:afternoon, **opts.merge(hours: (12..16))); end
  def evening(**opts);   slot(:evening,   **opts.merge(hours: (17..19))); end
  def night(**opts);     slot(:night,     **opts.merge(hours: [20,21,22,23,0,1,2,3,4])); end
  def daytime(**opts);   slot(:daytime,   **opts.merge(hours: (5..19)));  end
  def allday(**opts);    slot(:allday,    **opts.merge(hours: (0..23)));  end

  private

  def resolve_hours(val)
    case val
    when Range  then val.to_a
    when Array  then val
    when Integer then [val]
    else []
    end
  end

  def resolve_time_preset(sym)
    case sym
    when :morning   then (5..11).to_a
    when :afternoon then (12..16).to_a
    when :evening   then (17..19).to_a
    when :night     then [20, 21, 22, 23, 0, 1, 2, 3, 4]
    when :daytime   then (5..19).to_a
    when :allday    then (0..23).to_a
    else []
    end
  end
end

#===============================================================================
# 4. PokemonGlobalMetadata - Persistence for runtime schedule overrides
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :npc_schedule_overrides   # Runtime overrides: { npc_key => [entry_save_data] }
  attr_accessor :npc_schedule_locks       # Locked NPCs (won't follow schedules): { npc_key => true }
  attr_accessor :npc_last_applied_hour    # Last hour schedules were applied (avoid redundant updates)
end
