#===============================================================================
# [SC] Wanted Board - Core Logic
#===============================================================================

#===============================================================================
# Active Bounty Tracking
#===============================================================================

class ActiveBounty
  attr_accessor :key, :progress

  def initialize(key)
    @key      = key
    @progress = 0
  end

  def config
    WantedBoard::BOUNTIES[@key]
  end

  def complete?
    @progress >= (config[:quantity] || 1)
  end

  def increment(amount = 1)
    @progress += amount
  end
end

#===============================================================================
# Save Data
#===============================================================================

class WantedBoardSaveData
  attr_accessor :available_bounties  # Array of bounty keys currently on board
  attr_accessor :active_bounties     # Array of ActiveBounty
  attr_accessor :completed_bounties  # Array of completed bounty keys
  attr_accessor :refresh_counter     # Steps until next refresh
  attr_accessor :board_seed          # Seed for deterministic board generation

  def initialize
    @available_bounties = []
    @active_bounties    = []
    @completed_bounties = []
    @refresh_counter    = WantedBoard::REFRESH_STEPS
    @board_seed         = rand(99999)
    refresh_board
  end

  def refresh_board
    badge_count = $player ? $player.badge_count : 0
    eligible = WantedBoard::BOUNTIES.select { |_key, b|
      b[:min_badges] <= badge_count
    }.keys
    eligible -= @completed_bounties
    eligible -= @active_bounties.map(&:key)
    eligible.shuffle!
    @available_bounties = eligible.first(WantedBoard::BOARD_SIZE)
    @refresh_counter = WantedBoard::REFRESH_STEPS
  end

  def accept(bounty_key)
    return false if @active_bounties.length >= WantedBoard::MAX_ACTIVE
    return false unless @available_bounties.include?(bounty_key)
    @available_bounties.delete(bounty_key)
    @active_bounties.push(ActiveBounty.new(bounty_key))
    true
  end

  def active?(bounty_key)
    @active_bounties.any? { |b| b.key == bounty_key }
  end

  def find_active(bounty_key)
    @active_bounties.find { |b| b.key == bounty_key }
  end

  def complete(bounty_key)
    bounty = find_active(bounty_key)
    return false unless bounty && bounty.complete?
    @active_bounties.delete(bounty)
    @completed_bounties.push(bounty_key)
    true
  end

  def total_completed
    @completed_bounties.length
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :wanted_board_data

  def wanted_board_data
    @wanted_board_data ||= WantedBoardSaveData.new
  end
end

SaveData.register(:wanted_board_data) do
  save_value { $PokemonGlobal.wanted_board_data }
  load_value { |val| $PokemonGlobal.wanted_board_data = val }
  new_game_value { WantedBoardSaveData.new }
end

#===============================================================================
# Board Manager
#===============================================================================

module WantedBoardManager
  def self.data
    $PokemonGlobal.wanted_board_data
  end

  #=============================================================================
  # Open the board UI
  #=============================================================================

  def self.open_board
    # Check for refresh
    data.refresh_board if data.available_bounties.empty?

    options = data.available_bounties.map { |key|
      config = WantedBoard::BOUNTIES[key]
      "★#{config[:difficulty]} #{config[:name]}"
    }
    # Show active bounties summary
    if data.active_bounties.length > 0
      options.push("--- Active Bounties ---")
      data.active_bounties.each do |ab|
        cfg = ab.config
        options.push("[#{ab.progress}/#{cfg[:quantity]}] #{cfg[:name]}")
      end
    end
    options.push("Cancel")

    choice = pbMessage(
      _INTL("Wanted Board ({1} completed)", data.total_completed),
      options, options.length
    )
    return if choice == options.length - 1

    # Check if player selected an available bounty
    if choice < data.available_bounties.length
      bounty_key = data.available_bounties[choice]
      show_bounty_detail(bounty_key)
    else
      # Selected an active bounty — show progress
      active_idx = choice - data.available_bounties.length - 1
      if active_idx >= 0 && active_idx < data.active_bounties.length
        ab = data.active_bounties[active_idx]
        check_completion(ab)
      end
    end
  end

  def self.show_bounty_detail(bounty_key)
    config = WantedBoard::BOUNTIES[bounty_key]
    return unless config
    msg = _INTL("{1}\n{2}\nDifficulty: {3}\nReward: ${4}",
                config[:name], config[:description],
                "★" * config[:difficulty], config[:reward_money])
    if config[:reward_items].length > 0
      items_str = config[:reward_items].map { |item, qty|
        item_data = GameData::Item.try_get(item)
        "#{item_data ? item_data.name : item} x#{qty}"
      }.join(", ")
      msg += _INTL("\nBonus: {1}", items_str)
    end

    if data.active_bounties.length >= WantedBoard::MAX_ACTIVE
      pbMessage(msg + _INTL("\n(Max active bounties reached)"))
    elsif pbConfirmMessage(msg + _INTL("\nAccept this bounty?"))
      if data.accept(bounty_key)
        pbSEPlay(WantedBoard::SE_ACCEPT)
        pbMessage(_INTL("Bounty accepted!"))
      end
    end
  end

  #=============================================================================
  # Check if active bounty is completed
  #=============================================================================

  def self.check_completion(active_bounty)
    config = active_bounty.config
    msg = _INTL("{1}\nProgress: {2}/{3}",
                config[:name], active_bounty.progress, config[:quantity])
    if active_bounty.complete?
      if pbConfirmMessage(msg + _INTL("\nClaim reward?"))
        grant_rewards(active_bounty.key)
      end
    else
      pbMessage(msg)
    end
  end

  #=============================================================================
  # Grant bounty rewards
  #=============================================================================

  def self.grant_rewards(bounty_key)
    config = WantedBoard::BOUNTIES[bounty_key]
    return unless config && data.complete(bounty_key)

    pbSEPlay(WantedBoard::SE_COMPLETE)
    $player.money += config[:reward_money]
    pbMessage(_INTL("Received ${1}!", config[:reward_money]))

    config[:reward_items].each do |item, qty|
      $bag.add(item, qty)
      item_data = GameData::Item.try_get(item)
      pbMessage(_INTL("Received {1} x{2}!", item_data ? item_data.name : item, qty))
    end

    # Reputation integration
    if defined?(repChange) && WantedBoard::REPUTATION_BONUS_FACTION
      repChange(WantedBoard::REPUTATION_BONUS_FACTION, WantedBoard::REPUTATION_BONUS_AMOUNT)
    end
  end
end

#===============================================================================
# Tracking hooks — progress bounties automatically
#===============================================================================

# Track catch bounties
EventHandlers.add(:on_wild_pokemon_caught, :sc_wanted_board_catch,
  proc { |pkmn|
    next unless WantedBoard::ENABLED
    data = $PokemonGlobal.wanted_board_data
    data.active_bounties.each do |ab|
      cfg = ab.config
      case cfg[:type]
      when :catch
        ab.increment if pkmn.species == cfg[:target]
      when :catch_type
        pkmn_data = GameData::Species.get(pkmn.species)
        if pkmn_data.types.include?(cfg[:target])
          ab.increment
        end
      end
    end
  }
)

# Track defeat wild bounties
EventHandlers.add(:on_end_battle, :sc_wanted_board_defeat,
  proc { |result, _can_lose|
    next unless WantedBoard::ENABLED && result == 1
    data = $PokemonGlobal.wanted_board_data
    data.active_bounties.each do |ab|
      cfg = ab.config
      case cfg[:type]
      when :defeat_trainer
        ab.increment if cfg[:target].nil? # Generic trainer defeat
      end
    end
  }
)

# Track fetch item bounties (check on bag change)
EventHandlers.add(:on_player_step_taken, :sc_wanted_board_steps,
  proc {
    next unless WantedBoard::ENABLED
    data = $PokemonGlobal.wanted_board_data

    # Decrement refresh counter
    data.refresh_counter -= 1
    data.refresh_board if data.refresh_counter <= 0

    # Check fetch bounties
    data.active_bounties.each do |ab|
      cfg = ab.config
      if cfg[:type] == :fetch_item
        owned = $bag.quantity(cfg[:target])
        ab.progress = [owned, cfg[:quantity]].min
      end
    end
  }
)

#===============================================================================
# Event helpers
#===============================================================================

def pbOpenWantedBoard
  return unless WantedBoard::ENABLED
  WantedBoardManager.open_board
end

def pbBountyActive?(bounty_key)
  $PokemonGlobal.wanted_board_data.active?(bounty_key)
end

def pbBountyCompleted?(bounty_key)
  $PokemonGlobal.wanted_board_data.completed_bounties.include?(bounty_key)
end

def pbTotalBountiesCompleted
  $PokemonGlobal.wanted_board_data.total_completed
end
