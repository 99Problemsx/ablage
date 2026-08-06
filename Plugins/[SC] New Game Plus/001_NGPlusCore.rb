#===============================================================================
# [SC] New Game Plus — Core
#===============================================================================
# Persists ending completion across saves so the title screen can offer a
# New Game+ option that carries over benefits and unlocks special dialog
# branches in the next playthrough.
#
# Storage: Data/sc_ng_plus.dat  (Marshal-serialised Hash)
#   { endings_seen: [:LIGHT, :DARK, :PURE_LIGHT, ...],
#     bad_ending_seen: true/false,
#     clears: <integer> }
#
# Public API:
#   SCNGPlus.unlocked?              -> any ending recorded
#   SCNGPlus.ng_plus_run?           -> current save started as NG+
#   SCNGPlus.cycle_number           -> 0 base, 1 first NG+, 2 second NG+...
#   SCNGPlus.endings_seen           -> Array of Symbols
#   SCNGPlus.bad_ending_seen?       -> true if Pure Dark cleared
#   SCNGPlus.record_clear!(tier)    -> called from ending dispatcher
#   SCNGPlus.start_ng_plus!         -> begins a new game with NG+ bonuses
#===============================================================================

module SCNGPlus
  PERSIST_PATH = "Data/sc_ng_plus.dat"

  # NG+ bonuses applied to the player when a NG+ run starts.
  STARTING_MONEY = 50_000   # vs. 3000 default
  STARTING_ITEMS = {
    POTION:         10,
    SUPERPOTION:     5,
    REVIVE:          5,
    ESCAPEROPE:      3,
    REPEL:           5,
    EXPCANDYL:       5    # 5× Exp. Candy L from your first clear
  }.freeze

  @data = nil

  # ---------- Persistence ----------------------------------------------------

  def self.data
    @data ||= load_persist
  end

  def self.load_persist
    return default_data unless File.file?(PERSIST_PATH)
    File.open(PERSIST_PATH, "rb") { |f| Marshal.load(f) }
  rescue StandardError
    default_data
  end

  def self.save_persist
    File.open(PERSIST_PATH, "wb") { |f| Marshal.dump(data, f) }
  rescue StandardError => e
    echoln "[SC NG+] save_persist failed: #{e.message}"
  end

  def self.default_data
    { endings_seen: [], bad_ending_seen: false, clears: 0 }
  end

  # ---------- Public reads ---------------------------------------------------

  def self.unlocked?
    data[:clears].to_i > 0 || !data[:endings_seen].empty?
  end

  def self.endings_seen
    data[:endings_seen] || []
  end

  def self.bad_ending_seen?
    data[:bad_ending_seen] == true
  end

  def self.ng_plus_run?
    $PokemonGlobal && $PokemonGlobal.sc_ng_plus_run == true
  end

  def self.cycle_number
    return 0 unless $PokemonGlobal
    $PokemonGlobal.sc_ng_plus_cycle.to_i
  end

  # ---------- Public writes --------------------------------------------------

  def self.record_clear!(tier)
    data[:endings_seen] ||= []
    data[:endings_seen] << tier unless data[:endings_seen].include?(tier)
    data[:bad_ending_seen] = true if tier == :PURE_DARK
    data[:clears] = data[:clears].to_i + 1
    save_persist
  end

  # Begin a fresh New Game, then mark the player as a NG+ runner and grant
  # the carry-over bonuses. Called from the title-screen menu.
  def self.start_ng_plus!
    Game.start_new
    return unless $PokemonGlobal && $player
    cycle = cycle_number_from_persist
    $PokemonGlobal.sc_ng_plus_run   = true
    $PokemonGlobal.sc_ng_plus_cycle = cycle + 1
    $PokemonGlobal.sc_ng_plus_prior_endings = data[:endings_seen].dup
    $player.money = STARTING_MONEY
    STARTING_ITEMS.each { |item, qty| $bag.add(item, qty) rescue nil }
    pbMessage(_INTL("\\bWelcome back, Champion.")) if defined?(pbMessage)
    pbMessage(_INTL("\\bThe world remembers what you did last time. The crowns remember too...")) if defined?(pbMessage)
  end

  def self.cycle_number_from_persist
    data[:clears].to_i
  end
end

#===============================================================================
# Save-data accessors on $PokemonGlobal
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_ng_plus_run
  attr_accessor :sc_ng_plus_cycle
  attr_accessor :sc_ng_plus_prior_endings
end

SaveData.register(:sc_ng_plus_run) do
  save_value { $PokemonGlobal.sc_ng_plus_run || false }
  load_value { |v| $PokemonGlobal.sc_ng_plus_run = v }
  new_game_value { false }
end

SaveData.register(:sc_ng_plus_cycle) do
  ensure_class :Integer
  save_value { $PokemonGlobal.sc_ng_plus_cycle || 0 }
  load_value { |v| $PokemonGlobal.sc_ng_plus_cycle = v }
  new_game_value { 0 }
end

SaveData.register(:sc_ng_plus_prior_endings) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_ng_plus_prior_endings || [] }
  load_value { |v| $PokemonGlobal.sc_ng_plus_prior_endings = v }
  new_game_value { [] }
end

#===============================================================================
# Auto-record the ending when Ch34 (final chapter) completes.
# Hooks into the same event the Alternative Endings system uses.
#===============================================================================
EventHandlers.add(:on_sc_chapter_completed, :sc_ng_plus_record_clear,
  proc { |chapter_id|
    next unless chapter_id == :ch34
    next unless defined?(MoralityManager)
    tier = MoralityManager.data.current_tier rescue :NEUTRAL
    SCNGPlus.record_clear!(tier)
  }
)
