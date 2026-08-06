#===============================================================================
# [SC] Battle Arena - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class ArenaSaveData
  attr_accessor :highest_floor     # Highest floor cleared
  attr_accessor :current_streak    # Current win streak
  attr_accessor :best_streak       # All-time best streak
  attr_accessor :cleared_floors    # Array of floor numbers cleared (for first-time rewards)
  attr_accessor :total_runs        # Total arena attempts

  def initialize
    @highest_floor  = 0
    @current_streak = 0
    @best_streak    = 0
    @cleared_floors = []
    @total_runs     = 0
  end

  def floor_cleared?(floor_num)
    @cleared_floors.include?(floor_num)
  end

  def record_clear(floor_num)
    @cleared_floors.push(floor_num) unless floor_cleared?(floor_num)
    @highest_floor = floor_num if floor_num > @highest_floor
    @current_streak += 1
    @best_streak = @current_streak if @current_streak > @best_streak
  end

  def reset_streak
    @current_streak = 0
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :arena_data

  def arena_data
    @arena_data ||= ArenaSaveData.new
  end
end

SaveData.register(:arena_data) do
  save_value { $PokemonGlobal.arena_data }
  load_value { |val| $PokemonGlobal.arena_data = val }
  new_game_value { ArenaSaveData.new }
end

#===============================================================================
# Arena Manager
#===============================================================================

module ArenaManager
  def self.data
    $PokemonGlobal.arena_data
  end

  #=============================================================================
  # Start an arena run
  #=============================================================================

  def self.start_run
    data.total_runs += 1
    pbBGMPlay(SCBattleArena::BGM_ARENA) if SCBattleArena::BGM_ARENA

    SCBattleArena::FLOORS.keys.sort.each do |floor_num|
      floor = SCBattleArena::FLOORS[floor_num]
      pbMessage(_INTL("=== {1} (Floor {2}) ===", floor[:name], floor_num))
      pbMessage(_INTL("Trainers: {1} | Level: {2}", floor[:trainers], floor[:level]))

      success = run_floor(floor_num, floor)
      if success
        record_floor_clear(floor_num)
      else
        pbMessage(_INTL("You were defeated on {1}...", floor[:name]))
        data.reset_streak
        break
      end

      # Offer to continue or quit between floors
      if floor_num < SCBattleArena::FLOORS.keys.max
        unless pbConfirmMessage(_INTL("Continue to the next floor?"))
          pbMessage(_INTL("You left the Arena after Floor {1}.", floor_num))
          break
        end
        # Heal between floors if enabled
        if SCBattleArena::HEAL_BETWEEN_TRAINERS
          $player.party.each { |pkmn| pkmn.heal }
        end
      end
    end

    pbMessage(_INTL("Arena run complete! Streak: {1} (Best: {2})",
                    data.current_streak, data.best_streak))
  end

  #=============================================================================
  # Run a single floor — fight N trainers
  #=============================================================================

  def self.run_floor(floor_num, floor)
    floor[:trainers].times do |i|
      trainer_name = _INTL("Arena Trainer {1}", (floor_num - 1) * 3 + i + 1)

      # Generate battle with arena trainer
      result = pbTrainerBattle(
        SCBattleArena::ARENA_TRAINER_TYPE,
        trainer_name, nil, nil, false
      )

      return false unless result == 1  # Must win

      # Heal between trainers on same floor if enabled
      if SCBattleArena::HEAL_BETWEEN_TRAINERS && i < floor[:trainers] - 1
        $player.party.each { |pkmn| pkmn.heal }
      end
    end
    true
  end

  #=============================================================================
  # Record floor clear + grant rewards
  #=============================================================================

  def self.record_floor_clear(floor_num)
    first_clear = !data.floor_cleared?(floor_num)
    data.record_clear(floor_num)
    pbSEPlay(SCBattleArena::SE_FLOOR_CLEAR)
    pbMessage(_INTL("Floor {1} cleared! Streak: {2}", floor_num, data.current_streak))

    # First-time milestone rewards
    if first_clear
      rewards = SCBattleArena::MILESTONE_REWARDS[floor_num]
      if rewards
        pbMessage(_INTL("Milestone reward!"))
        rewards.each do |item, qty|
          $bag.add(item, qty)
          item_data = GameData::Item.try_get(item)
          pbMessage(_INTL("Received {1} x{2}!", item_data ? item_data.name : item, qty))
        end
      end
    end

    # Streak milestones
    streak_reward = SCBattleArena::STREAK_MILESTONES[data.current_streak]
    if streak_reward
      pbSEPlay(SCBattleArena::SE_STREAK)
      pbMessage(_INTL("Streak milestone: {1} wins!", data.current_streak))
      streak_reward.each do |item, qty|
        $bag.add(item, qty)
        item_data = GameData::Item.try_get(item)
        pbMessage(_INTL("Received {1} x{2}!", item_data ? item_data.name : item, qty))
      end
    end

    # Title integration
    if defined?(PokemonTitles) && data.best_streak >= 50
      # Could grant "Arena Champion" title
    end
  end

  #=============================================================================
  # Status display
  #=============================================================================

  def self.show_status
    msg  = _INTL("=== Battle Arena ===\n")
    msg += _INTL("Highest Floor: {1}/{2}\n", data.highest_floor, SCBattleArena::FLOORS.length)
    msg += _INTL("Current Streak: {1}\n", data.current_streak)
    msg += _INTL("Best Streak: {1}\n", data.best_streak)
    msg += _INTL("Total Runs: {1}", data.total_runs)
    pbMessage(msg)
  end
end

#===============================================================================
# Event helpers
#===============================================================================

def pbStartArena
  return unless SCBattleArena::ENABLED
  ArenaManager.start_run
end

def pbArenaStatus
  ArenaManager.show_status
end

def pbArenaHighestFloor
  $PokemonGlobal.arena_data.highest_floor
end

def pbArenaBestStreak
  $PokemonGlobal.arena_data.best_streak
end

def pbArenaFloorCleared?(floor_num)
  $PokemonGlobal.arena_data.floor_cleared?(floor_num)
end
