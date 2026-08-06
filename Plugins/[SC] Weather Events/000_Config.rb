#===============================================================================
# [SC] Weather Events - Configuration
# Version: 1.0.0
# Gameplay-affecting weather events: rare encounters, hidden areas, NPCs.
#===============================================================================

module WeatherEvents
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # WEATHER TYPES
  #=============================================================================
  WEATHER_TYPES = [:Rain, :Storm, :Snow, :Sandstorm, :Sun, :Fog, :Hail]

  #=============================================================================
  # FORECAST SYSTEM
  #=============================================================================

  # Enable weather forecasting NPC
  FORECAST_ENABLED = true

  # Days of forecast shown
  FORECAST_DAYS = 3

  # Weather cycle length (in-game hours)
  WEATHER_CYCLE_HOURS = 6

  #=============================================================================
  # RARE ENCOUNTER SETTINGS
  #=============================================================================

  # Rare Pokemon that only appear in specific weather
  # Format: { weather => [{ species:, level_range:, map_ids:, chance: }] }
  WEATHER_ENCOUNTERS = {
    :Storm => [
      # { :species => :ZAPDOS, :level_range => [50, 55], :map_ids => [20, 21], :chance => 5 },
    ],
    :Fog => [
      # { :species => :MISDREAVUS, :level_range => [25, 30], :map_ids => [15], :chance => 15 },
    ],
    :Snow => [
      # { :species => :FROSLASS, :level_range => [35, 40], :map_ids => [30, 31], :chance => 10 },
    ]
  }

  #=============================================================================
  # HIDDEN AREA ACCESS
  #=============================================================================

  # Areas only accessible during certain weather
  # Check via: weatherAccessible?(:FOG_CAVE)
  WEATHER_LOCKED_AREAS = {
    # :FOG_CAVE   => { :weather => :Fog,   :map_id => 15, :event_id => 10 },
    # :STORM_PEAK => { :weather => :Storm, :map_id => 22, :event_id => 8 },
    # :SNOW_SHRINE => { :weather => :Snow, :map_id => 31, :event_id => 12 },
  }

  #=============================================================================
  # WEATHER MERCHANTS
  #=============================================================================

  # NPCs that only appear during specific weather
  WEATHER_NPCS = {
    # :RAIN_VENDOR => {
    #   :weather  => :Rain,
    #   :map_id   => 5,
    #   :event_id => 20,
    #   :items    => [:WATERSTONE, :MYSTICWATER, :DAMPROCK]
    # },
  }

  #=============================================================================
  # LORE FRAGMENTS
  #=============================================================================

  # Codex entries that reveal during weather (integrates with Lore Codex)
  WEATHER_LORE = {
    # :Rain  => [:RAIN_PROPHECY, :WATER_LEGENDS],
    # :Storm => [:STORM_ORIGIN],
  }

  #=============================================================================
  # UI
  #=============================================================================
  SE_WEATHER_CHANGE = "GUI sel decision"
  SHOW_WEATHER_NOTIFICATION = true
end
