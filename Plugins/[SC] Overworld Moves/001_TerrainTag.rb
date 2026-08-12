#===============================================================================
# [SC] Overworld Moves - NoDig terrain tag
#===============================================================================
# Paint this terrain tag (Debug menu -> "Edit terrain tags") on tiles that the
# reachability search must not path through.
#
# It is a BARRIER, not an area. To stop the player from digging past a story
# trigger, paint a single line of NoDig tiles across the corridor the trigger
# sits on - everything behind that line becomes unreachable automatically, so
# there is no need to paint the whole region.
#
# Caveat worth knowing: Game_Map#terrain_tag returns the first non-None tag it
# finds, so a tile marked NoDig cannot also be TallGrass, Water, etc. Put the
# barrier on plain ground tiles.
#===============================================================================

GameData::TerrainTag.register({
  :id        => :NoDig,
  :id_number => 18
})
