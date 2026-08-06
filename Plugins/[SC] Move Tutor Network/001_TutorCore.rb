#===============================================================================
# [SC] Move Tutor Network - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class TutorNetworkSaveData
  attr_accessor :discovered_tutors  # Array of discovered tutor keys
  attr_accessor :moves_taught       # Hash { tutor_key => [move_ids taught] }

  def initialize
    @discovered_tutors = []
    @moves_taught      = {}
  end

  def discover(tutor_key)
    return false if @discovered_tutors.include?(tutor_key)
    @discovered_tutors.push(tutor_key)
    true
  end

  def discovered?(tutor_key)
    @discovered_tutors.include?(tutor_key)
  end

  def record_taught(tutor_key, move_id)
    @moves_taught[tutor_key] ||= []
    @moves_taught[tutor_key].push(move_id) unless @moves_taught[tutor_key].include?(move_id)
  end

  def total_discovered
    @discovered_tutors.length
  end

  def total_tutors
    MoveTutorNetwork::TUTORS.length
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :tutor_network_data

  def tutor_network_data
    @tutor_network_data ||= TutorNetworkSaveData.new
  end
end

SaveData.register(:tutor_network_data) do
  save_value { $PokemonGlobal.tutor_network_data }
  load_value { |val| $PokemonGlobal.tutor_network_data = val }
  new_game_value { TutorNetworkSaveData.new }
end

#===============================================================================
# Tutor Interaction
#===============================================================================

module TutorNetworkManager
  def self.data
    $PokemonGlobal.tutor_network_data
  end

  #=============================================================================
  # Discover a tutor (first visit)
  #=============================================================================

  def self.discover(tutor_key)
    tutor = MoveTutorNetwork::TUTORS[tutor_key]
    return false unless tutor
    if data.discover(tutor_key)
      pbSEPlay(MoveTutorNetwork::SE_DISCOVER)
      pbMessage(_INTL("You discovered {1} at {2}!", tutor[:name], tutor[:location]))
      pbMessage(_INTL("Tutors found: {1}/{2}", data.total_discovered, data.total_tutors))
      # Codex integration
      if MoveTutorNetwork::CODEX_ON_DISCOVER && defined?(codexDiscover)
        codexDiscover(:"TUTOR_#{tutor_key}")
      end
      return true
    end
    false
  end

  #=============================================================================
  # Open tutor menu for a specific tutor
  #=============================================================================

  def self.open_tutor(tutor_key)
    tutor = MoveTutorNetwork::TUTORS[tutor_key]
    return unless tutor

    # Auto-discover on first interaction
    discover(tutor_key) unless data.discovered?(tutor_key)

    # Build move list for selection
    move_names = tutor[:moves].map { |m|
      move_data = GameData::Move.try_get(m[:move])
      next nil unless move_data
      cost_label = case tutor[:currency]
                   when :money  then "$#{m[:cost]}"
                   when :bp     then "#{m[:cost]} BP"
                   else "#{m[:cost]} Shards"
                   end
      "#{move_data.name} (#{cost_label})"
    }.compact
    move_names.push("Cancel")

    loop do
      choice = pbMessage(_INTL("{1}: Which move shall I teach?", tutor[:name]),
                         move_names, move_names.length)
      break if choice == move_names.length - 1 # Cancel

      move_entry = tutor[:moves][choice]
      next unless move_entry
      teach_move(tutor_key, tutor, move_entry)
    end
  end

  #=============================================================================
  # Teach a move to a chosen Pokemon
  #=============================================================================

  def self.teach_move(tutor_key, tutor, move_entry)
    move_id   = move_entry[:move]
    cost      = move_entry[:cost]
    currency  = tutor[:currency]

    # Check currency
    unless can_afford?(currency, cost)
      msg = case currency
            when :money then "You don't have enough money."
            when :bp    then "You don't have enough Battle Points."
            else "You don't have enough Shards."
            end
      pbMessage(_INTL(msg))
      return false
    end

    # Choose Pokemon
    pbChoosePokemon(1, 3)
    pkmn_index = pbGet(1)
    return false if pkmn_index < 0
    pkmn = $player.party[pkmn_index]
    return false unless pkmn

    move_data = GameData::Move.try_get(move_id)
    return false unless move_data

    if pkmn.hasMove?(move_id)
      pbMessage(_INTL("{1} already knows {2}.", pkmn.name, move_data.name))
      return false
    end

    # Deduct cost
    deduct_currency(currency, cost)

    # Teach
    if pbLearnMove(pkmn, move_id)
      pbSEPlay(MoveTutorNetwork::SE_LEARN_MOVE)
      data.record_taught(tutor_key, move_id)
      return true
    end
    # Refund if learning was cancelled
    refund_currency(currency, cost)
    false
  end

  #=============================================================================
  # Currency helpers
  #=============================================================================

  def self.can_afford?(currency, cost)
    case currency
    when :money then $player.money >= cost
    when :bp    then ($player.respond_to?(:battle_points) ? $player.battle_points >= cost : false)
    else $bag.has?(MoveTutorNetwork::SHARD_ITEM, cost)
    end
  end

  def self.deduct_currency(currency, cost)
    case currency
    when :money then $player.money -= cost
    when :bp    then $player.battle_points -= cost if $player.respond_to?(:battle_points)
    else $bag.remove(MoveTutorNetwork::SHARD_ITEM, cost)
    end
  end

  def self.refund_currency(currency, cost)
    case currency
    when :money then $player.money += cost
    when :bp    then $player.battle_points += cost if $player.respond_to?(:battle_points)
    else $bag.add(MoveTutorNetwork::SHARD_ITEM, cost)
    end
  end
end

#===============================================================================
# Event helpers
#===============================================================================

def pbMoveTutor(tutor_key)
  return unless MoveTutorNetwork::ENABLED
  TutorNetworkManager.open_tutor(tutor_key)
end

def pbDiscoverTutor(tutor_key)
  TutorNetworkManager.discover(tutor_key)
end

def pbTutorDiscovered?(tutor_key)
  $PokemonGlobal.tutor_network_data.discovered?(tutor_key)
end

#===============================================================================
# Show network overview
#===============================================================================

def pbShowTutorNetwork
  data = $PokemonGlobal.tutor_network_data
  msg = _INTL("Move Tutor Network ({1}/{2} discovered)\n",
              data.total_discovered, data.total_tutors)
  MoveTutorNetwork::TUTORS.each do |key, tutor|
    if data.discovered?(key)
      msg += _INTL("✓ {1} - {2}\n", tutor[:name], tutor[:location])
    else
      msg += _INTL("? ??? - ???\n")
    end
  end
  pbMessage(msg)
end
