#===============================================================================
# [SC] Dex Mode - Configuration
#===============================================================================
# Lets players choose between two ways to play Shattered Crowns:
#
#   :SC_LIMITED   The curated Shattered-Crowns dex (~400 species across
#                 Gen 1-9, themed around the story's nordic / dragon /
#                 ghost / ancient palette). Tight, hand-picked, every
#                 species belongs.
#
#   :FULL_DEX     Every available species, ~1000+. No curation. For
#                 players who want to bring their favourite Pokémon
#                 from any region, or do completionist runs.
#
# Encounters and trainers respond automatically: in SC_LIMITED, wild
# encounters and ordinary trainers are restricted to the curated list;
# in FULL_DEX everything is allowed.
#
# Story-critical trainers (Generals, Champion Marcus, the Chosen, etc.)
# always use their canonical teams in BOTH modes — see
# 004_Trainer_Filter.rb for the exempt-trainer list.
#===============================================================================

module DexMode
  ENABLED            = true

  # Default mode for new games when the player hasn't picked yet.
  # The mode-select cutscene fires once and persists the choice.
  DEFAULT_MODE       = :SC_LIMITED

  # If true, prompt the player at new-game start to pick a mode.
  # If false, silently use DEFAULT_MODE.
  PROMPT_AT_START    = true

  # When SC_LIMITED is active and an encounter / trainer roll produces
  # an out-of-dex species, what do we do?
  #
  # :SUBSTITUTE   Replace with the in-dex species closest in BST + type
  #               (best for immersion — wild encounters feel curated)
  # :REROLL       Re-roll the encounter table up to MAX_REROLLS times
  #               before falling back to SUBSTITUTE
  # :ALLOW        Pretend the species is in-dex (effectively disables
  #               the filter for that one Pokémon)
  OUT_OF_DEX_POLICY  = :REROLL
  MAX_REROLLS        = 4

  # Trainer-side: when a trainer's roster includes out-of-dex species in
  # SC_LIMITED, options are the same as the encounter side. Defaults to
  # :ALLOW so trainer rosters stay readable (most trainers are
  # hand-authored already).
  TRAINER_POLICY     = :ALLOW

  # If true, the Pokédex UI in SC_LIMITED mode hides slots for
  # species not in the curated list (no greyed-out unreachable rows).
  HIDE_OUT_OF_DEX_IN_POKEDEX = true

  # Debug logging
  DEBUG_MODE         = $DEBUG

  # Mode-select graphics (optional — falls back to text menu if absent)
  GRAPHICS_FOLDER    = "Graphics/UI/DexMode"
end
