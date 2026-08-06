#===============================================================================
# Dynamic Difficulty System - Options Menu Integration
# Adds a "Dynamic Difficulty" toggle to the Enhanced Options Menu
#===============================================================================

MenuHandlers.add(:options_menu, :dynamic_difficulty, {
  "page"        => :gameplay,
  "name"        => _INTL("Dynamic Difficulty"),
  "order"       => 55,
  "type"        => :array,
  "parameters"  => [_INTL("Off"), _INTL("On")],
  "description" => _INTL("Automatically adjusts battle AI difficulty based on your performance."),
  "condition"   => proc { next DynamicDifficulty::ENABLED },
  "get_proc"    => proc { next $PokemonSystem.dynamic_difficulty },
  "set_proc"    => proc { |value, _screen|
    $PokemonSystem.dynamic_difficulty = value
    # When turning DDS off, clear any active override so the AI returns to normal
    if value == 0
      DynamicDifficulty::TierEngine.clear_override
      DynamicDifficulty.log("Player disabled Dynamic Difficulty via Options")
    else
      DynamicDifficulty.log("Player enabled Dynamic Difficulty via Options")
    end
  }
})
