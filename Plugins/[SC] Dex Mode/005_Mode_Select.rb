#===============================================================================
# [SC] Dex Mode - Mode Selection UI
#===============================================================================
# Two entry points:
#
#   1. Automatic prompt on new-game start (if PROMPT_AT_START is true).
#      Fires after :ch1_wake_up but before :ch1_starter_bond, so the
#      player picks their mode before they meet their starter.
#
#   2. Manual select from the pause menu / option screen via
#      pbOpenDexModeSelect.
#
# The choice persists via $PokemonGlobal.sc_dex_mode (registered in
# 001_DexModeCore.rb's SaveData block).
#===============================================================================

def pbOpenDexModeSelect(confirm_change: true)
  current_label = DexMode.limited? ? "SC Limited" : "Full Dex"

  # Three options: pick one, see info, cancel.
  loop do
    pick = pbShowCommands(nil, [
      _INTL("SC Limited (~430 species, curated)"),
      _INTL("Full Dex (all available species)"),
      _INTL("What's the difference?"),
      _INTL("Cancel")
    ], 3)

    case pick
    when 0  # SC Limited
      if DexMode.limited?
        pbMessage(_INTL("Already on SC Limited mode."))
        next
      end
      if confirm_change && DexMode.full?
        choice = pbMessage(_INTL("Switch to SC Limited?\\nWild encounters will be restricted to the curated list."),
                           [_INTL("Yes, switch"), _INTL("Cancel")], 2)
        next if choice != 0
      end
      DexMode.set(:SC_LIMITED)
      pbMessage(_INTL("Dex Mode: \\c[3]SC Limited\\c[0]."))
      pbMessage(_INTL("{1} species available in the wild.", SCLimitedDex.count))
      break

    when 1  # Full Dex
      if DexMode.full?
        pbMessage(_INTL("Already on Full Dex mode."))
        next
      end
      if confirm_change && DexMode.limited?
        choice = pbMessage(_INTL("Switch to Full Dex?\\nAll species become available — Pokémon you've caught remain in your party."),
                           [_INTL("Yes, switch"), _INTL("Cancel")], 2)
        next if choice != 0
      end
      DexMode.set(:FULL_DEX)
      pbMessage(_INTL("Dex Mode: \\c[1]Full Dex\\c[0]."))
      pbMessage(_INTL("All registered species available in the wild."))
      break

    when 2  # Info
      pbShowDexModeInfo

    else
      break
    end
  end
end


def pbShowDexModeInfo
  pbMessage(_INTL("\\b\\c[3]SC Limited\\c[0]\\b"))
  pbMessage(_INTL("• A curated ~430-species dex spanning Gen 1-9."))
  pbMessage(_INTL("• Tailored to the Shattered Crowns story: nordic mythology, dragons, ghosts, ancient/fossil, steel knights."))
  pbMessage(_INTL("• Every story-relevant species is included; wild encounters feel hand-picked."))
  pbMessage(_INTL("• Trainers keep their canonical teams."))
  pbMessage(_INTL("• Recommended for first playthroughs."))

  pbMessage(_INTL("\\b\\c[1]Full Dex\\c[0]\\b"))
  pbMessage(_INTL("• Every available species (~1000+), no curation."))
  pbMessage(_INTL("• Bring your favourite Pokémon from any region."))
  pbMessage(_INTL("• Best for completionist runs, second playthroughs, or randomizer-style chaos."))
  pbMessage(_INTL("• Wild encounter tables are NOT scaled — out-of-region species still appear in their original biome."))

  pbMessage(_INTL("You can switch modes anytime from the pause menu. Pokémon you've already caught stay with you."))
end


#-------------------------------------------------------------------------------
# Hook: New-game prompt
#-------------------------------------------------------------------------------
if defined?(GameData::Cutscene)
  GameData::Cutscene.define :sc_dex_mode_prompt do |scene|
    scene.script {
      next unless DexMode::ENABLED && DexMode::PROMPT_AT_START

      pbMessage(_INTL("\\i[Before your journey begins...]"))
      pbMessage(_INTL("How would you like to play Shattered Crowns?"))
      pbMessage(_INTL("This sets which Pokémon appear in the wild and which species you encounter through the story. You can change it later."))

      pbOpenDexModeSelect(confirm_change: false)

      mode_label = DexMode.limited? ? "SC Limited" : "Full Dex"
      pbMessage(_INTL("Locked in: \\c[3]{1}\\c[0]. Have a great journey!", mode_label))
    }
  end
end


#-------------------------------------------------------------------------------
# Pause-menu integration — adds a "Dex Mode" entry to the options screen
# (only if the engine's option screen is patchable).
#-------------------------------------------------------------------------------
if defined?(UI::Options)
  MenuHandlers.add(:options_menu, :sc_dex_mode, {
    "page"        => :gameplay,
    "name"        => _INTL("Dex Mode"),
    "order"       => 90,
    "type"        => :array,
    "parameters"  => [_INTL("SC Limited"), _INTL("Full Dex")],
    "description" => _INTL("Choose the curated Shattered Crowns Pokédex or all available species."),
    "condition"   => proc { next DexMode::ENABLED },
    "get_proc"    => proc { next DexMode.limited? ? 0 : 1 },
    "set_proc"    => proc { |value, _screen| DexMode.set(value == 0 ? :SC_LIMITED : :FULL_DEX) }
  })
end


#-------------------------------------------------------------------------------
# Debug menu entry
#-------------------------------------------------------------------------------
if defined?(MenuHandlers) && defined?(MenuHandlers.add)
  MenuHandlers.add(:debug_menu, :sc_dex_mode_select, {
    "name"        => _INTL("Switch Dex Mode"),
    "parent"      => :main_debug_menu,
    "description" => _INTL("Toggle between SC Limited and Full Dex."),
    "effect"      => proc { pbOpenDexModeSelect }
  })
end
