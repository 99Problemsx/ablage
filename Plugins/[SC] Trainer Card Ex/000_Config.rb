#===============================================================================
# [SC] Trainer Card Ex - Configuration
# Version: 1.0.0
# Enhanced trainer card with achievement badges, stats, and team showcase.
#===============================================================================

module TrainerCardEx
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # ACHIEVEMENT BADGES (displayed on the trainer card)
  # Earned automatically based on game progress
  #=============================================================================

  BADGES_DISPLAY = {
    :FIRST_BADGE     => { :name => "Gym Challenger",   :condition => proc { $player.badge_count >= 1 } },
    :ALL_BADGES      => { :name => "Badge Master",     :condition => proc { $player.badge_count >= 8 } },
    :POKEDEX_50      => { :name => "Aspiring Scholar",
      :condition => proc {
        $player.pokedex.owned_count >= 50 rescue false
      }
    },
    :POKEDEX_150     => { :name => "Pokémon Professor",
      :condition => proc {
        $player.pokedex.owned_count >= 150 rescue false
      }
    },
    :ARENA_FLOOR_5   => { :name => "Arena Veteran",
      :condition => proc {
        defined?(BattleArena) && $PokemonGlobal.respond_to?(:arena_data) &&
          $PokemonGlobal.arena_data.highest_floor >= 5
      }
    },
    :ARENA_FLOOR_10  => { :name => "Arena Champion",
      :condition => proc {
        defined?(BattleArena) && $PokemonGlobal.respond_to?(:arena_data) &&
          $PokemonGlobal.arena_data.highest_floor >= 10
      }
    },
    :QUESTS_10       => { :name => "Questmaster",
      :condition => proc {
        defined?(QuestJournal) && $PokemonGlobal.respond_to?(:quest_data) &&
          $PokemonGlobal.quest_data.completed_quests.length >= 10
      }
    },
    :EXPLORER_100    => { :name => "World Explorer",
      :condition => proc {
        defined?(MapFogOfWar) && $PokemonGlobal.respond_to?(:fog_of_war_data) &&
          $PokemonGlobal.fog_of_war_data.completion_percent >= 100
      }
    },
    :BOUNTY_25       => { :name => "Bounty Hunter",
      :condition => proc {
        defined?(WantedBoard) && $PokemonGlobal.respond_to?(:wanted_board_data) &&
          $PokemonGlobal.wanted_board_data.total_completed >= 25
      }
    },
    :PURE_LIGHT      => { :name => "Beacon of Light",
      :condition => proc {
        defined?(MoralitySystem) && $PokemonGlobal.respond_to?(:morality_data) &&
          $PokemonGlobal.morality_data.current_tier == :PURE_LIGHT
      }
    },
    :PURE_DARK       => { :name => "Void Embrace",
      :condition => proc {
        defined?(MoralitySystem) && $PokemonGlobal.respond_to?(:morality_data) &&
          $PokemonGlobal.morality_data.current_tier == :PURE_DARK
      }
    },
  }

  #=============================================================================
  # STATS TRACKED
  #=============================================================================

  SHOW_PLAYTIME      = true
  SHOW_POKEDEX       = true
  SHOW_MONEY         = true
  SHOW_BATTLES_WON   = true
  SHOW_STEPS         = true
  SHOW_ARENA_STREAK  = true
  SHOW_QUESTS_DONE   = true
  SHOW_MORALITY      = true

  #=============================================================================
  # UI
  #=============================================================================
  BASE_COLOR   = Color.new(248, 248, 248)
  SHADOW_COLOR = Color.new(72, 72, 72)
  SE_OPEN      = "GUI sel decision"
end
