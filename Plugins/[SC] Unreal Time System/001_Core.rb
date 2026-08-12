#===============================================================================
# [SC] Unreal Time System - Essentials v21.99 runtime
# Original concept/API: FL (Essentials-UnrealTime, MIT)
#===============================================================================
class PokemonGlobalMetadata
  attr_writer :sc_unreal_seconds
  def sc_unreal_seconds
    @sc_unreal_seconds ||= 0.0
  end
  # FL compatibility names for old events/save scripts.
  def newSecondCount; sc_unreal_seconds / UnrealTime::PROPORTION; end
  def newSecondCount=(value); @sc_unreal_seconds = value.to_f * UnrealTime::PROPORTION; end
  def extraYears; 0; end
  def extraYears=(_value); end
  def addNewFrameCount; UnrealTime.tick; end
end

module UnrealTime
  @last_frame = -1

  module_function

  def initial_date
    Time.local(*INITIAL_DATE)
  end

  def enabled?
    ENABLED && !!$PokemonGlobal
  end

  def paused?
    return true if SWITCH_STOPS > 0 && $game_switches && $game_switches[SWITCH_STOPS]
    false
  end

  def tick
    return if !enabled? || paused?
    frame = Graphics.frame_count
    return if @last_frame == frame
    @last_frame = frame
    delta = if Graphics.respond_to?(:delta)
              Graphics.delta.to_f
            else
              1.0 / [Graphics.frame_rate.to_f, 1.0].max
            end
    $PokemonGlobal.sc_unreal_seconds += delta * PROPORTION
  end

  def consume_extra_variables
    return if !$game_variables
    if EXTRA_SECONDS > 0
      value = $game_variables[EXTRA_SECONDS].to_f
      $game_variables[EXTRA_SECONDS] = 0
      add_seconds(value) if value != 0
    end
    if EXTRA_DAYS > 0
      value = $game_variables[EXTRA_DAYS].to_f
      $game_variables[EXTRA_DAYS] = 0
      add_days(value) if value != 0
    end
  end

  def time_now
    return Time.now if !enabled?
    consume_extra_variables
    initial_date + $PokemonGlobal.sc_unreal_seconds
  end

  def refresh_tone
    if defined?(PBDayNight)
      PBDayNight.instance_variable_set(:@dayNightToneLastUpdate, nil)
      PBDayNight.instance_variable_set(:@cachedTone, nil)
      PBDayNight.scheduleToneRefresh if PBDayNight.respond_to?(:scheduleToneRefresh)
      PBDayNight.sheduleToneRefresh if PBDayNight.respond_to?(:sheduleToneRefresh)
    end
    lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
    lighting.refresh_all if lighting && !lighting.disposed?
  end

  def add_seconds(seconds)
    return if !enabled?
    $PokemonGlobal.sc_unreal_seconds += seconds.to_f
    refresh_tone
  end
  def add_minutes(minutes); add_seconds(minutes.to_f * 60); end
  def add_hours(hours); add_minutes(hours.to_f * 60); end
  def add_days(days); add_hours(days.to_f * 24); end

  def advance_to(hour, min = 0, sec = 0)
    raise RangeError, "hour is #{hour}, should be 0..23" if hour.to_i < 0 || hour.to_i > 23
    raise RangeError, "minute is #{min}, should be 0..59" if min.to_i < 0 || min.to_i > 59
    raise RangeError, "second is #{sec}, should be 0..59" if sec.to_i < 0 || sec.to_i > 59
    now = time_now
    current = now.hour * 3600 + now.min * 60 + now.sec
    target = hour.to_i * 3600 + min.to_i * 60 + sec.to_i
    difference = target - current
    difference += 86_400 if difference < 0
    add_seconds(difference)
  end

  def set_time(year, month, day, hour = 0, min = 0, sec = 0)
    target = Time.local(year, month, day, hour, min, sec)
    $PokemonGlobal.sc_unreal_seconds = target - initial_date
    refresh_tone
    target
  end

  def reset
    return if !$PokemonGlobal
    $PokemonGlobal.sc_unreal_seconds = 0.0
    refresh_tone
  end

  def reset_frame_guard
    @last_frame = -1
  end
end

def pbGetTimeNow
  UnrealTime.enabled? ? UnrealTime.time_now : Time.now
end

# Stable SC-facing facade. New plugins should use this instead of coupling to
# either FL's internals or Ruby's wall clock directly.
module SCGameClock
  module_function
  def now; pbGetTimeNow; end
  def speed; UnrealTime::PROPORTION; end
  def paused?; UnrealTime.paused?; end
  def add_seconds(value); UnrealTime.add_seconds(value); end
  def add_minutes(value); UnrealTime.add_minutes(value); end
  def add_hours(value); UnrealTime.add_hours(value); end
  def add_days(value); UnrealTime.add_days(value); end
  def advance_to(hour, min = 0, sec = 0); UnrealTime.advance_to(hour, min, sec); end
  def set(year, month, day, hour = 0, min = 0, sec = 0); UnrealTime.set_time(year, month, day, hour, min, sec); end
end

class Scene_Map
  alias sc_unreal_time_update update unless method_defined?(:sc_unreal_time_update)
  def update
    UnrealTime.tick
    sc_unreal_time_update
  end

  if UnrealTime::TALK_PASS && method_defined?(:miniupdate)
    alias sc_unreal_time_miniupdate miniupdate unless method_defined?(:sc_unreal_time_miniupdate)
    def miniupdate
      UnrealTime.tick
      sc_unreal_time_miniupdate
    end
  end
end

if UnrealTime::BATTLE_PASS && defined?(Battle::Scene)
  class Battle::Scene
    alias sc_unreal_time_graphics_update pbGraphicsUpdate unless method_defined?(:sc_unreal_time_graphics_update)
    def pbGraphicsUpdate
      UnrealTime.tick
      sc_unreal_time_graphics_update
    end
  end
end

EventHandlers.add(:on_start_new_game, :sc_unreal_time_reset_guard, proc { UnrealTime.reset_frame_guard })
EventHandlers.add(:on_enter_map, :sc_unreal_time_refresh, proc { UnrealTime.reset_frame_guard; UnrealTime.refresh_tone })

module PBDayNight
  class << self
    def sheduleToneRefresh
      scheduleToneRefresh if respond_to?(:scheduleToneRefresh)
    end unless method_defined?(:sheduleToneRefresh)
  end
end
