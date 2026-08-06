#===============================================================================
# [SC] Dynamic Music - Options Menu Integration
# Adds a player-facing "Dynamic Music" On/Off toggle to the Options menu.
#===============================================================================

#-------------------------------------------------------------------------------
# PokemonSystem stores the player's preference (auto-saved with the game).
# Convention matches Essentials' EnumOption: 0 = On, 1 = Off.
#-------------------------------------------------------------------------------
class PokemonSystem
  attr_writer :dynamic_music

  alias scdm_initialize initialize unless method_defined?(:scdm_initialize)
  def initialize
    scdm_initialize
    @dynamic_music = 0   # default ON
  end

  # Nil-safe reader -- old saves won't have the ivar set.
  def dynamic_music
    @dynamic_music = 0 if @dynamic_music.nil?
    @dynamic_music
  end
end

#-------------------------------------------------------------------------------
# Options menu entry (placed next to the audio options via "order").
#-------------------------------------------------------------------------------
MenuHandlers.add(:options_menu, :dynamic_music, {
  "name"        => _INTL("Dynamic Music"),
  "order"       => 25,
  "type"        => :array,
  "parameters"  => [_INTL("On"), _INTL("Off")],
  "description" => _INTL("Context-aware music: low-HP tension, boss phases, day/night and weather themes."),
  "condition"   => proc { next DynamicMusic::ENABLED },
  "get_proc"    => proc { next $PokemonSystem.dynamic_music },
  "set_proc"    => proc { |value, _scene|
    $PokemonSystem.dynamic_music = value
    # Turning it off (value != 0): drop any active override so normal music resumes.
    DynamicMusicEngine.deactivate if value != 0
  }
})
