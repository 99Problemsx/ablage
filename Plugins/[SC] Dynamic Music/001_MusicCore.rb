#===============================================================================
# [SC] Dynamic Music - Core Logic
#
# Time-of-day checks use pbGetTimeNow, so they automatically follow the
# Unreal Time System's in-game clock when that plugin is installed. Day/night
# and weather music are re-evaluated continuously in the overworld (via
# :on_frame_update), so they switch as in-game time/weather changes -- not only
# on map entry.
#===============================================================================

module DynamicMusicEngine
  @current_override     = nil   # BGM name we forced, or nil
  @original_bgm         = nil   # BGM to restore to (map/battle default)
  @pending_bgm          = nil   # non-blocking crossfade: BGM queued to start
  @pending_play_at      = nil   # System.uptime at which to start @pending_bgm
  @last_overworld_check = 0.0   # throttle timestamp for the overworld re-check

  RECHECK_INTERVAL = 1.0        # seconds between overworld weather/day-night checks

  def self.debug_log(msg)
    return unless DynamicMusic::DEBUG_MODE
    echoln("[DynamicMusic] #{msg}") if defined?(echoln)
  end

  #=============================================================================
  # Time of day (follows pbGetTimeNow -> Unreal Time System when present)
  #=============================================================================

  def self.night?
    hour = pbGetTimeNow.hour
    if DynamicMusic::NIGHT_START_HOUR > DynamicMusic::NIGHT_END_HOUR
      hour >= DynamicMusic::NIGHT_START_HOUR || hour < DynamicMusic::NIGHT_END_HOUR
    else
      hour >= DynamicMusic::NIGHT_START_HOUR && hour < DynamicMusic::NIGHT_END_HOUR
    end
  end

  #=============================================================================
  # Overworld music priority: story-state switch > weather > day/night variant.
  # Returns the BGM name that *should* be playing now, or nil for "map default".
  #=============================================================================

  def self.desired_overworld_bgm
    # Story-state override: a configured game switch forces a track.
    if $game_switches
      DynamicMusic::STORY_SWITCH_BGM.each do |switch_id, bgm|
        return bgm if $game_switches[switch_id]
      end
    end
    if DynamicMusic::WEATHER_MUSIC_ENABLED
      weather = defined?(WeatherEventEngine) ? WeatherEventEngine.current_weather : :None
      wbgm = DynamicMusic::WEATHER_BGM[weather]
      return wbgm if wbgm
    end
    if DynamicMusic::DAY_NIGHT_ENABLED && $game_map
      config = DynamicMusic::DAY_NIGHT_MAPS[$game_map.map_id]
      return night? ? config[:night] : config[:day] if config
    end
    nil
  end

  def self.recheck_overworld_music
    desired = desired_overworld_bgm
    return if desired == @current_override
    if desired
      debug_log("overworld -> #{desired.inspect}")
      transition_bgm(desired, blocking: false)
    else
      debug_log("overworld -> restore")
      restore_bgm(blocking: false)
    end
  end

  # Called every frame in the overworld (:on_frame_update).
  def self.update_overworld
    update_pending
    now = System.uptime
    return if now - @last_overworld_check < RECHECK_INTERVAL
    @last_overworld_check = now
    recheck_overworld_music
  end

  #=============================================================================
  # Battle music -- ONE priority decision per end-of-round so the boss / low-HP
  # / last-Pokemon triggers don't fight over the BGM:
  #   1. Boss fights     -> boss-phase music (player low-HP & climax suppressed)
  #   2. Player critical -> low-HP tension (last able Pokemon, with hysteresis)
  #   3. Foe's last mon  -> climax music (trainer battles only)
  #=============================================================================

  # Trainer_type of the first boss-configured opponent (handles multi-trainer
  # battles where the boss isn't foe[0]), or nil if no opponent is a boss.
  def self.boss_trainer_type(battle)
    foe = battle.opponent
    return nil unless foe.is_a?(Array)
    foe.each do |t|
      next unless t
      tt = t.trainer_type rescue nil
      return tt if tt && DynamicMusic::BOSS_PHASES.key?(tt)
    end
    nil
  end

  def self.boss_battle?(battle)
    !boss_trainer_type(battle).nil?
  end

  # Most intense applicable boss phase (lowest threshold the boss is at/below),
  # or nil if still above all thresholds.
  def self.boss_phase_bgm(battle)
    trainer_type = boss_trainer_type(battle)
    return nil unless trainer_type
    phases = DynamicMusic::BOSS_PHASES[trainer_type]
    return nil if phases.nil? || phases.empty?
    total_hp = 0
    current_hp = 0
    battle.battlers.each do |b|
      next unless b && b.opposes?
      total_hp += b.totalhp
      current_hp += b.hp
    end
    return nil if total_hp <= 0
    ratio = current_hp.to_f / total_hp
    selected = phases.select { |p| ratio <= p[:threshold] }.min_by { |p| p[:threshold] }
    selected && selected[:bgm]
  end

  def self.player_low_hp?(battle)
    return false unless DynamicMusic::LOW_HP_ENABLED
    return false unless battle.pbAbleCount(0) <= 1   # player's last able Pokemon
    pb = battle.battlers.find { |b| b && !b.opposes? && !b.fainted? }
    return false unless pb
    ratio = pb.hp.to_f / pb.totalhp
    threshold = DynamicMusic::LOW_HP_THRESHOLD
    # Hysteresis: once it's playing, keep it until clearly recovered (heal/switch).
    (@current_override == DynamicMusic::LOW_HP_BGM) ? (ratio <= threshold + 0.05) : (ratio <= threshold)
  end

  def self.foe_last_pokemon?(battle)
    return false unless DynamicMusic::LAST_POKEMON_ENABLED
    return false unless battle.trainerBattle?
    battle.pbAbleCount(1) <= 1   # opponent down to their final Pokemon
  end

  # The single BGM the battle should be playing now, or nil for the default.
  def self.desired_battle_bgm(battle)
    return boss_phase_bgm(battle)         if boss_battle?(battle)
    return DynamicMusic::LOW_HP_BGM       if player_low_hp?(battle)
    return DynamicMusic::LAST_POKEMON_BGM if foe_last_pokemon?(battle)
    nil
  end

  def self.apply_battle_music(battle)
    return unless battle
    desired = desired_battle_bgm(battle)
    return if desired == @current_override
    if desired
      debug_log("battle -> #{desired.inspect}")
      transition_bgm(desired, blocking: true)
    else
      debug_log("battle -> restore")
      restore_bgm(blocking: true)
    end
  end

  #=============================================================================
  # BGM transition helpers.
  #   blocking      -> crossfade with a pbWait (safe/dramatic inside battle)
  #   non-blocking  -> fade now, start the new track later via update_pending
  #                    (smooth in the overworld, no transfer hitch, no pbWait
  #                     re-entrancy from :on_frame_update)
  #=============================================================================

  def self.transition_bgm(bgm_name, blocking: true)
    return if nil_or_empty?(bgm_name)
    @original_bgm ||= $game_system.playing_bgm&.name
    @current_override = bgm_name
    swap_to(bgm_name, blocking)
  end

  def self.restore_bgm(blocking: false)
    return unless @original_bgm
    target = @original_bgm
    debug_log("restore -> #{target.inspect}")
    @current_override = nil
    @original_bgm     = nil
    swap_to(target, blocking)
  end

  # Defensive wrapper: a missing/mistyped BGM filename skips (and logs) instead
  # of crashing the game. Configs reference files by name, so this guards the
  # whole "config points at a track that doesn't exist" class of errors.
  def self.safe_bgm_play(bgm_name)
    return if nil_or_empty?(bgm_name)
    pbBGMPlay(bgm_name, DynamicMusic::VOLUME_NORMAL)
  rescue StandardError => e
    debug_log("BGM #{bgm_name.inspect} failed to play: #{e.message}")
  end

  def self.swap_to(bgm_name, blocking)
    fade = DynamicMusic::FADE_DURATION / 1000.0
    pbBGMFade(fade)
    if blocking
      pbWait(fade)
      safe_bgm_play(bgm_name)
      @pending_bgm     = nil
      @pending_play_at = nil
    else
      @pending_bgm     = bgm_name
      @pending_play_at = System.uptime + fade
    end
  end

  # Plays a queued (non-blocking) BGM once its fade window has elapsed.
  def self.update_pending
    return unless @pending_bgm
    return if System.uptime < @pending_play_at
    safe_bgm_play(@pending_bgm)
    @pending_bgm     = nil
    @pending_play_at = nil
  end

  def self.reset
    @current_override = nil
    @original_bgm     = nil
    @pending_bgm      = nil
    @pending_play_at  = nil
  end

  # Player turned the system off in Options: immediately drop any active
  # override back to the map/battle default, then clear state.
  def self.deactivate
    safe_bgm_play(@original_bgm) if @original_bgm
    reset
  end
end

#===============================================================================
# Overworld hooks
#===============================================================================

# Re-evaluate weather/day-night music as in-game time flows. This is what keeps
# day/night music in sync with the Unreal Time System (where a full day passes
# in real minutes), instead of only updating on map entry.
EventHandlers.add(:on_frame_update, :sc_dynamic_music_tick,
  proc {
    next unless DynamicMusic.on?
    DynamicMusicEngine.update_overworld if $scene.is_a?(Scene_Map)
  }
)

# On entering a map: clear stale state and evaluate immediately.
EventHandlers.add(:on_enter_map, :sc_dynamic_music_map,
  proc { |_old_map_id|
    next unless DynamicMusic.on?
    DynamicMusicEngine.reset
    DynamicMusicEngine.recheck_overworld_music
  }
)

#===============================================================================
# Battle hook -- boss phases, low HP & last-Pokemon climax.
# Essentials v21.1 has no :on_battle_end_round event, so we chain the
# end-of-round phase directly on the Battle class instead.
#===============================================================================

class Battle
  unless method_defined?(:sc_dynmusic_pbEndOfRoundPhase)
    alias_method :sc_dynmusic_pbEndOfRoundPhase, :pbEndOfRoundPhase
  end

  def pbEndOfRoundPhase
    sc_dynmusic_pbEndOfRoundPhase
    DynamicMusicEngine.apply_battle_music(self) if DynamicMusic.on?
  end
end

#===============================================================================
# Battle lifecycle cleanup. Reset on both ends so no overworld override (night/
# weather/story) leaks into the battle -- otherwise @original_bgm would still
# point at the overworld track and a battle restore would play the wrong BGM.
# The overworld re-autoplays its own BGM after a battle.
#===============================================================================

EventHandlers.add(:on_start_battle, :sc_dynamic_music_battle_start,
  proc { DynamicMusicEngine.reset }
)

EventHandlers.add(:on_end_battle, :sc_dynamic_music_cleanup,
  proc { |_result, _can_lose|
    DynamicMusicEngine.reset
  }
)
