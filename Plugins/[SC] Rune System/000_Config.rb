#===============================================================================
# [SC] Rune System - Configuration
# Version: 1.0.0
# Equippable Norse runes found at shrines — stat boosts socketed per Pokemon.
#===============================================================================

module RuneSystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # RUNE DEFINITIONS
  # Each rune provides stat multipliers and/or special effects.
  # stat_boosts: Hash of { :ATTACK => %, :DEFENSE => %, ... }
  # special: nil or symbol for unique effect
  #=============================================================================

  RUNES = {
    :FENRIR => {
      :name        => "Rune of Fenrir",
      :description => "The wolf's fury. Greatly boosts Attack.",
      :stat_boosts => { :ATTACK => 15 },
      :special     => nil,
      :tier        => 1,
      :icon_index  => 0,
    },
    :MIMIR => {
      :name        => "Rune of Mímir",
      :description => "Wisdom of the severed head. Boosts Sp.Def and Sp.Atk.",
      :stat_boosts => { :SPECIAL_ATTACK => 10, :SPECIAL_DEFENSE => 10 },
      :special     => nil,
      :tier        => 2,
    },
    :THOR => {
      :name        => "Rune of Þórr",
      :description => "Thunder god's might. Boosts Speed and Attack.",
      :stat_boosts => { :ATTACK => 10, :SPEED => 10 },
      :special     => nil,
      :tier        => 2,
    },
    :FREYA => {
      :name        => "Rune of Freyja",
      :description => "Goddess of love. Slowly restores HP each turn.",
      :stat_boosts => {},
      :special     => :REGEN,  # Heals 1/16 HP per turn
      :tier        => 2,
    },
    :TYR => {
      :name        => "Rune of Týr",
      :description => "God of war. Boosts Defense and critical hit rate.",
      :stat_boosts => { :DEFENSE => 15 },
      :special     => :CRIT_BOOST,
      :tier        => 2,
    },
    :ODIN => {
      :name        => "Rune of Óðinn",
      :description => "Allfather's gift. Boosts all stats slightly.",
      :stat_boosts => { :ATTACK => 5, :DEFENSE => 5, :SPECIAL_ATTACK => 5,
                        :SPECIAL_DEFENSE => 5, :SPEED => 5 },
      :special     => nil,
      :tier        => 3,
    },
    :YGGDRASIL => {
      :name        => "Rune of Yggdrasil",
      :description => "World Tree's blessing. Boosts HP and cures status after 3 turns.",
      :stat_boosts => { :HP => 10 },
      :special     => :STATUS_CURE,
      :tier        => 3,
    },
    :NIDHOGGR => {
      :name        => "Rune of Níðhöggr",
      :description => "The serpent's corruption. Massive Sp.Atk but lowers Defense.",
      :stat_boosts => { :SPECIAL_ATTACK => 25, :DEFENSE => -10 },
      :special     => nil,
      :tier        => 3,
    },
  }

  #=============================================================================
  # REGEN AMOUNT (fraction of max HP healed per turn)
  #=============================================================================
  REGEN_FRACTION = 16  # 1/16th of max HP

  # Turns before STATUS_CURE triggers
  STATUS_CURE_TURNS = 3

  #=============================================================================
  # LIMITS
  #=============================================================================

  # Max runes a single Pokemon can hold
  MAX_RUNES_PER_POKEMON = 1

  # Can runes be swapped freely?
  FREE_SWAP = true

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_SOCKET    = "Pkmn move learnt"
  SE_REMOVE    = "GUI sel decision"
  SE_DISCOVER  = "GUI sel decision"
end
