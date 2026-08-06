#===============================================================================
# [SC] Photo Mode - Configuration
# Version: 1.0.0
# Pause + free camera, filters, Pokemon posing, PNG export.
#===============================================================================

module PhotoMode
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # CAMERA SETTINGS
  #=============================================================================
  CAMERA_SPEED       = 4    # Pixels per frame
  CAMERA_FAST_SPEED  = 8    # Pixels per frame while holding shift
  CAMERA_MAX_RANGE_X = 256  # Max pixels from player
  CAMERA_MAX_RANGE_Y = 192

  # Zoom levels available
  ZOOM_LEVELS = [1.0, 1.5, 2.0]

  #=============================================================================
  # FILTERS
  #=============================================================================
  FILTERS = {
    :NONE     => { :name => "Normal",    :tone => Tone.new(0, 0, 0, 0) },
    :SEPIA    => { :name => "Sepia",     :tone => Tone.new(30, 10, -20, 40) },
    :NOIR     => { :name => "Noir",      :tone => Tone.new(0, 0, 0, 200) },
    :WARM     => { :name => "Warm",      :tone => Tone.new(20, 10, -10, 0) },
    :COOL     => { :name => "Cool",      :tone => Tone.new(-10, 0, 20, 0) },
    :VIVID    => { :name => "Vivid",     :tone => Tone.new(15, 15, 15, -30) },
    :NIGHT    => { :name => "Night",     :tone => Tone.new(-50, -50, 0, 20) },
    :GOLDEN   => { :name => "Golden",    :tone => Tone.new(40, 20, -30, 10) },
    :DRAMATIC => { :name => "Dramatic",  :tone => Tone.new(0, -10, -20, 50) }
  }

  #=============================================================================
  # FRAMES / OVERLAYS
  #=============================================================================
  FRAMES = {
    :NONE      => nil,
    :SIMPLE    => "photo_frame_simple",
    :ORNATE    => "photo_frame_ornate",
    :POSTCARD  => "photo_frame_postcard",
    :POLAROID  => "photo_frame_polaroid"
  }

  #=============================================================================
  # OUTPUT
  #=============================================================================
  SCREENSHOT_FOLDER = "Screenshots"
  FILE_FORMAT       = "png"

  # Watermark text (nil to disable)
  WATERMARK = "Pokémon Shattered Crowns"

  #=============================================================================
  # KEY BINDING
  #=============================================================================
  # Trigger photo mode with F7 (override in Controls if needed)
  TRIGGER_KEY = :F7

  #=============================================================================
  # UI
  #=============================================================================
  GRAPHICS_FOLDER = "PhotoMode"
  SE_SHUTTER      = "Mining reveal"
  SE_CURSOR       = "GUI sel cursor"

  # Show controls overlay
  SHOW_CONTROLS_HELP = true
end
