#===============================================================================
# [SC] Dynamic Music - Configuration
# Version: 1.0.0
# Context-sensitive music transitions: HP-based, boss phases, day/night, weather.
#===============================================================================

module DynamicMusic
  ENABLED    = true
  DEBUG_MODE = false  # set true to print "[DynamicMusic] ..." to the mkxp console on every transition

  #=============================================================================
  # LOW HP MUSIC
  # When the player's last Pokemon is below threshold, switch to tense BGM
  #=============================================================================

  LOW_HP_ENABLED = true
  LOW_HP_THRESHOLD = 0.25    # 25% of max HP
  LOW_HP_BGM = "Battle low HP"  # BGM filename (no extension) -- Audio/BGM/Battle low HP.ogg

  #=============================================================================
  # LAST POKEMON CLIMAX
  # When a TRAINER sends out their final Pokemon, switch to a climactic track
  # (like the "last Pokemon" theme in SwSh/SV). Skipped for configured bosses
  # (their BOSS_PHASES music owns the fight) and for wild battles.
  #=============================================================================

  LAST_POKEMON_ENABLED = true
  LAST_POKEMON_BGM = "Battle Elite"  # placeholder existing file -- swap to taste

  #=============================================================================
  # BOSS PHASE MUSIC
  # Switch BGM when boss reaches HP thresholds during battle.
  # Format: { trainer_type => [{ :threshold =>, :bgm => }, ...] }
  # Lowest matching threshold wins (most intense phase). Tracks below are
  # EXISTING files used as placeholders -- swap in dedicated boss themes.
  #=============================================================================

  BOSS_PHASES = {
    # General Shade (Ch12, base BGM "Battle Elite") -- escalate at 25% HP.
    :GENERAL_SHADE => [
      { :threshold => 0.25, :bgm => "Battle Champion" },
    ],
    # Malachar, main antagonist (Ch31-32, base BGM "Battle Champion") --
    # drop into the tense track for his desperate final phase.
    :MALACHAR => [
      { :threshold => 0.25, :bgm => "Battle low HP" },
    ],
  }

  #=============================================================================
  # DAY/NIGHT VARIANTS
  # Maps can have different BGM for day vs night
  # Format: { map_id => { :day => "BGM_Day", :night => "BGM_Night" } }
  #
  # Day/night uses pbGetTimeNow, so it follows the Unreal Time System's in-game
  # clock when that plugin is installed, and re-evaluates live as time passes
  # (not only when you enter the map). Set :day to the map's normal theme;
  # :night is the variant. Tracks below are existing files used as placeholders.
  #=============================================================================

  DAY_NIGHT_ENABLED = true

  DAY_NIGHT_MAPS = {
    3 => { :day => "Pokemon XY - Vaniville Town", :night => "Natural Park" },  # Dawnhaven Village
  }

  # Hour boundaries (24h format)
  NIGHT_START_HOUR = 20
  NIGHT_END_HOUR   = 6

  #=============================================================================
  # WEATHER MUSIC
  # Override map BGM during specific weather conditions.
  # weather symbol (from WeatherEventEngine.current_weather) => "BGM file".
  # Valid symbols: :Rain, :Storm, :Snow, :Sandstorm. Weather music takes
  # priority over day/night. Requires the [SC] Weather Events plugin to report
  # weather. Tracks below are existing-file placeholders.
  #=============================================================================

  WEATHER_MUSIC_ENABLED = true

  WEATHER_BGM = {
    :Storm => "Pokemon RSE - Sealed Chamber",
    :Snow  => "Islands",
  }

  #=============================================================================
  # STORY-STATE MUSIC
  # When one of these game switches is ON, it overrides the overworld music
  # (highest priority -- above weather and day/night). The FIRST ON entry, top
  # to bottom, wins. Lets cutscenes/chapters set a musical mood declaratively:
  # just flip the switch on/off in an event instead of juggling BGM commands.
  # Format: { switch_id => "BGM file" }
  #=============================================================================

  STORY_SWITCH_BGM = {
    # 50 => "Battle Champion",   # e.g. while the Cult is besieging the town
  }

  #=============================================================================
  # TRANSITION
  #=============================================================================

  FADE_DURATION = 800  # Milliseconds for crossfade
  VOLUME_NORMAL = 80

  #=============================================================================
  # RUNTIME TOGGLE
  # ENABLED is the master compile-time switch; the player can also turn the
  # system off in the Options menu ($PokemonSystem.dynamic_music, 0 = On).
  #=============================================================================

  def self.on?
    ENABLED && ($PokemonSystem.nil? || $PokemonSystem.dynamic_music == 0)
  end
end
