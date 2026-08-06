#===============================================================================
# [SC] Dowsing Rod — Norse-themed hidden-item finder, upgrade from Itemfinder
#===============================================================================
# A rune-carved divining rod. Compared to the stock Itemfinder it has:
#   - Larger detection radius (10 horiz × 8 vert vs 8×6)
#   - Distance feedback ("very close" / "close" / "far")
#   - All-direction arrows when something is nearby
#   - Custom mystical SE
#
# Register as a Key Item — call `pbScDowsingRod` from the item's UseInField
# handler (set up automatically below).
#
# Players acquire the Dowsing Rod via a story event (Astoria temple gift) —
# see SCMysteryGift or any cutscene that calls `$bag.add(:DOWSINGROD)`.
#===============================================================================

module SCDowsingRod
  RADIUS_X = 10
  RADIUS_Y = 8
  SE_PING  = "Itemfinder"   # fallback if a custom file isn't shipped

  def self.scan
    result = []
    px = $game_player.x
    py = $game_player.y
    $game_map.events.each_value do |ev|
      next if !ev.name[/hiddenitem/i]
      next if (px - ev.x).abs >= RADIUS_X
      next if (py - ev.y).abs >= RADIUS_Y
      next if $game_self_switches[[$game_map.map_id, ev.id, "A"]]
      dist = (px - ev.x).abs + (py - ev.y).abs
      result << [dist, ev]
    end
    result.sort_by { |a| a[0] }
  end

  def self.use!
    pbSEPlay(SE_PING)
    hits = scan
    if hits.empty?
      pbMessage(_INTL("... \\wt[10]... \\wt[10]... \\wt[10]The runes are silent."))
      return true
    end
    closest_dist, closest_ev = hits[0]
    px = $game_player.x
    py = $game_player.y

    if closest_dist == 0
      4.times do
        pbWait(0.2)
        $game_player.turn_right_90
      end
      pbWait(0.3)
      pbMessage(_INTL("The rune glows beneath your feet. Something is buried *right here*."))
      return true
    end

    # Face it
    offsetX = closest_ev.x - px
    offsetY = closest_ev.y - py
    direction = (offsetX.abs > offsetY.abs) ? ((offsetX < 0) ? 4 : 6) : ((offsetY < 0) ? 8 : 2)
    case direction
    when 2 then $game_player.turn_down
    when 4 then $game_player.turn_left
    when 6 then $game_player.turn_right
    when 8 then $game_player.turn_up
    end
    pbWait(0.3)

    distance_text = if closest_dist <= 2
                       _INTL("The rune sings — almost on top of it.")
                    elsif closest_dist <= 5
                       _INTL("The rune hums — something close.")
                    else
                       _INTL("The rune whispers — something far ahead.")
                    end
    arrow = case direction
            when 2 then "▼"
            when 4 then "◀"
            when 6 then "▶"
            when 8 then "▲"
            end
    pbMessage(_INTL("{1}  {2}", arrow, distance_text) + "\1")
    pbMessage(_INTL("({1} more buried object{2} in range.)",
                    hits.length, hits.length == 1 ? "" : "s")) if hits.length > 1
    true
  end
end

#===============================================================================
# Register the item-use handler. If :DOWSINGROD is not registered in the
# script system yet, this handler is dormant — register it via:
#
#   GameData::Item.define :DOWSINGROD do |it|
#     it.name        = "Dowsing Rod"
#     it.name_plural = "Dowsing Rods"
#     it.pocket      = 8        # key items pocket
#     it.field_use   = :OnPokemon  # or appropriate flag
#     it.description = "A rune-carved divining rod attuned to Asgheim's hidden things."
#   end
#
# (Or add it to your KeyItems.rb script-system file.)
#===============================================================================
if defined?(ItemHandlers)
  ItemHandlers::UseInField.add(:DOWSINGROD, proc { |_item|
    SCDowsingRod.use!
    next true
  })
end

# Script-call shortcut for events that want to invoke the rod manually.
def pbScDowsingRod
  SCDowsingRod.use!
end
