#===============================================================================
# Dynamic Lighting — Bulk Light Definitions (Ruby DSL)
#===============================================================================
# Replaces the old PBS/lights.txt import. In keeping with the SC Script System
# (PBS_REPLACEMENT_MODE), bulk lights are defined in Ruby instead of a PBS text
# file — no runtime file I/O, no PBS dependency.
#
# Register a light with:
#
#   pbDefineLight(MAP_ID, X, Y, TYPE, RADIUS = 48, *keywords)
#
#   TYPE:     :circle, :rect, :cone
#   RADIUS:   size in pixels (0 = use the preset's default)
#   keywords: optional preset name first (e.g. "torch"), then the same tags the
#             event-comment parser understands.
#       Colors:     "red" "blue" "yellow" "green" "orange" "warm" "color:R,G,B"
#       Flags:      "day" "flicker" "embers" "reflect" "beam" "window"
#       Parameters: "pulse:candle" "intensity:0.8" "group:my_group" "switch:42"
#                   "width:2" "height:1" "spread:90" "angle:45" "on_hour:18" ...
#
# Examples:
#   pbDefineLight(5, 10, 12, :circle, 48, "torch")
#   pbDefineLight(5, 14,  8, :circle, 64, "warm", "flicker")
#   pbDefineLight(8,  3,  5, :rect,    0, "width:2", "height:1", "red", "day")
#
# The in-game debug menu's "Export Map Lights to Script" appends generated
# pbDefineLight lines below. Run the game once in $DEBUG afterwards to bake them
# into PluginScripts.rxdata.
#===============================================================================

# (No bulk lights defined yet — add pbDefineLight(...) calls here.)
