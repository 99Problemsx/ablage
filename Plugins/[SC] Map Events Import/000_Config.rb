#===============================================================================
# [SC] Map Events Import - Configuration
#===============================================================================
# Define events for each map in plain Ruby files under
# Data/Scripts/Events/, and this plugin spawns them at runtime as
# native RPG Maker events. Hand-placed events in the .rxdata file are
# preserved — the spawner only adds events for IDs not already present
# on the map (configurable below).
#
# Recommended workflow:
#   1. Create Data/Scripts/Events/Map<ID>_<Name>.rb
#   2. MapEvents.define(<ID>) do |m| ... end
#   3. Save, reload the map in-game — your events appear.
#
# See README.md for the full DSL reference.
#===============================================================================

module MapEventsImport
  ENABLED       = true
  DEBUG_MODE    = $DEBUG

  # When a spawned event has the same ID as a hand-placed event in
  # the .rxdata:
  #   :SKIP      Keep the .rxdata event; the spawn definition is ignored.
  #   :REPLACE   The spawn definition replaces the .rxdata event.
  #   :MERGE     Spawn definition's pages are added after .rxdata pages.
  COLLISION_POLICY = :SKIP

  # ID range reserved for spawned events. Stay above your hand-placed
  # event IDs so collisions are rare. (RPG Maker XP supports up to ~999
  # events per map in practice.)
  SPAWN_ID_BASE     = 500
  SPAWN_ID_MAX      = 999

  # If you want spawned-only maps (no .rxdata events at all on this
  # map), list their IDs here. Useful for maps you author entirely in
  # the Tiled/text-editor workflow.
  SPAWN_ONLY_MAPS   = []

  # Auto-load all .rb files in this folder at game start. Path is
  # relative to the project root.
  EVENT_SCRIPTS_PATH = "Data/Scripts/Events"
end
