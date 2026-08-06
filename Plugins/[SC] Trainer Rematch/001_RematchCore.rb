#===============================================================================
# [SC] Trainer Rematch - Core Logic
#===============================================================================

class RematchSaveData
  attr_accessor :trainers  # { trainer_key => { tier:, steps_since:, defeated: } }

  def initialize
    @trainers = {}
  end

  def register(trainer_key)
    @trainers[trainer_key] ||= {
      :tier         => 0,
      :steps_since  => 0,
      :defeated     => false,
      :total_wins   => 0
    }
  end

  def defeat(trainer_key)
    register(trainer_key)
    data = @trainers[trainer_key]
    data[:defeated] = true
    data[:total_wins] += 1
    data[:steps_since] = 0
    if data[:tier] < TrainerRematch::MAX_REMATCH_TIER
      data[:tier] += 1
    end
  end

  def available?(trainer_key)
    return false unless TrainerRematch::ENABLED
    return false unless $player && $player.badge_count >= TrainerRematch::BADGES_REQUIRED
    data = @trainers[trainer_key]
    return false unless data && data[:defeated]
    data[:steps_since] >= TrainerRematch::COOLDOWN_STEPS
  end

  def tier(trainer_key)
    data = @trainers[trainer_key]
    data ? data[:tier] : 0
  end

  def on_step
    @trainers.each_value do |data|
      data[:steps_since] += 1 if data[:defeated]
    end
  end
end

SaveData.register(:trainer_rematch_data) do
  save_value { $TrainerRematchData }
  load_value { |val| $TrainerRematchData = val || RematchSaveData.new }
  new_game_value { RematchSaveData.new }
end

def pbRematch
  $TrainerRematchData ||= RematchSaveData.new
end

#===============================================================================
# Step counter
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_rematch_step,
  proc {
    next unless TrainerRematch::ENABLED
    pbRematch.on_step
  }
)

#===============================================================================
# Team scaling
#===============================================================================

module RematchScaler
  def self.scale_party(trainer, tier)
    return if tier <= 0
    trainer.party.each do |pkmn|
      # Level boost
      boost = TrainerRematch::LEVEL_BOOST_PER_TIER * tier
      new_level = [pkmn.level + boost, GameData::GrowthRate.max_level].min
      pkmn.level = new_level
      pkmn.calc_stats

      # Add held items
      if tier >= TrainerRematch::ADD_ITEMS_AT_TIER && !pkmn.hasItem?
        assign_held_item(pkmn)
      end

      # Maximize IVs
      if tier >= TrainerRematch::MAX_IVS_AT_TIER
        GameData::Stat.each_main { |s| pkmn.iv[s.id] = 31 }
        pkmn.calc_stats
      end

      # Evolve
      if tier >= TrainerRematch::EVOLVE_AT_TIER
        try_evolve(pkmn)
      end
    end
  end

  def self.assign_held_item(pkmn)
    common_items = [:LEFTOVERS, :LIFEORB, :CHOICEBAND, :CHOICESPECS,
                    :CHOICESCARF, :FOCUSSASH, :ASSAULTVEST, :ROCKYHELMET]
    item = common_items.sample
    pkmn.item = item if GameData::Item.exists?(item)
  end

  def self.try_evolve(pkmn)
    # Simple evolution check — evolve once if possible
    new_species = nil
    GameData::Species.get(pkmn.species).get_evolutions(true).each do |evo|
      new_species = evo[0]
      break
    end
    if new_species
      pkmn.species = new_species
      pkmn.calc_stats
    end
  end
end

#===============================================================================
# Event helpers
#===============================================================================

# Check if a trainer is ready for rematch (for Conditional Branch)
def rematchAvailable?(trainer_key)
  pbRematch.available?(trainer_key)
end

# Record a trainer defeat (call after battle)
def rematchDefeat(trainer_key)
  pbRematch.defeat(trainer_key)
end

# Get current rematch tier
def rematchTier(trainer_key)
  pbRematch.tier(trainer_key)
end

# Start a rematch battle
def pbRematchBattle(trainer_type, trainer_name, trainer_key = nil)
  trainer_key ||= "#{trainer_type}_#{trainer_name}"
  tier = pbRematch.tier(trainer_key)
  # Start battle, then scale
  outcome = pbTrainerBattle(trainer_type, trainer_name)
  if outcome == 1  # Win
    pbRematch.defeat(trainer_key)
    # Bonus reward
    if rand(100) < TrainerRematch::BONUS_ITEM_CHANCE
      reward = TrainerRematch::BONUS_ITEMS.sample
      item, qty = reward
      if GameData::Item.exists?(item)
        $bag.add(item, qty)
        pbMessage(_INTL("\\nRematch bonus: {1} x{2}!", GameData::Item.get(item).name, qty))
      end
    end
  end
  outcome
end

#===============================================================================
# Event comment tag: [Rematch TRAINER_KEY]
#===============================================================================

EventHandlers.add(:on_event_interaction, :sc_rematch_tags,
  proc { |event|
    next unless TrainerRematch::ENABLED
    next unless event
    event.list.each do |cmd|
      next unless cmd.code == 108 || cmd.code == 408
      if cmd.parameters[0] =~ /\[Rematch\s*(\w*)\]/i
        key = $1.empty? ? "event_#{event.id}" : $1
        pbRematch.register(key)
      end
    end
  }
)
