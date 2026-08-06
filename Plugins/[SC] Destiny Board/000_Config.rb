#===============================================================================
# [SC] Destiny Board - Configuration
# Version: 1.0.0
# Branching skill-tree for the protagonist. Spend Fate Points on passive perks.
#===============================================================================

module DestinyBoard
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # FATE POINT SOURCES
  # Players earn Fate Points from major story milestones, arena clears, etc.
  #=============================================================================

  # Starting Fate Points
  START_POINTS = 0

  #=============================================================================
  # PERK BRANCHES
  # Three branches reflecting the Three Chosen's patrons:
  #   Zacian (Combat), Xerneas (Life), Yveltal (Shadow)
  #=============================================================================

  BRANCHES = {
    :ZACIAN  => { :name => "Path of the Blade",   :color => Color.new(100, 150, 255) },
    :XERNEAS => { :name => "Path of Life",         :color => Color.new(100, 255, 150) },
    :YVELTAL => { :name => "Path of the Void",     :color => Color.new(200, 80, 200) },
  }

  #=============================================================================
  # PERK DEFINITIONS
  # Each perk has: name, branch, cost, tier (prerequisite level), effect
  # Effects are applied via helper checks throughout the game.
  #=============================================================================

  PERKS = {
    # === ZACIAN BRANCH (Combat) ===
    :KEEN_EDGE => {
      :name   => "Keen Edge",
      :branch => :ZACIAN, :tier => 1, :cost => 1,
      :description => "Team gains +5% critical hit rate.",
      :effect => { :crit_bonus => 5 },
    },
    :BATTLE_FOCUS => {
      :name   => "Battle Focus",
      :branch => :ZACIAN, :tier => 2, :cost => 2,
      :description => "Team gains +10% EXP from trainer battles.",
      :effect => { :exp_bonus_trainer => 10 },
    },
    :STEEL_RESOLVE => {
      :name   => "Steel Resolve",
      :branch => :ZACIAN, :tier => 3, :cost => 3,
      :description => "Lead Pokemon has a 10% chance to endure a KO at 1HP.",
      :effect => { :endure_chance => 10 },
    },
    :CROWNED_SWORD => {
      :name   => "Crowned Sword",
      :branch => :ZACIAN, :tier => 4, :cost => 4,
      :description => "All team members gain +5% Attack and Speed.",
      :effect => { :atk_bonus => 5, :spd_bonus => 5 },
    },

    # === XERNEAS BRANCH (Life) ===
    :NATURES_GIFT => {
      :name   => "Nature's Gift",
      :branch => :XERNEAS, :tier => 1, :cost => 1,
      :description => "+15% catch rate on all Pokémon.",
      :effect => { :catch_bonus => 15 },
    },
    :VERDANT_TOUCH => {
      :name   => "Verdant Touch",
      :branch => :XERNEAS, :tier => 2, :cost => 2,
      :description => "Berry yields +1 berry per harvest.",
      :effect => { :berry_bonus => 1 },
    },
    :LIFE_SURGE => {
      :name   => "Life Surge",
      :branch => :XERNEAS, :tier => 3, :cost => 3,
      :description => "Pokémon heal 5% HP after every battle won.",
      :effect => { :post_battle_heal => 5 },
    },
    :FAIRY_AURA => {
      :name   => "Fairy Aura",
      :branch => :XERNEAS, :tier => 4, :cost => 4,
      :description => "Eggs hatch 30% faster. Friendship gains +25%.",
      :effect => { :egg_speed => 30, :friendship_bonus => 25 },
    },

    # === YVELTAL BRANCH (Shadow) ===
    :DARK_BARGAIN => {
      :name   => "Dark Bargain",
      :branch => :YVELTAL, :tier => 1, :cost => 1,
      :description => "+20% money from trainer battles.",
      :effect => { :money_bonus => 20 },
    },
    :VOID_STEP => {
      :name   => "Void Step",
      :branch => :YVELTAL, :tier => 2, :cost => 2,
      :description => "Wild encounter rate reduced by 25%.",
      :effect => { :encounter_reduction => 25 },
    },
    :SHADOW_CLOAK => {
      :name   => "Shadow Cloak",
      :branch => :YVELTAL, :tier => 3, :cost => 3,
      :description => "10% chance to dodge status moves in battle.",
      :effect => { :status_dodge => 10 },
    },
    :OBLIVION_WING => {
      :name   => "Oblivion Wing",
      :branch => :YVELTAL, :tier => 4, :cost => 4,
      :description => "Defeating a Pokémon heals lead by 10% of damage dealt.",
      :effect => { :drain_on_ko => 10 },
    },
  }

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_UNLOCK     = "Pkmn move learnt"
  SE_FATE_POINT = "GUI sel decision"
  SE_OPEN       = "GUI sel decision"
end
