#===============================================================================
# [SC] Map Fog of War - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class FogOfWarSaveData
  attr_accessor :revealed_locations  # Array of location keys
  attr_accessor :visited_maps        # Array of map IDs

  def initialize
    @revealed_locations = []
    @visited_maps       = []
  end

  def reveal(location_key)
    return false if @revealed_locations.include?(location_key)
    @revealed_locations.push(location_key)
    true
  end

  def revealed?(location_key)
    @revealed_locations.include?(location_key)
  end

  def visit_map(map_id)
    return if @visited_maps.include?(map_id)
    @visited_maps.push(map_id)
    # Check if this map reveals any location
    MapFogOfWar::MAP_POINTS.each do |loc_key, config|
      if config[:map_ids].include?(map_id) && !revealed?(loc_key)
        reveal(loc_key)
        return loc_key
      end
    end
    nil
  end

  def completion_percent
    total = MapFogOfWar::MAP_POINTS.length
    return 100.0 if total == 0
    (@revealed_locations.length.to_f / total * 100).round(1)
  end

  def total_locations
    MapFogOfWar::MAP_POINTS.length
  end

  def discovered_count
    @revealed_locations.length
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :fog_of_war_data

  def fog_of_war_data
    @fog_of_war_data ||= FogOfWarSaveData.new
  end
end

SaveData.register(:fog_of_war_data) do
  save_value { $PokemonGlobal.fog_of_war_data }
  load_value { |val| $PokemonGlobal.fog_of_war_data = val }
  new_game_value { FogOfWarSaveData.new }
end

#===============================================================================
# Map enter hook — auto-reveal locations as player explores
#===============================================================================

EventHandlers.add(:on_enter_map, :sc_fog_of_war_reveal,
  proc { |_old_map_id|
    next unless MapFogOfWar::ENABLED && $game_map
    data = $PokemonGlobal.fog_of_war_data
    revealed = data.visit_map($game_map.map_id)
    if revealed
      config = MapFogOfWar::MAP_POINTS[revealed]
      pbSEPlay(MapFogOfWar::SE_REVEAL)
      pbMessage(_INTL("Map updated: {1} discovered!", config[:name]))
      if MapFogOfWar::SHOW_PERCENTAGE
        pbMessage(_INTL("Exploration: {1}% ({2}/{3})",
                        data.completion_percent, data.discovered_count, data.total_locations))
      end
      # Codex integration
      codexDiscover(:"MAP_#{revealed}") if defined?(codexDiscover)
      # Memory Lane milestone
      if defined?(pbMemoryMilestone) && data.completion_percent >= 100
        pbMemoryMilestone(:FULL_MAP, "Explored the entire world!", :Exploration)
      end
    end
  }
)

#===============================================================================
# Town Map integration — check if location should be visible
#===============================================================================

def pbFogRevealed?(location_key)
  return true unless MapFogOfWar::ENABLED
  $PokemonGlobal.fog_of_war_data.revealed?(location_key)
end

def pbFogRevealAll
  MapFogOfWar::MAP_POINTS.each_key do |key|
    $PokemonGlobal.fog_of_war_data.reveal(key)
  end
end

def pbFogCompletion
  $PokemonGlobal.fog_of_war_data.completion_percent
end

def pbShowExplorationStatus
  data = $PokemonGlobal.fog_of_war_data
  msg = _INTL("=== Exploration ===\n")
  msg += _INTL("Discovered: {1}/{2} ({3}%)\n\n",
               data.discovered_count, data.total_locations, data.completion_percent)
  MapFogOfWar::MAP_POINTS.each do |key, config|
    if data.revealed?(key)
      msg += _INTL("✓ {1}\n", config[:name])
    else
      msg += _INTL("? ???\n")
    end
  end
  pbMessage(msg)
end
