#===============================================================================
# [SC] Ancestral Weapons - Configuration
# Version: 1.1.0
# Legendary relics tied to the Three Chosen that evolve through combat.
# Boosts are % multipliers applied to your party Pokémon in battle.
# e.g. atk_boost => 10 means your Pokémon deal 10% more physical damage.
#===============================================================================

module AncestralWeapons
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # WEAPON DEFINITIONS
  # Each weapon has 3 evolutionary forms, tied to a Chosen and their legendary.
  # stage: 1 = base, 2 = awakened, 3 = divine
  #
  # Stat boosts are % bonuses applied to ALL party Pokémon in battle:
  #   atk_boost   => +N% to physical attack multiplier
  #   spatk_boost => +N% to special attack multiplier
  #   speed_boost => +N% to speed stat
  #
  # Effects are special abilities that trigger during battle.
  #=============================================================================

  WEAPONS = {
    :ZACIANS_FANG => {
      :chosen      => "Zacian Chosen",
      :legendary   => :ZACIAN,
      :type        => :STEEL,
      :stages      => {
        1 => {
          :name        => "Zacian's Fang",
          :description => "A chipped blade, faintly humming with Steel energy.",
          :atk_boost   => 10,
          :spatk_boost => 0,
          :speed_boost => 5,
          :effect      => :NONE,
        },
        2 => {
          :name        => "Zacian's Blade",
          :description => "Reforged in battle, the blade sings with cutting resolve.",
          :atk_boost   => 20,
          :spatk_boost => 0,
          :speed_boost => 10,
          :effect      => :CRIT_BOOST,       # +1 crit stage
        },
        3 => {
          :name        => "Zacian's Crowned Sword",
          :description => "The divine blade of the king. Steel moves pierce defenses.",
          :atk_boost   => 35,
          :spatk_boost => 0,
          :speed_boost => 15,
          :effect      => :STEEL_PIERCE,     # Steel moves ignore Protect 30%
        },
      },
    },

    :XERNEAS_ANTLER => {
      :chosen      => "Xerneas Chosen",
      :legendary   => :XERNEAS,
      :type        => :FAIRY,
      :stages      => {
        1 => {
          :name        => "Xerneas' Antler",
          :description => "A wooden talisman that pulses with faint life energy.",
          :atk_boost   => 0,
          :spatk_boost => 10,
          :speed_boost => 0,
          :effect      => :NONE,
        },
        2 => {
          :name        => "Xerneas' Branch",
          :description => "Yggdrasil's energy flows through it, mending all wounds.",
          :atk_boost   => 0,
          :spatk_boost => 20,
          :speed_boost => 5,
          :effect      => :HEAL_16,          # Heals 1/16 HP per turn
        },
        3 => {
          :name        => "Xerneas' Tree of Life",
          :description => "The radiant crown of life. Fairy moves revitalize the team.",
          :atk_boost   => 0,
          :spatk_boost => 35,
          :speed_boost => 10,
          :effect      => :FAIRY_LIFESTEAL,  # Fairy moves heal 25% damage dealt
        },
      },
    },

    :YVELTALS_TALON => {
      :chosen      => "Yveltal Chosen",
      :legendary   => :YVELTAL,
      :type        => :DARK,
      :stages      => {
        1 => {
          :name        => "Yveltal's Talon",
          :description => "A shadowy claw fragment that chills the air around it.",
          :atk_boost   => 5,
          :spatk_boost => 5,
          :speed_boost => 5,
          :effect      => :NONE,
        },
        2 => {
          :name        => "Yveltal's Wing",
          :description => "Darkness spreads from it. Foes feel their strength drain.",
          :atk_boost   => 10,
          :spatk_boost => 10,
          :speed_boost => 10,
          :effect      => :DARK_DRAIN,       # Dark moves drain 15% HP
        },
        3 => {
          :name        => "Yveltal's Oblivion",
          :description => "The harbinger's full power. Dark moves can shatter hope.",
          :atk_boost   => 15,
          :spatk_boost => 20,
          :speed_boost => 15,
          :effect      => :DARK_FEAR,        # 20% flinch on Dark moves
        },
      },
    },
  }

  #=============================================================================
  # EVOLUTION MILESTONES
  # Weapons evolve based on cumulative KO count while the wielder holds them.
  #=============================================================================

  STAGE_THRESHOLDS = {
    2 => 50,    # 50 KOs to reach stage 2
    3 => 150,   # 150 KOs to reach stage 3
  }

  #=============================================================================
  # COSMETIC
  #=============================================================================

  SE_EVOLVE        = "Pkmn move learnt"
  SE_EQUIP         = "GUI sel decision"
  EVOLVE_ANIMATION = true   # Flash + fanfare on stage-up
end
