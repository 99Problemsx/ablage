#===============================================================================
# [SC] Lore Codex - Configuration
# Version: 1.0.0
# Collectible lore encyclopedia. Fragments found via books, steles, NPCs.
#===============================================================================

module LoreCodex
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # CATEGORIES
  #=============================================================================
  CATEGORIES = {
    :MYTHOLOGY  => { :name => "Mythology",  :icon => "codex_myth",   :color => Color.new(200, 160, 255) },
    :CHARACTERS => { :name => "Characters", :icon => "codex_char",   :color => Color.new(100, 220, 255) },
    :LOCATIONS  => { :name => "Locations",  :icon => "codex_loc",    :color => Color.new(100, 255, 150) },
    :HISTORY    => { :name => "History",    :icon => "codex_hist",   :color => Color.new(255, 220, 100) },
    :BESTIARY   => { :name => "Bestiary",   :icon => "codex_beast",  :color => Color.new(255, 130, 130) },
    :ARTIFACTS  => { :name => "Artifacts",  :icon => "codex_item",   :color => Color.new(220, 220, 220) }
  }

  #=============================================================================
  # UI SETTINGS
  #=============================================================================
  GRAPHICS_FOLDER = "LoreCodex"

  # Text colors
  TEXT_BASE      = Color.new(248, 248, 248)
  TEXT_SHADOW    = Color.new(72, 72, 72)
  TEXT_LOCKED    = Color.new(120, 120, 120)
  TEXT_TITLE     = Color.new(255, 220, 100)

  # Sound effects
  SE_DISCOVER = "Mining reveal"
  SE_CURSOR   = "GUI sel cursor"

  # Achievement integration (set to nil to disable)
  # When all entries in a category are found, unlock this achievement
  CATEGORY_COMPLETION_ACHIEVEMENTS = {
    # :MYTHOLOGY => :LORE_MYTH_COMPLETE,
    # :CHARACTERS => :LORE_CHAR_COMPLETE,
  }

  # Total entries for completion tracking
  # Set automatically from registry, or override here
  TOTAL_ENTRIES = nil  # nil = auto-count
end
