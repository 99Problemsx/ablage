#===============================================================================
# [SC] Map Fog of War - Configuration
# Version: 1.0.0
# Town Map starts blacked out — regions reveal as you explore.
#===============================================================================

module MapFogOfWar
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # REGION MAP POINTS
  # Each point corresponds to a town map location.
  # Maps are grouped into regions; visiting any map in a group reveals the point.
  #=============================================================================

  # Map IDs that reveal each named location
  # Format: { location_key => { name:, map_ids: [] } }
  MAP_POINTS = {
    # :ASGHEIM_CITY   => { :name => "Asgheim City",    :map_ids => [1, 2, 3] },
    # :ROUTE_1        => { :name => "Route 1",          :map_ids => [10] },
    # :FROSTPEAK      => { :name => "Frostpeak",        :map_ids => [20, 21] },
    # :STORMHAVEN     => { :name => "Stormhaven",       :map_ids => [30, 31] },
    # :VOID_RIFT      => { :name => "Void Rift",        :map_ids => [50, 51, 52] },
  }

  #=============================================================================
  # HIDDEN AREA GLOW
  # When player is adjacent to an undiscovered area, show a hint on the map
  #=============================================================================

  GLOW_NEARBY_ENABLED = true
  GLOW_PROXIMITY_MAPS = 1    # How many "map hops" away to glow

  #=============================================================================
  # COMPLETION TRACKING
  #=============================================================================

  SHOW_PERCENTAGE = true

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_REVEAL = "GUI sel decision"
end
