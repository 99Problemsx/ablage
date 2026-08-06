#===============================================================================
# [SC] Flashback System - Configuration
# Version: 1.0.0
# Playable flashback sequences from other characters' perspectives.
#===============================================================================

module FlashbackSystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # VISUAL SETTINGS
  #=============================================================================

  # Screen tone during flashbacks
  FLASHBACK_TONE = Tone.new(20, 10, -20, 40)  # Sepia-ish

  # Transition effect
  FADE_FRAMES  = 40
  FLASH_FRAMES = 20

  # Overlay text shown at start
  SHOW_LABEL = true
  LABEL_TEXT_COLOR   = Color.new(255, 220, 150)
  LABEL_SHADOW_COLOR = Color.new(80, 60, 30)

  #=============================================================================
  # MENU RESTRICTIONS DURING FLASHBACKS
  #=============================================================================
  DISABLE_SAVE    = true
  DISABLE_BAG     = false
  DISABLE_POKEMON = false
  DISABLE_MAP     = true

  #=============================================================================
  # FLASHBACK DEFINITIONS
  # Define each flashback with a unique ID
  #=============================================================================
  FLASHBACKS = {
    # :RAGNAR_FALL => {
    #   :label       => "Years ago...",
    #   :character   => "Ragnar",
    #   :map_id      => 100,
    #   :start_x     => 10,
    #   :start_y     => 8,
    #   :party       => [:AEGISLASH, :TYRANITAR, :GARCHOMP],
    #   :party_levels => [55, 58, 60],
    #   :end_switch  => 300,   # Switch to set when flashback completes
    # },
    # :ALDRIC_YOUNG => {
    #   :label       => "Thirty years ago...",
    #   :character   => "Young Aldric",
    #   :map_id      => 101,
    #   :start_x     => 5,
    #   :start_y     => 12,
    #   :party       => [:GARDEVOIR, :ALAKAZAM],
    #   :party_levels => [30, 32],
    #   :end_switch  => 301,
    # },
    # :KAEL_PAST => {
    #   :label       => "Before the Chosen...",
    #   :character   => "Kael",
    #   :map_id      => 102,
    #   :start_x     => 8,
    #   :start_y     => 6,
    #   :party       => [:ABSOL, :HONCHKROW, :WEAVILE],
    #   :party_levels => [40, 42, 38],
    #   :end_switch  => 302,
    # },
  }
end
