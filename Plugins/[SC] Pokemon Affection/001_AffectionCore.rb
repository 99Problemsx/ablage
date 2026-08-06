#===============================================================================
# [SC] Pokemon Affection - Core Data & Logic
#===============================================================================

# Extend Pokemon class with affection value
class Pokemon
  attr_writer :affection

  def affection
    @affection ||= 0
  end

  def affection_level
    level = :NONE
    PokemonAffection::LEVEL_THRESHOLDS.each do |threshold, name|
      level = name if affection >= threshold
    end
    level
  end

  def add_affection(amount)
    return unless PokemonAffection::ENABLED
    self.affection = (affection + amount).clamp(0, PokemonAffection::MAX_AFFECTION)
    if PokemonAffection::DEBUG_MODE
      echoln "[SC] Affection: #{name} now at #{affection} (#{affection_level})"
    end
  end
end

#===============================================================================
# Walking affection gain (lead Pokemon)
#===============================================================================

module AffectionWalkTracker
  @step_counter = 0

  def self.on_step
    return unless PokemonAffection::ENABLED
    return unless $player && $player.party && !$player.party.empty?
    @step_counter += 1

    # Lead Pokemon
    if @step_counter >= PokemonAffection::GAIN_WALK_STEPS
      lead = $player.party.first
      lead.add_affection(1) if lead && !lead.egg?
      @step_counter = 0
    end
  end
end

EventHandlers.add(:on_player_step_taken, :sc_affection_walk,
  proc { AffectionWalkTracker.on_step }
)

#===============================================================================
# Event-based affection gains
#===============================================================================

# Level up
EventHandlers.add(:on_pokemon_level_up, :sc_affection_levelup,
  proc { |pkmn|
    next unless PokemonAffection::ENABLED
    pkmn.add_affection(PokemonAffection::GAIN_LEVEL_UP)
  }
)

# Evolution
EventHandlers.add(:on_pokemon_evolved, :sc_affection_evolve,
  proc { |pkmn|
    next unless PokemonAffection::ENABLED
    pkmn.add_affection(PokemonAffection::GAIN_EVOLUTION)
  }
)

# Pokemon Center heal
EventHandlers.add(:on_pokemon_center_heal, :sc_affection_heal,
  proc {
    next unless PokemonAffection::ENABLED
    next unless $player && $player.party
    $player.party.each do |pkmn|
      next if !pkmn || pkmn.egg?
      pkmn.add_affection(PokemonAffection::GAIN_HEAL_CENTER)
    end
  }
)

# Win battle
EventHandlers.add(:on_end_battle, :sc_affection_battle_end,
  proc { |decision, _canLose|
    next unless PokemonAffection::ENABLED
    next unless decision == 1  # Win
    next unless $player && $player.party
    $player.party.each do |pkmn|
      next if !pkmn || pkmn.egg?
      pkmn.add_affection(PokemonAffection::GAIN_WIN_BATTLE)
    end
  }
)

# Faint
EventHandlers.add(:on_faint, :sc_affection_faint,
  proc { |_battle, battler|
    next unless PokemonAffection::ENABLED
    next unless battler.index.even?  # Player's side
    pkmn = battler.pokemon
    pkmn.add_affection(PokemonAffection::LOSS_FAINT) if pkmn
  }
)
