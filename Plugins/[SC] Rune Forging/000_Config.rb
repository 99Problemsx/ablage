#===============================================================================
# [SC] Rune Forging - Configuration
# Version: 1.0.0
# Combine two runes at Yggdrasil to create hybrid runes with combined effects.
# Requires: [SC] Rune System
#===============================================================================

module RuneForging
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # HYBRID RUNE RECIPES
  # Each entry maps a sorted pair of base runes to a hybrid rune definition.
  # :drawback is a negative stat or special effect that balances the combo.
  #
  # Effects inherited from BOTH parents' stat_boosts are merged; the hybrid
  # then adds its own bonus AND drawback on top.
  #=============================================================================

  RECIPES = {
    # --- Fenrir combos (Wolf / ATK) ---
    [:FENRIR, :THOR] => {
      :name        => "Rune of Skoll",
      :description => "Sun-chasing wolf. ATK +20%, Speed +10%, but Defense -10%.",
      :bonus       => { :ATTACK => 20, :SPEED => 10 },
      :drawback    => { :DEFENSE => -10 },
      :special     => nil,
      :tier        => 4,
    },
    [:FENRIR, :TYR] => {
      :name        => "Rune of the Berserker",
      :description => "Relentless fury. ATK +25%, crit boost, but Sp.Def -15%.",
      :bonus       => { :ATTACK => 25 },
      :drawback    => { :SPECIAL_DEFENSE => -15 },
      :special     => :CRIT_BOOST,
      :tier        => 4,
    },
    [:FENRIR, :FREYA] => {
      :name        => "Rune of the Alpha",
      :description => "Pack leader. ATK +15%, HP regen, but Speed -10%.",
      :bonus       => { :ATTACK => 15 },
      :drawback    => { :SPEED => -10 },
      :special     => :REGEN,
      :tier        => 4,
    },
    [:FENRIR, :NIDHOGGR] => {
      :name        => "Rune of Hati",
      :description => "Moon-chasing wolf. ATK +15%, Sp.Atk +20%, but HP -10%.",
      :bonus       => { :ATTACK => 15, :SPECIAL_ATTACK => 20 },
      :drawback    => { :HP => -10 },
      :special     => nil,
      :tier        => 4,
    },

    # --- Mimir combos (Wisdom / SpAtk+SpDef) ---
    [:MIMIR, :FREYA] => {
      :name        => "Rune of Idunn",
      :description => "Youth goddess. Sp.Atk +10%, Sp.Def +10%, HP regen, but Speed -5%.",
      :bonus       => { :SPECIAL_ATTACK => 10, :SPECIAL_DEFENSE => 10 },
      :drawback    => { :SPEED => -5 },
      :special     => :REGEN,
      :tier        => 4,
    },
    [:MIMIR, :ODIN] => {
      :name        => "Rune of the Seer",
      :description => "All-knowing sight. All stats +8%, but -5% HP.",
      :bonus       => { :ATTACK => 8, :DEFENSE => 8, :SPECIAL_ATTACK => 8,
                        :SPECIAL_DEFENSE => 8, :SPEED => 8 },
      :drawback    => { :HP => -5 },
      :special     => nil,
      :tier        => 4,
    },
    [:MIMIR, :NIDHOGGR] => {
      :name        => "Rune of Void Knowledge",
      :description => "Corrupted wisdom. Sp.Atk +30%, but Defense -15%.",
      :bonus       => { :SPECIAL_ATTACK => 30 },
      :drawback    => { :DEFENSE => -15 },
      :special     => nil,
      :tier        => 4,
    },

    # --- Thor combos (Thunder / Speed+ATK) ---
    [:THOR, :TYR] => {
      :name        => "Rune of the Einherjar",
      :description => "Fallen warrior. ATK +15%, Speed +10%, crit boost, but HP -10%.",
      :bonus       => { :ATTACK => 15, :SPEED => 10 },
      :drawback    => { :HP => -10 },
      :special     => :CRIT_BOOST,
      :tier        => 4,
    },
    [:THOR, :YGGDRASIL] => {
      :name        => "Rune of the Storm Tree",
      :description => "Lightning root. Speed +10%, HP +10%, status cure, but ATK -5%.",
      :bonus       => { :SPEED => 10, :HP => 10 },
      :drawback    => { :ATTACK => -5 },
      :special     => :STATUS_CURE,
      :tier        => 4,
    },

    # --- Freya combos (Life / Regen) ---
    [:FREYA, :YGGDRASIL] => {
      :name        => "Rune of Rebirth",
      :description => "Undying root. HP +15%, regen + status cure, but ATK -10%, Sp.Atk -10%.",
      :bonus       => { :HP => 15 },
      :drawback    => { :ATTACK => -10, :SPECIAL_ATTACK => -10 },
      :special     => :REGEN_CURE,   # Combines both
      :tier        => 4,
    },
    [:FREYA, :TYR] => {
      :name        => "Rune of the Shieldmaiden",
      :description => "Battle healer. Def +15%, regen, but Speed -10%.",
      :bonus       => { :DEFENSE => 15 },
      :drawback    => { :SPEED => -10 },
      :special     => :REGEN,
      :tier        => 4,
    },

    # --- Tyr combos (War / Def+Crit) ---
    [:TYR, :ODIN] => {
      :name        => "Rune of the War King",
      :description => "Battle commander. All stats +5%, Def +10%, crit boost, but -10% HP.",
      :bonus       => { :ATTACK => 5, :DEFENSE => 15, :SPECIAL_ATTACK => 5,
                        :SPECIAL_DEFENSE => 5, :SPEED => 5 },
      :drawback    => { :HP => -10 },
      :special     => :CRIT_BOOST,
      :tier        => 4,
    },
    [:TYR, :NIDHOGGR] => {
      :name        => "Rune of Ragnarok",
      :description => "End of all things. Sp.Atk +25%, Def +10%, crit boost, but Speed -15%.",
      :bonus       => { :SPECIAL_ATTACK => 25, :DEFENSE => 10 },
      :drawback    => { :SPEED => -15 },
      :special     => :CRIT_BOOST,
      :tier        => 4,
    },

    # --- Odin combos (Allfather / balanced) ---
    [:ODIN, :YGGDRASIL] => {
      :name        => "Rune of the World Father",
      :description => "Cosmic balance. All stats +5%, HP +10%, status cure, but no special effect stacking.",
      :bonus       => { :ATTACK => 5, :DEFENSE => 5, :SPECIAL_ATTACK => 5,
                        :SPECIAL_DEFENSE => 5, :SPEED => 5, :HP => 10 },
      :drawback    => {},
      :special     => :STATUS_CURE,
      :tier        => 4,
    },
    [:ODIN, :NIDHOGGR] => {
      :name        => "Rune of the Hanged God",
      :description => "Sacrifice for power. All stats +10%, Sp.Atk +15%, but HP -15%.",
      :bonus       => { :ATTACK => 10, :DEFENSE => 10, :SPECIAL_ATTACK => 25,
                        :SPECIAL_DEFENSE => 10, :SPEED => 10 },
      :drawback    => { :HP => -15 },
      :special     => nil,
      :tier        => 4,
    },

    # --- Yggdrasil + Nidhoggr (Life vs Death) ---
    [:NIDHOGGR, :YGGDRASIL] => {
      :name        => "Rune of the Cycle",
      :description => "Life and death intertwined. Sp.Atk +20%, HP +10%, regen, but Defense -15%.",
      :bonus       => { :SPECIAL_ATTACK => 20, :HP => 10 },
      :drawback    => { :DEFENSE => -15 },
      :special     => :REGEN,
      :tier        => 4,
    },

    # --- Mimir + Thor (Mind + Body) ---
    [:MIMIR, :THOR] => {
      :name        => "Rune of Bragi",
      :description => "Skald of the gods. Sp.Atk +15%, Speed +10%, but Defense -10%.",
      :bonus       => { :SPECIAL_ATTACK => 15, :SPEED => 10 },
      :drawback    => { :DEFENSE => -10 },
      :special     => nil,
      :tier        => 4,
    },
    [:MIMIR, :TYR] => {
      :name        => "Rune of the Tactician",
      :description => "Calculated strikes. Sp.Atk +10%, Def +10%, crit boost, but Speed -10%.",
      :bonus       => { :SPECIAL_ATTACK => 10, :DEFENSE => 10 },
      :drawback    => { :SPEED => -10 },
      :special     => :CRIT_BOOST,
      :tier        => 4,
    },

    # --- Fenrir + Mimir (Brute + Brain) ---
    [:FENRIR, :MIMIR] => {
      :name        => "Rune of the Cunning Wolf",
      :description => "Sly and savage. ATK +10%, Sp.Atk +10%, Sp.Def +5%, but HP -10%.",
      :bonus       => { :ATTACK => 10, :SPECIAL_ATTACK => 10, :SPECIAL_DEFENSE => 5 },
      :drawback    => { :HP => -10 },
      :special     => nil,
      :tier        => 4,
    },
    [:FENRIR, :ODIN] => {
      :name        => "Rune of Geri",
      :description => "Odin's wolf. ATK +15%, all other stats +3%, but Sp.Atk -5%.",
      :bonus       => { :ATTACK => 15, :DEFENSE => 3, :SPECIAL_DEFENSE => 3, :SPEED => 3 },
      :drawback    => { :SPECIAL_ATTACK => -5 },
      :special     => nil,
      :tier        => 4,
    },
    [:FENRIR, :YGGDRASIL] => {
      :name        => "Rune of the Guardian Wolf",
      :description => "Protector of the World Tree. ATK +15%, HP +10%, status cure, but Speed -10%.",
      :bonus       => { :ATTACK => 15, :HP => 10 },
      :drawback    => { :SPEED => -10 },
      :special     => :STATUS_CURE,
      :tier        => 4,
    },

    # --- Thor + Freya ---
    [:THOR, :FREYA] => {
      :name        => "Rune of the Spring Storm",
      :description => "Renewal with thunder. Speed +10%, regen, but Sp.Def -10%.",
      :bonus       => { :SPEED => 10 },
      :drawback    => { :SPECIAL_DEFENSE => -10 },
      :special     => :REGEN,
      :tier        => 4,
    },
    [:THOR, :ODIN] => {
      :name        => "Rune of Mjolnir",
      :description => "Worthy strikes. ATK +10%, Speed +10%, all stats +3%, but Def -5%.",
      :bonus       => { :ATTACK => 10, :SPEED => 10, :SPECIAL_ATTACK => 3,
                        :DEFENSE => -2, :SPECIAL_DEFENSE => 3 },
      :drawback    => {},
      :special     => nil,
      :tier        => 4,
    },
    [:THOR, :NIDHOGGR] => {
      :name        => "Rune of the Dark Storm",
      :description => "Corrupted lightning. ATK +10%, Sp.Atk +20%, Speed +10%, but Def -15%, Sp.Def -10%.",
      :bonus       => { :ATTACK => 10, :SPECIAL_ATTACK => 20, :SPEED => 10 },
      :drawback    => { :DEFENSE => -15, :SPECIAL_DEFENSE => -10 },
      :special     => nil,
      :tier        => 4,
    },

    # --- Freya + Odin ---
    [:FREYA, :ODIN] => {
      :name        => "Rune of Frigg",
      :description => "Queen of Asgard. All stats +5%, regen, but no crit potential.",
      :bonus       => { :ATTACK => 5, :DEFENSE => 5, :SPECIAL_ATTACK => 5,
                        :SPECIAL_DEFENSE => 5, :SPEED => 5 },
      :drawback    => {},
      :special     => :REGEN,
      :tier        => 4,
    },
    [:FREYA, :NIDHOGGR] => {
      :name        => "Rune of the Draugr",
      :description => "Undead vigor. Sp.Atk +20%, regen, but Defense -15%.",
      :bonus       => { :SPECIAL_ATTACK => 20 },
      :drawback    => { :DEFENSE => -15 },
      :special     => :REGEN,
      :tier        => 4,
    },

    # --- Tyr + Yggdrasil ---
    [:TYR, :YGGDRASIL] => {
      :name        => "Rune of the Sentinel",
      :description => "Eternal guardian. Def +15%, HP +10%, status cure, but Speed -10%.",
      :bonus       => { :DEFENSE => 15, :HP => 10 },
      :drawback    => { :SPEED => -10 },
      :special     => :STATUS_CURE,
      :tier        => 4,
    },
  }

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_FORGE     = "Mining found all"
  SE_FAIL      = "GUI sel buzzer"

  #=============================================================================
  # FORGE LOCATION
  # Set to true if forging should only be available at an Yggdrasil Root event.
  # When false, forging can be triggered anywhere via script.
  #=============================================================================
  FORGE_AT_YGGDRASIL_ONLY = true
end
