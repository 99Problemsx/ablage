#===============================================================================
# [SC] Weather Events - Core Logic
#===============================================================================

module WeatherEventEngine
  #=============================================================================
  # Get current overworld weather type
  #=============================================================================

  def self.current_weather
    return :None unless $game_screen
    # Map screen weather type to our symbols
    case $game_screen.weather_type
    when 1 then :Rain
    when 2 then :Storm
    when 3 then :Snow
    when 4 then :Sandstorm
    else :None
    end
  end

  #=============================================================================
  # Weather forecast (deterministic based on day + seed)
  #=============================================================================

  def self.forecast(days_ahead = 0)
    return :None unless WeatherEvents::FORECAST_ENABLED
    time = pbGetTimeNow
    day_seed = time.yday + days_ahead + (time.year * 365)
    # Use map-based weather if within forecast window
    idx = day_seed % WeatherEvents::WEATHER_TYPES.length
    WeatherEvents::WEATHER_TYPES[idx]
  end

  def self.forecast_list
    (0...WeatherEvents::FORECAST_DAYS).map { |d| forecast(d) }
  end

  #=============================================================================
  # Check for rare weather encounters
  #=============================================================================

  def self.check_rare_encounter
    return nil unless WeatherEvents::ENABLED
    weather = current_weather
    encounters = WeatherEvents::WEATHER_ENCOUNTERS[weather]
    return nil unless encounters && !encounters.empty?
    map_id = $game_map ? $game_map.map_id : 0

    candidates = encounters.select { |e|
      e[:map_ids].nil? || e[:map_ids].include?(map_id)
    }
    return nil if candidates.empty?

    candidates.each do |enc|
      if rand(100) < (enc[:chance] || 10)
        level = rand(enc[:level_range][0]..enc[:level_range][1])
        return { :species => enc[:species], :level => level }
      end
    end
    nil
  end

  #=============================================================================
  # Check weather-locked area access
  #=============================================================================

  def self.area_accessible?(area_id)
    config = WeatherEvents::WEATHER_LOCKED_AREAS[area_id]
    return true unless config
    current_weather == config[:weather]
  end

  #=============================================================================
  # Trigger weather-specific lore (integrates with Lore Codex)
  #=============================================================================

  def self.check_weather_lore
    weather = current_weather
    lore_entries = WeatherEvents::WEATHER_LORE[weather]
    return unless lore_entries
    lore_entries.each do |entry_id|
      codexDiscover(entry_id) if defined?(codexDiscover)
    end
  end
end

#===============================================================================
# Event helpers
#===============================================================================

def weatherAccessible?(area_id)
  WeatherEventEngine.area_accessible?(area_id)
end

def currentWeather
  WeatherEventEngine.current_weather
end

def weatherForecast
  WeatherEventEngine.forecast_list
end

#===============================================================================
# Forecast NPC helper
# Call from event: pbShowWeatherForecast
#===============================================================================

def pbShowWeatherForecast
  forecast = weatherForecast
  msg = _INTL("Weather Forecast:\n")
  forecast.each_with_index do |w, i|
    day_label = case i
                when 0 then "Today"
                when 1 then "Tomorrow"
                else "Day #{i + 1}"
                end
    msg += _INTL("{1}: {2}\n", day_label, w.to_s)
  end
  pbMessage(msg)
end

#===============================================================================
# Map change hook — check for weather events
#===============================================================================

EventHandlers.add(:on_enter_map, :sc_weather_events_check,
  proc { |_old_map_id|
    next unless WeatherEvents::ENABLED
    # Check rare encounters
    encounter = WeatherEventEngine.check_rare_encounter
    if encounter
      pbMessage(_INTL("Something stirs in the {1}...", WeatherEventEngine.current_weather.to_s.downcase))
      pbWildBattle(encounter[:species], encounter[:level])
    end
    # Check weather lore
    WeatherEventEngine.check_weather_lore
  }
)
