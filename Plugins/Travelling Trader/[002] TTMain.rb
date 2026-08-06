#===============================================================================
# Travelling Trader
# v1.0 by BoydALoyd
# Main logic for the Travelling Trader
#===============================================================================

module TravellingTrader

  #-----------------------------------------------------------------------------
  # Core enable/disable logic
  #-----------------------------------------------------------------------------

  def self.unlocked?
    return false if !$PokemonGlobal

    if $PokemonGlobal.trav_trader_unlocked.nil?
      $PokemonGlobal.trav_trader_unlocked = START_UNLOCKED
    end

    if UNLOCK_SWITCH && UNLOCK_SWITCH > 0 && $game_switches && $game_switches[UNLOCK_SWITCH]
      $PokemonGlobal.trav_trader_unlocked = true
    end

    return $PokemonGlobal.trav_trader_unlocked
  end

  def self.enabled?
    return false if !$PokemonGlobal
    return false if !unlocked?

    $PokemonGlobal.trav_trader_enabled = true if $PokemonGlobal.trav_trader_enabled.nil?
    return false if !$PokemonGlobal.trav_trader_enabled

    if DISABLE_SWITCH && DISABLE_SWITCH > 0 && $game_switches
      return false if $game_switches[DISABLE_SWITCH]
    end

    return true
  end

  def self.unlock
    return if !$PokemonGlobal

    $PokemonGlobal.trav_trader_unlocked = true
    $PokemonGlobal.trav_trader_enabled = true

    ensure_started
    ensure_timer
    $PokemonGlobal.trav_trader_last_frame_count = current_frame_count

    refresh_current_map
    pbMessage(_INTL("The Travelling Trader has been unlocked."))
  end

  def self.lock
    return if !$PokemonGlobal

    $PokemonGlobal.trav_trader_unlocked = false
    $PokemonGlobal.trav_trader_enabled = false
    $PokemonGlobal.trav_trader_ready_to_move = false
    $PokemonGlobal.trav_trader_pending_location = nil

    pause_timer
    refresh_current_map
    pbMessage(_INTL("The Travelling Trader has been locked."))
  end

  def self.enable
    return if !$PokemonGlobal

    if !unlocked?
      pbMessage(_INTL("The Travelling Trader has not been unlocked yet."))
      return
    end

    $PokemonGlobal.trav_trader_enabled = true
    ensure_started
    ensure_timer
    $PokemonGlobal.trav_trader_last_frame_count = current_frame_count

    refresh_current_map
    pbMessage(_INTL("The Travelling Trader has been enabled."))
  end

  def self.disable
    return if !$PokemonGlobal

    $PokemonGlobal.trav_trader_enabled = false
    pause_timer
    refresh_current_map
    pbMessage(_INTL("The Travelling Trader has been disabled."))
  end

  def self.pause_timer
    return if !$PokemonGlobal
    return if !$PokemonGlobal.trav_trader_last_frame_count
    $PokemonGlobal.trav_trader_last_frame_count = current_frame_count
  end

  #-----------------------------------------------------------------------------
  # Core location/timer logic
  #-----------------------------------------------------------------------------

  def self.current_frame_count
    return Graphics.frame_count
  end

  def self.current_frame_rate
    frame_rate = Graphics.frame_rate
    frame_rate = 40 if !frame_rate || frame_rate <= 0
    return frame_rate
  end

  def self.ensure_timer
    return if !$PokemonGlobal
    $PokemonGlobal.trav_trader_timer_seconds = INTERVAL_SECONDS if !$PokemonGlobal.trav_trader_timer_seconds
    $PokemonGlobal.trav_trader_last_frame_count = current_frame_count if !$PokemonGlobal.trav_trader_last_frame_count
  end

  def self.active_elapsed_seconds
    return 0 if !$PokemonGlobal

    current_frame = current_frame_count
    last_frame = $PokemonGlobal.trav_trader_last_frame_count

    $PokemonGlobal.trav_trader_last_frame_count = current_frame

    return 0 if !last_frame

    # This can happen after closing/reopening the game, because Graphics.frame_count
    # starts again from the beginning. In that case, don't advance the timer.
    return 0 if current_frame < last_frame

    elapsed_frames = current_frame - last_frame
    return elapsed_frames.to_f / current_frame_rate
  end

  def self.valid_locations
    return LOCATIONS.select { |loc| loc[:id] && loc[:map_id] }
  end

  def self.location(id)
    return nil if id.nil?
    return valid_locations.find { |loc| loc[:id] == id }
  end

  def self.ensure_started
    return if !$PokemonGlobal
    return if !unlocked?
    return if valid_locations.empty?

    if !location($PokemonGlobal.trav_trader_location)
      first_location = location(START_LOCATION)
      first_location = valid_locations.sample if !first_location

      $PokemonGlobal.trav_trader_location = first_location[:id]
      $PokemonGlobal.trav_trader_requested_location = nil

      echoln "Travelling Trader started at #{first_location[:name]} on map #{first_location[:map_id]}"
    end

    ensure_timer
  end

  def self.current_location
    return nil if !unlocked?
    ensure_started
    return nil if !$PokemonGlobal
    return location($PokemonGlobal.trav_trader_location)
  end

  def self.update!
    return if !$PokemonGlobal
    return if valid_locations.empty?

    if !unlocked?
      pause_timer
      return
    end

    if !enabled?
      pause_timer
      return
    end

    ensure_started
    ensure_timer

    # If the timer has already expired, move only when the current map is safe.
    if ready_to_move?
      try_scheduled_move!
      return
    end

    elapsed = active_elapsed_seconds
    return if elapsed <= 0

    $PokemonGlobal.trav_trader_timer_seconds -= elapsed

    if $PokemonGlobal.trav_trader_timer_seconds <= 0
      mark_ready_to_move!
      try_scheduled_move!
    end
  end

  def self.choose_next_location_id
    return nil if !$PokemonGlobal
    return nil if valid_locations.empty?

    current_id   = $PokemonGlobal.trav_trader_location
    requested_id = $PokemonGlobal.trav_trader_requested_location

    if requested_id && requested_id != current_id && location(requested_id)
      return requested_id
    end

    candidates = valid_locations.map { |loc| loc[:id] }
    candidates.delete(current_id)

    candidates = valid_locations.map { |loc| loc[:id] } if candidates.empty?

    return candidates.sample
  end

  def self.current_map_id
    return nil if !$game_map
    return $game_map.map_id
  end

  def self.location_map_id(location_id)
    loc = location(location_id)
    return nil if !loc
    return loc[:map_id]
  end

  def self.current_map_is_location?(location_id)
    map_id = current_map_id
    return false if !map_id

    loc_map_id = location_map_id(location_id)
    return false if !loc_map_id

    return map_id == loc_map_id
  end

  def self.movement_blocked_for_destination?(destination_id)
    # Don't let the trader vanish from, or appear on, the currently loaded map.
    return true if current_map_is_location?($PokemonGlobal.trav_trader_location)
    return true if current_map_is_location?(destination_id)

    return false
  end

  def self.apply_location_move!(destination_id)
    return false if !$PokemonGlobal
    return false if !location(destination_id)

    $PokemonGlobal.trav_trader_location = destination_id
    $PokemonGlobal.trav_trader_requested_location = nil
    $PokemonGlobal.trav_trader_pending_location = nil

    $PokemonGlobal.trav_trader_timer_seconds = INTERVAL_SECONDS
    $PokemonGlobal.trav_trader_last_frame_count = current_frame_count
    $PokemonGlobal.trav_trader_ready_to_move = false

    return true
  end

  def self.move_to_next_location!
    return false if !$PokemonGlobal
    return false if valid_locations.empty?

    destination_id = $PokemonGlobal.trav_trader_pending_location

    if !destination_id || !location(destination_id)
      destination_id = choose_next_location_id
      $PokemonGlobal.trav_trader_pending_location = destination_id
    end

    return false if !destination_id
    return false if !location(destination_id)

    if movement_blocked_for_destination?(destination_id)
      mark_ready_to_move!
      return false
    end

    return apply_location_move!(destination_id)
  end

  def self.refresh_current_map
    return if !$game_map
    $game_map.need_refresh = true
  end

  def self.active_here?
    return false if !enabled?

    loc = current_location
    return false if !loc
    return false if !$game_map

    return $game_map.map_id == loc[:map_id]
  end

  def self.seconds_remaining
    update!
    return 0 if !$PokemonGlobal

    ensure_timer

    remaining = $PokemonGlobal.trav_trader_timer_seconds || 0
    return [remaining.ceil, 0].max
  end

  def self.ready_to_move?
    return false if !$PokemonGlobal
    return $PokemonGlobal.trav_trader_ready_to_move == true
  end

  def self.current_map_is_trader_location?
    return false if !$PokemonGlobal
    return current_map_is_location?($PokemonGlobal.trav_trader_location)
  end

  def self.current_map_is_pending_location?
    return false if !$PokemonGlobal
    return current_map_is_location?($PokemonGlobal.trav_trader_pending_location)
  end

  def self.can_move_now?
    return false if !$PokemonGlobal

    destination_id = $PokemonGlobal.trav_trader_pending_location

    if !destination_id || !location(destination_id)
      destination_id = choose_next_location_id
      $PokemonGlobal.trav_trader_pending_location = destination_id
    end

    return false if !destination_id
    return false if movement_blocked_for_destination?(destination_id)

    return true
  end

  def self.mark_ready_to_move!
    return if !$PokemonGlobal

    $PokemonGlobal.trav_trader_ready_to_move = true
    $PokemonGlobal.trav_trader_timer_seconds = 0

    if !$PokemonGlobal.trav_trader_pending_location ||
       !location($PokemonGlobal.trav_trader_pending_location)
      $PokemonGlobal.trav_trader_pending_location = choose_next_location_id
    end
  end

  def self.try_scheduled_move!
    return false if !ready_to_move?
    return false if !can_move_now?

    moved = move_to_next_location!
    refresh_current_map if moved
    return moved
  end

  #-----------------------------------------------------------------------------
  # Player-requested next location
  #-----------------------------------------------------------------------------

  def self.request_location(id)
    update!

    if !enabled?
      pbMessage(_INTL("The Travelling Trader is not available right now."))
      return false
    end

    loc = location(id)
    if !loc
      pbMessage(_INTL("That location isn't available."))
      return false
    end

    if $PokemonGlobal.trav_trader_location == id
      pbMessage(_INTL("The travelling trader is already here."))
      return false
    end

    $PokemonGlobal.trav_trader_requested_location = id
    $PokemonGlobal.trav_trader_pending_location = id if ready_to_move?
    pbMessage(_INTL("Alright! I'll head to {1} next.", loc[:name]))
    return true
  end

  def self.choose_requested_location
    update!

    if !enabled?
      pbMessage(_INTL("The Travelling Trader is not available right now."))
      return
    end

    current_id = $PokemonGlobal.trav_trader_location
    choices = valid_locations.reject { |loc| loc[:id] == current_id }

    if choices.empty?
      pbMessage(_INTL("There aren't any other locations the travelling trader can move to yet."))
      return
    end

    commands = choices.map { |loc| loc[:name] }
    commands.push(_INTL("Cancel"))

    cmd = pbMessage(_INTL("Where should the travelling trader go next?"), commands, commands.length)
    return if cmd < 0
    return if cmd >= choices.length

    request_location(choices[cmd][:id])
  end

  #-----------------------------------------------------------------------------
  # Town Map marker helpers
  #-----------------------------------------------------------------------------

  def self.town_map_marker_location
    return nil if !SHOW_TOWN_MAP_MARKER
    return nil if !enabled?

    loc = current_location
    return nil if !loc
    return nil if !loc[:town_map_x]
    return nil if !loc[:town_map_y]

    return loc
  end

  def self.location_town_map_region(loc)
    return DEFAULT_TOWN_MAP_REGION if !loc
    return loc[:town_map_region] if loc.key?(:town_map_region)
    return DEFAULT_TOWN_MAP_REGION
  end

  def self.debug_town_map_marker
    loc = town_map_marker_location

    if !enabled?
      pbMessage(_INTL("The Travelling Trader is currently disabled."))
      return
    end

    if !loc
      pbMessage(_INTL("The Travelling Trader does not have valid Town Map marker coordinates."))
      return
    end

    region = location_town_map_region(loc)
    pbMessage(_INTL("Town Map marker: {1}, region {2}, x {3}, y {4}.",
                    loc[:name], region, loc[:town_map_x], loc[:town_map_y]))
  end

  #-----------------------------------------------------------------------------
  # Debug helpers
  #-----------------------------------------------------------------------------

  def self.debug_force_move
    if !unlocked?
      pbMessage(_INTL("Debug: The Travelling Trader has not been unlocked yet."))
      return
    end

    if !enabled?
      pbMessage(_INTL("Debug: The Travelling Trader is currently disabled."))
      return
    end

    ensure_started
    ensure_timer

    mark_ready_to_move!
    $PokemonGlobal.trav_trader_last_frame_count = current_frame_count

    if try_scheduled_move!
      loc = current_location
      place_name = loc ? loc[:name] : "an unknown location"
      pbMessage(_INTL("Debug: Timer expired. The Travelling Trader moved to {1}.", place_name))
    else
      pending_loc = location($PokemonGlobal.trav_trader_pending_location)
      pending_name = pending_loc ? pending_loc[:name] : "an unknown location"

      reason = "movement is currently blocked"
      reason = "the player is on the trader's current map" if current_map_is_trader_location?
      reason = "the player is on the queued destination map" if current_map_is_pending_location?

      pbMessage(_INTL("Debug: Timer expired. Movement has been queued."))
      pbMessage(_INTL("Queued destination: {1}. Reason: {2}.", pending_name, reason))
    end

    refresh_current_map
  end

  def self.debug_location
    ensure_started

    loc = current_location
    if !loc
      pbMessage(_INTL("Debug: The Travelling Trader does not currently have a valid location."))
      return
    end

    status = enabled? ? "enabled" : "disabled"
    move_status = ready_to_move? ? "ready to move" : "waiting"

    pending_loc = location($PokemonGlobal.trav_trader_pending_location)
    pending_text = pending_loc ? pending_loc[:name] : "none"

    pbMessage(_INTL("Debug: Location: {1}, map ID {2}.", loc[:name], loc[:map_id]))
    pbMessage(_INTL("Debug: Status: {1}. Movement: {2}. Queued destination: {3}.", status, move_status, pending_text))
  end

  def self.debug_reset
    return if !$PokemonGlobal

    $PokemonGlobal.trav_trader_location = nil
    $PokemonGlobal.trav_trader_requested_location = nil
    $PokemonGlobal.trav_trader_timer_seconds = nil
    $PokemonGlobal.trav_trader_last_frame_count = nil
    $PokemonGlobal.trav_trader_enabled = true
    $PokemonGlobal.trav_trader_unlocked = true
    $PokemonGlobal.trav_trader_ready_to_move = false
    $PokemonGlobal.trav_trader_pending_location = nil

    ensure_started
    refresh_current_map

    loc = current_location
    if loc
      pbMessage(_INTL("Debug reset complete. Current location: {1}.", loc[:name]))
    else
      pbMessage(_INTL("Debug reset complete, but no valid location could be found."))
    end
  end

  def self.debug_enable
    enable
  end

  def self.debug_disable
    disable
  end

  def self.debug_unlock
    unlock
  end

  def self.debug_lock
    lock
  end

  def self.debug_ready_to_move
    if ready_to_move?
      pending_loc = location($PokemonGlobal.trav_trader_pending_location)
      pending_text = pending_loc ? pending_loc[:name] : "none"

      pbMessage(_INTL("Debug: Movement is currently queued."))
      pbMessage(_INTL("Queued destination: {1}.", pending_text))
    else
      pbMessage(_INTL("Debug: Movement is not currently queued."))
    end
  end
end