#===============================================================================
# Shattered Crowns Script System - Event Page Manager
#===============================================================================
# Automatically manages event pages based on switches set by cutscenes.
# This prevents events from being triggered multiple times after completion.
#===============================================================================

module SCScripts
  module EventPageManager
    #---------------------------------------------------------------------------
    # Disable an event by setting its self-switch
    # This is the standard way to handle "event page 2" logic in RPG Maker
    #---------------------------------------------------------------------------
    def self.disable_event(map_id, event_id, self_switch = 'A')
      key = [map_id, event_id, self_switch]
      $game_self_switches[key] = true
      $game_map.need_refresh = true if $game_map && $game_map.map_id == map_id
    end
    
    #---------------------------------------------------------------------------
    # Enable an event by clearing its self-switch
    #---------------------------------------------------------------------------
    def self.enable_event(map_id, event_id, self_switch = 'A')
      key = [map_id, event_id, self_switch]
      $game_self_switches[key] = false
      $game_map.need_refresh = true if $game_map && $game_map.map_id == map_id
    end
    
    #---------------------------------------------------------------------------
    # Check if an event is disabled
    #---------------------------------------------------------------------------
    def self.event_disabled?(map_id, event_id, self_switch = 'A')
      key = [map_id, event_id, self_switch]
      $game_self_switches[key] == true
    end
    
    #---------------------------------------------------------------------------
    # Reset all events on a map (useful for debugging)
    #---------------------------------------------------------------------------
    def self.reset_map_events(map_id)
      $game_self_switches.keys.each do |key|
        if key[0] == map_id
          $game_self_switches.delete(key)
        end
      end
      $game_map.need_refresh = true if $game_map && $game_map.map_id == map_id
    end
  end
end

#===============================================================================
# Extend CutsceneBuilder to support automatic event disabling
#===============================================================================
class GameData::CutsceneBuilder
  #---------------------------------------------------------------------------
  # Disable a specific event on the current map
  # Usage: scene.disable_event(5) # Disables event ID 5
  # Usage: scene.disable_event(5, 'B') # Use Self Switch B
  #---------------------------------------------------------------------------
  def disable_event(event_id, self_switch = 'A')
    @steps << { type: :disable_event, event_id: event_id, self_switch: self_switch }
  end
  
  #---------------------------------------------------------------------------
  # Execute event disabling steps
  #---------------------------------------------------------------------------
  alias_method :sc_event_execute_step, :execute_step
  
  def execute_step(step)
    case step[:type]
    when :disable_event
      if $game_map
        SCScripts::EventPageManager.disable_event(
          $game_map.map_id, 
          step[:event_id], 
          step[:self_switch]
        )
      end
      
    else
      sc_event_execute_step(step)
    end
  end
end

#===============================================================================
# Helper functions for event scripts
#===============================================================================

# Disable a specific event on the current map
def pbDisableEvent(event_id, self_switch = 'A')
  return unless $game_map
  SCScripts::EventPageManager.disable_event($game_map.map_id, event_id, self_switch)
end

# Enable an event
def pbEnableEvent(event_id, self_switch = 'A')
  return unless $game_map
  SCScripts::EventPageManager.enable_event($game_map.map_id, event_id, self_switch)
end
