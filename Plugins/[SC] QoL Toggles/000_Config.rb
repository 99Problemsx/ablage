#===============================================================================
# [SC] QoL Toggles - Configuration
# Version: 1.0.0
# Quality-of-life toggle menu: auto-run, fast text, battle speed, etc.
#===============================================================================

module QoLToggles
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # AVAILABLE TOGGLES
  # Each toggle has a key, display name, default value, and description.
  #=============================================================================

  TOGGLES = {
    :AUTO_RUN => {
      :name        => "Auto-Run",
      :description => "Always run without holding B.",
      :default     => false,
    },
    :FAST_TEXT => {
      :name        => "Fast Text",
      :description => "Text displays instantly.",
      :default     => false,
    },
    :BATTLE_SPEED => {
      :name        => "Fast Battles",
      :description => "Battle animations play faster.",
      :default     => false,
    },
    :SKIP_SEEN_CUTSCENES => {
      :name        => "Skip Seen Cutscenes",
      :description => "Hold CTRL to skip previously seen cutscenes.",
      :default     => false,
    },
    :INSTANT_SURF => {
      :name        => "Quick Surf",
      :description => "Skip the Surf animation.",
      :default     => false,
    },
    :AUTO_SORT_BAG => {
      :name        => "Auto-Sort Bag",
      :description => "Bag items are automatically sorted.",
      :default     => false,
    },
    :NICKNAME_PROMPT => {
      :name        => "Skip Nickname Prompt",
      :description => "Don't ask to nickname caught Pokémon.",
      :default     => false,
    },
    :DAMAGE_NUMBERS => {
      :name        => "Show Damage Numbers",
      :description => "Display damage values in battle.",
      :default     => true,
    },
  }

  #=============================================================================
  # HOTKEY (open QoL menu from overworld)
  # Set to nil to disable hotkey (access via pause menu only)
  #=============================================================================
  HOTKEY = nil  # e.g., Input::F6

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_TOGGLE  = "GUI sel decision"
  SE_OPEN    = "GUI sel decision"
end
