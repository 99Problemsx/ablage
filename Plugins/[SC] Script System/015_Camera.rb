#===============================================================================
# Shattered Crowns Script System - Camera Control
#===============================================================================
# Camera effects for cutscenes (pan, zoom, shake).
#===============================================================================

module SCScripts
  module Camera
    #---------------------------------------------------------------------------
    # Pan camera to position
    #---------------------------------------------------------------------------
    def self.pan_to(x, y, duration = 20)
      return unless $game_map && $scene.is_a?(Scene_Map)
      
      start_x = $game_map.display_x
      start_y = $game_map.display_y
      target_x = [x * Game_Map::REAL_RES_X - Graphics.width / 2 * Game_Map::X_SUBPIXELS, 0].max
      target_y = [y * Game_Map::REAL_RES_Y - Graphics.height / 2 * Game_Map::Y_SUBPIXELS, 0].max
      
      duration.times do |i|
        progress = (i + 1).to_f / duration
        $game_map.display_x = start_x + ((target_x - start_x) * progress).to_i
        $game_map.display_y = start_y + ((target_y - start_y) * progress).to_i
        Graphics.update
      end
    end
    
    #---------------------------------------------------------------------------
    # Pan to event
    #---------------------------------------------------------------------------
    def self.pan_to_event(event_id, duration = 20)
      event = $game_map.events[event_id]
      return unless event
      pan_to(event.x, event.y, duration)
    end
    
    #---------------------------------------------------------------------------
    # Pan to player
    #---------------------------------------------------------------------------
    def self.pan_to_player(duration = 20)
      pan_to($game_player.x, $game_player.y, duration)
    end
    
    #---------------------------------------------------------------------------
    # Reset camera to follow player
    #---------------------------------------------------------------------------
    def self.reset(duration = 10)
      pan_to_player(duration)
    end
    
    #---------------------------------------------------------------------------
    # Shake screen
    #---------------------------------------------------------------------------
    def self.shake(power = 5, speed = 5, duration = 20)
      $game_screen.start_shake(power, speed, duration)
    end
    
    #---------------------------------------------------------------------------
    # Flash screen
    #---------------------------------------------------------------------------
    def self.flash(color = nil, duration = 10)
      color ||= Color.new(255, 255, 255, 160)
      $game_screen.start_flash(color, duration)
    end
    
    #---------------------------------------------------------------------------
    # Tint screen
    #---------------------------------------------------------------------------
    def self.tint(tone, duration = 20)
      $game_screen.start_tone_change(tone, duration)
    end
    
    def self.tint_dark(duration = 20)
      tint(Tone.new(-68, -68, -68, 0), duration)
    end
    
    def self.tint_sepia(duration = 20)
      tint(Tone.new(34, -17, -68, 170), duration)
    end
    
    def self.tint_reset(duration = 20)
      tint(Tone.new(0, 0, 0, 0), duration)
    end
    
    #---------------------------------------------------------------------------
    # Zoom (requires viewport manipulation)
    #---------------------------------------------------------------------------
    def self.zoom_in(factor = 1.5, duration = 20)
      # Note: Full zoom requires viewport manipulation
      # This is a simplified flash effect
      flash(Color.new(255, 255, 255, 80), duration / 2)
    end
    
    def self.zoom_out(factor = 0.75, duration = 20)
      flash(Color.new(0, 0, 0, 80), duration / 2)
    end
  end
end

#===============================================================================
# Short helpers
#===============================================================================
def pbCameraPan(x, y, duration = 20)
  SCScripts::Camera.pan_to(x, y, duration)
end

def pbCameraShake(power = 5, duration = 20)
  SCScripts::Camera.shake(power, 5, duration)
end

def pbCameraReset(duration = 10)
  SCScripts::Camera.reset(duration)
end

def pbCameraFlash(duration = 10)
  SCScripts::Camera.flash(nil, duration)
end

#===============================================================================
# Add to Cutscene builder
#===============================================================================
class GameData::CutsceneBuilder
  def camera_pan(x, y, duration = 20)
    @steps << { type: :camera_pan, x: x, y: y, duration: duration }
  end
  
  def camera_shake(power = 5, duration = 20)
    @steps << { type: :camera_shake, power: power, duration: duration }
  end
  
  def camera_reset(duration = 10)
    @steps << { type: :camera_reset, duration: duration }
  end
  
  def camera_flash(duration = 10)
    @steps << { type: :camera_flash, duration: duration }
  end
  
  def camera_tint(type, duration = 20)
    @steps << { type: :camera_tint, tint_type: type, duration: duration }
  end
end
