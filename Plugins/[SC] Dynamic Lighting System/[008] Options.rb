#===============================================================================
# Dynamic Lighting - player-facing v22 options
#===============================================================================

class PokemonSystem
  attr_writer :sc_lighting_enabled, :sc_lighting_animation,
              :sc_lighting_ambient, :sc_lighting_quality,
              :sc_lighting_darkness

  def sc_lighting_enabled;   @sc_lighting_enabled   = 0 if @sc_lighting_enabled.nil?;   @sc_lighting_enabled;   end
  def sc_lighting_animation; @sc_lighting_animation = 2 if @sc_lighting_animation.nil?; @sc_lighting_animation; end
  def sc_lighting_ambient;   @sc_lighting_ambient   = 0 if @sc_lighting_ambient.nil?;   @sc_lighting_ambient;   end
  def sc_lighting_quality;   @sc_lighting_quality   = 1 if @sc_lighting_quality.nil?;   @sc_lighting_quality;   end
  def sc_lighting_darkness;  @sc_lighting_darkness  = 2 if @sc_lighting_darkness.nil?;  @sc_lighting_darkness;  end
end

MenuHandlers.add(:options_menu, :sc_dynamic_lighting, {
  "page"        => :graphics,
  "name"        => _INTL("Dynamic Lighting"),
  "order"       => 45,
  "type"        => :array,
  "parameters"  => [_INTL("On"), _INTL("Off")],
  "description" => _INTL("Enable map darkness, light sources and lighting effects."),
  "get_proc"    => proc { next $PokemonSystem.sc_lighting_enabled },
  "set_proc"    => proc { |value, _screen| $PokemonSystem.sc_lighting_enabled = value }
})

MenuHandlers.add(:options_menu, :sc_light_animation, {
  "page"        => :graphics,
  "name"        => _INTL("Light Animation"),
  "order"       => 46,
  "type"        => :array,
  "parameters"  => [_INTL("Off"), _INTL("Calm"), _INTL("Normal"), _INTL("Vivid")],
  "description" => _INTL("Adjust pulsing, flickering and animated light colors."),
  "condition"   => proc { next $PokemonSystem.sc_lighting_enabled == 0 },
  "get_proc"    => proc { next $PokemonSystem.sc_lighting_animation },
  "set_proc"    => proc { |value, _screen| $PokemonSystem.sc_lighting_animation = value }
})

MenuHandlers.add(:options_menu, :sc_light_ambient, {
  "page"        => :graphics,
  "name"        => _INTL("Ambient Light FX"),
  "order"       => 47,
  "type"        => :array,
  "parameters"  => [_INTL("On"), _INTL("Off")],
  "description" => _INTL("Show weather scatter, stars, fireflies, aurora and similar effects."),
  "condition"   => proc { next $PokemonSystem.sc_lighting_enabled == 0 },
  "get_proc"    => proc { next $PokemonSystem.sc_lighting_ambient },
  "set_proc"    => proc { |value, _screen| $PokemonSystem.sc_lighting_ambient = value }
})

MenuHandlers.add(:options_menu, :sc_light_quality, {
  "page"        => :graphics,
  "name"        => _INTL("Lighting Quality"),
  "order"       => 48,
  "type"        => :array,
  "parameters"  => [_INTL("High"), _INTL("Balanced"), _INTL("Performance")],
  "description" => _INTL("Choose glow smoothness and the amount of ambient particles."),
  "condition"   => proc { next $PokemonSystem.sc_lighting_enabled == 0 },
  "get_proc"    => proc { next $PokemonSystem.sc_lighting_quality },
  "set_proc"    => proc { |value, _screen| $PokemonSystem.sc_lighting_quality = value }
})

MenuHandlers.add(:options_menu, :sc_light_darkness, {
  "page"        => :graphics,
  "name"        => _INTL("Night Darkness"),
  "order"       => 49,
  "type"        => :array,
  "parameters"  => [_INTL("Light"), _INTL("Normal"), _INTL("Dark")],
  "description" => _INTL("Adjust how dark unlit parts of maps become."),
  "condition"   => proc { next $PokemonSystem.sc_lighting_enabled == 0 },
  "get_proc"    => proc { next $PokemonSystem.sc_lighting_darkness },
  "set_proc"    => proc { |value, _screen| $PokemonSystem.sc_lighting_darkness = value }
})
