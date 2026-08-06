#===============================================================================
# [SC] NPC Daily Schedules - Event Comment Parser
#===============================================================================
# Parses [Schedule ...] tags from event comments to define NPC schedules
# directly in RPG Maker without writing Ruby code.
#===============================================================================
#
# TABLE OF CONTENTS
# -----------------
# 1. Comment Parser Module    - Scans events for [Schedule] tags
# 2. Tag Syntax Reference     - Supported comment formats
# 3. Engine Integration       - Hooks into NPCScheduleEngine
#
#===============================================================================
#
# COMMENT TAG SYNTAX:
# -------------------
# Place these as Comments (event command) on any event page:
#
# Single-line format:
#   [Schedule morning x:10 y:5 dir:down]
#   [Schedule night hidden]
#   [Schedule evening x:3 y:8 dir:left switch:B]
#   [Schedule 8-17 x:10 y:5 dir:right]
#   [Schedule allday x:5 y:5]
#
# Time presets: morning, afternoon, evening, night, daytime, allday
# Custom hours: 8-17 (range), 8,12,18 (list)
#
# Properties:
#   x:N y:N       - Position on map
#   dir:DIRECTION  - down/left/right/up (or 2/4/6/8)
#   hidden         - NPC is invisible
#   switch:X       - Activate self-switch (A/B/C/D)
#   speed:N        - Movement speed (1-6)
#   graphic:NAME   - Sprite filename override
#   patrol:DIRS    - Patrol route (e.g. patrol:down,down,right,right,up,up,left,left)
#
#===============================================================================

module NPCScheduleCommentParser
  # Time preset mappings
  TIME_PRESETS = {
    "morning"   => (5..11).to_a,
    "afternoon" => (12..16).to_a,
    "evening"   => (17..19).to_a,
    "night"     => [20, 21, 22, 23, 0, 1, 2, 3, 4],
    "daytime"   => (5..19).to_a,
    "allday"    => (0..23).to_a
  }.freeze

  # Direction name mappings
  DIRECTIONS = {
    "down" => 2, "left" => 4, "right" => 6, "up" => 8,
    "2" => 2, "4" => 4, "6" => 6, "8" => 8
  }.freeze

  # Patrol command mappings
  PATROL_COMMANDS = {
    "down" => :down, "up" => :up, "left" => :left, "right" => :right,
    "random" => :random, "toward" => :toward, "away" => :away,
    "wait" => :wait, "turn_down" => :turn_down, "turn_up" => :turn_up,
    "turn_left" => :turn_left, "turn_right" => :turn_right
  }.freeze

  #=============================================================================
  # 1. SCAN ALL EVENTS ON CURRENT MAP
  #=============================================================================
  def self.scan_map_events
    return {} unless $game_map
    schedules = {}  # { event_id => [NPCScheduleEntry, ...] }

    $game_map.events.each_value do |event|
      entries = scan_event(event)
      next if entries.empty?
      schedules[event.id] = entries
    end

    schedules
  end

  #=============================================================================
  # 2. SCAN A SINGLE EVENT FOR SCHEDULE COMMENTS
  #=============================================================================
  def self.scan_event(event)
    entries = []
    rpg_event = event.instance_variable_get(:@event) rescue nil
    return entries unless rpg_event&.pages

    rpg_event.pages.each do |page|
      next unless page&.list
      page.list.each do |cmd|
        next if cmd.code != 108 && cmd.code != 408
        line = cmd.parameters[0].to_s.strip
        next unless line =~ /\[Schedule\s+(.*?)\]/i
        entry = parse_schedule_tag($1.strip)
        entries << entry if entry
      end
      break  # Only check first page
    end

    entries
  end

  #=============================================================================
  # 3. PARSE A SINGLE SCHEDULE TAG
  #=============================================================================
  def self.parse_schedule_tag(tag_content)
    entry = NPCScheduleEntry.new
    tokens = tokenize(tag_content)
    return nil if tokens.empty?

    # First token is always the time specification
    time_token = tokens.shift
    entry.hours = parse_time(time_token)
    return nil if entry.hours.empty?

    # Parse remaining key:value pairs and flags
    tokens.each do |token|
      case token.downcase
      when "hidden"
        entry.visible = false
      when /\Ax:(-?\d+)\z/i
        entry.x = $1.to_i
      when /\Ay:(-?\d+)\z/i
        entry.y = $1.to_i
      when /\Adir:(\w+)\z/i
        dir = DIRECTIONS[$1.downcase]
        entry.direction = dir if dir
      when /\Aswitch:([A-Da-d])\z/i
        entry.self_switch = $1.upcase
      when /\Aspeed:([1-6])\z/i
        entry.speed = $1.to_i
      when /\Agraphic:(\S+)\z/i
        entry.graphic = $1
      when /\Apatrol:([\w,]+)\z/i
        entry.route = parse_patrol($1)
      end
    end

    # Label from time preset if available
    entry.label = time_token.downcase if TIME_PRESETS.key?(time_token.downcase)

    entry
  end

  #=============================================================================
  # 4. TOKEN HELPERS
  #=============================================================================

  # Split tag content into tokens, respecting spaces
  def self.tokenize(str)
    str.split(/\s+/).reject(&:empty?)
  end

  # Parse time specification
  def self.parse_time(token)
    t = token.downcase
    # Check presets
    return TIME_PRESETS[t].dup if TIME_PRESETS.key?(t)

    # Check range: "8-17"
    if t =~ /\A(\d{1,2})-(\d{1,2})\z/
      start_h = $1.to_i
      end_h = $2.to_i
      if start_h <= end_h
        return (start_h..end_h).to_a
      else
        # Wrap around midnight: 22-4 => [22,23,0,1,2,3,4]
        return ((start_h..23).to_a + (0..end_h).to_a)
      end
    end

    # Check comma list: "8,12,18"
    if t =~ /\A\d{1,2}(,\d{1,2})+\z/
      return t.split(",").map(&:to_i).select { |h| h >= 0 && h <= 23 }
    end

    # Single hour: "14"
    if t =~ /\A(\d{1,2})\z/
      h = $1.to_i
      return [h] if h >= 0 && h <= 23
    end

    []
  end

  # Parse patrol route string
  def self.parse_patrol(str)
    str.split(",").map { |s| PATROL_COMMANDS[s.strip.downcase] }.compact
  end
end

#===============================================================================
# OVERRIDE: Hook comment parser into the engine
#===============================================================================
module NPCScheduleEngine
  def self.process_comment_schedules(hour)
    return unless $game_map
    comment_schedules = NPCScheduleCommentParser.scan_map_events

    comment_schedules.each do |event_id, entries|
      npc_key = [$game_map.map_id, event_id]
      next if npc_locked?(npc_key)

      event = $game_map.events[event_id]
      next unless event

      # Save defaults if not already saved
      save_event_defaults(event)

      # Find active entry for current hour
      active = nil
      entries.each do |entry|
        if entry.active_at?(hour)
          active = entry
          break
        end
      end

      apply_entry_to_event(event, active, npc_key)
    end
  end
end
