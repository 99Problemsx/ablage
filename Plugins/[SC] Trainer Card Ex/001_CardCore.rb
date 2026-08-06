#===============================================================================
# [SC] Trainer Card Ex - Core Logic + UI
#===============================================================================

#===============================================================================
# Save Data (achievement tracking cache)
#===============================================================================

class TrainerCardExSaveData
  attr_accessor :earned_badges    # Array of earned badge keys
  attr_accessor :total_battles    # Lifetime battles won
  attr_accessor :total_steps      # Lifetime steps
  attr_accessor :total_battles_lost
  attr_accessor :total_captures
  attr_accessor :total_eggs_hatched
  attr_accessor :total_money_earned

  def initialize
    @earned_badges       = []
    @total_battles       = 0
    @total_steps         = 0
    @total_battles_lost  = 0
    @total_captures      = 0
    @total_eggs_hatched  = 0
    @total_money_earned  = 0
  end

  # Backwards-compatible getters in case loaded saves predate new fields.
  def total_battles_lost;  @total_battles_lost  ||= 0; end
  def total_captures;      @total_captures      ||= 0; end
  def total_eggs_hatched;  @total_eggs_hatched  ||= 0; end
  def total_money_earned;  @total_money_earned  ||= 0; end

  def check_badges
    TrainerCardEx::BADGES_DISPLAY.each do |key, config|
      next if @earned_badges.include?(key)
      begin
        if config[:condition].call
          @earned_badges.push(key)
        end
      rescue StandardError
        # Condition failed — skip
      end
    end
  end

  def badge_count
    @earned_badges.length
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :trainer_card_ex_data

  def trainer_card_ex_data
    @trainer_card_ex_data ||= TrainerCardExSaveData.new
  end
end

SaveData.register(:trainer_card_ex_data) do
  save_value { $PokemonGlobal.trainer_card_ex_data }
  load_value { |val| $PokemonGlobal.trainer_card_ex_data = val }
  new_game_value { TrainerCardExSaveData.new }
end

#===============================================================================
# Tracking hooks
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_trainer_card_battle,
  proc { |result, _can_lose|
    next unless TrainerCardEx::ENABLED
    data = $PokemonGlobal.trainer_card_ex_data
    case result
    when 1 then data.total_battles      += 1     # win
    when 2 then data.total_battles_lost = data.total_battles_lost + 1  # loss
    end
  }
)

EventHandlers.add(:on_player_step_taken, :sc_trainer_card_steps,
  proc {
    next unless TrainerCardEx::ENABLED
    $PokemonGlobal.trainer_card_ex_data.total_steps += 1
  }
)

EventHandlers.add(:on_pokemon_added_to_party, :sc_trainer_card_capture,
  proc { |pkmn, source|
    next unless TrainerCardEx::ENABLED
    next unless source == :capture || source == :wild
    data = $PokemonGlobal.trainer_card_ex_data
    data.total_captures = data.total_captures + 1
  }
)

EventHandlers.add(:on_egg_hatched, :sc_trainer_card_hatch,
  proc { |_pkmn|
    next unless TrainerCardEx::ENABLED
    data = $PokemonGlobal.trainer_card_ex_data
    data.total_eggs_hatched = data.total_eggs_hatched + 1
  }
)

#===============================================================================
# Enhanced Trainer Card Display
#===============================================================================

def pbShowTrainerCardEx
  return unless TrainerCardEx::ENABLED
  pbSEPlay(TrainerCardEx::SE_OPEN)
  data = $PokemonGlobal.trainer_card_ex_data
  data.check_badges  # Refresh earned badges

  msg = _INTL("╔══════════════════════════╗\n")
  msg += _INTL("║   TRAINER CARD — {1}\n", $player.name)
  msg += _INTL("╠══════════════════════════╣\n")

  # Basic stats
  if TrainerCardEx::SHOW_PLAYTIME
    time = $stats.play_time rescue 0
    hours = time / 3600
    mins  = (time % 3600) / 60
    msg += _INTL("║ Playtime: {1}h {2}m\n", hours, mins)
  end

  msg += _INTL("║ Gym Badges: {1}\n", $player.badge_count) if TrainerCardEx::SHOW_POKEDEX
  msg += _INTL("║ Money: ${1}\n", $player.money) if TrainerCardEx::SHOW_MONEY

  if TrainerCardEx::SHOW_POKEDEX
    owned = $player.pokedex.owned_count rescue 0
    seen  = $player.pokedex.seen_count rescue 0
    msg += _INTL("║ Pokédex: {1} owned / {2} seen\n", owned, seen)
  end

  msg += _INTL("║ Battles Won: {1}\n", data.total_battles) if TrainerCardEx::SHOW_BATTLES_WON
  msg += _INTL("║ Battles Lost: {1}\n", data.total_battles_lost) if TrainerCardEx::SHOW_BATTLES_WON
  msg += _INTL("║ Pokemon Caught: {1}\n", data.total_captures) if TrainerCardEx::SHOW_BATTLES_WON
  msg += _INTL("║ Eggs Hatched: {1}\n", data.total_eggs_hatched) if TrainerCardEx::SHOW_BATTLES_WON
  msg += _INTL("║ Steps: {1}\n", data.total_steps) if TrainerCardEx::SHOW_STEPS

  # Cross-plugin stats
  if TrainerCardEx::SHOW_ARENA_STREAK && defined?(BattleArena) &&
     $PokemonGlobal.respond_to?(:arena_data) && $PokemonGlobal.arena_data
    msg += _INTL("║ Arena Best Streak: {1}\n", $PokemonGlobal.arena_data.best_streak)
  end

  if TrainerCardEx::SHOW_QUESTS_DONE && defined?(QuestJournal) &&
     $PokemonGlobal.respond_to?(:quest_data)
    msg += _INTL("║ Quests Completed: {1}\n", $PokemonGlobal.quest_data.completed_quests.length)
  end

  if TrainerCardEx::SHOW_MORALITY && defined?(MoralitySystem) &&
     $PokemonGlobal.respond_to?(:morality_data)
    msg += _INTL("║ Alignment: {1}\n", $PokemonGlobal.morality_data.tier_label)
  end

  # Achievement badges
  msg += _INTL("╠══════════════════════════╣\n")
  msg += _INTL("║ Achievements: {1}/{2}\n", data.badge_count, TrainerCardEx::BADGES_DISPLAY.length)
  data.earned_badges.each do |key|
    badge_cfg = TrainerCardEx::BADGES_DISPLAY[key]
    msg += _INTL("║  ★ {1}\n", badge_cfg[:name]) if badge_cfg
  end

  # Team showcase
  msg += _INTL("╠══════════════════════════╣\n")
  msg += _INTL("║ Team:\n")
  $player.party.each do |pkmn|
    next if pkmn.egg?
    title = ""
    if defined?(PokemonTitles) && pkmn.respond_to?(:name_with_title)
      title = pkmn.name_with_title
    else
      title = "#{pkmn.name} Lv.#{pkmn.level}"
    end
    msg += _INTL("║  {1}\n", title)
  end

  msg += _INTL("╚══════════════════════════╝")
  pbMessage(msg)
end
