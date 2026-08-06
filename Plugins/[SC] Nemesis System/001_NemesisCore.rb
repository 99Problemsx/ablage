#===============================================================================
# [SC] Nemesis System - Core Logic
#===============================================================================

#===============================================================================
# Nemesis Data Structure
#===============================================================================

class NemesisEntry
  attr_accessor :name           # Generated name
  attr_accessor :rank           # 1-5
  attr_accessor :type_theme     # Type symbol
  attr_accessor :base_level     # Level when generated
  attr_accessor :times_won      # Times this nemesis beat the player
  attr_accessor :times_lost     # Times player beat this nemesis
  attr_accessor :origin_map     # Map where first generated
  attr_accessor :step_cooldown  # Steps until next possible ambush
  attr_accessor :active         # Still alive/active?

  def initialize(name, base_level, type_theme, origin_map)
    @name          = name
    @rank          = 1
    @type_theme    = type_theme
    @base_level    = base_level
    @times_won     = 1  # Created from a player loss
    @times_lost    = 0
    @origin_map    = origin_map
    @step_cooldown = rand(NemesisSystem::AMBUSH_MIN_STEPS..NemesisSystem::AMBUSH_MAX_STEPS)
    @active        = true
  end

  def rank_config
    NemesisSystem::RANKS[@rank] || NemesisSystem::RANKS[1]
  end

  def effective_level
    @base_level + rank_config[:level_boost]
  end

  def title
    rank_config[:title]
  end

  def rank_up
    return if @rank >= NemesisSystem::MAX_RANK
    @rank += 1
    @times_won += 1
  end

  def defeated_by_player
    @times_lost += 1
    @active = false
  end

  def reset_cooldown
    @step_cooldown = rand(NemesisSystem::AMBUSH_MIN_STEPS..NemesisSystem::AMBUSH_MAX_STEPS)
  end
end

#===============================================================================
# Save Data
#===============================================================================

class NemesisSaveData
  attr_accessor :nemeses           # Array of NemesisEntry
  attr_accessor :defeated_nemeses  # Array of defeated NemesisEntry (history)
  attr_accessor :total_generated   # Lifetime count

  def initialize
    @nemeses          = []
    @defeated_nemeses = []
    @total_generated  = 0
  end

  def active_nemeses
    @nemeses.select(&:active)
  end

  def add_nemesis(entry)
    @nemeses.push(entry)
    @total_generated += 1
  end

  def remove_nemesis(entry)
    entry.defeated_by_player
    @nemeses.delete(entry)
    @defeated_nemeses.push(entry)
  end

  def at_capacity?
    active_nemeses.length >= NemesisSystem::MAX_NEMESES
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :nemesis_data

  def nemesis_data
    @nemesis_data ||= NemesisSaveData.new
  end
end

SaveData.register(:nemesis_data) do
  save_value { $PokemonGlobal.nemesis_data }
  load_value { |val| $PokemonGlobal.nemesis_data = val }
  new_game_value { NemesisSaveData.new }
end

#===============================================================================
# Name Generator
#===============================================================================

module NemesisNames
  PREFIXES = ["Shadow", "Dark", "Iron", "Storm", "Void", "Frost", "Crimson",
              "Rune", "Ashen", "Dread", "Fell", "Grim"]
  SUFFIXES = ["Fang", "Blade", "Claw", "Eye", "Heart", "Bane", "Walker",
              "Hunter", "Wraith", "Striker", "Slayer", "Thorn"]

  def self.generate
    "#{PREFIXES.sample} #{SUFFIXES.sample}"
  end
end

#===============================================================================
# Nemesis Manager
#===============================================================================

module NemesisManager
  def self.data
    $PokemonGlobal.nemesis_data
  end

  #=============================================================================
  # Try to generate a nemesis after a player loss
  #=============================================================================

  def self.try_generate_on_loss
    return unless NemesisSystem::ENABLED
    return if $player.badge_count < NemesisSystem::MIN_BADGES
    return if data.at_capacity?
    return unless rand(100) < NemesisSystem::GENERATION_CHANCE

    # Generate nemesis
    name       = NemesisNames.generate
    base_level = player_average_level
    type_theme = NemesisSystem::TYPE_THEMES.sample
    map_id     = $game_map ? $game_map.map_id : 0

    entry = NemesisEntry.new(name, base_level, type_theme, map_id)
    data.add_nemesis(entry)

    pbMessage(_INTL("A new rival has marked you..."))
    pbMessage(_INTL("{1} the {2} will remember this defeat.", name, entry.title))

    # Lore Codex integration
    codexDiscover(:"NEMESIS_#{data.total_generated}") if defined?(codexDiscover)
  end

  #=============================================================================
  # Check for ambush on step
  #=============================================================================

  def self.check_ambush
    return unless NemesisSystem::ENABLED
    data.active_nemeses.each do |nem|
      nem.step_cooldown -= 1
      next if nem.step_cooldown > 0
      next unless rand(100) < NemesisSystem::AMBUSH_CHANCE

      trigger_ambush(nem)
      break  # Only one ambush per step
    end
  end

  #=============================================================================
  # Trigger nemesis ambush battle
  #=============================================================================

  def self.trigger_ambush(nemesis)
    pbSEPlay(NemesisSystem::SE_AMBUSH)

    # Taunt line
    lines = NemesisSystem::TAUNT_LINES[nemesis.rank] || NemesisSystem::TAUNT_LINES[1]
    pbMessage(_INTL("{1} the {2} appears!", nemesis.name, nemesis.title))
    pbMessage(_INTL("{1}: \"{2}\"", nemesis.name, lines.sample))

    # Run battle
    result = pbTrainerBattle(
      NemesisSystem::NEMESIS_TRAINER_TYPE,
      nemesis.name, nil, nil, false
    )

    if result == 1
      # Player wins!
      handle_nemesis_defeat(nemesis)
    else
      # Nemesis wins — rank up
      handle_nemesis_victory(nemesis)
    end
  end

  #=============================================================================
  # Player defeats nemesis
  #=============================================================================

  def self.handle_nemesis_defeat(nemesis)
    pbSEPlay(NemesisSystem::SE_DEFEATED)
    line = NemesisSystem::DEFEAT_LINES[nemesis.rank] || "No..."
    pbMessage(_INTL("{1}: \"{2}\"", nemesis.name, line))

    # Grant rewards
    rewards = NemesisSystem::REWARDS[nemesis.rank]
    if rewards
      rewards.each do |item, qty|
        $bag.add(item, qty)
        item_data = GameData::Item.try_get(item)
        pbMessage(_INTL("Obtained {1} x{2}!", item_data ? item_data.name : item, qty))
      end
    end

    # Reputation bonus
    if defined?(repChange) && nemesis.rank >= 3
      repChange(:ASGHEIM_GUARD, nemesis.rank * 2)
    end

    # Pokemon Title integration
    if defined?(PokemonTitles) && nemesis.rank >= 4
      # Lead Pokemon could earn "Nemesis Slayer" achievement
    end

    data.remove_nemesis(nemesis)
    pbMessage(_INTL("{1} has been vanquished!", nemesis.name))
  end

  #=============================================================================
  # Nemesis defeats player — rank up
  #=============================================================================

  def self.handle_nemesis_victory(nemesis)
    old_rank = nemesis.rank
    nemesis.rank_up
    nemesis.reset_cooldown

    if nemesis.rank > old_rank
      pbSEPlay(NemesisSystem::SE_RANK_UP)
      pbMessage(_INTL("{1} has grown stronger! Now: {2} (Rank {3})",
                      nemesis.name, nemesis.title, nemesis.rank))
    end
  end

  #=============================================================================
  # Helpers
  #=============================================================================

  def self.player_average_level
    return 50 unless $player && $player.party.length > 0
    total = $player.party.reject(&:egg?).sum(&:level)
    count = $player.party.reject(&:egg?).length
    count > 0 ? total / count : 50
  end
end

#===============================================================================
# Hooks
#===============================================================================

# Generate nemesis on loss
EventHandlers.add(:on_end_battle, :sc_nemesis_on_loss,
  proc { |result, _can_lose|
    next unless NemesisSystem::ENABLED && result != 1
    NemesisManager.try_generate_on_loss
  }
)

# Ambush check on steps
EventHandlers.add(:on_player_step_taken, :sc_nemesis_ambush_check,
  proc {
    next unless NemesisSystem::ENABLED
    NemesisManager.check_ambush
  }
)

#===============================================================================
# Event helpers
#===============================================================================

def pbNemesisCount
  $PokemonGlobal.nemesis_data.active_nemeses.length
end

def pbHasNemesis?
  pbNemesisCount > 0
end

def pbNemesisStatus
  data = $PokemonGlobal.nemesis_data
  if data.active_nemeses.empty?
    pbMessage(_INTL("No active nemeses."))
    return
  end
  msg = _INTL("=== Active Nemeses ===\n")
  data.active_nemeses.each do |nem|
    msg += _INTL("{1} the {2} (Rank {3})\n", nem.name, nem.title, nem.rank)
    msg += _INTL("  Wins: {1} | Losses: {2} | Lv.{3}\n",
                 nem.times_won, nem.times_lost, nem.effective_level)
  end
  msg += _INTL("\nDefeated: {1}", data.defeated_nemeses.length)
  pbMessage(msg)
end

def pbTotalNemesesDefeated
  $PokemonGlobal.nemesis_data.defeated_nemeses.length
end
