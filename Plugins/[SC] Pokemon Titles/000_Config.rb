#===============================================================================
# [SC] Pokemon Titles - Configuration
# Version: 1.0.0
# Pokemon earn titles/epithets based on battle achievements.
#===============================================================================

module PokemonTitles
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # TITLE DEFINITIONS
  # Each title has: condition check, display name, priority (higher = shown)
  #=============================================================================
  TITLES = {
    :THE_UNDEFEATED => {
      :name     => "the Undefeated",
      :desc     => "Won 50 battles without fainting",
      :check    => :check_undefeated,
      :priority => 100
    },
    :DRAGON_SLAYER => {
      :name     => "the Dragon Slayer",
      :desc     => "KO'd 10 Dragon-type Pokémon",
      :check    => :check_dragon_slayer,
      :priority => 80
    },
    :NIDHOGGRS_BANE => {
      :name     => "Nidhoggr's Bane",
      :desc     => "Dealt the final blow to Nidhoggr",
      :check    => :check_nidhoggr_bane,
      :priority => 200
    },
    :IRON_WALL => {
      :name     => "the Iron Wall",
      :desc     => "Survived 30 super-effective hits",
      :check    => :check_iron_wall,
      :priority => 70
    },
    :FIRST_STRIKE => {
      :name     => "the Swift",
      :desc     => "Moved first 100 times",
      :check    => :check_first_strike,
      :priority => 50
    },
    :ONE_HIT_WONDER => {
      :name     => "the Devastating",
      :desc     => "KO'd 20 opponents in a single hit",
      :check    => :check_ohko,
      :priority => 75
    },
    :LOYAL_COMPANION => {
      :name     => "the Loyal",
      :desc     => "Walked 10,000 steps as lead Pokémon",
      :check    => :check_loyal,
      :priority => 40
    },
    :CHOSEN_WARRIOR => {
      :name     => "the Chosen",
      :desc     => "Defeated all 8 Gym Leaders",
      :check    => :check_chosen_warrior,
      :priority => 90
    },
    :CROWN_BEARER => {
      :name     => "Crown Bearer",
      :desc     => "Used Crown Shatter 25 times",
      :check    => :check_crown_bearer,
      :priority => 110
    },
    :VETERAN => {
      :name     => "the Veteran",
      :desc     => "Won 200 battles",
      :check    => :check_veteran,
      :priority => 60
    }
  }

  #=============================================================================
  # UI
  #=============================================================================
  SE_TITLE_EARNED = "Pkmn exp full"
  SHOW_IN_BATTLE_INTRO = true
  SHOW_IN_SUMMARY = true
  TITLE_COLOR  = Color.new(255, 220, 100)
  TITLE_SHADOW = Color.new(100, 80, 30)
end
