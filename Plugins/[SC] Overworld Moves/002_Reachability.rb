#===============================================================================
# [SC] Overworld Moves - Reachability search
#===============================================================================
# Flood fill from the player over normal walking rules. A tile is a legal
# destination for a targeted field move only if it shows up in this set, which
# means a single check covers everything we care about:
#
#   * house interiors, cliffs and water are never passable, so they never
#     appear in the set
#   * an NPC blocking a doorway blocks the search too, because Game_Map#passable?
#     already accounts for events
#   * a locked door stays locked
#   * a NoDig barrier tile cuts off everything behind it (see 001_TerrainTag.rb)
#
# The one thing it deliberately does not catch is a walk-through trigger event
# (a cutscene that fires on touch). Nothing in the map data marks those as
# story-critical, which is what the NoDig terrain tag is for.
#===============================================================================

module SCOverworldMoves
  module Reachability
    # [direction, x offset, y offset]
    DIRECTIONS = [[2, 0, 1], [4, -1, 0], [6, 1, 0], [8, 0, -1]]

    # Returns a Hash of packed tile key => walking steps from the player.
    # Cost scales with max_steps squared times the event count of the map, so
    # keep DIG_RANGE sane - it runs once when the cursor opens.
    def self.from_player(max_steps = SCOverworldMoves::DIG_RANGE)
      map = $game_map
      steps = { key(map, $game_player.x, $game_player.y) => 0 }
      queue = [[$game_player.x, $game_player.y, 0]]
      until queue.empty?
        x, y, dist = queue.shift
        next if dist >= max_steps
        DIRECTIONS.each do |dir, dx, dy|
          next if !$game_player.can_move_from_coordinate?(x, y, dir)
          new_x = x + dx
          new_y = y + dy
          next if !map.valid?(new_x, new_y)
          next if map.terrain_tag(new_x, new_y).id == :NoDig
          # Walking into a ledge makes the engine jump two tiles instead of one.
          if map.terrain_tag(new_x, new_y).ledge
            next if !SCOverworldMoves::DIG_ALLOW_LEDGE_JUMPS
            next if !$game_player.can_move_from_coordinate?(new_x, new_y, dir)
            new_x += dx
            new_y += dy
            next if !map.valid?(new_x, new_y)
            next if map.terrain_tag(new_x, new_y).id == :NoDig
          end
          tile = key(map, new_x, new_y)
          next if steps.has_key?(tile)
          steps[tile] = dist + 1
          queue.push([new_x, new_y, dist + 1])
        end
      end
      return steps
    end

    def self.key(map, x, y)
      return (y * map.width) + x
    end

    # Whether the set holds anything the player could actually travel to.
    def self.any_target?(steps)
      return steps.length > 1
    end
  end
end
