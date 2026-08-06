#===============================================================================
# [SC] Quest Journal - Configuration
# Version: 1.0.0
# Main and side quest tracking with markers and rewards.
#===============================================================================

module QuestJournal
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # QUEST CATEGORIES
  #=============================================================================
  CATEGORIES = {
    :MAIN    => { :name => "Main Story",  :color => Color.new(255, 220, 100) },
    :SIDE    => { :name => "Side Quests", :color => Color.new(100, 200, 255) },
    :DAILY   => { :name => "Daily",       :color => Color.new(100, 255, 150) },
    :SECRET  => { :name => "Secret",      :color => Color.new(220, 100, 255) }
  }

  #=============================================================================
  # QUEST STATES
  #=============================================================================
  STATE_HIDDEN    = 0
  STATE_ACTIVE    = 1
  STATE_COMPLETE  = 2
  STATE_FAILED    = 3

  #=============================================================================
  # UI SETTINGS
  #=============================================================================
  GRAPHICS_FOLDER = "QuestJournal"
  SE_QUEST_START  = "Mining reveal"
  SE_QUEST_DONE   = "Pkmn exp full"
  SE_CURSOR       = "GUI sel cursor"

  TEXT_BASE   = Color.new(248, 248, 248)
  TEXT_SHADOW = Color.new(72, 72, 72)
  TEXT_DONE   = Color.new(100, 220, 100)
  TEXT_FAILED = Color.new(220, 100, 100)
  TEXT_ACTIVE = Color.new(255, 220, 100)
  TEXT_LOCKED = Color.new(120, 120, 120)

  # Show quest notifications
  SHOW_NOTIFICATIONS = true

  # Max quests displayed per page
  QUESTS_PER_PAGE = 8
end
