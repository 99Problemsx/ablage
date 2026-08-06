#===============================================================================
# [SC] Time Travel - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class TimeTravelSaveData
  attr_accessor :current_era           # :PRESENT or :PAST
  attr_accessor :unlocked_locations    # Set of present_map_ids that are travel-enabled
  attr_accessor :past_switch_states    # Snapshot of switches for the past timeline
  attr_accessor :present_switch_states # Snapshot of switches for the present timeline
  attr_accessor :times_traveled        # Total jumps

  def initialize
    @current_era           = TimeTravelSystem::ERA_PRESENT
    @unlocked_locations    = []
    @past_switch_states    = {}
    @present_switch_states = {}
    @times_traveled        = 0
  end

  def in_past?
    @current_era == TimeTravelSystem::ERA_PAST
  end

  def in_present?
    @current_era == TimeTravelSystem::ERA_PRESENT
  end

  def location_unlocked?(present_map_id)
    @unlocked_locations.include?(present_map_id)
  end

  def unlock_location(present_map_id)
    return if @unlocked_locations.include?(present_map_id)
    @unlocked_locations.push(present_map_id)
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :time_travel_data

  def time_travel_data
    @time_travel_data ||= TimeTravelSaveData.new
  end
end

SaveData.register(:time_travel_data) do
  save_value { $PokemonGlobal.time_travel_data }
  load_value { |val| $PokemonGlobal.time_travel_data = val }
  new_game_value { TimeTravelSaveData.new }
end

#===============================================================================
# Time Travel Manager
#===============================================================================

module TimeTravelManager
  def self.data
    $PokemonGlobal.time_travel_data
  end

  #=============================================================================
  # Get the map pair config for a given present-day map ID
  #=============================================================================

  def self.pair_for_present(present_map_id)
    TimeTravelSystem::MAP_PAIRS[present_map_id]
  end

  # Reverse lookup: find the present map ID for a given past map ID
  def self.present_for_past(past_map_id)
    TimeTravelSystem::MAP_PAIRS.each do |present_id, config|
      return present_id if config[:past_map] == past_map_id
    end
    nil
  end

  #=============================================================================
  # Can we travel from the current map?
  #=============================================================================

  def self.can_travel?
    return false unless TimeTravelSystem::ENABLED
    map_id = $game_map.map_id

    if data.in_present?
      pair = pair_for_present(map_id)
      return false unless pair
      return false unless data.location_unlocked?(map_id)
      return false if pair[:badge_req] && $player.badge_count < pair[:badge_req]
    else
      present_id = present_for_past(map_id)
      return false unless present_id
    end

    true
  end

  #=============================================================================
  # Perform the time travel jump
  #=============================================================================

  def self.travel!
    return unless can_travel?

    map_id = $game_map.map_id

    if data.in_present?
      travel_to_past(map_id)
    else
      present_id = present_for_past(map_id)
      travel_to_present(present_id) if present_id
    end
  end

  #=============================================================================
  # Travel to Past
  #=============================================================================

  def self.travel_to_past(present_map_id)
    pair = pair_for_present(present_map_id)
    return unless pair

    # Save present switch states
    save_timeline_state(:PRESENT)

    # Transition effect
    play_transition

    era_name = TimeTravelSystem::ERA_NAMES[TimeTravelSystem::ERA_PAST]
    pbMessage(_INTL("The Yggdrasil root pulses... Time shifts around you."))
    pbMessage(_INTL("You arrive in the {1}.", era_name))

    # Transfer to past map
    data.current_era = TimeTravelSystem::ERA_PAST
    data.times_traveled += 1

    # Transfer player
    x = $game_player.x
    y = $game_player.y
    $game_temp.player_transferring   = true
    $game_temp.player_new_map_id     = pair[:past_map]
    $game_temp.player_new_x          = x
    $game_temp.player_new_y          = y
    $game_temp.player_new_direction   = $game_player.direction

    # Restore past switch states
    restore_timeline_state(:PAST)

    # Apply past screen tone
    $game_screen.start_tone_change(TimeTravelSystem::SCREEN_TONE_PAST, 20)

    # Fog of War integration
    if defined?(FogOfWarManager)
      FogOfWarManager.reveal_location(pair[:past_map])
    end

    # Memory Lane integration
    if defined?(MemoryLaneManager)
      MemoryLaneManager.add_milestone("Traveled to the #{era_name}")
    end

    # Codex integration
    codexDiscover(:"TIMETRAVEL_PAST_#{present_map_id}") if defined?(codexDiscover)
  end

  #=============================================================================
  # Travel to Present
  #=============================================================================

  def self.travel_to_present(present_map_id)
    # Save past switch states
    save_timeline_state(:PAST)

    # Transition effect
    play_transition

    era_name = TimeTravelSystem::ERA_NAMES[TimeTravelSystem::ERA_PRESENT]
    pbMessage(_INTL("The Yggdrasil root pulses... You return to your own time."))
    pbMessage(_INTL("You arrive in the {1}.", era_name))

    # Transfer to present map
    data.current_era = TimeTravelSystem::ERA_PRESENT
    data.times_traveled += 1

    x = $game_player.x
    y = $game_player.y
    $game_temp.player_transferring   = true
    $game_temp.player_new_map_id     = present_map_id
    $game_temp.player_new_x          = x
    $game_temp.player_new_y          = y
    $game_temp.player_new_direction   = $game_player.direction

    # Restore present switch states
    restore_timeline_state(:PRESENT)

    # Normal screen tone
    $game_screen.start_tone_change(TimeTravelSystem::SCREEN_TONE_PRESENT, 20)

    # Fog of War integration
    if defined?(FogOfWarManager)
      FogOfWarManager.reveal_location(present_map_id)
    end
  end

  #=============================================================================
  # Timeline State Management
  # Saves and restores non-shared switches/variables per era
  #=============================================================================

  def self.save_timeline_state(era)
    snapshot = {}
    (1..5000).each do |i|
      next if TimeTravelSystem::SHARED_SWITCHES.include?(i)
      snapshot[:"sw_#{i}"] = $game_switches[i] if $game_switches[i]
    end
    TimeTravelSystem::SHARED_VARIABLES.each do |vi|
      # Variables are always shared, skip
    end

    if era == :PRESENT
      data.present_switch_states = snapshot
    else
      data.past_switch_states = snapshot
    end
  end

  def self.restore_timeline_state(era)
    snapshot = (era == :PRESENT) ? data.present_switch_states : data.past_switch_states
    return unless snapshot

    # Reset non-shared switches
    (1..5000).each do |i|
      next if TimeTravelSystem::SHARED_SWITCHES.include?(i)
      $game_switches[i] = snapshot[:"sw_#{i}"] || false
    end
  end

  #=============================================================================
  # Transition Effect
  #=============================================================================

  def self.play_transition
    pbSEPlay(TimeTravelSystem::TRANSITION_SE)
    # Apply time-travel tunnel shader during the flash ([SC] Visual Effects).
    if defined?(pbApplyShader)
      pbApplyShader(:time_travel)
      pbFlash(TimeTravelSystem::TRANSITION_FLASH_COLOR, TimeTravelSystem::TRANSITION_FLASH_SPEED)
      pbWait(Graphics.frame_rate / 2)
      pbRemoveShader(:time_travel) if defined?(pbRemoveShader)
    else
      pbFlash(TimeTravelSystem::TRANSITION_FLASH_COLOR, TimeTravelSystem::TRANSITION_FLASH_SPEED)
      pbWait(Graphics.frame_rate / 2)
    end
  end

  #=============================================================================
  # Unlock a location for time travel
  #=============================================================================

  def self.unlock_location(present_map_id)
    return unless TimeTravelSystem::MAP_PAIRS[present_map_id]
    data.unlock_location(present_map_id)
    pair = TimeTravelSystem::MAP_PAIRS[present_map_id]
    pbMessage(_INTL("The Yggdrasil root at {1} has awakened!", pair[:name]))
    pbMessage(_INTL("You can now travel between eras here."))
  end
end

#===============================================================================
# Wild Encounter Modifier — Past era level bonus
#===============================================================================

EventHandlers.add(:on_wild_pokemon_created, :sc_time_travel_level_bonus,
  proc { |pokemon|
    next unless TimeTravelSystem::ENABLED
    next unless $PokemonGlobal.time_travel_data.in_past?
    pokemon.level = [pokemon.level + TimeTravelSystem::PAST_LEVEL_BONUS, GameData::GrowthRate.max_level].min
    pokemon.calc_stats
  }
)

#===============================================================================
# Map Transfer Hook — Apply screen tone on map change
#===============================================================================

EventHandlers.add(:on_enter_map, :sc_time_travel_tone,
  proc { |_old_map_id|
    next unless TimeTravelSystem::ENABLED
    if $PokemonGlobal.time_travel_data.in_past?
      $game_screen.start_tone_change(TimeTravelSystem::SCREEN_TONE_PAST, 0)
    else
      $game_screen.start_tone_change(TimeTravelSystem::SCREEN_TONE_PRESENT, 0)
    end
  }
)

#===============================================================================
# Event Tag Handler
# [TimeTravel] on event comment triggers travel prompt
#===============================================================================

EventHandlers.add(:on_player_interact, :sc_time_travel_event_tag,
  proc { |event|
    next unless TimeTravelSystem::ENABLED
    next unless event
    # Check event comments for [TimeTravel] tag
    has_tag = false
    if event.list
      event.list.each do |cmd|
        next unless [108, 408].include?(cmd.code)
        if cmd.parameters[0] =~ /\[TimeTravel(?:\s+(\w+))?\]/i
          has_tag = true
          break
        end
      end
    end
    next unless has_tag

    if TimeTravelManager.can_travel?
      target_era = $PokemonGlobal.time_travel_data.in_present? ?
        TimeTravelSystem::ERA_NAMES[TimeTravelSystem::ERA_PAST] :
        TimeTravelSystem::ERA_NAMES[TimeTravelSystem::ERA_PRESENT]
      if pbConfirmMessage(_INTL("Touch the Yggdrasil root and travel to the {1}?", target_era))
        TimeTravelManager.travel!
      end
    else
      pbMessage(_INTL("The Yggdrasil root is dormant. It cannot be activated yet."))
    end
  }
)

#===============================================================================
# Event Helpers
#===============================================================================

# Unlock from event script: pbUnlockTimeTravel(50)
def pbUnlockTimeTravel(present_map_id)
  TimeTravelManager.unlock_location(present_map_id)
end

# Check current era
def pbInPast?
  $PokemonGlobal.time_travel_data.in_past?
end

def pbInPresent?
  $PokemonGlobal.time_travel_data.in_present?
end

# Manual travel (from event script)
def pbTimeTravel
  if TimeTravelManager.can_travel?
    TimeTravelManager.travel!
  else
    pbMessage(_INTL("You cannot travel through time from here."))
  end
end

# Get travel count
def pbTimeTravelCount
  $PokemonGlobal.time_travel_data.times_traveled
end

# Check era name
def pbCurrentEra
  TimeTravelSystem::ERA_NAMES[$PokemonGlobal.time_travel_data.current_era]
end

# Show status
def pbTimeTravelStatus
  data = $PokemonGlobal.time_travel_data
  pbMessage(_INTL("Current Era: {1}", TimeTravelSystem::ERA_NAMES[data.current_era]))
  pbMessage(_INTL("Times Traveled: {1}", data.times_traveled))
  if data.unlocked_locations.empty?
    pbMessage(_INTL("No Yggdrasil roots awakened yet."))
  else
    data.unlocked_locations.each do |map_id|
      pair = TimeTravelSystem::MAP_PAIRS[map_id]
      next unless pair
      pbMessage(_INTL("  - {1}", pair[:name]))
    end
  end
end
