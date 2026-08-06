#===============================================================================
# [SC] Photo Mode - Camera & Scene
#===============================================================================

class PhotoModeScene
  def initialize
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99998
    @ui_viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @ui_viewport.z = 99999
    @sprites = {}

    @cam_x = 0
    @cam_y = 0
    @zoom_index = 0
    @filter_index = 0
    @frame_index = 0
    @filters = PhotoMode::FILTERS.keys
    @frames = PhotoMode::FRAMES.keys
    @original_tone = $game_screen ? $game_screen.tone.clone : Tone.new(0, 0, 0, 0)
    @hide_ui = false
  end

  def pbStartScene
    # UI overlay
    @sprites["overlay"] = BitmapSprite.new(Graphics.width, Graphics.height, @ui_viewport)
    pbSetSystemFont(@sprites["overlay"].bitmap)

    # Frame overlay sprite
    @sprites["frame"] = IconSprite.new(0, 0, @ui_viewport)

    draw_ui
    pbSEPlay(PhotoMode::SE_CURSOR)
  end

  def draw_ui
    return if @hide_ui
    overlay = @sprites["overlay"].bitmap
    overlay.clear

    filter_name = PhotoMode::FILTERS[@filters[@filter_index]][:name]
    frame_name = @frames[@frame_index].to_s.capitalize
    zoom = PhotoMode::ZOOM_LEVELS[@zoom_index]

    # Top bar
    overlay.fill_rect(0, 0, Graphics.width, 28, Color.new(0, 0, 0, 150))
    pbDrawTextPositions(overlay, [
      [_INTL("PHOTO MODE"), 8, 2, 0, Color.new(255, 220, 100), Color.new(40, 40, 40)],
      [_INTL("Filter: {1}", filter_name), Graphics.width / 2, 2, 2,
       Color.new(248, 248, 248), Color.new(40, 40, 40)],
      [_INTL("x{1}", zoom), Graphics.width - 8, 2, 1,
       Color.new(248, 248, 248), Color.new(40, 40, 40)]
    ])

    # Bottom controls
    if PhotoMode::SHOW_CONTROLS_HELP
      overlay.fill_rect(0, Graphics.height - 48, Graphics.width, 48, Color.new(0, 0, 0, 150))
      pbDrawTextPositions(overlay, [
        [_INTL("↑↓←→ Move  Z: Snap  Q/W: Filter  A/S: Frame  X: Exit  H: Hide UI"),
         Graphics.width / 2, Graphics.height - 40, 2,
         Color.new(200, 200, 200), Color.new(40, 40, 40)]
      ])
    end

    # Frame overlay
    update_frame
  end

  def update_frame
    frame_key = @frames[@frame_index]
    frame_file = PhotoMode::FRAMES[frame_key]
    if frame_file
      path = "Graphics/Pictures/#{PhotoMode::GRAPHICS_FOLDER}/#{frame_file}"
      if pbResolveBitmap(path)
        @sprites["frame"].setBitmap(path)
        @sprites["frame"].visible = true
      else
        @sprites["frame"].visible = false
      end
    else
      @sprites["frame"].visible = false
    end
  end

  def apply_filter
    filter = PhotoMode::FILTERS[@filters[@filter_index]]
    if $game_screen
      tone = filter[:tone]
      $game_screen.start_tone_change(tone, 10)
    end
  end

  def restore_tone
    if $game_screen
      $game_screen.start_tone_change(@original_tone, 10)
    end
  end

  def take_screenshot
    pbSEPlay(PhotoMode::SE_SHUTTER)

    # Hide UI momentarily
    old_hide = @hide_ui
    @hide_ui = true
    @sprites["overlay"].bitmap.clear
    @sprites["frame"].visible = true if PhotoMode::FRAMES[@frames[@frame_index]]
    Graphics.update

    # Create screenshot directory
    dir = PhotoMode::SCREENSHOT_FOLDER
    Dir.mkdir(dir) unless Dir.exist?(dir)

    # Generate filename
    timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
    filename = "#{dir}/SC_#{timestamp}.#{PhotoMode::FILE_FORMAT}"

    # Capture
    bitmap = Graphics.snap_to_bitmap
    if bitmap
      # Render watermark onto the snapped bitmap if configured
      if PhotoMode::WATERMARK && !PhotoMode::WATERMARK.to_s.empty?
        wm = PhotoMode::WATERMARK.to_s
        old_size  = bitmap.font.size
        old_name  = bitmap.font.name
        old_color = bitmap.font.color
        bitmap.font.size = [bitmap.height / 28, 12].max
        bitmap.font.name = "Arial"
        text_w = bitmap.text_size(wm).width + 16
        text_h = bitmap.font.size + 8
        x = bitmap.width  - text_w - 8
        y = bitmap.height - text_h - 8
        # Shadow
        bitmap.font.color = Color.new(0, 0, 0, 180)
        bitmap.draw_text(x + 1, y + 1, text_w, text_h, wm, 1)
        # Foreground
        bitmap.font.color = Color.new(255, 255, 255, 220)
        bitmap.draw_text(x, y, text_w, text_h, wm, 1)
        bitmap.font.size  = old_size
        bitmap.font.name  = old_name
        bitmap.font.color = old_color
      end
      bitmap.to_file(filename) rescue nil
      pbMessage(_INTL("\\se[]Photo saved to {1}!", filename))
    end

    @hide_ui = old_hide
    draw_ui
  end

  def pbMain
    apply_filter
    loop do
      Graphics.update
      Input.update
      pbUpdateSpriteHash(@sprites)

      speed = Input.press?(Input::SHIFT) ? PhotoMode::CAMERA_FAST_SPEED : PhotoMode::CAMERA_SPEED

      # Camera movement
      if Input.press?(Input::UP)
        @cam_y = [@cam_y - speed, -PhotoMode::CAMERA_MAX_RANGE_Y].max
        $game_map.display_y = ($game_map.display_y + @cam_y) if $game_map
      end
      if Input.press?(Input::DOWN)
        @cam_y = [@cam_y + speed, PhotoMode::CAMERA_MAX_RANGE_Y].min
      end
      if Input.press?(Input::LEFT)
        @cam_x = [@cam_x - speed, -PhotoMode::CAMERA_MAX_RANGE_X].max
      end
      if Input.press?(Input::RIGHT)
        @cam_x = [@cam_x + speed, PhotoMode::CAMERA_MAX_RANGE_X].min
      end

      # Take photo
      if Input.trigger?(Input::USE)
        take_screenshot
      end

      # Cycle filter (Q/W or Page Up/Down)
      if Input.trigger?(Input::L)  # Q / PageUp
        @filter_index = (@filter_index - 1) % @filters.length
        apply_filter
        pbPlayCursorSE
        draw_ui
      elsif Input.trigger?(Input::R)  # W / PageDown
        @filter_index = (@filter_index + 1) % @filters.length
        apply_filter
        pbPlayCursorSE
        draw_ui
      end

      # Cycle frame (A/S mapped to other keys)
      if Input.trigger?(Input::ACTION)
        @frame_index = (@frame_index + 1) % @frames.length
        pbPlayCursorSE
        draw_ui
      end

      # Zoom
      if Input.trigger?(Input::JUMPUP)
        @zoom_index = (@zoom_index + 1) % PhotoMode::ZOOM_LEVELS.length
        pbPlayCursorSE
        draw_ui
      end

      # Toggle UI
      if Input.triggerex?(:H)  # H key
        @hide_ui = !@hide_ui
        if @hide_ui
          @sprites["overlay"].bitmap.clear
        else
          draw_ui
        end
      end

      # Exit
      if Input.trigger?(Input::BACK)
        pbPlayCancelSE
        break
      end
    end
  end

  def pbEndScene
    restore_tone
    pbDisposeSpriteHash(@sprites)
    @viewport.dispose
    @ui_viewport.dispose
  end
end

class PhotoModeScreen
  def initialize(scene)
    @scene = scene
  end

  def pbStartScreen
    @scene.pbStartScene
    @scene.pbMain
    @scene.pbEndScene
  end
end

def pbOpenPhotoMode
  return unless PhotoMode::ENABLED
  scene = PhotoModeScene.new
  screen = PhotoModeScreen.new(scene)
  screen.pbStartScreen
end

#===============================================================================
# Key trigger on overworld
#===============================================================================

EventHandlers.add(:on_frame_update, :sc_photo_mode_key,
  proc {
    next unless PhotoMode::ENABLED
    next unless $scene.is_a?(Scene_Map)
    if Input.triggerex?(:F7)  # F7
      pbOpenPhotoMode
    end
  }
)
