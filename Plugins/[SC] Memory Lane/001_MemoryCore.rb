#===============================================================================
# [SC] Memory Lane - Core Logic + UI
#===============================================================================

#===============================================================================
# Per-Pokemon Stat Tracker
#===============================================================================

class MemoryLaneStats
  attr_accessor :battles_won, :kos, :times_fainted
  attr_accessor :steps_as_lead, :level_ups, :moves_learned, :evolutions
  attr_accessor :caught_location, :caught_level, :caught_time

  def initialize
    @battles_won    = 0
    @kos            = 0
    @times_fainted  = 0
    @steps_as_lead  = 0
    @level_ups      = 0
    @moves_learned  = 0
    @evolutions     = 0
    @caught_location = ""
    @caught_level    = 0
    @caught_time     = nil
  end
end

#===============================================================================
# Journey Milestones
#===============================================================================

class JourneyMilestone
  attr_accessor :key, :category, :description, :timestamp, :party_snapshot

  def initialize(key, category, description)
    @key           = key
    @category      = category
    @description   = description
    @timestamp     = pbGetTimeNow
    @party_snapshot = []
    if $player && $player.party
      $player.party.each do |pkmn|
        @party_snapshot.push({
          :species => pkmn.species,
          :name    => pkmn.name,
          :level   => pkmn.level
        })
      end
    end
  end
end

#===============================================================================
# Save Data
#===============================================================================

class MemoryLaneSaveData
  attr_accessor :pokemon_stats   # Hash { pokemon_personal_id => MemoryLaneStats }
  attr_accessor :milestones      # Array of JourneyMilestone
  attr_accessor :total_battles   # Lifetime battle count
  attr_accessor :total_steps     # Lifetime step count

  def initialize
    @pokemon_stats = {}
    @milestones    = []
    @total_battles = 0
    @total_steps   = 0
  end

  def stats_for(pkmn)
    pid = pkmn.personalID
    @pokemon_stats[pid] ||= MemoryLaneStats.new
    @pokemon_stats[pid]
  end

  def add_milestone(key, category, description)
    return if @milestones.any? { |m| m.key == key }
    @milestones.push(JourneyMilestone.new(key, category, description))
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :memory_lane_data

  def memory_lane_data
    @memory_lane_data ||= MemoryLaneSaveData.new
  end
end

SaveData.register(:memory_lane_data) do
  save_value { $PokemonGlobal.memory_lane_data }
  load_value { |val| $PokemonGlobal.memory_lane_data = val }
  new_game_value { MemoryLaneSaveData.new }
end

#===============================================================================
# Tracking Hooks
#===============================================================================

# Track KOs and battles won
EventHandlers.add(:on_end_battle, :sc_memory_lane_battle,
  proc { |result, _can_lose|
    next unless MemoryLane::ENABLED
    data = $PokemonGlobal.memory_lane_data
    data.total_battles += 1
    # Award battle stats to team members who participated
    $player.party.each do |pkmn|
      next if pkmn.egg?
      stats = data.stats_for(pkmn)
      stats.battles_won += 1 if result == 1
      stats.times_fainted += 1 if pkmn.fainted?
    end
  }
)

# Track steps
EventHandlers.add(:on_player_step_taken, :sc_memory_lane_steps,
  proc {
    next unless MemoryLane::ENABLED
    data = $PokemonGlobal.memory_lane_data
    data.total_steps += 1
    lead = $player.party[0]
    if lead && !lead.egg?
      data.stats_for(lead).steps_as_lead += 1
    end
  }
)

# Track catches
EventHandlers.add(:on_wild_pokemon_caught, :sc_memory_lane_catch,
  proc { |pkmn|
    next unless MemoryLane::ENABLED
    stats = $PokemonGlobal.memory_lane_data.stats_for(pkmn)
    stats.caught_level    = pkmn.level
    stats.caught_time     = pbGetTimeNow
    map_name = $game_map ? pbGetMapNameFromId($game_map.map_id) : "Unknown"
    stats.caught_location = map_name
  }
)

#===============================================================================
# Event Helpers
#===============================================================================

def pbMemoryMilestone(key, description, category = :Story)
  return unless MemoryLane::ENABLED
  $PokemonGlobal.memory_lane_data.add_milestone(key, category, description)
end

#===============================================================================
# Memory Lane Scene (Summary View)
#===============================================================================

def pbShowMemoryLane
  return unless MemoryLane::ENABLED
  pbSEPlay(MemoryLane::SE_OPEN) if MemoryLane::SE_OPEN
  pbBGMPlay(MemoryLane::BGM_LANE) if MemoryLane::BGM_LANE
  data = $PokemonGlobal.memory_lane_data

  # Show overview
  msg = _INTL("=== MEMORY LANE ===\n")
  msg += _INTL("Total Battles: {1}\n", data.total_battles)
  msg += _INTL("Total Steps: {1}\n", data.total_steps)
  msg += _INTL("Milestones: {1}\n\n", data.milestones.length)

  # Party stats
  msg += _INTL("--- Your Team ---\n")
  $player.party.each do |pkmn|
    next if pkmn.egg?
    stats = data.stats_for(pkmn)
    msg += _INTL("{1} (Lv.{2})\n", pkmn.name, pkmn.level)
    msg += _INTL("  Battles Won: {1} | KOs: {2} | Fainted: {3}\n",
                 stats.battles_won, stats.kos, stats.times_fainted)
    msg += _INTL("  Steps as Lead: {1}\n", stats.steps_as_lead)
    if stats.caught_location && !stats.caught_location.empty?
      msg += _INTL("  Caught: {1} at Lv.{2}\n", stats.caught_location, stats.caught_level)
    end
  end

  pbMessage(msg)

  # Show milestones
  if data.milestones.length > 0
    show_milestones = pbConfirmMessage(_INTL("View journey milestones?"))
    if show_milestones
      milestone_msg = _INTL("--- Milestones ---\n")
      data.milestones.each do |m|
        milestone_msg += _INTL("[{1}] {2}\n", m.category, m.description)
        if m.party_snapshot.length > 0
          team = m.party_snapshot.map { |p| "#{p[:name]} Lv.#{p[:level]}" }.join(", ")
          milestone_msg += _INTL("  Team: {1}\n", team)
        end
      end
      pbMessage(milestone_msg)
    end
  end
end
