#===============================================================================
# [SC] Companion Battles - Configuration
# Version: 1.0.0
# Tag-team battles with story companions using custom AI behaviors.
#===============================================================================

module CompanionBattles
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # COMPANION DEFINITIONS
  # Each companion has a trainer type, name, and AI behavior profile.
  # AI behaviors: :offensive, :defensive, :support, :balanced
  #
  # Canon (full_story_index.md):
  # - Lyra (Xerneas Chosen) and Kael (Yveltal Chosen) are the player's two
  #   travelling companions through the entire main story.
  # - Ragnar is the RIVAL — see PBS/trainers.txt:RIVAL_RAGNAR. He dies in
  #   chapter 28 (ch28_ragnar_sacrifice/death). Not a co-op companion.
  # - Aldric is the PROFESSOR who dies in chapter 24 (ch24_funeral). Not
  #   a battler.
  #=============================================================================

  COMPANIONS = {
    :LYRA => {
      :trainer_type => :POKEMONTRAINER_Lyra,
      :display_name => "Lyra",
      :ai_behavior  => :support,
      :pre_battle_line  => "I'll back you up! Let's do this together!",
      :victory_line     => "Great teamwork! We're unstoppable!",
      :defeat_line      => "We'll come back stronger...",
    },
    :KAEL => {
      :trainer_type => :POKEMONTRAINER_Kael,
      :display_name => "Kael",
      :ai_behavior  => :offensive,
      :pre_battle_line  => "Stand back and watch me work.",
      :victory_line     => "Hmph. That was nothing.",
      :defeat_line      => "Tch... I underestimated them.",
    },
  }

  #=============================================================================
  # BATTLE SETTINGS
  #=============================================================================

  # Companion team size cap during tag-team
  MAX_COMPANION_POKEMON = 3

  # Companion Pokemon auto-heal before battle?
  AUTO_HEAL_COMPANION = true

  # Show companion dialogue before/after battle?
  SHOW_DIALOGUE = true

  # Relationship bonus: if Relationship System is installed,
  # high relationship tier grants stat boosts to companion
  RELATIONSHIP_BONUS_ENABLED = true

  # Stat boost per relationship tier above 2 (percent)
  RELATIONSHIP_STAT_BOOST = 5

  #=============================================================================
  # AI BEHAVIOR WEIGHTS
  # Determines how companion AI prioritizes move categories
  # { attacking => N, status => N, healing => N }
  #=============================================================================

  AI_PROFILES = {
    :offensive  => { :attacking => 80, :status => 10, :healing => 10 },
    :defensive  => { :attacking => 30, :status => 40, :healing => 30 },
    :support    => { :attacking => 20, :status => 35, :healing => 45 },
    :balanced   => { :attacking => 50, :status => 25, :healing => 25 },
  }

  #=============================================================================
  # SOUND
  #=============================================================================
  SE_COMPANION_JOIN = "GUI sel decision"
end
