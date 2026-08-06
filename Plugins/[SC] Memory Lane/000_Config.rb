#===============================================================================
# [SC] Memory Lane - Configuration
# Version: 1.0.0
# End-game team journey recap with lifetime stats visualization.
#===============================================================================

module MemoryLane
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # TRACKED STATS
  #=============================================================================

  # Milestones to track per Pokemon
  TRACK_BATTLES_WON     = true
  TRACK_KOS             = true
  TRACK_TIMES_FAINTED   = true
  TRACK_STEPS_WALKED    = true   # Steps as lead party member
  TRACK_LEVEL_UPS       = true
  TRACK_MOVES_LEARNED   = true
  TRACK_EVOLUTIONS      = true

  #=============================================================================
  # JOURNEY MILESTONES (auto-recorded snapshots)
  #=============================================================================

  # Milestone keys captured when triggered from events
  # Call: pbMemoryMilestone(:FIRST_GYM, "Defeated the first Gym Leader!")
  MILESTONE_CATEGORIES = [:Story, :Battle, :Exploration, :Friendship]

  #=============================================================================
  # UI
  #=============================================================================
  BASE_COLOR   = Color.new(248, 248, 248)
  SHADOW_COLOR = Color.new(72, 72, 72)
  SE_OPEN      = "GUI sel decision"
  BGM_LANE     = nil  # Set to BGM filename for special memory lane music
end
