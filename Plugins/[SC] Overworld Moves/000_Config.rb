#===============================================================================
# [SC] Overworld Moves - Configuration
#===============================================================================
# Field moves that let the player pick a destination tile on the current map
# instead of triggering a fixed effect. Currently used by Dig.
#===============================================================================

module SCOverworldMoves
  # Master switch. When false, Dig falls back to the vanilla escape behaviour.
  ENABLED = true

  #-----------------------------------------------------------------------------
  # Dig
  #-----------------------------------------------------------------------------

  # How many walking steps away the player may resurface. This is the balance
  # knob: the destination always has to be walkable from where the player is
  # standing, so this only controls how much walking gets skipped. Too high and
  # Dig starts doing Fly's job.
  DIG_RANGE = 20

  # Whether the reachability search is allowed to hop down ledges. Ledges are
  # one-way in the engine's passability data, so enabling this lets the player
  # dig to the bottom of a ledge but never back up.
  DIG_ALLOW_LEDGE_JUMPS = true

  # If this game switch is ON, Dig cannot be used to pick a destination at all
  # (it falls back to the escape behaviour). Set to 0 to disable this check.
  # Use it for story sections where the player must stay put.
  DIG_BLOCKED_SWITCH = 0

  #-----------------------------------------------------------------------------
  # Target cursor
  #-----------------------------------------------------------------------------

  # Frames the camera takes to glide to the cursor. 0 = snap instantly.
  CURSOR_CAMERA_LAG = 6

  # Frames the player sprite takes to sink into / rise out of the ground.
  BURROW_FRAMES = 14

  CURSOR_COLOR_VALID   = Color.new(120, 240, 140)
  CURSOR_COLOR_INVALID = Color.new(240, 110, 110)

  SE_BURROW  = "Player jump"
  SE_SELECT  = "GUI sel decision"
  SE_CANCEL  = "GUI sel cancel"
  SE_INVALID = "GUI sel buzzer"
  SE_CURSOR  = "GUI sel cursor"
end
