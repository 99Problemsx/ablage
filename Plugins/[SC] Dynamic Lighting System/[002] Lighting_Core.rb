# ===============================================================================
# Lighting Class — Main lighting engine for Dynamic Lighting System
# ===============================================================================
#
# TABLE OF CONTENTS
# =================
# Search for "SECTION:" to jump between major areas.
#
# SECTION: Core Engine
#   - initialize, setup_map, setup_effects, setup_overlay
#   - smart_deduplicate, scan_event_comments, scan_door_events
#   - add_effect, remove_effect
#
# SECTION: Tone & Animation
#   - refresh_tone, refresh_attached, saw_wave, pulse_value
#   - angle_diff, facing_to_screen_angle
#
# SECTION: Lifecycle
#   - update_lifespans, update_paths, smooth_intensity_ramp
#
# SECTION: Water & Reflections
#   - update_water_reflections
#
# SECTION: Particles
#   - update_ember_particles, update_fireflies, update_smoke_particles
#   - update_pollen_drift, update_puddle_reflections, update_rain_streaks
#   - update_lava_pulse, update_drip_ripples, update_echo_glow
#   - update_jellyfish
#
# SECTION: Ambient & Environment
#   - update_moonlight, update_caustics, update_stars, update_aurora
#   - update_cloud_shadows, update_sunset_silhouettes, update_canopy_dapple
#   - update_horizon_glow, update_heat_haze, update_lens_flares
#   - update_firefly_lanterns
#
# SECTION: Weather Effects
#   - update_weather_flash, weather_intensity_mult
#   - update_fog_scatter, update_frost_rings, snow_radius_mult
#
# SECTION: Per-Light Effects
#   - update_flame_sprites, update_color_bleed, update_crystal_refraction
#   - update_power_grid, update_warm_zones, update_window_spill
#   - update_item_glows, update_flicker_shadows, update_ore_glow
#   - update_stalactite_shadows
#
# SECTION: Gameplay Features
#   - update_spotlight_follow, update_chain_propagation
#   - update_event_triggers, update_light_sounds, update_keyframes
#   - tile_illuminated?, dark_zone_mult, seasonal_color_shift
#
# SECTION: Rendering
#   - update_light_sprites, create_light_sprite, generate_gradient
#   - refresh_bitmap, refresh_sprite, refresh_overlay
#   - apply_blend_mode, apply_light_layer, conditional_color
#   - color_temperature_tone, underwater_color_shift
#
# SECTION: Display Control
#   - show_all, hide_all, dispose, refresh_all, update
#
# SECTION: Debug & Profiling
#   - toggle_debug_preview, toggle_profiler, toggle_light_counter
#   - update_debug_preview, update_profiler, update_light_counter
#   - update_perf_auto_scaler, lod_layers
#
# SECTION: Map Transitions
#   - start_tone_transition, update_tone_transition, region_tint_modifier
#
# ===============================================================================

class Lighting
  PADDING = 32
  
  def initialize(map, viewport)
    LightingConfig.sync_from_system if defined?(LightingConfig)
    @bitmap = Bitmap.new(Graphics.width + PADDING * 2, Graphics.height + PADDING * 2)
    @sprite_add = Sprite.new(viewport)
    @sprite_add.blend_type = 0
    @sprite_add.x = -PADDING
    @sprite_add.y = -PADDING
    @sprite_add.z = 99997
    @sprite_sub = Sprite.new(viewport)
    @sprite_sub.blend_type = 2
    @sprite_sub.x = -PADDING
    @sprite_sub.y = -PADDING
    @sprite_sub.z = 99998
    @overlay = Sprite.new(viewport)
    @overlay.bitmap = Bitmap.new(Graphics.width + PADDING * 2, Graphics.height + PADDING * 2)
    @overlay.x = -PADDING
    @overlay.y = -PADDING
    @overlay.z = 99999
    @overlay.blend_type = 0
    @light_sprites = {}
    # Quality knobs — configurable via LightingConfig for low-end machines.
    @numfades   = (defined?(LightingConfig) ? LightingConfig.glow_layers : 3).to_i.clamp(1, 4)
    @resolution = (defined?(LightingConfig) ? LightingConfig.resolution  : 2).to_i.clamp(1, 8)
    @fadefactor = 0.9
    @anim_mult = 0.075
    @disposed = false
    @viewport = viewport
    @gradient_cache = {}
    @halo_sprites = {}
    @reflect_sprites = {}
    @ember_particles = []
    @moonlight_sprite = nil
    @debug_preview = false
    @debug_preview_sprites = []
    # Lightning flash overlay
    @flash_sprite = Sprite.new(viewport)
    @flash_sprite.bitmap = Bitmap.new(Graphics.width, Graphics.height)
    @flash_sprite.bitmap.fill_rect(0, 0, Graphics.width, Graphics.height, Color.new(255, 255, 255))
    @flash_sprite.z = 100000
    @flash_sprite.opacity = 0
    # New feature sprites
    @firefly_particles = []
    @vignette_sprite = nil
    @beam_sprites = {}
    @star_sprites = []
    @star_data = []
    @profiler_sprite = nil
    @profiler_visible = false
    @smoke_particles = []
    @aurora_sprite = nil
    @window_spill_sprites = {}
    @item_glow_sprites = {}
    @_transition_tone = nil
    @_transition_progress = 1.0  # 1.0 = done, <1 = transitioning
    @_transition_from_tone = nil
    @_transition_to_tone = nil
    # Batch 7-10 features
    @puddle_sprites = []
    @pollen_particles = []
    @cloud_shadow_sprite = nil
    @sunset_silhouettes = {}   # event_id => sprite (persistent, repositioned per frame)
    @_silhouette_hour = -1
    @drip_ripples = []
    @ore_glow_sprites = {}
    @stalactite_shadow_sprite = nil
    @echo_glow_sprites = []
    @jellyfish_sprites = []
    @flame_overlay_sprites = {}
    @color_bleed_sprites = {}
    @horizon_glow_sprite = nil
    @crystal_refract_sprites = {}
    @canopy_dapple_sprite = nil
    @lens_flare_sprites = {}   # light_id => sprite (persistent, repositioned per frame)
    @heat_haze_sprite = nil
    @_power_grid_flicker = false
    @_power_grid_timer = 0
    @_cave_breath_phase = 0.0
    @_perf_auto_scale = 1.0
    @_perf_frame_times = []
    @_perf_last_uptime = nil      # Wall-clock anchor for real FPS estimation
    @_prev_weather_rain = false
    # Per-map feature presence flags (computed in setup_effects) so the ~25
    # per-frame update passes can skip the whole map when no light opts into a
    # given feature, instead of iterating every effect every frame.
    @feature_flags = {}
    # Soft shadow casting (per-light `shadows` flag) — pooled streak sprites.
    @shadow_sprites = {}
    @shadow_decal_bitmap = nil
    # Event-comment lights: track each event's active page + the tag it produced
    # so the light follows page/self-switch changes (a [Light] tag only lights
    # while its page is active) and rebuilds on a per-page config change.
    @_event_light_pages = {}
    @_event_light_tags = {}
    @_disabled_hidden = false   # tracks LightingConfig.enabled master-switch state
    # Auto tile shadows (priority tiles cast offset silhouettes)
    @tile_shadow_sprites = {}
    @_tile_shadow_sil = nil
    @_tile_shadow_id_cache = nil
    @_tile_shadow_blob = nil
    # Batch 11 features
    @flicker_shadow_sprites = {}
    @fog_scatter_sprites = {}
    @rain_streak_sprites = []
    @lava_pulse_sprites = []
    @frost_ring_sprites = {}
    @light_counter_sprite = nil
    @light_counter_visible = false
    @_seasonal_cache_hour = -1
    @_seasonal_tone = Tone.new(0, 0, 0)
    # Cached clock values (refreshed once per frame in refresh_all) so the
    # many per-light time-based helpers don't each rebuild a Time object.
    @_cached_hour = 0
    @_cached_min = 0
    @_cached_month = 1

    setup_map(map)
    setup_effects
    setup_overlay
    update
    if defined?(LightingTransitionMemory)
      previous_tone = LightingTransitionMemory.consume
      start_tone_transition(previous_tone, @tone) if previous_tone
    end
  end

  def current_tone
    return @tone ? @tone.dup : nil
  end

  def setup_map(map = nil)
    @map_settings = nil
    @map = map ? map : $game_map
    @last_map_id = @map.map_id
    # The Lighting instance persists across map transitions, so every per-map
    # cache must reset here: tile priorities (occlusion), shadow caster ids and
    # silhouettes (per tileset), and the on-screen shadow sprite pool.
    @_occ_prio_cache&.clear
    @_tile_shadow_id_cache&.clear
    @_tile_shadow_base_cache&.clear
    if @_tile_shadow_sil
      @_tile_shadow_sil.each_value { |b| b.dispose if b && b != @_tile_shadow_blob && !b.disposed? }
      @_tile_shadow_sil.clear
    end
    if @tile_shadow_sprites
      @tile_shadow_sprites.each_value { |s| s.dispose if !s.disposed? }
      @tile_shadow_sprites.clear
    end
    settings = GameData::LightMap.try_get(@map.map_id) || GameData::LightMap.get(0)
    return false if settings.type == :custom && !settings.call_spawn
    @map_settings = settings
  end

  def setup_effects
    # Clear and Dispose existing sprites (Force regeneration for new map/viewport)
    if @light_sprites
      @light_sprites.each_value { |s| s.dispose }
      @light_sprites.clear
    end
    


    # Dispose previous map's bitmap-light bitmaps before discarding the hash,
    # otherwise they leak on every map transition (setup_effects re-runs).
    @effects_bitmaps&.each_value { |bmp| bmp.dispose if bmp && !bmp.disposed? }
    @effects = {}
    @effects_bitmaps = {}
    @debug_logged = false
    count = 0
    GameData::LightEffect.each do |effect|
      next if effect.map_id && effect.map_id != @map.map_id
      @effects[effect.id] = effect
      @effects_bitmaps[effect.id] = pbBitmap(effect.bitmap) if effect.bitmap
      count += 1
    end
    if $DEBUG
      message = "map=#{@map.map_id} preset=#{@map_settings.type} " \
                "effects=#{count} night=#{night?} outside=#{outside?}"
      if defined?(SCScripts) && SCScripts.respond_to?(:log)
        SCScripts.log(message, :info, :lighting)
      else
        stamp = Time.now.strftime("%H:%M:%S.%L") rescue "--:--:--.---"
        echoln("[#{stamp}] [SC/LIGHTING] INFO  #{message}")
      end
    end
    
    scan_event_comments
    scan_door_events
    smart_deduplicate
    compute_feature_flags
  end

  # ============================================================================
  # Per-map feature presence — scan all effects once so the per-frame update
  # passes can early-out when no light on the map uses a given opt-in feature.
  # Recomputed on every setup (map change, refresh_all(true), light add/remove).
  # ============================================================================
  def compute_feature_flags
    f = Hash.new(false)
    @effects.each_value do |e|
      f[:embers]          = true if e.embers
      f[:smoke]           = true if e.embers || e.pulse == :candle
      f[:water_reflect]   = true if e.water_reflect
      f[:beam]            = true if e.beam
      f[:window]          = true if e.window
      f[:flame]           = true if e.flame_sprite
      f[:color_bleed]     = true if e.color_bleed
      f[:crystal]         = true if e.crystal_refract
      f[:heat]            = true if e.heat_shimmer
      f[:follow]          = true if e.follow_target
      f[:chain]           = true if e.chain_to
      f[:keyframes]       = true if e.keyframes && !e.keyframes.empty?
      f[:sound]           = true if e.sound
      f[:power_grid]      = true if e.power_grid
      f[:warm]            = true if e.pulse == :candle
    end
    @feature_flags = f
  end

  # ============================================================================
  # FEATURE: Smart Light Deduplication — merge identical lights at same tile
  # ============================================================================
  def smart_deduplicate
    seen = {}
    dupes = []
    @effects.each do |id, effect|
      key = [effect.map_x, effect.map_y, effect.type, effect.radius]
      if seen[key]
        dupes << id
        echoln("Lighting: Duplicate detected — #{id} overlaps #{seen[key]} at (#{effect.map_x},#{effect.map_y})") if $DEBUG
      else
        seen[key] = id
      end
    end
    dupes.each do |id|
      # Non-destructive: only drop the duplicate from THIS map's render set, don't
      # delete it from the global DATA. Otherwise an intentionally stacked light
      # (e.g. two torches on one tile for extra brightness) is permanently lost,
      # and the deletion also wiped it for every other context/save.
      @effects.delete(id)
      if @light_sprites[id]
        @light_sprites[id].dispose
        @light_sprites.delete(id)
      end
    end
    echoln("Lighting: Skipped #{dupes.length} duplicate lights" ) if $DEBUG && dupes.length > 0
  end

  def setup_overlay
    bitmap = @overlay.bitmap
    bitmap.clear
    return if !@map_settings
    overlay_settings = nil
    blend_type = 0
    if @map_settings.overlay
      overlay_settings = @map_settings.overlay
    elsif @map.metadata&.has_flag?("Cave")
      overlay_settings = @map_settings.overlay || [Color.new(0, 0, 0, 150), Graphics.width / 2, 12]
    elsif canopy?
      overlay_settings = @map_settings.overlay || [Color.new(15, 38, 0, 200), Graphics.width / 2, 12]
      blend_type = 2
    end
    return unless overlay_settings
    color  = overlay_settings[0]
    radius = overlay_settings[1]
    rings  = overlay_settings[2]
    bitmap.fill_rect(0, 0, bitmap.width, bitmap.height, color)
    cx = bitmap.width / 2
    cy = bitmap.height / 2
    cradius = radius
    for i in 1..rings
      for j in cx - cradius..cx + cradius
        diff2 = (cradius * cradius) - ((j - cx) * (j - cx))
        diff = Math.sqrt(diff2)
        bitmap.fill_rect(j, cy - diff, 1, diff * 2, Color.new(color.red, color.green, color.blue, color.alpha * (rings - i) / rings))
      end
      cradius = (cradius * 0.9).floor
    end
    @overlay.blend_type = blend_type
  end

  # ============================================================================
  # FEATURE: Event Comment Tags — [Light circle 48] etc. in event comments
  # ============================================================================
  def scan_event_comments
    return if !$game_map
    @_event_light_pages = {}
    @_event_light_tags = {}
    $game_map.events.each_value do |event|
      next if !event
      # Track the currently active page's command list + tag so
      # update_event_light_pages can react when the event switches page
      # (self-switch / variable / switch) or to a different light config.
      @_event_light_pages[event.id] = event.list
      tag = event_light_tag(event)
      @_event_light_tags[event.id] = tag
      parse_and_add_event_light(event.id, tag) if tag
    end
  end

  # Inner "[Light …]" string from the event's ACTIVE page (the list Essentials
  # selected from the page conditions), or nil. Previously this scanned only the
  # first page and added the light permanently, so a [Light] tag stayed lit no
  # matter which page was active — you couldn't switch a lamp off via a page.
  def event_light_tag(event)
    list = (event.list rescue nil)
    return nil if !list
    list.each do |cmd|
      next if cmd.code != 108 && cmd.code != 408
      line = cmd.parameters[0].to_s
      return $1.strip if line =~ /\[Light\s+(.*?)\]/i
    end
    nil
  end

  # Per-frame: when an event switches its active page, add/remove its light so
  # event-comment lights respect page conditions and self-switches.
  def update_event_light_pages
    return if !$game_map || !@effects
    @_event_light_tags ||= {}
    changed = false
    $game_map.events.each_value do |event|
      next if !event
      cur = event.list
      next if cur.equal?(@_event_light_pages[event.id])   # active page unchanged
      @_event_light_pages[event.id] = cur
      tag = event_light_tag(event)
      next if tag == @_event_light_tags[event.id]         # same light config → nothing to do
      @_event_light_tags[event.id] = tag
      id = :"_evt_light_#{@map.map_id}_#{event.id}"
      # Drop any existing event light first (config changed or page turned it off).
      if @effects[id]
        GameData::LightEffect::DATA.delete(id)
        @effects.delete(id)
        if @light_sprites[id]
          @light_sprites[id].dispose
          @light_sprites.delete(id)
        end
        changed = true
      end
      if tag
        parse_and_add_event_light(event.id, tag)
        @effects_bitmaps[id] = pbBitmap(@effects[id].bitmap) if @effects[id]&.bitmap
        changed = true
      end
    end
    compute_feature_flags if changed
  end

  def parse_and_add_event_light(event_id, tag_str)
    tokens = tag_str.split(/\s+/)
    return if tokens.empty?
    type = tokens.shift.downcase.to_sym
    return if ![:circle, :rect, :cone].include?(type)

    id = :"_evt_light_#{@map.map_id}_#{event_id}"
    return if @effects[id]  # Already registered

    hash = {
      :id     => id,
      :type   => type,
      :map_id => @map.map_id,
      :map_x  => $game_map.events[event_id].x,
      :map_y  => $game_map.events[event_id].y,
      :event  => event_id,
      :day    => false
    }

    case type
    when :circle, :cone
      hash[:radius] = tokens.shift.to_i if tokens[0] =~ /^\d+$/
      hash[:radius] ||= 48
    when :rect
      hash[:width]  = tokens.shift.to_i if tokens[0] =~ /^\d+$/
      hash[:height] = tokens.shift.to_i if tokens[0] =~ /^\d+$/
      hash[:width]  ||= 1
      hash[:height] ||= 1
    end

    # Parse keyword parameters
    tokens.each do |token|
      case token.downcase
      when 'red'     then hash[:color] = Color.new(255, 80, 80)
      when 'blue'    then hash[:color] = Color.new(80, 80, 255)
      when 'yellow'  then hash[:color] = Color.new(255, 255, 80)
      when 'green'   then hash[:color] = Color.new(80, 255, 80)
      when 'orange'  then hash[:color] = Color.new(255, 160, 40)
      when 'warm'    then hash[:color] = Color.new(255, 200, 120)
      when 'day'     then hash[:day] = true
      # Projected shadows were removed. The legacy tag is intentionally ignored.
      when 'shadows' then nil
      when 'shimmer' then hash[:heat_shimmer] = true
      when 'flicker' then hash[:flicker] = true
      when 'reflect' then hash[:water_reflect] = true
      when 'embers'  then hash[:embers] = true
      when 'beam'    then hash[:beam] = true
      when 'window'  then hash[:window] = true
      when 'power_grid' then hash[:power_grid] = true
      when 'crystal'    then hash[:crystal_refract] = true
      when 'flame'      then hash[:flame_sprite] = true
      when 'bleed'      then hash[:color_bleed] = true
      when 'seasonal'   then hash[:seasonal] = true
      when /^follow:(\w+)$/i
        ft = $1.downcase
        hash[:follow_target] = ft == 'player' ? :player : (ft == 'nearest' ? :nearest_event : ft.to_i)
      when /^follow_range:(\d+)$/i then hash[:follow_range] = $1.to_i
      when /^cull:(\d+)$/i then hash[:cull_distance] = $1.to_i
      when /^chain:(.+)$/i then hash[:chain_to] = $1.strip.to_sym
      when /^layer:(\w+)$/i
        l = $1.to_sym
        hash[:layer] = l if [:ground, :mid, :overhead].include?(l)
      when /^color_var:(\d+)$/i then hash[:color_var] = $1.to_i
      when /^blend:(\w+)$/i
        b = $1.to_sym
        hash[:blend] = b if [:additive, :subtractive, :multiply].include?(b)
      when /^sound:(.+)$/i       then hash[:sound] = $1
      when /^sound_range:(\d+)$/i then hash[:sound_range] = $1.to_i
      when /^color:(\d+),(\d+),(\d+)$/i
        hash[:color] = Color.new($1.to_i.clamp(0,255), $2.to_i.clamp(0,255), $3.to_i.clamp(0,255))
      when /^pulse:(\w+)$/i      then hash[:pulse] = $1.to_sym
      when /^flicker:([\d.]+)$/i  then hash[:flicker] = $1.to_f
      when /^spread:(\d+)$/i      then hash[:cone_spread] = $1.to_i
      when /^angle:(\d+)$/i       then hash[:cone_angle] = $1.to_i
      when /^intensity:([\d.]+)$/i then hash[:intensity] = $1.to_f
      when /^group:(\w+)$/i       then hash[:group] = $1.to_sym
      when /^switch:(\d+)$/i      then hash[:switch] = $1.to_i
      when /^lifespan:(\d+)$/i    then hash[:lifespan] = $1.to_i
      when /^radius:(\d+)$/i      then hash[:radius] = $1.to_i
      when /^sync:(\w+)$/i        then hash[:sync_group] = $1.to_sym
      when /^preset:(\w+)$/i
        p_sym = $1.to_sym
        if defined?(LIGHT_PRESETS) && LIGHT_PRESETS[p_sym]
          LIGHT_PRESETS[p_sym].each { |k, v| hash[k] = v unless hash.key?(k) }
        end
      end
    end

    GameData::LightEffect.add(hash)
    effect = GameData::LightEffect.try_get(id) || GameData::LightEffect.get(hash[:id])
    @effects[effect.id] = effect
    echoln("Lighting: Event #{event_id} → [Light #{tag_str}]") if $DEBUG
  end

  # ============================================================================
  # FEATURE: Light Bleeding Through Doors — warm glow at entrance events
  # ============================================================================
  def scan_door_events
    return if !$game_map || !outside? || !night?
    $game_map.events.each_value do |event|
      next if !event
      rpg_event = event.instance_variable_get(:@event) rescue nil
      next if !rpg_event || !rpg_event.pages
      rpg_event.pages.each do |page|
        next if !page || !page.list
        page.list.each do |cmd|
          next if cmd.code != 201  # Transfer Player command
          target_map_id = cmd.parameters[1]
          next if !target_map_id || target_map_id <= 0
          target_meta = GameData::MapMetadata.try_get(target_map_id)
          next if !target_meta || target_meta.outdoor_map

          id = :"_door_bleed_#{event.id}_#{@map.map_id}"
          next if @effects[id]
          GameData::LightEffect.add({
            :id        => id,
            :type      => :circle,
            :radius    => 24,
            :map_x     => event.x,
            :map_y     => event.y,
            :map_id    => @map.map_id,
            :color     => Color.new(255, 200, 120),
            :day       => false,
            :intensity => 0.4,
            :stop_anim => true
          })
          # try_get returns nil if missing; falling back to .get would raise
          # (defeating the purpose). Just use try_get.
          effect = GameData::LightEffect.try_get(id)
          @effects[id] = effect if effect
          break  # One door light per event
        end
      end
    end
  end

  def add_effect(effect)
    @effects[effect.id] = effect if !disposed?
  end

  def remove_effect(key)
    @effects.delete(key) if !disposed?
  end

  def refresh_tone
    @tone = nil
    return if !@map_settings
    if @map_settings.type == :custom
      @tone = @map_settings.tone
    elsif @map.metadata&.has_flag?("Cave")
      @tone = @map_settings.tone || Tone.new(0, 0, 0, 150)
    elsif canopy? && !night?
      @tone = @map_settings.tone || Tone.new(-60, -60, -40, 0)
    elsif outside?
      @tone = PBDayNight.getTone
    end
    # Optional Forge hour keys are RGB multipliers. Convert them to RGSS tone
    # offsets and blend them on top of Essentials' normal day/night tone.
    if defined?(SCEditorLights)
      tint = SCEditorLights.tint(@map.map_id, @_cached_hour)
      if tint
        @tone ||= Tone.new(0, 0, 0, 0)
        @tone = Tone.new(
          (@tone.red + tint[0] - 255).clamp(-255, 255),
          (@tone.green + tint[1] - 255).clamp(-255, 255),
          (@tone.blue + tint[2] - 255).clamp(-255, 255),
          @tone.gray
        )
      end
    end
    # Apply per-map region tint modifier
    if @tone
      rt = region_tint_modifier
      @tone = Tone.new(
        (@tone.red + rt.red).clamp(-255, 255),
        (@tone.green + rt.green).clamp(-255, 255),
        (@tone.blue + rt.blue).clamp(-255, 255),
        @tone.gray
      )
    end
    # Smooth map transition crossfade
    @tone = transitioned_tone(@tone) if @tone
  end

  def refresh_attached
    return if !@tone
    return if @effects.length == 0
    @effects.each do |key, effect|
      next if !should_update?(effect)
      ev = effect.event
      next if !ev
      effect.x = (ev.real_x / 4).round + (ev.width * Game_Map::TILE_WIDTH / 2)
      effect.y = (ev.real_y / 4).round + 32 - ev.sprite_size[1] / 2
      # Update cone direction for event-attached cones
      if effect.type == :cone
        effect.cone_angle = facing_to_screen_angle(ev.direction)
      end
    end
  end

  # ============================================================================
  # ANIMATIONS: Saw wave function for smooth 0→1→0 cycles
  # ============================================================================
  def saw_wave(time, period)
    cycle_position = (time % period) / period.to_f
    if cycle_position < 0.5
      cycle_position * 2
    else
      (1 - cycle_position) * 2
    end
  end

  # ============================================================================
  # ANIMATIONS: Pulse profiles — distinct animation shapes per light
  # ============================================================================
  def pulse_value(effect)
    return 0.0 if defined?(LightingConfig) && !LightingConfig.animations
    # System.uptime-based seconds keep motion stable at every render FPS.
    clock = defined?(LightingConfig) ? LightingConfig.animation_time :
            (Graphics.frame_count / [Graphics.frame_rate.to_f, 1.0].max)
    offset = effect.sync_group ? 0.0 : ((effect.id.hash.abs % 1000) / 1000.0 * 2.0)
    t_base = clock * (effect.animation_speed || 1.0) + offset
    strength = defined?(LightingConfig) ? LightingConfig.pulse_strength.to_f : 1.0

    return saw_wave(t_base, 2.0) * @anim_mult * strength if !effect.pulse
    if effect.pulse.is_a?(Numeric)
      return Math.sin(t_base * Math::PI * 2.0) * effect.pulse.to_f * strength
    end
    case effect.pulse
    when :candle
      t = t_base.to_f
      v = Math.sin(t * 7.1) * 0.4 + Math.sin(t * 13.7) * 0.3 + Math.sin(t * 23.3) * 0.3
      return (v * 0.5 + 0.5) * @anim_mult * 2.0 * strength
    when :heartbeat
      t = (t_base % 2.0) / 2.0
      if t < 0.15
        return (Math.sin(t / 0.15 * Math::PI) * @anim_mult * 3.0 * strength)
      elsif t < 0.20
        return 0
      elsif t < 0.35
        return (Math.sin((t - 0.20) / 0.15 * Math::PI) * @anim_mult * 2.0 * strength)
      else
        return 0
      end
    when :strobe
      cycle = (t_base / 0.25).floor % 2
      return cycle == 0 ? @anim_mult * 3.0 * strength : 0
    when :damaged_neon
      # Rapid stutter on/off 2-3 times, pause, stabilize, repeat
      norm = (t_base % 3.0) / 3.0
      if norm < 0.05       # Flash 1 ON
        return @anim_mult * 3.0 * strength
      elsif norm < 0.08    # OFF
        return 0
      elsif norm < 0.12    # Flash 2 ON
        return @anim_mult * 2.5 * strength
      elsif norm < 0.15    # OFF
      return 0
      elsif norm < 0.18    # Flash 3 ON (sometimes)
        return @anim_mult * 2.0 * strength
      elsif norm < 0.25    # OFF pause
        return 0
      elsif norm < 0.70    # Stabilized ON
        return @anim_mult * 0.5 * strength
      else                 # Long OFF before next cycle
        return 0
      end
    else
      return saw_wave(t_base, 2.0) * @anim_mult * strength
    end
  end

  # Smooth deterministic flicker shared by mask and glow sprite. The previous
  # per-draw rand calls made every glow layer disagree and produced jitter.
  def flicker_scale(effect)
    return 1.0 if !effect.flicker
    return 1.0 if defined?(LightingConfig) && !LightingConfig.animations
    amount = effect.flicker.is_a?(Numeric) ? effect.flicker.to_f : 0.15
    t = defined?(LightingConfig) ? LightingConfig.animation_time :
        (Graphics.frame_count / [Graphics.frame_rate.to_f, 1.0].max)
    seed = effect.id.hash.abs % 997
    noise = Math.sin(t * 11.7 + seed) * 0.55 +
            Math.sin(t * 23.9 + seed * 0.37) * 0.30 +
            Math.sin(t * 41.3 + seed * 0.13) * 0.15
    return 1.0 + noise * amount * 0.5
  end

  def radius_animation_enabled?(effect)
    return false if defined?(LightingConfig) && !LightingConfig.animations
    return !!effect.pulse || !effect.stop_anim
  end

  # Ambient effects are pooled instead of destroyed when disabled, so changing
  # the option is immediate and switching it back on does not cause allocations.
  def update_ambient_fx_visibility(visible)
    return if @_ambient_fx_visible == visible
    @_ambient_fx_visible = visible
    @firefly_particles.each { |p| p[:sprite].visible = visible if p[:sprite] && !p[:sprite].disposed? }
    @star_sprites.each { |s| s.visible = visible if !s.disposed? }
    @pollen_particles.each { |p| p[:sprite].visible = visible if p[:sprite] && !p[:sprite].disposed? }
    @puddle_sprites.each { |p| p[:sprite].visible = visible if p[:sprite] && !p[:sprite].disposed? }
    @drip_ripples.each { |p| p[:sprite].visible = visible if p[:sprite] && !p[:sprite].disposed? }
    @jellyfish_sprites.each { |p| p[:sprite].visible = visible if p[:sprite] && !p[:sprite].disposed? }
    @lava_pulse_sprites.each { |p| p[:sprite].visible = visible if p[:sprite] && !p[:sprite].disposed? }
    [@moonlight_sprite, @caustic_sprite, @aurora_sprite, @cloud_shadow_sprite,
     @canopy_dapple_sprite, @heat_haze_sprite, @horizon_glow_sprite].each do |sprite|
      sprite.visible = visible if sprite && !sprite.disposed?
    end
    @sunset_silhouettes.each_value { |s| s.visible = visible if !s.disposed? }
    @lens_flare_sprites.each_value { |s| s.visible = visible if !s.disposed? }
  end

  # ============================================================================
  # UTILITY: Angle helpers
  # ============================================================================
  def angle_diff(a, b)
    d = a - b
    d -= 2 * Math::PI while d > Math::PI
    d += 2 * Math::PI while d < -Math::PI
    return d
  end

  def facing_to_screen_angle(dir)
    case dir
    when 2 then return 90    # down
    when 4 then return 180   # left
    when 6 then return 0     # right
    when 8 then return 270   # up
    else return 0
    end
  end

  # ============================================================================
  # FEATURE: Light Decay — lifespan countdown with auto-fade and removal
  # ============================================================================
  def update_lifespans
    expired_ids = []
    @effects.each do |id, effect|
      next if !effect.lifespan
      elapsed = Graphics.frame_count - effect.created_at
      if elapsed >= effect.lifespan
        if effect.fade_target > 0
          effect.fade_target = 0.0
          effect.fade_speed = 0.05
        elsif effect.fade_opacity <= 0
          expired_ids << id
        end
      elsif elapsed >= effect.lifespan * 0.8
        # Dim during last 20% of lifespan
        remaining_ratio = (effect.lifespan - elapsed).to_f / (effect.lifespan * 0.2)
        effect.intensity = remaining_ratio.clamp(0.0, 1.0)
      end
    end
    expired_ids.each do |id|
      GameData::LightEffect::DATA.delete(id)
      @effects.delete(id)
      if @light_sprites[id]
        @light_sprites[id].dispose
        @light_sprites.delete(id)
      end
      if @halo_sprites && @halo_sprites[id]
        @halo_sprites[id].dispose
        @halo_sprites.delete(id)
      end
    end
  end

  # ============================================================================
  # FEATURE: Animated Path Lights — move along waypoint arrays
  # ============================================================================
  def update_paths
    @effects.each_value do |effect|
      next if !effect.path || effect.path.length < 2
      speed_per_frame = effect.path_speed / Graphics.frame_rate.to_f
      effect.path_t += speed_per_frame

      while effect.path_t >= 1.0
        effect.path_t -= 1.0
        effect.path_index = (effect.path_index + 1) % effect.path.length
      end

      idx = effect.path_index % effect.path.length
      next_idx = (idx + 1) % effect.path.length
      p1 = effect.path[idx]
      p2 = effect.path[next_idx]
      t = effect.path_t

      tile_w = Game_Map::TILE_WIDTH
      tile_h = Game_Map::TILE_HEIGHT
      px = (p1[0] + (p2[0] - p1[0]) * t) * tile_w + tile_w / 2
      py = (p1[1] + (p2[1] - p1[1]) * t) * tile_h + tile_h / 2
      effect.x = px.round
      effect.y = py.round
      # Keep the logical tile position in sync with the pixel position so tile-
      # based features (culling, proximity, sound, reflections) follow the path
      # instead of staying anchored at the original waypoint origin.
      effect.map_x = (px / tile_w).floor
      effect.map_y = (py / tile_h).floor
    end
  end

  # ============================================================================
  # FEATURE: Smooth Sunrise/Sunset Ramp — gradual intensity during transitions
  # ============================================================================
  def dawn_dusk_mult(effect)
    # Always-on lights (flashlight / follower) bypass day/night just like in
    # should_update?, so they don't get zeroed during daytime.
    return 1.0 if effect.id == :player_flashlight || effect.id == :follower_light
    return 1.0 if !@_cached_outside
    return 1.0 if effect.day.nil?
    hour = @_cached_hour
    min = @_cached_min
    time_f = hour + min / 60.0

    if effect.day == false  # Night-only light
      if time_f >= 20.0 || time_f < 5.0
        return 1.0
      elsif time_f >= 5.0 && time_f < 6.0
        return 1.0 - (time_f - 5.0)   # Dawn fade out
      elsif time_f >= 19.0 && time_f < 20.0
        return (time_f - 19.0)          # Dusk fade in
      else
        return 0.0
      end
    elsif effect.day == true  # Day-only light
      if time_f >= 6.0 && time_f < 19.0
        return 1.0
      elsif time_f >= 5.0 && time_f < 6.0
        return (time_f - 5.0)           # Dawn fade in
      elsif time_f >= 19.0 && time_f < 20.0
        return 1.0 - (time_f - 19.0)   # Dusk fade out
      else
        return 0.0
      end
    end
    return 1.0
  end

  # ============================================================================
  # FEATURE: Water Reflection — vertically flipped glow beneath water-adjacent lights
  # ============================================================================
  def update_water_reflections
    return if !@feature_flags[:water_reflect] && @reflect_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale reflection sprites
    ids_to_remove = @reflect_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    ids_to_remove.each do |id|
      @reflect_sprites[id].dispose
      @reflect_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !effect.water_reflect
      next if !should_update?(effect)

      # Check if the tile below the light is a water terrain tag
      tx = effect.map_x
      ty = effect.map_y + 1
      terrain = $game_map.terrain_tag(tx, ty) rescue nil
      next if !terrain || !terrain.can_surf

      sx = effect.x - scroll_x
      sy = effect.y - scroll_y + Game_Map::TILE_HEIGHT

      if !@reflect_sprites[id] || @reflect_sprites[id].disposed?
        spr = Sprite.new(@viewport)
        spr.blend_type = 1
        spr.z = 150
        spr.mirror = false
        # Reuse cached gradient (LRU)
        radius = effect.radius
        real_radius = (radius * 1.5).ceil
        cache_key = [real_radius, false]
        bitmap = cached_gradient(cache_key, real_radius, false)
        spr.bitmap = bitmap
        spr.ox = real_radius
        spr.oy = 0  # Top-aligned since we flip vertically
        spr.zoom_y = -0.6  # Flip + compress
        spr.zoom_x = 1.2   # Slightly wider for ripple look
        @reflect_sprites[id] = spr
      end

      spr = @reflect_sprites[id]
      spr.x = sx
      spr.y = sy
      # Animate ripple via wave
      spr.wave_amp = 2
      spr.wave_length = 60
      spr.wave_speed = 120
      spr.opacity = (120 * effect.fade_opacity * effect.intensity).to_i
      color = effect.current_color
      spr.tone = Tone.new(color.red - 255, color.green - 255, color.blue - 255)
    end
  end

  # ============================================================================
  # FEATURE: Torch Ember Particles — small upward-drifting orange specks
  # ============================================================================
  EMBER_MAX_PER_LIGHT = 6
  EMBER_LIFETIME = 40  # frames

  def update_ember_particles
    return if !@feature_flags[:embers] && @ember_particles.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Spawn new embers for effects that have :embers enabled
    @effects.each do |id, effect|
      next if !effect.embers || !should_update?(effect)
      # Count existing embers for this light
      count = @ember_particles.count { |p| p[:owner] == id }
      next if count >= perf_particle_limit(EMBER_MAX_PER_LIGHT)
      # Spawn chance per frame (~1 ember every 8 frames)
      next if rand(8) != 0

      spr = Sprite.new(@viewport)
      spr.bitmap = Bitmap.new(4, 4)
      ember_color = Color.new(255, 140 + rand(80), 20 + rand(40), 200)
      spr.bitmap.fill_rect(0, 0, 4, 4, ember_color)
      spr.blend_type = 1
      spr.z = 250
      spr.ox = 2
      spr.oy = 2
      sx = effect.x - scroll_x + rand(12) - 6
      sy = effect.y - scroll_y - 8 - rand(4)
      spr.x = sx
      spr.y = sy

      @ember_particles << {
        :sprite => spr, :owner => id,
        :base_x => effect.x + rand(12) - 6,
        :vy => -(1.0 + rand * 0.8),     # Upward drift speed
        :vx => (rand - 0.5) * 0.6,       # Slight horizontal wander
        :life => 0, :max_life => EMBER_LIFETIME + rand(20)
      }
    end

    # Update existing embers
    @ember_particles.each do |p|
      p[:life] += 1
      spr = p[:sprite]
      p[:base_x] += p[:vx]
      spr.x = p[:base_x].round - scroll_x
      spr.y += p[:vy].round
      # Fade out over lifetime
      progress = p[:life].to_f / p[:max_life]
      spr.opacity = (200 * (1.0 - progress)).to_i
      spr.zoom_x = 1.0 - progress * 0.5
      spr.zoom_y = spr.zoom_x
    end

    # Remove expired embers
    @ember_particles.reject! do |p|
      if p[:life] >= p[:max_life]
        p[:sprite].bitmap.dispose if p[:sprite].bitmap
        p[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Moonlight / Directional Ambient — faint sweeping glow at night
  # ============================================================================
  def update_moonlight
    return if !@_cached_outside || !@_cached_night
    return if @_cached_weather == :Storm || @_cached_weather == :HeavyRain

    if !@moonlight_sprite || @moonlight_sprite.disposed?
      @moonlight_sprite = Sprite.new(@viewport)
      bmp = Bitmap.new(Graphics.width, Graphics.height)
      # Large soft gradient from one side
      for col in 0...Graphics.width
        alpha = (40 * (1.0 - col.to_f / Graphics.width)).to_i
        bmp.fill_rect(col, 0, 1, Graphics.height, Color.new(180, 200, 255, alpha))
      end
      @moonlight_sprite.bitmap = bmp
      @moonlight_sprite.blend_type = 1
      @moonlight_sprite.z = 99996
    end

    # Shift moonlight direction based on hour (gentle horizontal scroll)
    hour = @_cached_hour
    # Moon rises ~20:00, overhead ~0:00, sets ~5:00
    if hour >= 20
      progress = (hour - 20) / 9.0  # 20→5 mapped to 0→1
    elsif hour < 5
      progress = (hour + 4) / 9.0
    else
      @moonlight_sprite.opacity = 0
      return
    end
    # Pan the sprite left-to-right based on progress
    @moonlight_sprite.x = ((progress - 0.5) * Graphics.width * 0.3).to_i
    # Intensity peaks at midnight
    intensity = 1.0 - (progress - 0.5).abs * 1.6
    intensity = intensity.clamp(0.2, 1.0)
    # Reduce in fog/clouds
    if @_cached_weather == :Fog
      intensity *= 0.4
    elsif @_cached_weather == :Rain
      intensity *= 0.5
    end
    @moonlight_sprite.opacity = (50 * intensity).to_i
  end

  # ============================================================================
  # FEATURE: Underwater Caustics — rippling light patterns on underwater maps
  # ============================================================================
  def update_caustics
    is_underwater = @map.metadata&.has_flag?("Underwater") || @map.metadata&.has_flag?("Diving")
    if !is_underwater
      if @caustic_sprite && !@caustic_sprite.disposed?
        @caustic_sprite.opacity = 0
      end
      return
    end

    if !@caustic_sprite || @caustic_sprite.disposed?
      @caustic_sprite = Sprite.new(@viewport)
      # Build the procedural pattern at HALF resolution and display it at 2x zoom.
      # The pattern is intentionally blurry, so the downscale is invisible while
      # the one-time per-pixel fill cost (which caused a hitch on dive maps) drops
      # to roughly a quarter.
      size = [Graphics.width + 64, Graphics.height + 64].max
      half = (size / 2.0).ceil
      bmp = Bitmap.new(half, half)
      cell_size = 16
      cols = half / cell_size + 1
      rows = half / cell_size + 1
      for row in 0...rows
        for col in 0...cols
          cx = col * cell_size + rand(cell_size / 2)
          cy = row * cell_size + rand(cell_size / 2)
          r = 4 + rand(6)
          # Soft bright spot
          for i in -r..r
            for j in -r..r
              dist = Math.sqrt(i * i + j * j)
              next if dist > r
              px = cx + i
              py = cy + j
              next if px < 0 || py < 0 || px >= half || py >= half
              alpha = (60 * (1.0 - dist / r)).to_i
              bmp.fill_rect(px, py, 1, 1, Color.new(100, 180, 255, alpha))
            end
          end
        end
      end
      @caustic_sprite.bitmap = bmp
      @caustic_sprite.zoom_x = 2.0
      @caustic_sprite.zoom_y = 2.0
      @caustic_sprite.blend_type = 1
      @caustic_sprite.z = 99995
    end

    # Scroll the caustic pattern slowly
    t = Graphics.frame_count.to_f
    @caustic_sprite.x = (Math.sin(t * 0.02) * 32).to_i - 32
    @caustic_sprite.y = (Math.cos(t * 0.015) * 24).to_i - 32
    @caustic_sprite.opacity = 35 + (Math.sin(t * 0.04) * 15).to_i
  end

  # ============================================================================
  # FEATURE: Lightning Flash Rendering — screen-wide white flash during storms
  # ============================================================================
  def update_flash_sprite
    return if !@flash_sprite
    @flash_sprite.opacity = @_lightning_flash || 0
  end

  # ============================================================================
  # WEATHER: Intensity modifier for outdoor lights + lightning flash
  # ============================================================================
  def weather_intensity_mult
    return 1.0 if !@_cached_outside
    case @_cached_weather
    when :Rain, :HeavyRain then return 0.7
    when :Storm            then return 0.5
    when :Fog              then return 0.6
    when :Sandstorm        then return 0.8
    else                        return 1.0
    end
  end

  def update_weather_flash
    @_lightning_flash ||= 0
    @_lightning_timer ||= 0
    if @_lightning_flash > 0
      @_lightning_flash -= 15
      @_lightning_flash = 0 if @_lightning_flash < 0
    end
    if @_cached_outside && @_cached_weather == :Storm
      @_lightning_timer -= 1 if @_lightning_timer > 0
      if @_lightning_timer <= 0
        # Random interval between flashes: 3–8 seconds
        @_lightning_timer = (Graphics.frame_rate * (3 + rand(6)))
        @_lightning_flash = 200
      end
    end
  end

  # ============================================================================
  # PROXIMITY: Brightness boost based on player distance
  # ============================================================================
  def proximity_mult(effect)
    return 1.0 if !effect.proximity
    max_tiles = effect.proximity.is_a?(Numeric) ? effect.proximity : 5
    dx = ($game_player.x - effect.map_x).abs
    dy = ($game_player.y - effect.map_y).abs
    dist = Math.sqrt(dx * dx + dy * dy)
    return 1.0 if dist <= 1
    return 0.3 if dist >= max_tiles
    # Linear ramp: 1.0 at dist=1 down to 0.3 at dist=max_tiles
    return 1.0 - 0.7 * ((dist - 1.0) / (max_tiles - 1.0))
  end

  # ============================================================================
  # UTILITY: Combined per-light brightness factor [0..1]
  # ============================================================================
  # Single source of truth for how bright a light should be this frame:
  # its own intensity, dimmed by weather, distance (proximity) and the smooth
  # dawn/dusk ramp. Used for both the additive glow opacity (linear) and the
  # darkness-mask hole (via darkness_opacity, which inverts it correctly).
  def effective_intensity(effect)
    ei = effect.intensity * weather_intensity_mult * proximity_mult(effect) * dawn_dusk_mult(effect)
    return ei.clamp(0.0, 1.0)
  end

  # Additive white at alpha 255 clips the centre of a light to pure white and
  # makes proximity changes look like the lamp itself is flashing. Keep the
  # darkness-mask strength unchanged, but render the decorative coloured glow
  # at a softer ceiling. The curve also makes distance transitions less abrupt
  # without allowing a zero-intensity light to remain visible.
  def additive_glow_opacity(effect, intensity_mult = 1.0)
    intensity = (effective_intensity(effect) * intensity_mult).clamp(0.0, 1.0)
    return 0 if intensity <= 0.0 || effect.fade_opacity <= 0.0
    return (112.0 * effect.fade_opacity * (intensity ** 0.55)).round.clamp(0, 112)
  end

  # Map a layer's base darkness + a [0..1] brightness factor to the alpha of the
  # black mask. The mask starts fully opaque (255 = dark); a hole is a *lower*
  # alpha. So a brighter light must lower the alpha toward base_opacity, and a
  # dim light must raise it back toward 255 (fully dark). The previous code did
  # `base_opacity * eff_intensity`, which made dim/distant/rainy lights *brighter*.
  def darkness_opacity(base_opacity, eff_intensity)
    ei = eff_intensity.clamp(0.0, 1.0)
    return 255.0 - (255.0 - base_opacity) * ei
  end

  # ============================================================================
  # FEATURE: Firefly Ambience — tiny drifting glow dots on outdoor night maps
  # ============================================================================
  FIREFLY_MAX = 30
  FIREFLY_LIFETIME = 180  # frames (~3 seconds)

  def update_fireflies
    # Only on outdoor night maps without heavy weather
    if !@_cached_outside || !@_cached_night ||
       [:Storm, :HeavyRain, :Blizzard, :Sandstorm].include?(@_cached_weather)
      # Dispose existing fireflies
      @firefly_particles.each { |f| f[:sprite].bitmap&.dispose; f[:sprite].dispose }
      @firefly_particles.clear
      return
    end

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Spawn new fireflies
    if @firefly_particles.length < FIREFLY_MAX && rand(6) == 0
      # Random position on screen with some padding
      sx = rand(Graphics.width + 64) - 32
      sy = rand(Graphics.height + 64) - 32
      spr = Sprite.new(@viewport)
      size = 3 + rand(2)  # 3-4 px dots
      bmp = Bitmap.new(size, size)
      green_val = 200 + rand(55)
      bmp.fill_rect(0, 0, size, size, Color.new(180 + rand(40), green_val, 30, 220))
      spr.bitmap = bmp
      spr.blend_type = 1
      spr.z = 250
      spr.ox = size / 2
      spr.oy = size / 2
      spr.x = sx
      spr.y = sy
      spr.opacity = 0

      @firefly_particles << {
        :sprite => spr,
        :base_x => sx.to_f,
        :base_y => sy.to_f,
        :phase => rand * Math::PI * 2,  # Random start phase for sine wave
        :drift_x => (rand - 0.5) * 0.4,
        :drift_y => (rand - 0.5) * 0.3,
        :life => 0,
        :max_life => FIREFLY_LIFETIME + rand(120),
        :blink_rate => 40 + rand(40)
      }
    end

    # Update existing fireflies
    @firefly_particles.each do |f|
      f[:life] += 1
      spr = f[:sprite]
      t = f[:life].to_f

      # Sine-wave drift path
      f[:base_x] += f[:drift_x]
      f[:base_y] += f[:drift_y] + Math.sin(t * 0.05 + f[:phase]) * 0.3
      spr.x = f[:base_x].round
      spr.y = f[:base_y].round

      # Blink on/off with fade
      blink_cycle = Math.sin(t * Math::PI / f[:blink_rate] + f[:phase])
      base_alpha = blink_cycle > 0 ? (blink_cycle * 200).to_i : 0

      # Fade in during first 20%, fade out during last 20%
      progress = f[:life].to_f / f[:max_life]
      if progress < 0.2
        base_alpha = (base_alpha * progress / 0.2).to_i
      elsif progress > 0.8
        base_alpha = (base_alpha * (1.0 - progress) / 0.2).to_i
      end
      spr.opacity = base_alpha.clamp(0, 255)
    end

    # Remove expired fireflies
    @firefly_particles.reject! do |f|
      if f[:life] >= f[:max_life]
        f[:sprite].bitmap&.dispose
        f[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Screen Vignette — darkened screen edges, stronger at night/caves
  # ============================================================================
  def update_vignette
    is_cave = @map.metadata&.has_flag?("Cave")
    should_show = @_cached_night || is_cave || @_cached_weather == :Storm

    if !should_show
      if @vignette_sprite && !@vignette_sprite.disposed?
        @vignette_sprite.opacity = [@vignette_sprite.opacity - 5, 0].max
      end
      return
    end

    if !@vignette_sprite || @vignette_sprite.disposed?
      @vignette_sprite = Sprite.new(@viewport)
      w = Graphics.width
      h = Graphics.height
      bmp = Bitmap.new(w, h)
      # Radial vignette: dark edges, clear center
      cx = w / 2.0
      cy = h / 2.0
      max_dist = Math.sqrt(cx * cx + cy * cy)
      # Draw in bands for performance
      band_size = 4
      for row in (0...h).step(band_size)
        for col in (0...w).step(band_size)
          dx = col + band_size / 2 - cx
          dy = row + band_size / 2 - cy
          dist = Math.sqrt(dx * dx + dy * dy) / max_dist
          # Smooth curve: transparent center → dark edges
          alpha = (dist ** 1.8 * 180).to_i.clamp(0, 180)
          bmp.fill_rect(col, row, band_size, band_size, Color.new(0, 0, 0, alpha))
        end
      end
      @vignette_sprite.bitmap = bmp
      @vignette_sprite.z = 99996
      @vignette_sprite.blend_type = 0
      @vignette_sprite.opacity = 0
    end

    # Target opacity based on conditions
    target = 0
    target += 120 if @_cached_night
    target += 60  if is_cave
    target += 40  if @_cached_weather == :Storm
    target = target.clamp(0, 200)

    # Smooth transition
    if @vignette_sprite.opacity < target
      @vignette_sprite.opacity = [@vignette_sprite.opacity + 3, target].min
    elsif @vignette_sprite.opacity > target
      @vignette_sprite.opacity = [@vignette_sprite.opacity - 3, target].max
    end
  end

  # ============================================================================
  # FEATURE: Light Beam Projection — visible tapered light rays from beam lights
  # ============================================================================
  def update_beam_sprites
    return if !@feature_flags[:beam] && @beam_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale beam sprites
    ids_to_remove = @beam_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    ids_to_remove.each do |id|
      @beam_sprites[id].bitmap&.dispose
      @beam_sprites[id].dispose
      @beam_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !effect.beam || !should_update?(effect)
      next if effect.type != :rect && effect.type != :cone

      sx = effect.x - scroll_x
      sy = effect.y - scroll_y

      if !@beam_sprites[id] || @beam_sprites[id].disposed?
        spr = Sprite.new(@viewport)
        # Generate tapered beam texture
        beam_w = effect.type == :cone ? effect.cone_spread.to_i.clamp(20, 180) : effect.width_px
        beam_h = (effect.radius * 2.5).to_i.clamp(32, 256)
        bmp = Bitmap.new([beam_w, 4].max, [beam_h, 4].max)
        hw = bmp.width / 2.0
        for row in 0...bmp.height
          progress = row.to_f / bmp.height
          # Taper: narrow at top, wide at bottom
          taper = 0.2 + progress * 0.8
          half = (hw * taper).to_i
          alpha = (80 * (1.0 - progress * 0.7)).to_i
          color = effect.current_color
          beam_color = Color.new(color.red, color.green, color.blue, alpha)
          bmp.fill_rect((hw - half).to_i, row, half * 2, 1, beam_color)
        end
        spr.bitmap = bmp
        spr.ox = bmp.width / 2
        spr.oy = 0
        spr.blend_type = 1
        spr.z = 199
        @beam_sprites[id] = spr
      end

      spr = @beam_sprites[id]
      spr.x = sx
      spr.y = sy
      # Rotate based on cone_angle if cone type
      if effect.type == :cone
        spr.angle = effect.cone_angle - 90  # 0° = right, but beam starts downward
      end
      spr.opacity = (180 * effect.fade_opacity * effect.intensity).to_i
      # Slight shimmer
      if !effect.stop_anim
        spr.opacity += (Math.sin(Graphics.frame_count * 0.1) * 15).to_i
        spr.opacity = spr.opacity.clamp(0, 255)
      end
    end
  end

  # ============================================================================
  # FEATURE: Dynamic Color Temperature — global warm/cool shift based on time
  # ============================================================================
  def color_temperature_tone
    return Tone.new(0, 0, 0) if !@_cached_outside
    hour = @_cached_hour
    min = @_cached_min
    time_f = hour + min / 60.0

    # Sunset (18-20): warm shift (orange tint)
    # Midnight (0-2): cool shift (blue tint)
    # Sunrise (5-7): warm shift
    # Day (8-17): neutral
    if time_f >= 18.0 && time_f < 20.0
      t = (time_f - 18.0) / 2.0
      return Tone.new(20 * t, -5 * t, -15 * t)   # Warm orange
    elsif time_f >= 20.0 || time_f < 2.0
      # Transition warm → cool (20-0) then max cool (0-2)
      if time_f >= 20.0
        t = (time_f - 20.0) / 4.0
      else
        t = (time_f + 4.0) / 4.0
      end
      t = t.clamp(0.0, 1.0)
      return Tone.new(-8 * t, -4 * t, 12 * t)     # Cool blue
    elsif time_f >= 2.0 && time_f < 5.0
      t = 1.0 - (time_f - 2.0) / 3.0
      return Tone.new(-8 * t, -4 * t, 12 * t)     # Fading cool
    elsif time_f >= 5.0 && time_f < 7.0
      t = (time_f - 5.0) / 2.0
      return Tone.new(15 * t, -3 * t, -10 * t)    # Warm sunrise
    elsif time_f >= 7.0 && time_f < 8.0
      t = 1.0 - (time_f - 7.0)
      return Tone.new(15 * t, -3 * t, -10 * t)    # Fading warm
    end
    return Tone.new(0, 0, 0)
  end

  # ============================================================================
  # FEATURE: Star Twinkle Layer — sparse white dots on clear outdoor nights
  # ============================================================================
  STAR_COUNT = 40

  def update_stars
    clear_weather = ![:Rain, :Storm, :HeavyRain, :Fog, :Blizzard].include?(@_cached_weather)
    should_show = @_cached_outside && @_cached_night && clear_weather

    if !should_show
      @star_sprites.each { |s| s.opacity = [s.opacity - 8, 0].max }
      return
    end

    # Initialize stars if needed
    if @star_sprites.empty?
      STAR_COUNT.times do |i|
        spr = Sprite.new(@viewport)
        size = rand(2) == 0 ? 2 : 1
        bmp = Bitmap.new(size, size)
        brightness = 200 + rand(55)
        bmp.fill_rect(0, 0, size, size, Color.new(brightness, brightness, brightness + rand(20)))
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 99994
        spr.x = rand(Graphics.width)
        spr.y = rand((Graphics.height * 0.4).to_i)  # Upper portion of screen
        spr.opacity = 0
        @star_sprites << spr
        @star_data << {
          :phase => rand * Math::PI * 2,
          :speed => 0.02 + rand * 0.04,
          :peak_opacity => 120 + rand(135)
        }
      end
    end

    # Animate each star
    @star_sprites.each_with_index do |spr, i|
      data = @star_data[i]
      # Individual twinkle via sine wave
      val = Math.sin(Graphics.frame_count * data[:speed] + data[:phase])
      target = val > 0.3 ? (data[:peak_opacity] * val).to_i : 0
      # Smooth transition
      if spr.opacity < target
        spr.opacity = [spr.opacity + 4, target].min
      else
        spr.opacity = [spr.opacity - 4, target].max
      end
    end
  end

  # ============================================================================
  # FEATURE: Performance Profiler Overlay — debug info on Ctrl+Shift+L
  # ============================================================================
  def toggle_profiler
    @profiler_visible = !@profiler_visible
    if !@profiler_visible && @profiler_sprite && !@profiler_sprite.disposed?
      @profiler_sprite.opacity = 0
    end
    return @profiler_visible
  end

  def update_profiler
    return if !@profiler_visible
    if !@profiler_sprite || @profiler_sprite.disposed?
      @profiler_sprite = Sprite.new(@viewport)
      @profiler_sprite.bitmap = Bitmap.new(240, 120)
      @profiler_sprite.z = 100010
      @profiler_sprite.x = 4
      @profiler_sprite.y = 4
    end

    # Only update text every 30 frames for readability
    return if Graphics.frame_count % 30 != 0

    bmp = @profiler_sprite.bitmap
    bmp.clear
    # Semi-transparent background
    bmp.fill_rect(0, 0, 240, 120, Color.new(0, 0, 0, 160))

    bmp.font.size = 14
    bmp.font.color = Color.new(0, 255, 100)
    effect_count = @effects ? @effects.length : 0
    active_count = @effects ? @effects.count { |_, e| should_update?(e) } : 0
    sprite_count = @light_sprites ? @light_sprites.length : 0
    ember_count = @ember_particles ? @ember_particles.length : 0
    firefly_count = @firefly_particles ? @firefly_particles.length : 0
    cache_count = @gradient_cache ? @gradient_cache.length : 0

    lines = [
      "=== LIGHTING PROFILER ===",
      "Effects: #{effect_count} (active: #{active_count})",
      "Light sprites: #{sprite_count}",
      "Embers: #{ember_count} | Fireflies: #{firefly_count}",
      "Gradient cache: #{cache_count} entries",
      "Stars: #{@star_sprites.length} | Beams: #{@beam_sprites.length}",
      "Night: #{@_cached_night} | Outside: #{@_cached_outside}"
    ]
    lines.each_with_index do |text, i|
      bmp.draw_text(6, 4 + i * 16, 228, 16, text)
    end
    @profiler_sprite.opacity = 220
  end

  # ============================================================================
  # FEATURE: Light LOD (Level of Detail) — fewer glow layers for distant lights
  # ============================================================================
  def lod_layers(center_x, center_y)
    # Distance from screen center
    dx = (center_x - Graphics.width / 2).abs
    dy = (center_y - Graphics.height / 2).abs
    dist = Math.sqrt(dx * dx + dy * dy)
    max_dist = Math.sqrt((Graphics.width / 2) ** 2 + (Graphics.height / 2) ** 2)
    ratio = dist / max_dist
    if ratio > 0.7
      return 1   # Far edge: single layer
    elsif ratio > 0.4
      return 2   # Mid range: two layers
    else
      return @numfades  # Center: full quality
    end
  end

  # ============================================================================
  # FEATURE: Light Event Triggers — fire callbacks on activation state changes
  # ============================================================================
  def update_event_triggers
    return if !@effects
    @effects.each_value do |effect|
      next if !effect.on_activate && !effect.on_deactivate
      currently_active = should_update?(effect)
      was_active = effect._was_active
      if was_active != nil  # Skip first frame (no previous state)
        # User-supplied procs — wrap in rescue so a buggy callback doesn't
        # take down the whole lighting update. We use is_a?(Proc) defensively
        # in case someone assigned a non-Proc to the attr.
        if currently_active && !was_active && effect.on_activate.is_a?(Proc)
          begin
            effect.on_activate.call(effect)
          rescue => e
            echoln "[Lighting] on_activate proc raised for #{effect.id}: #{e.message}" if $DEBUG
          end
        elsif !currently_active && was_active && effect.on_deactivate.is_a?(Proc)
          begin
            effect.on_deactivate.call(effect)
          rescue => e
            echoln "[Lighting] on_deactivate proc raised for #{effect.id}: #{e.message}" if $DEBUG
          end
        end
      end
      effect._was_active = currently_active
    end
  end

  # ============================================================================
  # FEATURE: Lantern Sway — flashlight bobs up/down while walking
  # ============================================================================
  def lantern_sway_offset
    return [0, 0] if !Flashlight.active?
    return [0, 0] if !$game_player.moving?
    t = Graphics.frame_count.to_f
    # Subtle vertical bob synced to walk cycle  
    bob_y = (Math.sin(t * 0.3) * 3.0).round
    bob_x = (Math.sin(t * 0.15) * 1.5).round
    return [bob_x, bob_y]
  end

  # ============================================================================
  # FEATURE: Candle Smoke Wisps — translucent gray particles above torch/candle
  # ============================================================================
  SMOKE_MAX_PER_LIGHT = 4
  SMOKE_LIFETIME = 80

  def update_smoke_particles
    return if !@feature_flags[:smoke] && @smoke_particles.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Spawn smoke for torch/candle/campfire pulse lights
    @effects.each do |id, effect|
      next if !should_update?(effect)
      next if !effect.embers && effect.pulse != :candle
      count = @smoke_particles.count { |p| p[:owner] == id }
      next if count >= SMOKE_MAX_PER_LIGHT
      next if rand(12) != 0  # Less frequent than embers

      spr = Sprite.new(@viewport)
      size = 6 + rand(4)
      bmp = Bitmap.new(size, size)
      # Faint gray semi-transparent
      alpha = 40 + rand(30)
      for py in 0...size
        for px in 0...size
          dist = Math.sqrt((px - size / 2) ** 2 + (py - size / 2) ** 2)
          next if dist > size / 2
          a = (alpha * (1.0 - dist / (size / 2.0))).to_i
          bmp.fill_rect(px, py, 1, 1, Color.new(180, 180, 190, a))
        end
      end
      spr.bitmap = bmp
      spr.blend_type = 0
      spr.z = 248
      spr.ox = size / 2
      spr.oy = size / 2
      sx = effect.x - scroll_x + rand(8) - 4
      sy = effect.y - scroll_y - 12 - rand(4)
      spr.x = sx
      spr.y = sy

      @smoke_particles << {
        :sprite => spr, :owner => id,
        :base_x => effect.x.to_f + rand(8) - 4,
        :vy => -(0.3 + rand * 0.3),
        :vx => (rand - 0.5) * 0.2,
        :curve_phase => rand * Math::PI * 2,
        :life => 0, :max_life => SMOKE_LIFETIME + rand(40)
      }
    end

    # Update
    @smoke_particles.each do |p|
      p[:life] += 1
      spr = p[:sprite]
      t = p[:life].to_f
      p[:base_x] += p[:vx] + Math.sin(t * 0.08 + p[:curve_phase]) * 0.15
      spr.x = p[:base_x].round - scroll_x
      spr.y += p[:vy].round
      progress = p[:life].to_f / p[:max_life]
      spr.opacity = (60 * (1.0 - progress)).to_i
      spr.zoom_x = 1.0 + progress * 0.8  # Expand as it rises
      spr.zoom_y = spr.zoom_x
    end

    # Remove expired
    @smoke_particles.reject! do |p|
      if p[:life] >= p[:max_life]
        p[:sprite].bitmap&.dispose
        p[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Aurora Borealis — slow-moving colored bands on "Aurora" maps at night
  # ============================================================================
  def update_aurora
    has_aurora = @map.metadata&.has_flag?("Aurora")
    should_show = has_aurora && @_cached_outside && @_cached_night &&
                  ![:Storm, :HeavyRain, :Blizzard].include?(@_cached_weather)

    if !should_show
      if @aurora_sprite && !@aurora_sprite.disposed?
        @aurora_sprite.opacity = [@aurora_sprite.opacity - 3, 0].max
      end
      return
    end

    if !@aurora_sprite || @aurora_sprite.disposed?
      @aurora_sprite = Sprite.new(@viewport)
      w = Graphics.width
      h = (Graphics.height * 0.35).to_i
      bmp = Bitmap.new(w * 2, h)  # Double width for scrolling
      # Paint shimmering bands
      band_colors = [
        Color.new(50, 200, 100),   # Green
        Color.new(80, 120, 220),   # Blue
        Color.new(140, 60, 200),   # Purple
        Color.new(60, 220, 180),   # Cyan-green
      ]
      for col in 0...(w * 2)
        band_colors.each_with_index do |c, i|
          band_y = (h * 0.2 + Math.sin(col * 0.015 + i * 1.5) * h * 0.2).to_i
          band_h = (h * 0.15 + Math.sin(col * 0.01 + i * 2.0) * h * 0.08).to_i.clamp(4, h)
          for row in band_y...(band_y + band_h).clamp(0, h)
            dist = (row - band_y).to_f / band_h
            alpha = (30 * Math.sin(dist * Math::PI)).to_i
            bmp.fill_rect(col, row, 1, 1, Color.new(c.red, c.green, c.blue, alpha))
          end
        end
      end
      @aurora_sprite.bitmap = bmp
      @aurora_sprite.blend_type = 1
      @aurora_sprite.z = 99993
      @aurora_sprite.opacity = 0
    end

    # Scroll slowly left
    t = Graphics.frame_count.to_f
    @aurora_sprite.x = -(t * 0.3).to_i % Graphics.width - Graphics.width
    @aurora_sprite.y = 0

    # Shimmer opacity
    target = (40 + Math.sin(t * 0.02) * 15).to_i
    if @aurora_sprite.opacity < target
      @aurora_sprite.opacity = [@aurora_sprite.opacity + 2, target].min
    else
      @aurora_sprite.opacity = [@aurora_sprite.opacity - 2, target].max
    end
  end

  # ============================================================================
  # FEATURE: Window Light Spill — angled parallelogram patches below window lights
  # ============================================================================
  def update_window_spill
    return if !@feature_flags[:window] && @window_spill_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale
    ids_to_remove = @window_spill_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    ids_to_remove.each do |id|
      @window_spill_sprites[id].bitmap&.dispose
      @window_spill_sprites[id].dispose
      @window_spill_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !effect.window || !should_update?(effect)

      sx = effect.x - scroll_x
      sy = effect.y - scroll_y

      if !@window_spill_sprites[id] || @window_spill_sprites[id].disposed?
        spr = Sprite.new(@viewport)
        # Generate angled parallelogram patch
        w = (effect.width_px * 1.5).to_i.clamp(16, 128)
        h = (effect.height_px * 2.5).to_i.clamp(24, 160)
        bmp = Bitmap.new(w, h)
        color = effect.current_color
        skew = w * 0.3  # Horizontal skew amount
        for row in 0...h
          progress = row.to_f / h
          x_offset = (skew * progress).to_i  # Skew right as we go down
          row_w = (w * (0.6 + progress * 0.4)).to_i
          alpha = (50 * (1.0 - progress * 0.6)).to_i
          bmp.fill_rect(x_offset, row, row_w, 1,
            Color.new(color.red, color.green, color.blue, alpha))
        end
        spr.bitmap = bmp
        spr.ox = 0
        spr.oy = 0
        spr.blend_type = 1
        spr.z = 148
        @window_spill_sprites[id] = spr
      end

      spr = @window_spill_sprites[id]
      tile_h = Game_Map::TILE_HEIGHT
      spr.x = sx - 8
      spr.y = sy + tile_h / 2  # Below the window
      spr.opacity = (100 * effect.fade_opacity * effect.intensity).to_i
    end
  end

  # ============================================================================
  # FEATURE: Light Occlusion — wall terrain blocks light passage (simplified)
  # ============================================================================
  def tile_blocks_light?(tx, ty)
    return false if !$game_map
    terrain = $game_map.terrain_tag(tx, ty) rescue nil
    return false if !terrain
    # Check for impassable tiles (simple heuristic: if all directions blocked)
    return !$game_map.passable?(tx, ty, 0) rescue false
  end

  def light_reaches_tile?(effect, tx, ty)
    # Simple 2D line-of-sight from light source to target tile
    sx = effect.map_x
    sy = effect.map_y
    dx = tx - sx
    dy = ty - sy
    steps = [dx.abs, dy.abs].max
    return true if steps <= 1
    step_x = dx.to_f / steps
    step_y = dy.to_f / steps
    cx = sx.to_f
    cy = sy.to_f
    (steps - 1).times do
      cx += step_x
      cy += step_y
      check_x = cx.round
      check_y = cy.round
      next if check_x == sx && check_y == sy  # Skip source
      next if check_x == tx && check_y == ty  # Skip target
      return false if tile_blocks_light?(check_x, check_y)
    end
    return true
  end

  # ============================================================================
  # FEATURE: Tile Illumination Check — for light-based puzzles
  # ============================================================================
  def tile_illuminated?(x, y)
    return false if !@effects
    @effects.each_value do |effect|
      next if !should_update?(effect)
      dx = x - effect.map_x
      dy = y - effect.map_y
      dist = Math.sqrt(dx * dx + dy * dy)
      tile_radius = effect.radius.to_f / Game_Map::TILE_WIDTH
      next if dist > tile_radius
      next if !light_reaches_tile?(effect, x, y)
      return true
    end
    return false
  end

  # ============================================================================
  # FEATURE: Dark Zone Encounter Multiplier
  # ============================================================================
  def dark_zone_mult(px, py, range, dark_mult)
    return 1.0 if !@effects
    @effects.each_value do |effect|
      next if !should_update?(effect)
      dx = (px - effect.map_x).abs
      dy = (py - effect.map_y).abs
      dist = Math.sqrt(dx * dx + dy * dy)
      return 1.0 if dist <= range  # Player is near a light
    end
    return dark_mult  # No lights nearby → boosted encounters
  end

  # ============================================================================
  # FEATURE: Item Glow Hint — faint glow on hidden item tiles at night
  # ============================================================================
  def update_item_glows
    # During the day the glows must be torn down — otherwise the early return
    # left them frozen on screen (no scroll update) and stuck visible at dawn.
    if !@_cached_night
      unless @item_glow_sprites.empty?
        @item_glow_sprites.each_value do |spr|
          next if spr.disposed?
          spr.bitmap&.dispose
          spr.dispose
        end
        @item_glow_sprites.clear
      end
      return
    end
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove off-screen or no-longer-valid glows
    @item_glow_sprites.each do |key, spr|
      if spr.disposed?
        @item_glow_sprites.delete(key)
        next
      end
      # Keep but update position
      tx, ty = key
      spr.x = tx * Game_Map::TILE_WIDTH + Game_Map::TILE_WIDTH / 2 - scroll_x
      spr.y = ty * Game_Map::TILE_HEIGHT + Game_Map::TILE_HEIGHT / 2 - scroll_y
      # Gentle pulse
      spr.opacity = (25 + Math.sin(Graphics.frame_count * 0.06 + tx * 0.5 + ty * 0.3) * 15).to_i
    end

    # Scan for hidden items every 120 frames (2 seconds)
    return if Graphics.frame_count % 120 != 0
    return if !$game_map
    $game_map.events.each_value do |event|
      next if !event
      # Check if event has an item ball / hidden item (common pattern: event graphic is empty/invisible)
      rpg_event = event.instance_variable_get(:@event) rescue nil
      next if !rpg_event || !rpg_event.pages
      has_item = false
      rpg_event.pages.each do |page|
        next if !page || !page.list
        page.list.each do |cmd|
          next if cmd.code != 108 && cmd.code != 408
          if cmd.parameters[0].to_s =~ /\[HiddenItem\]/i
            has_item = true
            break
          end
        end
        break if has_item
      end
      next if !has_item
      key = [event.x, event.y]
      next if @item_glow_sprites[key] && !@item_glow_sprites[key].disposed?
      spr = Sprite.new(@viewport)
      bmp = Bitmap.new(8, 8)
      for py in 0...8
        for px in 0...8
          dist = Math.sqrt((px - 4) ** 2 + (py - 4) ** 2)
          next if dist > 4
          a = (50 * (1.0 - dist / 4.0)).to_i
          bmp.fill_rect(px, py, 1, 1, Color.new(255, 255, 200, a))
        end
      end
      spr.bitmap = bmp
      spr.blend_type = 1
      spr.z = 145
      spr.ox = 4
      spr.oy = 4
      @item_glow_sprites[key] = spr
    end
  end

  # ============================================================================
  # FEATURE: Light Sound Integration — auto-play SE when player is near
  # ============================================================================
  def update_light_sounds
    return if !@effects || !@feature_flags[:sound]
    @effects.each_value do |effect|
      next if !effect.sound || !should_update?(effect)
      dx = ($game_player.x - effect.map_x).abs
      dy = ($game_player.y - effect.map_y).abs
      dist = Math.sqrt(dx * dx + dy * dy)
      range = effect.sound_range
      next if dist > range
      # Volume scales with distance (100 at center, fades to 20 at edge)
      volume = (100 * (1.0 - dist / range) * 0.8 + 20).to_i.clamp(20, 100)
      # Play roughly every 60 frames, but stagger by light id so several
      # sound-emitting lights don't all fire on the same frame (audio spam).
      next if (Graphics.frame_count + (effect.id.hash.abs % 60)) % 60 != 0
      pbSEPlay(effect.sound, volume) rescue nil
    end
  end

  # ============================================================================
  # FEATURE: Per-Light Blend Mode — individual blend types per light sprite
  # ============================================================================
  def apply_blend_mode(sprite, effect)
    return if !effect.blend
    case effect.blend
    when :additive    then sprite.blend_type = 1
    when :subtractive then sprite.blend_type = 2
    when :multiply    then sprite.blend_type = 0
    end
  end

  # ============================================================================
  # FEATURE: Animation Keyframes — multi-property time-based lerp animation
  # ============================================================================
  def update_keyframes
    return if !@effects || !@feature_flags[:keyframes]
    @effects.each_value do |effect|
      next if !effect.keyframes || effect.keyframes.empty?
      kf = effect.keyframes
      total_frames = kf.last[:t]
      next if !total_frames || total_frames <= 0
      current_t = Graphics.frame_count % total_frames

      # Find the two surrounding keyframes
      prev_kf = kf.last
      next_kf = kf.first
      kf.each_with_index do |k, i|
        if current_t < k[:t]
          next_kf = k
          prev_kf = i > 0 ? kf[i - 1] : kf.last
          break
        end
        prev_kf = k
      end

      # Interpolation progress between prev and next
      span = next_kf[:t] - (prev_kf[:t] || 0)
      span = total_frames if span <= 0
      local_t = current_t - (prev_kf[:t] || 0)
      local_t += total_frames if local_t < 0
      progress = (local_t.to_f / span).clamp(0.0, 1.0)

      # Lerp radius
      if prev_kf[:radius] && next_kf[:radius]
        effect.radius = (prev_kf[:radius] + (next_kf[:radius] - prev_kf[:radius]) * progress).round
      end
      # Lerp intensity
      if prev_kf[:intensity] && next_kf[:intensity]
        effect.intensity = prev_kf[:intensity] + (next_kf[:intensity] - prev_kf[:intensity]) * progress
      end
    end
  end

  # ============================================================================
  # FEATURE: Map Region Tinting — per-map ambient tone from metadata flags
  # ============================================================================
  def region_tint_modifier
    return Tone.new(0, 0, 0) if !@map.metadata
    # Check for LightTone:R,G,B flag in map metadata
    flags = @map.metadata.instance_variable_get(:@flags) rescue nil
    return Tone.new(0, 0, 0) if !flags
    flags.each do |flag|
      next if !flag.is_a?(String)
      if flag =~ /^LightTone:([-\d]+),([-\d]+),([-\d]+)$/i
        return Tone.new($1.to_i.clamp(-255, 255), $2.to_i.clamp(-255, 255), $3.to_i.clamp(-255, 255))
      end
    end
    return Tone.new(0, 0, 0)
  end

  # ============================================================================
  # FEATURE: Smooth Map Transition — cross-fade lighting tone across map changes
  # ============================================================================
  TRANSITION_FRAMES = 20

  def start_tone_transition(from_tone, to_tone)
    @_transition_from_tone = from_tone ? from_tone.dup : Tone.new(0, 0, 0)
    @_transition_to_tone = to_tone ? to_tone.dup : Tone.new(0, 0, 0)
    @_transition_progress = 0.0
  end

  def update_tone_transition
    return if @_transition_progress >= 1.0
    @_transition_progress += 1.0 / TRANSITION_FRAMES
    @_transition_progress = 1.0 if @_transition_progress > 1.0
  end

  def transitioned_tone(target_tone)
    return target_tone if !@_transition_from_tone || @_transition_progress >= 1.0
    t = @_transition_progress
    from = @_transition_from_tone
    to = target_tone || Tone.new(0, 0, 0)
    return Tone.new(
      from.red + (to.red - from.red) * t,
      from.green + (to.green - from.green) * t,
      from.blue + (to.blue - from.blue) * t,
      from.gray + (to.gray - from.gray) * t
    )
  end

  # ============================================================================
  # FEATURE: Puddle Light Mirrors — after rain, puddles reflect nearby lights
  # ============================================================================
  PUDDLE_COUNT = 8
  PUDDLE_LIFETIME = 1200  # ~20 seconds

  def update_puddle_reflections
    # Only spawn after rain has stopped (and outside)
    was_raining = [:Rain, :Storm, :HeavyRain].include?(@_cached_weather)
    
    # Create puddles when rain stops
    if !was_raining && @_prev_weather_rain && @_cached_outside
      PUDDLE_COUNT.times do
        px = rand(Graphics.width)
        py = rand(Graphics.height / 2) + Graphics.height / 2  # Lower half
        spr = Sprite.new(@viewport)
        w = 10 + rand(8)
        h = 4 + rand(3)
        bmp = Bitmap.new(w, h)
        for row in 0...h
          for col in 0...w
            dx = (col - w / 2).to_f / (w / 2)
            dy = (row - h / 2).to_f / (h / 2)
            dist = Math.sqrt(dx * dx + dy * dy)
            next if dist > 1.0
            a = (60 * (1.0 - dist)).to_i
            bmp.fill_rect(col, row, 1, 1, Color.new(180, 200, 255, a))
          end
        end
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 144
        spr.x = px
        spr.y = py
        @puddle_sprites << { :sprite => spr, :life => 0, :max_life => PUDDLE_LIFETIME + rand(400) }
      end
    end
    @_prev_weather_rain = was_raining

    # Update puddles
    @puddle_sprites.each do |p|
      p[:life] += 1
      spr = p[:sprite]
      progress = p[:life].to_f / p[:max_life]
      # Wobble and shimmer
      spr.opacity = (45 * (1.0 - progress) * (0.7 + Math.sin(Graphics.frame_count * 0.05 + p[:life]) * 0.3)).to_i
    end

    # Remove expired
    @puddle_sprites.reject! do |p|
      if p[:life] >= p[:max_life]
        p[:sprite].bitmap&.dispose
        p[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Pollen Drift — golden particles floating in lit areas during daytime
  # ============================================================================
  POLLEN_MAX = 20

  def update_pollen_drift
    # Only on outdoor spring/grass routes during daytime
    return if !@_cached_outside || @_cached_night
    return if @_cached_weather != :None && @_cached_weather != :Sun

    # Spawn
    if @pollen_particles.length < POLLEN_MAX && rand(8) == 0
      spr = Sprite.new(@viewport)
      bmp = Bitmap.new(3, 3)
      bmp.fill_rect(0, 0, 3, 3, Color.new(255, 230, 100, 50))
      spr.bitmap = bmp
      spr.blend_type = 1
      spr.z = 200
      spr.x = rand(Graphics.width)
      spr.y = rand(Graphics.height)
      @pollen_particles << {
        :sprite => spr,
        :vx => (rand - 0.5) * 0.4,
        :vy => -(0.1 + rand * 0.2),
        :phase => rand * Math::PI * 2,
        :life => 0,
        :max_life => 200 + rand(200)
      }
    end

    # Update
    @pollen_particles.each do |p|
      p[:life] += 1
      t = Graphics.frame_count.to_f + p[:phase]
      p[:sprite].x += p[:vx] + Math.sin(t * 0.03) * 0.3
      p[:sprite].y += p[:vy]
      progress = p[:life].to_f / p[:max_life]
      p[:sprite].opacity = (40 * Math.sin(progress * Math::PI)).to_i
    end

    # Remove expired
    @pollen_particles.reject! do |p|
      if p[:life] >= p[:max_life]
        p[:sprite].bitmap&.dispose
        p[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Firefly Lanterns — fireflies gather around streetlamps at dusk
  # ============================================================================
  def update_firefly_lanterns
    # Extend existing firefly system: make them cluster around lit streetlamps
    return if !@_cached_night || !@_cached_outside
    return if @firefly_particles.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    # Collect large lamp positions once (screen space) instead of per firefly.
    lamps = []
    @effects.each_value do |effect|
      next if !should_update?(effect)
      next if effect.radius < 60  # Only larger lights attract
      lamps << [effect.x - scroll_x, effect.y - scroll_y]
    end
    return if lamps.empty?
    @firefly_particles.each do |f|
      best_dist = 999999
      best_x = nil
      best_y = nil
      lamps.each do |ex, ey|
        dx = f[:base_x] - ex
        dy = f[:base_y] - ey
        dist = dx * dx + dy * dy
        if dist < best_dist
          best_dist = dist
          best_x = ex
          best_y = ey
        end
      end
      # Gently nudge the DRIFT ANCHOR toward the nearest lamp. The previous code
      # moved f[:sprite].x/y, which update_fireflies overwrites from base_x/base_y
      # every frame — so the clustering was silently a no-op.
      if best_x && best_dist < 120 * 120
        f[:base_x] += (best_x - f[:base_x]) * 0.01
        f[:base_y] += (best_y - f[:base_y]) * 0.01
      end
    end
  end

  # ============================================================================
  # FEATURE: Sunset Silhouettes — long shadows from tall events during dusk
  # ============================================================================
  def update_sunset_silhouettes
    hour = @_cached_hour
    # Only during dusk (17-19) or dawn (5-7)
    is_dusk = @_cached_outside && hour >= 17 && hour <= 19
    is_dawn = @_cached_outside && hour >= 5 && hour <= 7
    if !is_dusk && !is_dawn
      if !@sunset_silhouettes.empty?
        @sunset_silhouettes.each_value { |s| s.bitmap&.dispose; s.dispose }
        @sunset_silhouettes.clear
      end
      return
    end

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    shadow_dir = is_dusk ? 1 : -1  # Cast east at dusk, west at dawn
    shadow_len = (is_dusk ? (hour - 16) * 16 : (8 - hour) * 16).clamp(8, 48)

    # The shadow length depends on the hour, so only rebuild bitmaps when the
    # hour changes; in between we just reposition the existing sprites.
    if @_silhouette_hour != hour
      @sunset_silhouettes.each_value { |s| s.bitmap&.dispose; s.dispose }
      @sunset_silhouettes.clear
      @_silhouette_hour = hour
    end

    seen = {}
    $game_map.events.each_value do |event|
      next if !event || event.character_name.empty?
      sx = (event.real_x / 4).round - scroll_x
      sy = (event.real_y / 4).round - scroll_y
      next if sx < -32 || sx > Graphics.width + 32 || sy < -32 || sy > Graphics.height + 32
      seen[event.id] = true

      if !@sunset_silhouettes[event.id] || @sunset_silhouettes[event.id].disposed?
        spr = Sprite.new(@viewport)
        w = 12
        h = shadow_len
        bmp = Bitmap.new(w + h.abs, 8)
        for col in 0...bmp.width
          progress = col.to_f / bmp.width
          alpha = (30 * (1.0 - progress)).to_i
          bmp.fill_rect(col, 0, 1, 8, Color.new(0, 0, 0, alpha))
        end
        spr.bitmap = bmp
        spr.z = 140
        spr.opacity = 50
        @sunset_silhouettes[event.id] = spr
      end

      spr = @sunset_silhouettes[event.id]
      spr.x = sx + (shadow_dir > 0 ? 8 : -spr.bitmap.width + 8)
      spr.y = sy + 16
    end

    # Drop silhouettes for events that scrolled off-screen.
    stale = @sunset_silhouettes.each_key.select { |eid| !seen[eid] }
    stale.each do |eid|
      @sunset_silhouettes[eid].bitmap&.dispose
      @sunset_silhouettes[eid].dispose
      @sunset_silhouettes.delete(eid)
    end
  end

  # ============================================================================
  # FEATURE: Cloud Shadow Drift — slow-moving dark patches on outdoor daytime maps
  # ============================================================================
  def update_cloud_shadows
    return if !@_cached_outside || @_cached_night
    return if @_cached_weather == :Rain || @_cached_weather == :Storm

    if !@cloud_shadow_sprite || @cloud_shadow_sprite.disposed?
      @cloud_shadow_sprite = Sprite.new(@viewport)
      w = Graphics.width * 2
      h = Graphics.height
      bmp = Bitmap.new(w, h)
      # Paint 3-4 cloud shadow blobs
      4.times do
        cx = rand(w)
        cy = rand(h)
        r = 40 + rand(60)
        for py in (cy - r)..(cy + r)
          for px in (cx - r)..(cx + r)
            next if px < 0 || py < 0 || px >= w || py >= h
            dist = Math.sqrt((px - cx) ** 2 + (py - cy) ** 2).to_f / r
            next if dist > 1.0
            a = (20 * (1.0 - dist * dist)).to_i
            bmp.fill_rect(px, py, 1, 1, Color.new(0, 0, 0, a))
          end
        end
      end
      @cloud_shadow_sprite.bitmap = bmp
      @cloud_shadow_sprite.blend_type = 2
      @cloud_shadow_sprite.z = 99994
      @cloud_shadow_sprite.opacity = 0
    end

    # Scroll slowly
    t = Graphics.frame_count.to_f
    @cloud_shadow_sprite.x = -(t * 0.2).to_i % Graphics.width - Graphics.width
    @cloud_shadow_sprite.y = 0
    target_opacity = @_cached_weather == :Sun ? 15 : 25
    if @cloud_shadow_sprite.opacity < target_opacity
      @cloud_shadow_sprite.opacity = [@cloud_shadow_sprite.opacity + 1, target_opacity].min
    else
      @cloud_shadow_sprite.opacity = [@cloud_shadow_sprite.opacity - 1, target_opacity].max
    end
  end

  # ============================================================================
  # FEATURE: Dripping Light Ripples — brief circular ripple flashes in caves
  # ============================================================================
  DRIP_MAX = 3

  def update_drip_ripples
    return if !@map.metadata&.has_flag?("Cave")

    # Random spawn
    if @drip_ripples.length < DRIP_MAX && rand(90) == 0
      # Pick a random on-screen position near a light
      @effects.each_value do |effect|
        next if !should_update?(effect)
        next if rand(4) != 0
        scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
        scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
        sx = effect.x - scroll_x + rand(20) - 10
        sy = effect.y - scroll_y + rand(20) - 10
        spr = Sprite.new(@viewport)
        bmp = Bitmap.new(16, 16)
        for r in [3, 5, 7]
          for angle in 0..360
            px = (8 + Math.cos(angle * Math::PI / 180) * r).to_i
            py = (8 + Math.sin(angle * Math::PI / 180) * r).to_i
            next if px < 0 || py < 0 || px >= 16 || py >= 16
            a = (40 * (1.0 - r / 8.0)).to_i
            bmp.fill_rect(px, py, 1, 1, Color.new(200, 220, 255, a))
          end
        end
        spr.bitmap = bmp
        spr.ox = 8
        spr.oy = 8
        spr.blend_type = 1
        spr.z = 200
        spr.x = sx
        spr.y = sy
        @drip_ripples << { :sprite => spr, :life => 0, :max_life => 30 }
        break
      end
    end

    # Update
    @drip_ripples.each do |d|
      d[:life] += 1
      progress = d[:life].to_f / d[:max_life]
      d[:sprite].zoom_x = 0.5 + progress * 1.5
      d[:sprite].zoom_y = d[:sprite].zoom_x
      d[:sprite].opacity = (80 * (1.0 - progress)).to_i
    end

    @drip_ripples.reject! do |d|
      if d[:life] >= d[:max_life]
        d[:sprite].bitmap&.dispose
        d[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Glowing Ore Veins — tiles near crystal/lava lights show ore glow
  # ============================================================================
  def update_ore_glow
    return if !@map.metadata&.has_flag?("Cave")
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Only refresh every 60 frames
    return if Graphics.frame_count % 60 != 0 && !@ore_glow_sprites.empty?

    # Look for crystal/lava type lights and add ore glow nearby
    @effects.each do |id, effect|
      next if !should_update?(effect)
      next if effect.color.blue < 100 && effect.color.red < 200  # Only crystal/lava color
      next if effect.radius < 30

      3.times do |i|
        ore_key = :"#{id}_ore_#{i}"
        next if @ore_glow_sprites[ore_key] && !@ore_glow_sprites[ore_key].disposed?
        ox = effect.map_x + rand(3) - 1
        oy = effect.map_y + rand(3) - 1
        next if !$game_map.passable?(ox, oy, 0) rescue next

        spr = Sprite.new(@viewport)
        w = 6 + rand(4)
        h = 2 + rand(2)
        bmp = Bitmap.new(w, h)
        color = Color.new(effect.color.red, effect.color.green, effect.color.blue, 40)
        bmp.fill_rect(0, 0, w, h, color)
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 143
        @ore_glow_sprites[ore_key] = spr
      end
    end

    # Update positions
    @ore_glow_sprites.each do |key, spr|
      next if spr.disposed?
      spr.opacity = (25 + Math.sin(Graphics.frame_count * 0.04 + key.hash * 0.01) * 15).to_i
    end
  end

  # ============================================================================
  # FEATURE: Stalactite Shadow Bars — vertical shadow stripes shifted by flashlight
  # ============================================================================
  def update_stalactite_shadows
    return if !@map.metadata&.has_flag?("Cave")

    if !@stalactite_shadow_sprite || @stalactite_shadow_sprite.disposed?
      @stalactite_shadow_sprite = Sprite.new(@viewport)
      w = Graphics.width
      h = Graphics.height
      bmp = Bitmap.new(w, h)
      # Thin vertical bars
      bar_spacing = 24 + rand(12)
      bar_width = 2 + rand(2)
      col = 0
      while col < w
        alpha = 15 + rand(10)
        for row in 0...h
          fade = [1.0, row.to_f / (h * 0.8)].min
          bmp.fill_rect(col, row, bar_width, 1, Color.new(0, 0, 0, (alpha * fade).to_i))
        end
        col += bar_spacing + rand(8)
      end
      @stalactite_shadow_sprite.bitmap = bmp
      @stalactite_shadow_sprite.blend_type = 2
      @stalactite_shadow_sprite.z = 99995
      @stalactite_shadow_sprite.opacity = 35
    end

    # Shift based on player flashlight direction
    if Flashlight.active?
      dir = $game_player.direction
      shift_x = 0
      case dir
      when 4 then shift_x = 4
      when 6 then shift_x = -4
      end
      @stalactite_shadow_sprite.x = shift_x
    else
      @stalactite_shadow_sprite.x = 0
    end
  end

  # ============================================================================
  # FEATURE: Echo Glow — bioluminescent floor pulse when player steps on tiles
  # ============================================================================
  def update_echo_glow
    return if !@map.metadata&.has_flag?("Cave")

    # Spawn on player movement
    if $game_player.moving? && rand(6) == 0
      scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
      scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
      px = ($game_player.real_x / 4).round - scroll_x + Game_Map::TILE_WIDTH / 2
      py = ($game_player.real_y / 4).round - scroll_y + Game_Map::TILE_HEIGHT / 2
      spr = Sprite.new(@viewport)
      bmp = Bitmap.new(24, 24)
      for r_dist in 0..12
        for angle in 0..360
          bx = (12 + Math.cos(angle * Math::PI / 180) * r_dist).to_i
          by = (12 + Math.sin(angle * Math::PI / 180) * r_dist).to_i
          next if bx < 0 || by < 0 || bx >= 24 || by >= 24
          a = (50 * (1.0 - r_dist / 12.0)).to_i
          bmp.fill_rect(bx, by, 1, 1, Color.new(100, 255, 180, a))
        end
      end
      spr.bitmap = bmp
      spr.ox = 12
      spr.oy = 12
      spr.blend_type = 1
      spr.z = 145
      spr.x = px
      spr.y = py
      @echo_glow_sprites << { :sprite => spr, :life => 0, :max_life => 40 }
    end

    # Update
    @echo_glow_sprites.each do |e|
      e[:life] += 1
      progress = e[:life].to_f / e[:max_life]
      e[:sprite].zoom_x = 0.5 + progress * 2.0
      e[:sprite].zoom_y = e[:sprite].zoom_x
      e[:sprite].opacity = (80 * (1.0 - progress)).to_i
    end

    @echo_glow_sprites.reject! do |e|
      if e[:life] >= e[:max_life]
        e[:sprite].bitmap&.dispose
        e[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Deep Sea Light Falloff — light radius reduces with depth on dive maps
  # ============================================================================
  def deep_sea_radius_mult
    return 1.0 if !@map.metadata&.has_flag?("Diving") && !@map.metadata&.has_flag?("Underwater")
    # Player Y position determines depth: further south = deeper
    map_height = @map.height
    return 1.0 if map_height <= 0
    depth_ratio = $game_player.y.to_f / map_height
    # 1.0 at top, 0.4 at bottom
    return (1.0 - depth_ratio * 0.6).clamp(0.4, 1.0)
  end

  # ============================================================================
  # FEATURE: Bioluminescent Jellyfish — drifting glowing sprites on dive maps
  # ============================================================================
  JELLYFISH_MAX = 6

  def update_jellyfish
    is_dive = @map.metadata&.has_flag?("Diving") || @map.metadata&.has_flag?("Underwater")
    return if !is_dive

    # Spawn
    if @jellyfish_sprites.length < JELLYFISH_MAX && rand(30) == 0
      spr = Sprite.new(@viewport)
      size = 8 + rand(6)
      bmp = Bitmap.new(size, size + 4)
      # Dome + tentacles
      colors = [
        Color.new(80, 200, 255),
        Color.new(255, 100, 200),
        Color.new(100, 255, 150),
        Color.new(200, 150, 255)
      ]
      c = colors[rand(colors.length)]
      # Dome
      for py in 0...size
        for px in 0...size
          dist = Math.sqrt((px - size / 2) ** 2 + (py - size / 2) ** 2)
          next if dist > size / 2
          a = (70 * (1.0 - dist / (size / 2.0))).to_i
          bmp.fill_rect(px, py, 1, 1, Color.new(c.red, c.green, c.blue, a))
        end
      end
      # Tiny tentacle lines
      3.times do |i|
        tx = size / 4 + i * (size / 4)
        bmp.fill_rect(tx, size, 1, 3, Color.new(c.red, c.green, c.blue, 30))
      end
      spr.bitmap = bmp
      spr.blend_type = 1
      spr.z = 199
      spr.ox = size / 2
      spr.oy = size / 2
      spr.x = rand(Graphics.width)
      spr.y = rand(Graphics.height)
      @jellyfish_sprites << {
        :sprite => spr, :life => 0, :max_life => 600 + rand(400),
        :vx => (rand - 0.5) * 0.3, :vy => -(0.15 + rand * 0.15),
        :phase => rand * Math::PI * 2, :color => c
      }
    end

    # Update
    @jellyfish_sprites.each do |j|
      j[:life] += 1
      t = Graphics.frame_count.to_f + j[:phase]
      j[:sprite].x += j[:vx] + Math.sin(t * 0.02) * 0.3
      j[:sprite].y += j[:vy] + Math.cos(t * 0.015) * 0.2
      # Pulse glow
      j[:sprite].opacity = (50 + Math.sin(t * 0.05) * 20).to_i
      # Brighten when player approaches
      dx = j[:sprite].x - Graphics.width / 2
      dy = j[:sprite].y - Graphics.height / 2
      dist = Math.sqrt(dx * dx + dy * dy)
      if dist < 60
        j[:sprite].opacity = [j[:sprite].opacity + 15, 90].min
      end
    end

    @jellyfish_sprites.reject! do |j|
      if j[:life] >= j[:max_life] || j[:sprite].y < -20
        j[:sprite].bitmap&.dispose
        j[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Pressure Darkness Vignette — stronger vignette on dive maps by depth
  # ============================================================================
  def update_dive_vignette
    is_dive = @map.metadata&.has_flag?("Diving") || @map.metadata&.has_flag?("Underwater")
    return if !is_dive
    return if !@vignette_sprite || @vignette_sprite.disposed?

    map_height = @map.height
    return if map_height <= 0
    depth_ratio = ($game_player.y.to_f / map_height).clamp(0.0, 1.0)
    # Intensify vignette based on depth: 40 at surface, 120 at max depth
    target = (40 + depth_ratio * 80).to_i
    if @vignette_sprite.opacity < target
      @vignette_sprite.opacity = [@vignette_sprite.opacity + 1, target].min
    else
      @vignette_sprite.opacity = [@vignette_sprite.opacity - 1, target].max
    end
  end

  # ============================================================================
  # FEATURE: Light Absorption Tint — underwater lights shift toward blue-green
  # ============================================================================
  def underwater_color_shift(color)
    is_dive = @map.metadata&.has_flag?("Diving") || @map.metadata&.has_flag?("Underwater")
    return color if !is_dive
    # Reduce red, boost blue-green
    depth_mult = deep_sea_radius_mult
    red_loss = (1.0 - depth_mult) * 0.8  # Up to 48% red lost at max depth
    Color.new(
      (color.red * (1.0 - red_loss)).to_i.clamp(0, 255),
      color.green,
      [color.blue + 30, 255].min
    )
  end

  # ============================================================================
  # FEATURE: Heat Haze Distortion — shimmer near lava/fire lights
  # ============================================================================
  def update_heat_haze
    has_hot = false
    if @feature_flags[:heat]
      @effects.each_value do |effect|
        next if !should_update?(effect)
        next if !effect.heat_shimmer
        has_hot = true
        break
      end
    end

    if !has_hot
      if @heat_haze_sprite && !@heat_haze_sprite.disposed?
        @heat_haze_sprite.opacity = [@heat_haze_sprite.opacity - 3, 0].max
      end
      return
    end

    if !@heat_haze_sprite || @heat_haze_sprite.disposed?
      @heat_haze_sprite = Sprite.new(@viewport)
      w = Graphics.width
      h = Graphics.height
      bmp = Bitmap.new(w, h)
      # Subtle horizontal distortion bars
      for row in 0...h
        next if row % 3 != 0
        offset = (Math.sin(row * 0.2) * 2).to_i
        alpha = 8 + rand(6)
        bmp.fill_rect(offset.clamp(0, w - 1), row, w, 1, Color.new(255, 200, 100, alpha))
      end
      @heat_haze_sprite.bitmap = bmp
      @heat_haze_sprite.blend_type = 1
      @heat_haze_sprite.z = 99993
      @heat_haze_sprite.opacity = 0
    end

    # Animate by shifting vertically
    @heat_haze_sprite.y = (Math.sin(Graphics.frame_count * 0.08) * 2).to_i
    target = 30
    if @heat_haze_sprite.opacity < target
      @heat_haze_sprite.opacity = [@heat_haze_sprite.opacity + 2, target].min
    end
  end

  # ============================================================================
  # FEATURE: Snow Glow — snow weather increases effective light radius
  # ============================================================================
  def snow_radius_mult
    return 1.0 if !@_cached_outside
    case @_cached_weather
    when :Snow     then return 1.25
    when :Blizzard then return 1.15  # Less because blizzard obscures
    else return 1.0
    end
  end

  # ============================================================================
  # FEATURE: Lens Flare — bright lights near screen edges produce streaks
  # ============================================================================
  def update_lens_flares
    if @_cached_night  # Only during day
      if !@lens_flare_sprites.empty?
        @lens_flare_sprites.each_value { |s| s.bitmap&.dispose; s.dispose }
        @lens_flare_sprites.clear
      end
      return
    end

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Determine which lights currently qualify (bright + near a screen edge).
    qualifying = {}
    @effects.each do |id, effect|
      next if !should_update?(effect)
      next if effect.intensity < 0.8 && effect.radius < 80
      sx = effect.x - scroll_x
      sy = effect.y - scroll_y
      edge_dist = [sx, sy, Graphics.width - sx, Graphics.height - sy].min
      next if edge_dist > 60 || edge_dist < -16
      qualifying[id] = [sx, sy]
    end

    # Remove flares whose light no longer qualifies / is gone.
    stale = @lens_flare_sprites.each_key.select { |id| !qualifying[id] }
    stale.each do |id|
      @lens_flare_sprites[id].bitmap&.dispose
      @lens_flare_sprites[id].dispose
      @lens_flare_sprites.delete(id)
    end

    center_x = Graphics.width / 2
    center_y = Graphics.height / 2
    qualifying.each do |id, pos|
      sx, sy = pos
      if !@lens_flare_sprites[id] || @lens_flare_sprites[id].disposed?
        # Diagonal streak toward screen centre; baked once per light.
        spr = Sprite.new(@viewport)
        len = 40 + rand(20)
        bmp = Bitmap.new(len, 4)
        c = @effects[id].current_color
        for col in 0...len
          progress = col.to_f / len
          a = (30 * Math.sin(progress * Math::PI)).to_i
          bmp.fill_rect(col, 0, 1, 4, Color.new(c.red, c.green, c.blue, a))
        end
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 99996
        spr.opacity = 40
        @lens_flare_sprites[id] = spr
      end
      spr = @lens_flare_sprites[id]
      angle = Math.atan2(center_y - sy, center_x - sx) * 180 / Math::PI
      spr.angle = -angle
      spr.x = sx
      spr.y = sy
    end
  end

  # ============================================================================
  # FEATURE: Canopy Dapple — animated leaf shadow spots on forest maps
  # ============================================================================
  def update_canopy_dapple
    return if !canopy? || @_cached_night

    if !@canopy_dapple_sprite || @canopy_dapple_sprite.disposed?
      @canopy_dapple_sprite = Sprite.new(@viewport)
      w = Graphics.width + 64
      h = Graphics.height + 64
      bmp = Bitmap.new(w, h)
      # Random round shadow spots
      30.times do
        cx = rand(w)
        cy = rand(h)
        r = 6 + rand(12)
        for py in (cy - r)..(cy + r)
          for px in (cx - r)..(cx + r)
            next if px < 0 || py < 0 || px >= w || py >= h
            dist = Math.sqrt((px - cx) ** 2 + (py - cy) ** 2)
            next if dist > r
            a = (18 * (1.0 - dist / r)).to_i
            bmp.fill_rect(px, py, 1, 1, Color.new(0, 30, 0, a))
          end
        end
      end
      @canopy_dapple_sprite.bitmap = bmp
      @canopy_dapple_sprite.blend_type = 2
      @canopy_dapple_sprite.z = 99994
      @canopy_dapple_sprite.opacity = 45
    end

    # Gentle wind sway
    t = Graphics.frame_count.to_f
    @canopy_dapple_sprite.x = -32 + (Math.sin(t * 0.01) * 8).to_i
    @canopy_dapple_sprite.y = -32 + (Math.cos(t * 0.008) * 5).to_i
  end

  # ============================================================================
  # FEATURE: Light Layers (Z-Priority) — per-light depth sorting
  # ============================================================================
  LAYER_Z = { :ground => 142, :mid => 200, :overhead => 250 }

  def apply_light_layer(sprite, effect)
    if effect.layer
      z = LAYER_Z[effect.layer]
      sprite.z = z if z
      return
    end
    # Smart default: anchor the glow into the scene like a character, so the
    # engine's own priority-tile z (trees/roofs: z = (row+prio)*32+33) occludes
    # it naturally — no tile-ID lists. Explicit layer: keeps the old fixed z.
    sprite.z = anchored_light_z(effect) if occlusion_enabled? && effect.occlude != false
  end

  # ============================================================================
  # FEATURE: Priority Occlusion — lights don't render through trees/roofs.
  # Uses the SAME rule the engine uses to hide the player behind priority tiles:
  # a tile at map row ty with priority p has z = (ty + p) * 32 + 33, so it covers
  # anything anchored at a lower map row. Two parts:
  #   1) sprites (additive glow/halo): y-anchored z via anchored_light_z
  #   2) the darkness-mask bitmap: occluded 32×32 cells are re-filled with black
  #      (apply_priority_occlusion) so the carved light hole respects cover.
  # ============================================================================
  def occlusion_enabled?
    return false if !defined?(LightingConfig)
    return false if !LightingConfig.respond_to?(:priority_occlusion)
    LightingConfig.priority_occlusion != false
  end

  # Character-style z for a light. With the light centred on tile row j, its z must
  # beat the lamp's OWN priority-1 head tile (z = j*32 + 65 — the glow comes FROM it)
  # but lose to anything one row further south or priority ≥ 2 (z ≥ j*32 + 97).
  # Centre pixel y = j*32 + 16, so +64 lands at j*32 + 80 — inside that window.
  def anchored_light_z(effect)
    (effect.y - (@map.display_y / Game_Map::Y_SUBPIXELS).round) + Game_Map::TILE_HEIGHT * 2
  end

  # Highest tile priority at (tx, ty), cached — map tile data doesn't change at
  # runtime, and one Lighting instance lives exactly as long as its map.
  def tile_priority_max(tx, ty)
    key = (ty << 16) | tx
    cached = (@_occ_prio_cache ||= {})[key]
    return cached if cached
    data = @map.data
    prio = 0
    pri_table = @map.priorities
    (data.zsize - 1).downto(0) do |z|
      tid = data[tx, ty, z]
      next if !tid || tid == 0
      p = pri_table[tid]
      prio = p if p && p > prio
    end
    @_occ_prio_cache[key] = prio
  end

  def tile_occludes_row?(tx, ty, light_row)
    return false if tx < 0 || ty < 0 || tx >= @map.width || ty >= @map.height
    prio = tile_priority_max(tx, ty)
    return false if prio == 0
    (ty + prio) > light_row
  end

  # ============================================================================
  # FEATURE: Auto Tile Shadows — priority OBJECTS cast projected shadows.
  # The object's own silhouette is mirrored at its base, slanted sideways and
  # squashed (Dynamic-Overworld-Shadows look, but for tiles). Works per column:
  # a contiguous vertical run of priority tiles = one object; each tile's
  # silhouette band lands at base + squash·height, shifted by skew·height.
  # Sprites sit at z=3: above ground, under characters and priority tiles.
  # Driven purely by the tileset's priority data; LightingConfig.tile_shadow_*.
  # ============================================================================
  TILE_SHADOW_Z = 3
  TILE_SHADOW_OVERCAST = [:Rain, :Storm, :HeavyRain, :Fog, :Blizzard, :Snow]

  def tile_shadows_enabled?
    return false if !defined?(LightingConfig) || !LightingConfig.respond_to?(:tile_shadows)
    return false if LightingConfig.tile_shadows == false
    @_cached_outside || LightingConfig.tile_shadow_indoor
  end

  # Projection parameters [dir, skew, squash]; the sun arc flips the direction
  # over the day and stretches shadows in the morning/evening (short at noon).
  def tile_shadow_projection
    skew   = (LightingConfig.tile_shadow_skew   || 0.5).to_f
    squash = (LightingConfig.tile_shadow_squash || 0.45).to_f.clamp(0.15, 1.0)
    dir    = (LightingConfig.tile_shadow_dir    || 1) >= 0 ? 1 : -1
    if LightingConfig.tile_shadow_sun_arc && @_cached_hour
      t = (((@_cached_hour + (@_cached_min || 0) / 60.0) - 12.0) / 6.0).clamp(-1.0, 1.0)
      dir = t < 0 ? -1 : 1
      skew = skew * [t.abs, 0.3].max
    end
    [dir, skew, squash]
  end

  def tile_shadow_opacity_now
    op = (LightingConfig.tile_shadow_opacity || 90).to_f
    op *= (LightingConfig.tile_shadow_night_mult || 0.4) if @_cached_night
    op *= (LightingConfig.tile_shadow_weather_mult || 0.35) if TILE_SHADOW_OVERCAST.include?(@_cached_weather)
    op.round.clamp(0, 255)
  end

  # Topmost tile-id at (tx, ty) for the silhouette: prefers a priority tile; blocked
  # cells in a qualified run (walls, trunks) fall back to their topmost visible tile,
  # so the projected object silhouette has no gap between roof and ground.
  # Cached per map (cleared in setup_map) — tile data is static at runtime.
  def tile_shadow_caster_id(tx, ty, min_prio)
    key = (ty << 16) | (tx & 0xFFFF)
    cache = (@_tile_shadow_id_cache ||= {})
    return cache[key] if cache.key?(key)
    data = @map.data
    pri_table = @map.priorities
    found = nil
    (data.zsize - 1).downto(0) do |z|
      tid = data[tx, ty, z]
      next if !tid || tid == 0
      p = pri_table[tid]
      next if !p || p < min_prio
      found = tid
      break
    end
    if !found && (tile_shadow_cell_blocked?(tx, ty) || tile_shadow_cell_bridged?(tx, ty, min_prio))
      (data.zsize - 1).downto(0) do |z|
        tid = data[tx, ty, z]
        next if !tid || tid == 0
        found = tid
        break
      end
    end
    cache[key] = found || false
  end

  # Is the cell solid ground-level obstacle? (RMXP rule: topmost non-☆ tile decides;
  # blocked = all four direction bits set.) Building walls are blocked but priority 0.
  def tile_shadow_cell_blocked?(tx, ty)
    data = @map.data
    pas = @map.passages
    (data.zsize - 1).downto(0) do |z|
      tid = data[tx, ty, z]
      next if !tid || tid == 0
      p = pas[tid] || 0
      next if (p & 0x40) != 0          # ☆ (over-player) tile — look below
      return (p & 0x0f) == 0x0f
    end
    false
  end

  TILE_SHADOW_RUN_CAP = 12   # max object height in tiles (guards cliff faces etc.)

  # Solid object cell: priority tile or blocked.
  def tile_shadow_cell_solid?(tx, ty, min_prio)
    tile_priority_max(tx, ty) >= min_prio || tile_shadow_cell_blocked?(tx, ty)
  end

  # A passable cell that is part of an object anyway: doors/archways — solid to the
  # LEFT, RIGHT and ABOVE. (Gaps between two trees stay out: nothing solid above.)
  def tile_shadow_cell_bridged?(tx, ty, min_prio)
    return false if tx <= 0 || tx >= @map.width - 1 || ty <= 0
    return false if tile_shadow_cell_solid?(tx, ty, min_prio)
    tile_shadow_cell_solid?(tx - 1, ty, min_prio) &&
      tile_shadow_cell_solid?(tx + 1, ty, min_prio) &&
      tile_shadow_cell_solid?(tx, ty - 1, min_prio)
  end

  # The column "object run" containing (tx, ty): a contiguous vertical run of cells that
  # are priority tiles OR blocked (building walls, trunks) OR bridged (doors). Returns
  # [base_row, qualified] — qualified only if the run contains at least one priority tile
  # (pure walls/cliffs don't cast). Cached per cell (cleared in setup_map).
  def tile_shadow_run(tx, ty, min_prio)
    key = (ty << 16) | (tx & 0xFFFF)
    cache = (@_tile_shadow_base_cache ||= {})
    return cache[key] if cache.key?(key)
    in_run = lambda do |yy|
      tile_shadow_cell_solid?(tx, yy, min_prio) || tile_shadow_cell_bridged?(tx, yy, min_prio)
    end
    top = ty
    top -= 1 while top - 1 >= 0 && (ty - top) < TILE_SHADOW_RUN_CAP && in_run.call(top - 1)
    base = ty
    base += 1 while base + 1 < @map.height && (base - top) < TILE_SHADOW_RUN_CAP && in_run.call(base + 1)
    qualified = false
    top.upto(base) do |yy|
      next if tile_priority_max(tx, yy) < min_prio
      qualified = true
      break
    end
    cache[key] = [base, qualified]
  end

  # Blackened, vertically mirrored, slanted + squashed silhouette band of one
  # tile, cached per [tile_id, dir, skew-step]. Built scanline-wise:
  # dest row d holds source row (31 - h_local), shifted by skew·h_local — so the
  # tile's BOTTOM edge sits at the bitmap's top (nearest the object base) and
  # the top edge lands farthest away. Autotiles use a flat soft blob band.
  def tile_shadow_bitmap(tile_id, dir, skew, squash)
    skew_q = (skew * 10).round
    key = [tile_id, dir, skew_q, (squash * 100).round]
    cache = (@_tile_shadow_sil ||= {})
    return cache[key] if cache.key?(key)

    sil = nil
    if tile_id >= 384 && tile_id < 1_000_000   # regular tile (above = Prism extra-autotile band)
      begin
        src = RPG::Cache.tileset(@map.tileset_name)
        sx = ((tile_id - 384) % 8) * 32
        sy = ((tile_id - 384) / 8) * 32
        if src && !src.disposed? && sy + 32 <= src.height
          sil = Bitmap.new(32, 32)
          sil.blt(0, 0, src, Rect.new(sx, sy, 32, 32))
          32.times do |py|
            32.times do |px|
              a = sil.get_pixel(px, py).alpha
              next if a <= 0
              sil.set_pixel(px, py, Color.new(0, 0, 0, a))
            end
          end
        end
      rescue
        sil&.dispose
        sil = nil
      end
    end

    h = [(32 * squash).round, 2].max
    w = 32 + (skew_q.abs * 32 / 10.0).ceil + 1
    bmp = Bitmap.new(w, h)
    skew_f = skew_q / 10.0
    h.times do |d|
      h_local = (d + 0.5) * 32.0 / h            # px above the cell's bottom edge
      xoff = (skew_f * h_local).round
      x = dir > 0 ? xoff : w - 32 - xoff
      if sil
        src_row = 31 - h_local.floor.clamp(0, 31)
        bmp.blt(x, d, sil, Rect.new(0, src_row, 32, 1))     # d=0 → cell bottom, nearest the base
      else
        # blob band for autotile casters: soft ellipse profile
        half = 14.0 * Math.sin(((d + 0.5) / h) * Math::PI) ** 0.7
        a = (190 * Math.sin(((d + 0.5) / h) * Math::PI) ** 0.5).to_i
        bmp.fill_rect(x + (16 - half).round, d, (half * 2).round, 1, Color.new(0, 0, 0, a)) if a > 0
      end
    end
    sil&.dispose
    cache[key] = bmp
  end

  def update_tile_shadows
    if !tile_shadows_enabled?
      if @tile_shadow_sprites && !@tile_shadow_sprites.empty?
        @tile_shadow_sprites.each_value { |s| s.dispose if !s.disposed? }
        @tile_shadow_sprites.clear
      end
      return
    end
    @tile_shadow_sprites ||= {}
    tw = Game_Map::TILE_WIDTH
    th = Game_Map::TILE_HEIGHT
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    dir, skew, squash = tile_shadow_projection
    op = tile_shadow_opacity_now
    min_prio = (LightingConfig.tile_shadow_min_priority || 1).to_i
    # margin: tall objects project south of themselves (full mirror = up to RUN_CAP rows)
    tx0 = scroll_x / tw - 7
    ty0 = scroll_y / th - (TILE_SHADOW_RUN_CAP + 1)
    tx1 = (scroll_x + Graphics.width) / tw + 7
    ty1 = (scroll_y + Graphics.height) / th + 1
    seen = {}
    ty0.upto(ty1) do |ty|
      next if ty < 0 || ty >= @map.height
      tx0.upto(tx1) do |tx|
        next if tx < 0 || tx >= @map.width
        next if tile_priority_max(tx, ty) < min_prio && !tile_shadow_cell_blocked?(tx, ty) &&
                !tile_shadow_cell_bridged?(tx, ty, min_prio)
        base_row, qualified = tile_shadow_run(tx, ty, min_prio)
        next if !qualified
        tid = tile_shadow_caster_id(tx, ty, min_prio)
        next if !tid
        bmp = tile_shadow_bitmap(tid, dir, skew, squash)
        next if !bmp
        h0 = (base_row - ty) * th                              # cell bottom's height above the base
        key = (ty << 16) | (tx & 0xFFFF)
        spr = @tile_shadow_sprites[key]
        if !spr || spr.disposed?
          spr = Sprite.new(@viewport)
          spr.z = TILE_SHADOW_Z
          @tile_shadow_sprites[key] = spr
        end
        spr.bitmap = bmp if spr.bitmap != bmp
        sx = tx * tw + (dir > 0 ? (skew * h0).round : -((skew * h0).round + bmp.width - tw))
        spr.x = sx - scroll_x
        spr.y = (base_row + 1) * th + (squash * h0).round - scroll_y
        spr.opacity = op
        spr.visible = op > 0
        seen[key] = true
      end
    end
    # release sprites that scrolled out of the window
    if @tile_shadow_sprites.length > seen.length
      @tile_shadow_sprites.keys.each do |k|
        next if seen[k]
        @tile_shadow_sprites[k].dispose if !@tile_shadow_sprites[k].disposed?
        @tile_shadow_sprites.delete(k)
      end
    end
  end

  # Re-darken every 32×32 cell of the darkness mask that is covered by a
  # priority tile sitting ABOVE the light's anchor row. A cell stays lit if ANY
  # light reaching it is not occluded there (so overlapping lights behave).
  def apply_priority_occlusion(draw_list, scroll_x, scroll_y)
    return if !occlusion_enabled?
    tw = Game_Map::TILE_WIDTH
    th = Game_Map::TILE_HEIGHT
    cells = nil
    draw_list.each do |_key, effect, center_x, center_y, _lod, _inten, _anim|
      next if effect.occlude == false
      light_row = effect.y / th
      light_col = effect.x / tw
      ext = [effect.radius, effect.width_px, effect.height_px].max + tw
      tx0 = ((center_x + scroll_x) - ext) / tw
      tx1 = ((center_x + scroll_x) + ext) / tw
      ty0 = ((center_y + scroll_y) - ext) / th
      ty1 = ((center_y + scroll_y) + ext) / th
      ty0.upto(ty1) do |ty|
        tx0.upto(tx1) do |tx|
          # the source cell never occludes its own light (lamp heads are priority tiles)
          occ = (tx != light_col || ty != light_row) && tile_occludes_row?(tx, ty, light_row)
          key = (ty << 16) | (tx & 0xFFFF)
          cells ||= {}
          cur = cells[key]
          cells[key] = cur.nil? ? occ : (cur && occ)
        end
      end
    end
    return if !cells
    black = Color.black
    cells.each do |key, dark|
      next if !dark
      tx = key & 0xFFFF
      ty = key >> 16
      @bitmap.fill_rect(tx * tw - scroll_x, ty * th - scroll_y, tw, th, black)
    end
  end

  # ============================================================================
  # FEATURE: Light Radius Breathing — global cave radius oscillation
  # ============================================================================
  def cave_breathing_mult
    return 1.0 if !@map.metadata&.has_flag?("Cave")
    @_cave_breath_phase += 0.02
    return 1.0 + Math.sin(@_cave_breath_phase) * 0.03  # ±3% radius wobble
  end

  # ============================================================================
  # FEATURE: Conditional Light Colors — change color based on game variable
  # ============================================================================
  COLOR_VAR_MAP = {
    0 => Color.new(255, 255, 255),  # White
    1 => Color.new(255, 80, 80),    # Red
    2 => Color.new(80, 80, 255),    # Blue
    3 => Color.new(80, 255, 80),    # Green
    4 => Color.new(255, 255, 80),   # Yellow
    5 => Color.new(255, 160, 40),   # Orange
    6 => Color.new(200, 80, 255),   # Purple
  }

  def conditional_color(effect)
    return effect.current_color if !effect.color_var
    var_val = $game_variables[effect.color_var] rescue 0
    return COLOR_VAR_MAP[var_val] || effect.current_color
  end

  # ============================================================================
  # FEATURE: Performance Auto-Scaler — reduce quality if FPS drops
  # ============================================================================
  def update_perf_auto_scaler
    # Estimate the REAL frame rate from wall-clock time, not Graphics.frame_count.
    # frame_count advances by exactly 1 per call, so the old delta was always the
    # sample count and the estimate was always ~frame_rate — the scaler never
    # engaged. System.uptime (seconds, float) reflects actual elapsed time.
    now = (System.uptime rescue (Time.now.to_f))
    if @_perf_last_uptime
      dt = now - @_perf_last_uptime
      if dt > 0
        @_perf_frame_times << dt
        @_perf_frame_times.shift if @_perf_frame_times.length > 30
      end
    end
    @_perf_last_uptime = now
    return if @_perf_frame_times.length < 15

    avg_dt = @_perf_frame_times.sum / @_perf_frame_times.length
    return if avg_dt <= 0
    estimated_fps = 1.0 / avg_dt

    if estimated_fps < 20
      @_perf_auto_scale = [@_perf_auto_scale - 0.05, 0.3].max
    elsif estimated_fps > 35
      @_perf_auto_scale = [@_perf_auto_scale + 0.02, 1.0].min
    end
  end

  def perf_particle_limit(base_max)
    scale = @_perf_auto_scale
    scale *= LightingConfig.particle_scale if defined?(LightingConfig)
    return (base_max * scale).to_i.clamp(1, base_max)
  end

  # ============================================================================
  # FEATURE: Torch Flame Sprite — animated fire overlay on torch/campfire lights
  # ============================================================================
  def update_flame_sprites
    return if !@feature_flags[:flame] && @flame_overlay_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale
    stale_ids = @flame_overlay_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    stale_ids.each do |id|
      @flame_overlay_sprites[id].bitmap&.dispose
      @flame_overlay_sprites[id].dispose
      @flame_overlay_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !effect.flame_sprite || !should_update?(effect)
      sx = effect.x - scroll_x
      sy = effect.y - scroll_y

      if !@flame_overlay_sprites[id] || @flame_overlay_sprites[id].disposed?
        spr = Sprite.new(@viewport)
        # 3-frame animation strip
        fw = 12
        fh = 16
        bmp = Bitmap.new(fw, fh)
        c = effect.current_color
        for py in 0...fh
          flame_w = (fw * (1.0 - py.to_f / fh) * 0.8).to_i
          next if flame_w <= 0
          x_off = (fw - flame_w) / 2
          for px in x_off...(x_off + flame_w)
            a = (120 * (1.0 - py.to_f / fh)).to_i
            bmp.fill_rect(px, py, 1, 1, Color.new(
              [c.red, 255].min,
              [c.green * 0.7, 200].min.to_i,
              0, a
            ))
          end
        end
        spr.bitmap = bmp
        spr.ox = fw / 2
        spr.oy = fh
        spr.blend_type = 1
        spr.z = 210
        @flame_overlay_sprites[id] = spr
      end

      spr = @flame_overlay_sprites[id]
      # Animate: flutter position
      t = Graphics.frame_count.to_f
      spr.x = sx + (Math.sin(t * 0.3 + id.hash) * 2).to_i
      spr.y = sy - 8 + (Math.sin(t * 0.5 + id.hash) * 1.5).to_i
      spr.opacity = (150 + Math.sin(t * 0.4) * 40).to_i
      # Scale flicker
      spr.zoom_x = 0.9 + Math.sin(t * 0.35) * 0.15
      spr.zoom_y = 0.9 + Math.cos(t * 0.25) * 0.15
    end
  end

  # ============================================================================
  # FEATURE: Light Color Bleed — colored lights tint adjacent tiles
  # ============================================================================
  def update_color_bleed
    return if !@feature_flags[:color_bleed] && @color_bleed_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale
    stale_ids = @color_bleed_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    stale_ids.each do |id|
      @color_bleed_sprites[id].each { |s| s.bitmap&.dispose; s.dispose }
      @color_bleed_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !effect.color_bleed || !should_update?(effect)
      next if @color_bleed_sprites[id] && !@color_bleed_sprites[id].empty?

      sx = effect.x - scroll_x
      sy = effect.y - scroll_y
      color = effect.current_color
      tiles = []
      # 4 adjacent tiles
      [[-1, 0], [1, 0], [0, -1], [0, 1]].each do |dx, dy|
        spr = Sprite.new(@viewport)
        tw = Game_Map::TILE_WIDTH
        th = Game_Map::TILE_HEIGHT
        bmp = Bitmap.new(tw, th)
        for py in 0...th
          for px in 0...tw
            # Gradient from edge toward center
            edge_dist = [px, py, tw - px, th - py].min.to_f / (tw / 2)
            a = (20 * (1.0 - edge_dist)).to_i
            bmp.fill_rect(px, py, 1, 1, Color.new(color.red, color.green, color.blue, a))
          end
        end
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 143
        spr.x = sx + dx * tw
        spr.y = sy + dy * th
        tiles << spr
      end
      @color_bleed_sprites[id] = tiles
    end

    # Update opacity
    @color_bleed_sprites.each_value do |sprites|
      sprites.each do |spr|
        next if spr.disposed?
        spr.opacity = (35 + Math.sin(Graphics.frame_count * 0.03) * 10).to_i
      end
    end
  end

  # ============================================================================
  # FEATURE: Sunrise/Sunset Horizon Glow — gradient band at screen bottom
  # ============================================================================
  def update_horizon_glow
    return if !@_cached_outside
    hour = @_cached_hour
    is_dawn = hour >= 5 && hour <= 7
    is_dusk = hour >= 17 && hour <= 19

    if !is_dawn && !is_dusk
      if @horizon_glow_sprite && !@horizon_glow_sprite.disposed?
        @horizon_glow_sprite.opacity = [@horizon_glow_sprite.opacity - 3, 0].max
      end
      return
    end

    if !@horizon_glow_sprite || @horizon_glow_sprite.disposed?
      @horizon_glow_sprite = Sprite.new(@viewport)
      w = Graphics.width
      h = (Graphics.height * 0.25).to_i
      bmp = Bitmap.new(w, h)
      @horizon_glow_sprite.bitmap = bmp
      @horizon_glow_sprite.blend_type = 1
      @horizon_glow_sprite.z = 99993
      @horizon_glow_sprite.y = Graphics.height - h
    end

    # Repaint based on dawn vs dusk
    bmp = @horizon_glow_sprite.bitmap
    bmp.clear
    w = bmp.width
    h = bmp.height
    if is_dawn
      c1 = Color.new(255, 150, 80)
      c2 = Color.new(255, 200, 150)
    else
      c1 = Color.new(255, 100, 50)
      c2 = Color.new(200, 60, 100)
    end
    for row in 0...h
      progress = row.to_f / h
      r = (c1.red + (c2.red - c1.red) * progress).to_i
      g = (c1.green + (c2.green - c1.green) * progress).to_i
      b = (c1.blue + (c2.blue - c1.blue) * progress).to_i
      a = (25 * (1.0 - progress)).to_i
      bmp.fill_rect(0, row, w, 1, Color.new(r, g, b, a))
    end

    target = 50
    if @horizon_glow_sprite.opacity < target
      @horizon_glow_sprite.opacity = [@horizon_glow_sprite.opacity + 2, target].min
    end
  end

  # ============================================================================
  # FEATURE: Flickering Power Grid — all power_grid lights stutter together
  # ============================================================================
  def update_power_grid
    if !@feature_flags[:power_grid]
      @_power_grid_flicker = false
      return
    end
    # Check for grid flicker trigger (random or switch-based)
    if @_power_grid_timer > 0
      @_power_grid_timer -= 1
      @_power_grid_flicker = (@_power_grid_timer % 4) < 2  # Rapid on/off
    elsif rand(600) == 0  # Random grid stutter ~every 10 seconds
      @_power_grid_timer = 12 + rand(8)  # Flicker for ~0.3 seconds
    else
      @_power_grid_flicker = false
    end
  end

  # ============================================================================
  # FEATURE: Crystal Refraction — split crystal lights into rainbow sub-beams
  # ============================================================================
  def update_crystal_refraction
    return if !@feature_flags[:crystal] && @crystal_refract_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    stale_ids = @crystal_refract_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    stale_ids.each do |id|
      @crystal_refract_sprites[id].each { |s| s.bitmap&.dispose; s.dispose }
      @crystal_refract_sprites.delete(id)
    end

    rainbow = [
      Color.new(255, 60, 60, 30),    # Red
      Color.new(255, 200, 60, 25),   # Yellow
      Color.new(60, 255, 60, 25),    # Green
      Color.new(60, 200, 255, 25),   # Cyan
      Color.new(100, 60, 255, 20),   # Violet
    ]

    @effects.each do |id, effect|
      next if !effect.crystal_refract || !should_update?(effect)
      next if @crystal_refract_sprites[id] && !@crystal_refract_sprites[id].empty?

      sx = effect.x - scroll_x
      sy = effect.y - scroll_y
      beams = []
      rainbow.each_with_index do |c, i|
        spr = Sprite.new(@viewport)
        angle = -30 + i * 15  # Spread -30° to +30°
        len = 20 + effect.radius / 3
        bw = 3
        bmp = Bitmap.new(len, bw)
        for col in 0...len
          progress = col.to_f / len
          a = (c.alpha * Math.sin(progress * Math::PI)).to_i
          bmp.fill_rect(col, 0, 1, bw, Color.new(c.red, c.green, c.blue, a))
        end
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 201
        spr.ox = 0
        spr.oy = bw / 2
        spr.angle = -angle
        spr.x = sx
        spr.y = sy
        beams << spr
      end
      @crystal_refract_sprites[id] = beams
    end

    # Shimmer opacity
    @crystal_refract_sprites.each_value do |beams|
      beams.each_with_index do |spr, i|
        next if spr.disposed?
        spr.opacity = (30 + Math.sin(Graphics.frame_count * 0.04 + i * 0.8) * 15).to_i
      end
    end
  end

  # ============================================================================
  # FEATURE: Torch Light Flicker Shadows — walls near flickering torches
  #          get dancing shadow edges synced with flicker
  # ============================================================================
  def update_flicker_shadows
    return if !@feature_flags[:flicker_shadows] && @flicker_shadow_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale
    stale_ids = @flicker_shadow_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    stale_ids.each do |id|
      @flicker_shadow_sprites[id].each { |s| s.bitmap&.dispose; s.dispose }
      @flicker_shadow_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !effect.flicker || !should_update?(effect)
      next if effect.radius < 30  # Too small for shadow effect

      sx = effect.x - scroll_x
      sy = effect.y - scroll_y

      if !@flicker_shadow_sprites[id] || @flicker_shadow_sprites[id].empty?
        shadows = []
        # Create 3 shadow bars on random adjacent sides
        3.times do |i|
          spr = Sprite.new(@viewport)
          bw = Game_Map::TILE_WIDTH
          bh = 6
          bmp = Bitmap.new(bw, bh)
          for row in 0...bh
            a = (80 * (1.0 - row.to_f / bh)).to_i
            bmp.fill_rect(0, row, bw, 1, Color.new(0, 0, 0, a))
          end
          spr.bitmap = bmp
          spr.blend_type = 0
          spr.z = 99996
          spr.opacity = 0
          shadows << spr
        end
        @flicker_shadow_sprites[id] = shadows
      end

      t = Graphics.frame_count.to_f
      fi = effect.flicker.is_a?(Numeric) ? effect.flicker : 0.15
      @flicker_shadow_sprites[id].each_with_index do |spr, i|
        next if spr.disposed?
        angle_off = i * 120  # Distribute around the light
        rad = (angle_off + t * 2) * Math::PI / 180
        dist = effect.radius * 0.7
        spr.x = sx + (Math.cos(rad) * dist).to_i - Game_Map::TILE_WIDTH / 2
        spr.y = sy + (Math.sin(rad) * dist).to_i
        # Flicker the shadow opacity in sync with the light
        flick_val = Math.sin(t * 0.4 + i * 1.5) * fi * 3
        spr.opacity = (40 + flick_val * 80).to_i.clamp(0, 100)
        spr.angle = angle_off + Math.sin(t * 0.2 + i) * 8
      end
    end
  end

  # ============================================================================
  # FEATURE: Fog Light Scatter — during fog weather, lights get a visible
  #          halo/bloom ring that grows with fog density
  # ============================================================================
  def update_fog_scatter
    is_fog = @_cached_weather == :Fog
    # Fade out and clean up if not foggy
    if !is_fog
      @fog_scatter_sprites.each_value do |spr|
        next if spr.disposed?
        spr.opacity = [spr.opacity - 5, 0].max
      end
      return
    end

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale
    stale_ids = @fog_scatter_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    stale_ids.each do |id|
      @fog_scatter_sprites[id].bitmap&.dispose
      @fog_scatter_sprites[id].dispose
      @fog_scatter_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !should_update?(effect)
      next if effect.radius < 20

      if !@fog_scatter_sprites[id] || @fog_scatter_sprites[id].disposed?
        # Create a large soft halo ring
        halo_r = (effect.radius * 2.0).to_i
        diameter = halo_r * 2
        spr = Sprite.new(@viewport)
        bmp = Bitmap.new(diameter, diameter)
        color = effect.current_color
        inv_r = 1.0 / halo_r
        for row in 0...diameter
          dy = row - halo_r
          dy2 = dy * dy
          max_dx2 = halo_r * halo_r - dy2
          next if max_dx2 < 0
          max_dx = Math.sqrt(max_dx2).to_i
          for col in (halo_r - max_dx)..(halo_r + max_dx)
            dx = col - halo_r
            dist = Math.sqrt(dx * dx + dy2)
            norm = dist * inv_r
            # Ring shape: peak at ~0.4-0.6 distance, fade at edges and center
            ring_val = Math.sin(norm * Math::PI) ** 0.5
            a = (30 * ring_val).to_i
            next if a <= 0
            bmp.fill_rect(col, row, 1, 1, Color.new(color.red, color.green, color.blue, a))
          end
        end
        spr.bitmap = bmp
        spr.ox = halo_r
        spr.oy = halo_r
        spr.blend_type = 1
        spr.z = 199
        spr.opacity = 0
        @fog_scatter_sprites[id] = spr
      end

      spr = @fog_scatter_sprites[id]
      spr.x = effect.x - scroll_x
      spr.y = effect.y - scroll_y
      apply_light_layer(spr, effect)   # priority occlusion: anchor into the scene
      # Slowly fade in; pulse gently
      target_op = (50 + Math.sin(Graphics.frame_count * 0.02 + id.hash * 0.1) * 15).to_i
      spr.opacity = spr.opacity < target_op ? [spr.opacity + 2, target_op].min : [spr.opacity - 2, target_op].max
      # Gentle size breathing
      spr.zoom_x = 1.0 + Math.sin(Graphics.frame_count * 0.015) * 0.05
      spr.zoom_y = spr.zoom_x
    end
  end

  # ============================================================================
  # FEATURE: Rain Streak Illumination — raindrops passing through light
  #          sources briefly flash white, creating sparkle streaks
  # ============================================================================
  def update_rain_streaks
    is_rain = [:Rain, :Storm, :HeavyRain].include?(@_cached_weather)
    if !is_rain
      @rain_streak_sprites.each { |s| s[:sprite].bitmap&.dispose; s[:sprite].dispose }
      @rain_streak_sprites.clear
      return
    end

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    max_streaks = perf_particle_limit(20)

    # Spawn new streaks near active lights
    if @rain_streak_sprites.length < max_streaks && rand(3) == 0
      active_lights = @effects.values.select { |e| should_update?(e) && e.radius >= 20 }
      if !active_lights.empty?
        effect = active_lights[rand(active_lights.length)]
        sx = effect.x - scroll_x + (rand - 0.5) * effect.radius
        sy = effect.y - scroll_y - effect.radius / 2 + rand(effect.radius)
        spr = Sprite.new(@viewport)
        bmp = Bitmap.new(2, 8)
        bmp.fill_rect(0, 0, 2, 8, Color.new(255, 255, 255, 180))
        spr.bitmap = bmp
        spr.blend_type = 1
        spr.z = 202
        spr.x = sx.to_i
        spr.y = sy.to_i
        spr.opacity = 200
        @rain_streak_sprites << { sprite: spr, life: 8 + rand(6), vy: 3 + rand(2) }
      end
    end

    # Update existing streaks
    @rain_streak_sprites.reject! do |data|
      data[:life] -= 1
      data[:sprite].y += data[:vy]
      data[:sprite].opacity -= 25
      if data[:life] <= 0 || data[:sprite].opacity <= 0
        data[:sprite].bitmap&.dispose
        data[:sprite].dispose
        true
      else
        false
      end
    end
  end

  # ============================================================================
  # FEATURE: Lava Glow Pulse — lava terrain tiles emit a slow red-orange
  #          ground pulse even without placed lights
  # ============================================================================
  LAVA_TERRAIN_TAG = 12  # Adjust to your PBS terrain tag for lava
  def update_lava_pulse
    # Only active inside caves or maps with lava terrain
    return if @_cached_outside && !@map.metadata&.has_flag?("Cave")

    max_pulses = perf_particle_limit(8)
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Clean up off-screen or expired
    @lava_pulse_sprites.reject! do |data|
      data[:life] -= 1
      if data[:life] <= 0
        data[:sprite].bitmap&.dispose
        data[:sprite].dispose
        true
      else
        false
      end
    end

    # Scan visible tiles for lava terrain (throttled)
    if @lava_pulse_sprites.length < max_pulses && Graphics.frame_count % 20 == 0
      px = $game_player.x
      py = $game_player.y
      (-5..5).each do |dx|
        (-5..5).each do |dy|
          tx = px + dx
          ty = py + dy
          tag = $game_map.terrain_tag(tx, ty).id rescue 0
          next if tag != LAVA_TERRAIN_TAG
          next if rand(4) != 0  # Sparse spawning
          next if @lava_pulse_sprites.length >= max_pulses

          spr = Sprite.new(@viewport)
          r = 16 + rand(12)
          d = r * 2
          bmp = Bitmap.new(d, d)
          inv_r = 1.0 / r
          for row in 0...d
            dpy = row - r
            for col in 0...d
              dpx = col - r
              dist = Math.sqrt(dpx * dpx + dpy * dpy)
              next if dist > r
              a = (60 * (1.0 - dist * inv_r) ** 1.5).to_i
              bmp.fill_rect(col, row, 1, 1, Color.new(255, 80 + rand(40), 0, a))
            end
          end
          spr.bitmap = bmp
          spr.ox = r
          spr.oy = r
          spr.blend_type = 1
          spr.z = 140
          spr.x = tx * Game_Map::TILE_WIDTH + Game_Map::TILE_WIDTH / 2 - scroll_x
          spr.y = ty * Game_Map::TILE_HEIGHT + Game_Map::TILE_HEIGHT / 2 - scroll_y
          @lava_pulse_sprites << { sprite: spr, life: 60 + rand(40), tx: tx, ty: ty }
        end
      end
    end

    # Animate existing pulses
    t = Graphics.frame_count.to_f
    @lava_pulse_sprites.each do |data|
      spr = data[:sprite]
      next if spr.disposed?
      spr.x = data[:tx] * Game_Map::TILE_WIDTH + Game_Map::TILE_WIDTH / 2 - scroll_x
      spr.y = data[:ty] * Game_Map::TILE_HEIGHT + Game_Map::TILE_HEIGHT / 2 - scroll_y
      progress = data[:life].to_f / 80
      spr.opacity = (40 * Math.sin(progress * Math::PI) + Math.sin(t * 0.08) * 15).to_i.clamp(0, 80)
      spr.zoom_x = 1.0 + Math.sin(t * 0.05 + data[:tx]) * 0.1
      spr.zoom_y = spr.zoom_x
    end
  end

  # ============================================================================
  # FEATURE: Frozen Light — during blizzard weather, light edges get a
  #          frosty blue-white crystalline border ring
  # ============================================================================
  def update_frost_rings
    is_blizzard = @_cached_weather == :Blizzard
    if !is_blizzard
      @frost_ring_sprites.each_value do |spr|
        next if spr.disposed?
        spr.opacity = [spr.opacity - 4, 0].max
      end
      return
    end

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Remove stale
    stale_ids = @frost_ring_sprites.each_key.select { |id| !@effects[id] || !should_update?(@effects[id]) }
    stale_ids.each do |id|
      @frost_ring_sprites[id].bitmap&.dispose
      @frost_ring_sprites[id].dispose
      @frost_ring_sprites.delete(id)
    end

    @effects.each do |id, effect|
      next if !should_update?(effect)
      next if effect.radius < 20

      if !@frost_ring_sprites[id] || @frost_ring_sprites[id].disposed?
        ring_r = (effect.radius * 1.2).to_i
        diameter = ring_r * 2
        spr = Sprite.new(@viewport)
        bmp = Bitmap.new(diameter, diameter)
        inv_r = 1.0 / ring_r
        for row in 0...diameter
          dy = row - ring_r
          dy2 = dy * dy
          for col in 0...diameter
            dx = col - ring_r
            dist = Math.sqrt(dx * dx + dy2)
            norm = dist * inv_r
            # Only draw the outer ring (0.75 to 1.0)
            next if norm < 0.75 || norm > 1.0
            ring_progress = (norm - 0.75) / 0.25
            a = (50 * Math.sin(ring_progress * Math::PI)).to_i
            # Crystalline sparkle pattern
            a += rand(15) if rand(3) == 0
            next if a <= 0
            bmp.fill_rect(col, row, 1, 1, Color.new(200, 220, 255, a.clamp(0, 80)))
          end
        end
        spr.bitmap = bmp
        spr.ox = ring_r
        spr.oy = ring_r
        spr.blend_type = 1
        spr.z = 203
        spr.opacity = 0
        @frost_ring_sprites[id] = spr
      end

      spr = @frost_ring_sprites[id]
      spr.x = effect.x - scroll_x
      spr.y = effect.y - scroll_y
      target_op = (60 + Math.sin(Graphics.frame_count * 0.03 + id.hash * 0.1) * 20).to_i
      spr.opacity = [spr.opacity + 3, target_op].min
      # Subtle rotate to simulate crystalline shimmer
      spr.angle = (Graphics.frame_count * 0.3 + id.hash) % 360
    end
  end

  # ============================================================================
  # FEATURE: Spotlight Follow — light type that auto-tracks the nearest
  #          event or the player within a configurable range
  # ============================================================================
  def update_spotlight_follow
    return if !@feature_flags[:follow]
    # NOTE: map_x/map_y stay the anchor here (on purpose) — follow_range is
    # measured from the anchor, so we must NOT sync them to the lerped glow
    # position or the light would chase its target across the whole map.
    @effects.each do |id, effect|
      next if !effect.follow_target || !should_update?(effect)
      target = nil
      case effect.follow_target
      when :player
        target = $game_player
      when :nearest_event
        best_dist = Float::INFINITY
        best_ev = nil
        $game_map.events.each_value do |ev|
          next if !ev
          dx = (ev.x - effect.map_x).abs
          dy = (ev.y - effect.map_y).abs
          dist = dx + dy
          next if dist > effect.follow_range
          if dist < best_dist
            best_dist = dist
            best_ev = ev
          end
        end
        target = best_ev
      when Integer
        target = $game_map.events[effect.follow_target]
      end
      next if !target

      # Check range
      dx = (target.x - effect.map_x).abs
      dy = (target.y - effect.map_y).abs
      next if (dx + dy) > effect.follow_range

      # Smoothly interpolate position toward target
      target_px = target.x * Game_Map::TILE_WIDTH + Game_Map::TILE_WIDTH / 2
      target_py = target.y * Game_Map::TILE_HEIGHT + Game_Map::TILE_HEIGHT / 2
      current_x = effect.x
      current_y = effect.y
      lerp = 0.12
      effect.x = current_x + (target_px - current_x) * lerp
      effect.y = current_y + (target_py - current_y) * lerp
    end
  end

  # ============================================================================
  # FEATURE: Light Effect Chaining — propagate fade/hide to chained partner
  # ============================================================================
  def update_chain_propagation
    return if !@feature_flags[:chain]
    @effects.each do |id, effect|
      next if !effect.chain_to
      partner = @effects[effect.chain_to]
      next if !partner
      # Sync fade target (if one fades out, so does the other)
      if effect.fade_target != partner.fade_target
        partner.fade_target = effect.fade_target
        partner.fade_speed = effect.fade_speed
      end
      # Sync hide state
      if effect.hide != partner.hide
        partner.hide = effect.hide
      end
    end
  end

  # ============================================================================
  # FEATURE: Seasonal Light Shifts — outdoor light colors auto-shift based
  #          on the in-game season (spring/summer/autumn/winter)
  # ============================================================================
  SEASONAL_TONES = {
    0 => Tone.new(10, 15, 5),     # Spring: slightly green
    1 => Tone.new(15, 10, -5),    # Summer: warm yellow
    2 => Tone.new(20, 5, -10),    # Autumn: warm orange
    3 => Tone.new(-5, -5, 15)     # Winter: cool blue
  }
  def seasonal_color_shift(color, effect)
    return color if !effect.seasonal || !@_cached_outside
    # Determine season (0-3) from month
    month = @_cached_month
    season = case month
             when 3, 4, 5 then 0    # Spring
             when 6, 7, 8 then 1    # Summer
             when 9, 10, 11 then 2  # Autumn
             else 3                  # Winter
             end
    st = SEASONAL_TONES[season]
    return Color.new(
      (color.red + st.red).clamp(0, 255),
      (color.green + st.green).clamp(0, 255),
      (color.blue + st.blue).clamp(0, 255)
    )
  end

  # ============================================================================
  # FEATURE: Map Light Counter HUD — debug overlay showing active light count,
  #          particle count, memory usage
  # ============================================================================
  def toggle_light_counter
    @light_counter_visible = !@light_counter_visible
    if !@light_counter_visible && @light_counter_sprite && !@light_counter_sprite.disposed?
      @light_counter_sprite.opacity = 0
    end
    return @light_counter_visible
  end

  def update_light_counter
    return if !@light_counter_visible
    if !@light_counter_sprite || @light_counter_sprite.disposed?
      @light_counter_sprite = Sprite.new(@viewport)
      @light_counter_sprite.bitmap = Bitmap.new(200, 180)
      @light_counter_sprite.z = 100011
      @light_counter_sprite.x = Graphics.width - 204
      @light_counter_sprite.y = 4
    end

    return if Graphics.frame_count % 15 != 0  # Update every ~0.5s

    bmp = @light_counter_sprite.bitmap
    bmp.clear
    bmp.fill_rect(0, 0, 200, 180, Color.new(0, 0, 0, 180))
    bmp.font.size = 13
    bmp.font.color = Color.new(100, 255, 180)

    total = @effects ? @effects.length : 0
    active = @effects ? @effects.count { |_, e| should_update?(e) } : 0
    sprites = @light_sprites ? @light_sprites.length : 0
    particles = (@ember_particles&.length || 0) + (@firefly_particles&.length || 0) +
                (@smoke_particles&.length || 0) + (@pollen_particles&.length || 0) +
                (@rain_streak_sprites&.length || 0) + (@lava_pulse_sprites&.length || 0)
    env_sprites = (@puddle_sprites&.length || 0) + (@drip_ripples&.length || 0) +
                  (@jellyfish_sprites&.length || 0) + (@echo_glow_sprites&.length || 0)
    overlay_count = (@flame_overlay_sprites&.length || 0) + (@color_bleed_sprites&.length || 0) +
                    (@crystal_refract_sprites&.length || 0) + (@fog_scatter_sprites&.length || 0) +
                    (@frost_ring_sprites&.length || 0) + (@flicker_shadow_sprites&.length || 0)
    cache = @gradient_cache ? @gradient_cache.length : 0
    perf = (@_perf_auto_scale * 100).to_i

    lines = [
      "=== LIGHT COUNTER ===",
      "Total Effects: #{total}",
      "Active: #{active} / Sprites: #{sprites}",
      "Particles: #{particles}",
      "Env Sprites: #{env_sprites}",
      "Overlay FX: #{overlay_count}",
      "Cache: #{cache} | Weather: #{@_cached_weather}",
      "Night: #{@_cached_night} | Outside: #{@_cached_outside}",
      "Perf Scale: #{perf}%",
      "Hour: #{@_cached_hour} | Map: #{@map.map_id}"
    ]
    lines.each_with_index do |text, i|
      bmp.draw_text(6, 4 + i * 16, 188, 16, text)
    end
    @light_counter_sprite.opacity = 230
  end

  # ============================================================================
  # FEATURE: Fireplace Warm Zone — warm color shift near campfire lights
  # ============================================================================
  def update_warm_zones
    return if !@feature_flags[:warm]
    # Adjust fireplace-adjacent tile coloring via existing light sprites
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    @effects.each do |id, effect|
      next if !should_update?(effect)
      next if effect.pulse != :candle || effect.radius < 40
      spr = @light_sprites[id]
      next if !spr || spr.disposed?
      # Warm the tone slightly extra for campfire-sized candle lights
      if effect.radius >= 50
        t = Graphics.frame_count.to_f
        warmth = (Math.sin(t * 0.06) * 5 + 10).to_i
        color = effect.current_color
        spr.tone = Tone.new(
          color.red - 255 + warmth,
          color.green - 255,
          color.blue - 255 - warmth / 2
        )
      end
    end
  end

  # ============================================================================
  # FEATURE: Soft Shadow Casting — lights with the `shadows` flag project soft
  # dark streaks from nearby wall tiles, away from the light. Opt-in (gated by
  # the per-map feature flag) and pooled per light id so it stays cheap.
  # Uses a single shared, pre-baked gradient decal stretched/rotated per blocker.
  # ============================================================================
  SHADOW_MAX_BLOCKERS = 8
  def update_light_shadows
    return if !@feature_flags[:shadows] && @shadow_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round

    # Drop pools for lights that are gone / disabled / lost their shadow flag.
    stale = @shadow_sprites.each_key.select do |id|
      e = @effects[id]
      !e || !e.shadows || !should_update?(e)
    end
    stale.each do |id|
      @shadow_sprites[id].each { |h| h[:sprite].dispose unless h[:sprite].disposed? }
      @shadow_sprites.delete(id)
    end
    return if !@feature_flags[:shadows]

    rebuild = (Graphics.frame_count % 20 == 0)
    tw = Game_Map::TILE_WIDTH
    th = Game_Map::TILE_HEIGHT

    @effects.each do |id, effect|
      next if !effect.shadows || !should_update?(effect)

      if rebuild || !@shadow_sprites[id]
        (@shadow_sprites[id] || []).each { |h| h[:sprite].dispose unless h[:sprite].disposed? }
        decal = shadow_decal_bitmap
        sprites = []
        tile_radius = (effect.radius.to_f / tw).ceil
        lx = effect.map_x
        ly = effect.map_y
        count = 0
        (-tile_radius..tile_radius).each do |dy|
          (-tile_radius..tile_radius).each do |dx|
            break if count >= SHADOW_MAX_BLOCKERS
            next if dx == 0 && dy == 0
            dist_t = Math.sqrt(dx * dx + dy * dy)
            next if dist_t > tile_radius
            tx = lx + dx
            ty = ly + dy
            next if !$game_map.valid?(tx, ty)   # skip off-map tiles (no edge phantoms)
            next if !tile_blocks_light?(tx, ty)
            spr = Sprite.new(@viewport)
            spr.bitmap = decal
            spr.blend_type = 0           # normal → darkens the ground
            spr.z = 141
            spr.ox = 0                   # anchor at blocker (light-facing edge)
            spr.oy = decal.height / 2
            # Length falls off toward the light's edge; angle points away from light.
            edge_falloff = (1.0 - dist_t / (tile_radius + 1)).clamp(0.2, 1.0)
            ang = Math.atan2((ty * th) - (effect.y - th / 2), (tx * tw) - (effect.x - tw / 2))
            sprites << {
              :sprite => spr,
              :bx => tx * tw + tw / 2,
              :by => ty * th + th / 2,
              :angle => -(ang * 180.0 / Math::PI),
              :zoom  => (0.6 + edge_falloff)
            }
            count += 1
          end
          break if count >= SHADOW_MAX_BLOCKERS
        end
        @shadow_sprites[id] = sprites
      end

      op = (90 * effect.fade_opacity * effective_intensity(effect)).to_i.clamp(0, 110)
      @shadow_sprites[id].each do |h|
        spr = h[:sprite]
        next if spr.disposed?
        spr.x = h[:bx] - scroll_x
        spr.y = h[:by] - scroll_y
        spr.angle = h[:angle]
        spr.zoom_x = h[:zoom]
        spr.opacity = op
      end
    end
  end

  # Lazily build a single shared shadow streak decal (dark, fading to clear along
  # +x and softly along the edges). Shared by every shadow sprite — disposed once
  # in dispose, never per sprite.
  def shadow_decal_bitmap
    return @shadow_decal_bitmap if @shadow_decal_bitmap && !@shadow_decal_bitmap.disposed?
    w = Game_Map::TILE_WIDTH * 3
    h = Game_Map::TILE_HEIGHT
    bmp = Bitmap.new(w, h)
    cy = h / 2.0
    for col in 0...w
      along = 1.0 - (col.to_f / w)            # opaque near origin → clear at tip
      for row in 0...h
        edge = 1.0 - ((row - cy).abs / cy)     # fade toward top/bottom edges
        a = (120 * along * edge).to_i
        next if a <= 0
        bmp.fill_rect(col, row, 1, 1, Color.new(0, 0, 0, a))
      end
    end
    @shadow_decal_bitmap = bmp
    return bmp
  end

  # ============================================================================
  # ANIMATIONS: Main bitmap refresh with pulsating lights
  # ============================================================================
  def refresh_bitmap
    @bitmap.clear
    return if !@tone
    @bitmap.fill_rect(0, 0, @bitmap.width, @bitmap.height, Color.black)
    return if @effects.length == 0

    # Multi-layer glow effect
    cmult = (1.0 / @fadefactor) ** (@numfades - 1)

    bmp_w = @bitmap.width
    bmp_h = @bitmap.height
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round - PADDING
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round - PADDING

    # Precompute per-effect values ONCE — screen position, off-screen cull, LOD,
    # brightness and pulse are all layer-independent, but the old code recomputed
    # effective_intensity / pulse_value / lod_layers for every one of the
    # @numfades glow layers (3× the work per light per frame).
    draw_list = []
    @effects.each do |key, effect|
      next if !should_update?(effect)
      center_x = effect.x - scroll_x
      center_y = effect.y - scroll_y
      max_extent = [effect.radius, effect.width_px, effect.height_px].max + 64
      next if center_x + max_extent < 0 || center_x - max_extent > bmp_w
      next if center_y + max_extent < 0 || center_y - max_extent > bmp_h
      draw_list << [key, effect, center_x, center_y,
                    lod_layers(center_x + PADDING, center_y + PADDING),
                    effective_intensity(effect), pulse_value(effect)]
    end
    return if draw_list.empty?

    # Draw multiple layers with decreasing opacity (LOD-aware)
    for j in 1..@numfades
      # Darkness: j=1→170 (Outer), j=3→0 (Center/Hole)
      base_opacity = 255.0 * (@numfades - j) / @numfades

      draw_list.each do |key, effect, center_x, center_y, lod, eff_intensity, eff_anim|
        # LOD: skip extra layers for distant lights
        next if j > lod
        case effect.type
        when :circle
          radius = (effect.radius + [effect.radius, 160].min * (cmult - 1)).to_i
          radius += ([radius, 160].min * eff_anim).to_i if radius_animation_enabled?(effect)
          radius = (radius * effect.fade_opacity).to_i if effect.fade_opacity < 1.0
          if effect.flicker
            fi = effect.flicker.is_a?(Numeric) ? effect.flicker : 0.15
            radius = (radius * flicker_scale(effect)).to_i
          end
          draw_circle(center_x, center_y, radius, darkness_opacity(base_opacity, eff_intensity))
        when :cone
          radius = (effect.radius + [effect.radius, 160].min * (cmult - 1)).to_i
          radius += ([radius, 160].min * eff_anim).to_i if radius_animation_enabled?(effect)
          radius = (radius * effect.fade_opacity).to_i if effect.fade_opacity < 1.0
          if effect.flicker
            fi = effect.flicker.is_a?(Numeric) ? effect.flicker : 0.15
            radius = (radius * flicker_scale(effect)).to_i
          end
          draw_cone(center_x, center_y, radius, effect.cone_angle, effect.cone_spread,
                    darkness_opacity(base_opacity, eff_intensity))
        when :rect
          expansion_multiplier = 2.0
          base_width  = (effect.width_px + [effect.width_px, 160].min * (cmult - 1) * expansion_multiplier).to_i
          base_height = (effect.height_px + [effect.height_px, 160].min * (cmult - 1) * expansion_multiplier).to_i
          if radius_animation_enabled?(effect)
            anim_expansion = ([base_width, 160].min * eff_anim).to_i
            width  = base_width + anim_expansion
            height = base_height + anim_expansion
          else
            width  = base_width
            height = base_height
          end
          if effect.fade_opacity < 1.0
            width = (width * effect.fade_opacity).to_i
            height = (height * effect.fade_opacity).to_i
          end
          if effect.flicker
            fi = effect.flicker.is_a?(Numeric) ? effect.flicker : 0.15
            jitter = flicker_scale(effect)
            width = (width * jitter).to_i
            height = (height * jitter).to_i
          end
          # Center the rectangle symmetrically
          draw_x = center_x - (width / 2) - 16
          draw_y = center_y - (height / 2) - 16
          draw_rect(draw_x, draw_y, width, height, darkness_opacity(base_opacity, eff_intensity))
        when :bitmap
          next if j > 1
          center_x = center_x - 16
          center_y = center_y - 16
          bitmap_anim = radius_animation_enabled?(effect) ? eff_anim : 0
          bitmap_anim *= effect.fade_opacity if effect.fade_opacity < 1.0
          draw_bitmap(center_x, center_y, @effects_bitmaps[key], bitmap_anim)
        end
      end
      cmult = cmult * @fadefactor
    end

    # Priority occlusion: re-darken cells covered by trees/roofs above each light,
    # so the carved light holes don't shine through overhead tiles.
    apply_priority_occlusion(draw_list, scroll_x, scroll_y)
  end

  def refresh_sprite
    @sprite_add.bitmap = @bitmap
    @sprite_sub.bitmap = @bitmap
    # Darkness intensity multiplier (accessibility / QoL): scales how dark the
    # unlit areas get without touching the light glows. 1.0 = unchanged,
    # 0.0 = no darkening at all (lit + unlit equally bright).
    dk = (defined?(LightingConfig) ? LightingConfig.darkness : 1.0).to_f.clamp(0.0, 1.0)
    # Forge's per-map ambient slider scales only this map; it never mutates the
    # player's global accessibility setting.
    dk *= SCEditorLights.ambient(@map.map_id) if defined?(SCEditorLights)
    if @tone
      add_red   = [@tone.red, 0].max
      add_green = [@tone.green, 0].max
      add_blue  = [@tone.blue, 0].max
      @sprite_add.tone = Tone.new(add_red, add_green, add_blue)
      @sprite_add.opacity = (@tone.gray * dk).to_i
      sub_red   = [@tone.red, 0].min * -1
      sub_green = [@tone.green, 0].min * -1
      sub_blue  = [@tone.blue, 0].min * -1
      @sprite_sub.tone = Tone.new(sub_red, sub_green, sub_blue)
      @sprite_sub.opacity = (255 * dk).to_i
    else
      @sprite_add.tone = Tone.new(0, 0, 0, 0)
      @sprite_sub.tone = Tone.new(0, 0, 0, 0)
      @sprite_add.opacity = 0
      @sprite_sub.opacity = 0
    end
  end

  def refresh_overlay; end
  def refresh_pattern; end

  def update_fades
    return if !@effects
    @effects.each_value { |effect| effect.update_fade }
  end

  def update_light_sprites
    # Remove sprites for deleted effects or effects that lost color
    ids_to_remove = @light_sprites.each_key.select do |id|
      !@effects[id] || !should_update?(@effects[id])
    end
    ids_to_remove.each do |id|
      @light_sprites[id].dispose
      @light_sprites.delete(id)
    end

    # Global animation calculation (same as refresh_bitmap)
    clock = defined?(LightingConfig) ? LightingConfig.animation_time :
            (Graphics.frame_count / [Graphics.frame_rate.to_f, 1.0].max)
    anim = saw_wave(clock, 2.0) * @anim_mult *
           (defined?(LightingConfig) ? LightingConfig.pulse_strength.to_f : 1.0)
    # Scale factor: 1.0 + amount of expansion (e.g., 0.1 for 10% breathing)
    scale = 1.0 + (anim * 2.0)

    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    ct = color_temperature_tone   # global (time-only) value — compute once, not per light
    gw = Graphics.width
    gh = Graphics.height

    @light_sprites.each do |id, sprite|
       next if !@effects[id]
       effect = @effects[id]

       # Sync position (cheap; keep it always so the sprite is correctly placed
       # the moment it scrolls back on-screen).
       sx = effect.x - scroll_x
       sy = effect.y - scroll_y
       sprite.x = sx
       sprite.y = sy

       # Off-screen cull: skip the expensive zoom/opacity/tone recompute for lights
       # far outside the view (the darkness mask already culls them). Position and
       # the occlusion z below still update every frame, so nothing pops.
       # Use the largest of radius / rect footprint so wide rect glows aren't cut.
       ext = [effect.radius * 2, effect.width_px, effect.height_px].max + 96
       if !(sx + ext < 0 || sx - ext > gw || sy + ext < 0 || sy - ext > gh)
         # Apply Animation with flicker
         eff_scale = scale
         eff_scale *= flicker_scale(effect) if effect.flicker
         if radius_animation_enabled?(effect) || effect.flicker
           sprite.zoom_x = eff_scale
           sprite.zoom_y = eff_scale
         else
           sprite.zoom_x = 1.0
           sprite.zoom_y = 1.0
         end

         # Apply fade opacity, brightness and power-grid flicker. Brightness now
         # mirrors the darkness mask (intensity dimmed by weather/proximity/dawn-
         # dusk) so the colored glow dims in step with the carved hole.
         intensity_mult = (effect.power_grid && @_power_grid_flicker) ? 0.1 : 1.0
         sprite.opacity = additive_glow_opacity(effect, intensity_mult)
         # Keep directional cones aimed correctly (cone_angle can change for
         # event-attached cones); matches the beam orientation offset.
         sprite.angle = effect.cone_angle - 90 if effect.type == :cone

         # Apply color (color cycling, conditional color, underwater shift, color temperature, seasonal)
         color = conditional_color(effect)
         color = seasonal_color_shift(color, effect)
         color = underwater_color_shift(color)
         sprite.tone = Tone.new(
           color.red - 255 + ct.red,
           color.green - 255 + ct.green,
           color.blue - 255 + ct.blue
         )
       end
       # Light layer Z-priority / priority occlusion — cheap, keep every frame.
       apply_light_layer(sprite, effect)
    end

    # Create new sprites only for visible effects
    @effects.each do |id, effect|
      create_light_sprite(effect) if !@light_sprites[id] && should_update?(effect)
    end
  end

  def create_light_sprite(effect)
    return if @light_sprites[effect.id] && !@light_sprites[effect.id].disposed?
    # Bitmap-shaped lights are drawn straight into the darkness mask and have no
    # meaningful circular glow — skip the additive sprite for them.
    return if effect.type == :bitmap

    sprite = Sprite.new(@viewport)
    sprite.blend_type = 1
    sprite.z = 200

    radius = effect.radius
    # Apply radius multipliers (snow glow, cave breathing, deep sea falloff)
    radius = (radius * snow_radius_mult * cave_breathing_mult * deep_sea_radius_mult).round
    real_radius = (radius * 1.5).ceil

    if effect.type == :cone
      # Directional wedge baked pointing down; rotated each frame to cone_angle.
      bitmap = cache_bitmap([:cone, real_radius, effect.cone_spread]) do
        generate_cone_gradient(real_radius, effect.cone_spread)
      end
      sprite.bitmap = bitmap
      sprite.ox = real_radius   # apex at top-centre of the baked wedge
      sprite.oy = 0
      sprite.angle = effect.cone_angle - 90
    elsif effect.type == :rect
      # Rectangular glow to match the rect dark-hole (the old code gave rect
      # lights a CIRCULAR glow sized by radius, so a 2x1 window glowed as a big
      # round blob). Sized to the rect's tile footprint, soft box falloff.
      gw = (effect.width_px  * 1.5).ceil.clamp(8, 512)
      gh = (effect.height_px * 1.5).ceil.clamp(8, 512)
      bitmap = cache_bitmap([:rect, gw, gh]) { generate_rect_gradient(gw, gh) }
      sprite.bitmap = bitmap
      sprite.ox = gw / 2
      sprite.oy = gh / 2
    else
      is_follower = (effect.id == :follower_light)
      bitmap = cached_gradient([real_radius, is_follower], real_radius, is_follower)
      sprite.bitmap = bitmap
      sprite.ox = real_radius
      sprite.oy = real_radius
    end

    # Apply color via tone (conditional color + seasonal + underwater shift)
    color = conditional_color(effect)
    color = seasonal_color_shift(color, effect)
    color = underwater_color_shift(color)
    sprite.tone = Tone.new(color.red - 255, color.green - 255, color.blue - 255)
    # Brightness: intensity dimmed by weather/proximity/dawn-dusk, plus grid flicker
    intensity_mult = (effect.power_grid && @_power_grid_flicker) ? 0.1 : 1.0
    sprite.opacity = additive_glow_opacity(effect, intensity_mult)
    # Per-light blend mode override
    apply_blend_mode(sprite, effect)
    # Per-light layer Z-priority
    apply_light_layer(sprite, effect)

    @light_sprites[effect.id] = sprite
  end

  # LRU cache lookup for gradient bitmaps. Caps cache to GRADIENT_CACHE_MAX
  # entries to prevent unbounded memory growth on maps with many radii.
  GRADIENT_CACHE_MAX = 64

  # Generic LRU cache for generated light bitmaps. On a miss it yields to build
  # the bitmap. Used for both circular gradients and cone wedges.
  def cache_bitmap(cache_key)
    @gradient_cache_lru ||= []
    bitmap = @gradient_cache[cache_key]
    if bitmap && !bitmap.disposed?
      @gradient_cache_lru.delete(cache_key)
      @gradient_cache_lru.push(cache_key)
      return bitmap
    end
    bitmap = yield
    @gradient_cache[cache_key] = bitmap
    @gradient_cache_lru.push(cache_key)
    while @gradient_cache_lru.length > GRADIENT_CACHE_MAX
      old_key = @gradient_cache_lru.shift
      old_bmp = @gradient_cache.delete(old_key)
      old_bmp.dispose if old_bmp && !old_bmp.disposed?
    end
    bitmap
  end

  def cached_gradient(cache_key, real_radius, is_follower)
    cache_bitmap(cache_key) { generate_gradient(real_radius, is_follower) }
  end

  def generate_gradient(real_radius, is_follower = false)
    diameter = real_radius * 2
    bitmap = Bitmap.new(diameter, diameter)
    cx = real_radius
    cy = real_radius
    inv_radius = 1.0 / real_radius
    for row in 0...diameter
      dy = row - cy
      dy2 = dy * dy
      max_dx2 = real_radius * real_radius - dy2
      next if max_dx2 < 0
      max_dx = Math.sqrt(max_dx2).to_i
      for col in (cx - max_dx)..(cx + max_dx)
        dx = col - cx
        dist = Math.sqrt(dx * dx + dy2)
        outer_fade = ((1.0 - dist * inv_radius) ** 0.5)
        if is_follower
          inner_fade = [dist / 16.0, 1.0].min
          alpha = 255.0 * inner_fade * outer_fade
        else
          alpha = 255.0 * outer_fade
        end
        bitmap.fill_rect(col, row, 1, 1, Color.new(255, 255, 255, alpha))
      end
    end
    return bitmap
  end

  # Bake a soft-edged RECTANGULAR glow (white, fading to clear toward the edges
  # via a box/Chebyshev falloff) so rect lights glow as a rounded rectangle
  # instead of a circle. Cached per (w, h) through cache_bitmap.
  def generate_rect_gradient(w, h)
    w = [w, 1].max
    h = [h, 1].max
    bitmap = Bitmap.new(w, h)
    cx = w / 2.0
    cy = h / 2.0
    inv_cx = 1.0 / cx
    inv_cy = 1.0 / cy
    for row in 0...h
      dy = (row - cy).abs * inv_cy
      for col in 0...w
        dx = (col - cx).abs * inv_cx
        d = dx > dy ? dx : dy        # box distance → rectangular falloff
        next if d >= 1.0
        a = (255.0 * ((1.0 - d) ** 0.6)).to_i
        next if a <= 0
        bitmap.fill_rect(col, row, 1, 1, Color.new(255, 255, 255, a))
      end
    end
    return bitmap
  end

  # Force the glow sprite for a light to be rebuilt next frame (its bitmap is
  # baked at a fixed radius/size, so a runtime radius change needs a fresh one).
  def rebuild_light_sprite(id)
    spr = @light_sprites[id]
    return if !spr
    spr.dispose unless spr.disposed?
    @light_sprites.delete(id)
  end

  # Bake a cone/wedge glow pointing straight DOWN (apex at top-centre), to match
  # the beam-sprite orientation. The sprite is rotated by (cone_angle - 90) to
  # face its actual direction. Soft radial + angular falloff.
  def generate_cone_gradient(real_radius, spread)
    half = (spread.to_f.clamp(1.0, 180.0)) * Math::PI / 360.0
    w = real_radius * 2
    h = real_radius
    bitmap = Bitmap.new([w, 1].max, [h, 1].max)
    inv_radius = 1.0 / real_radius
    apex_x = real_radius
    for row in 0...h
      dy = row  # downward distance from apex
      for col in 0...w
        dx = col - apex_x
        next if dx == 0 && dy == 0
        dist = Math.sqrt(dx * dx + dy * dy)
        next if dist > real_radius
        ang = Math.atan2(dx, dy)  # 0 = straight down
        next if ang.abs > half
        outer_fade = (1.0 - dist * inv_radius) ** 0.5
        angular_fade = Math.cos((ang / half) * (Math::PI / 2.0))
        alpha = 255.0 * outer_fade * angular_fade
        next if alpha <= 0
        bitmap.fill_rect(col, row, 1, 1, Color.new(255, 255, 255, alpha))
      end
    end
    return bitmap
  end

  def update
    # Debug: Print Map ID change
    if $game_map && $game_map.map_id != @last_map_id
      echoln("Lighting: Map Transition Detected! (Old: #{@last_map_id} -> New: #{$game_map.map_id})") if $DEBUG
       old_tone = @tone ? @tone.dup : nil
       @last_map_id = $game_map.map_id
       refresh_all(true)
       # Initiate smooth tone crossfade from old map → new map
       start_tone_transition(old_tone, @tone)
    end
    
    return if !@map_settings
    refresh_all
  end

  def refresh_all(force_new_setup = false)
    LightingConfig.sync_from_system if defined?(LightingConfig)
    if defined?(LightingConfig)
      @numfades = LightingConfig.glow_layers.to_i.clamp(1, 4)
      @resolution = LightingConfig.resolution.to_i.clamp(1, 8)
    end
    if force_new_setup
      setup_map
      setup_effects
      setup_overlay
    end
    # Master switch (accessibility / low-end): hide everything and skip all the
    # per-frame work. setup above still runs so a map change while disabled is
    # handled correctly once re-enabled.
    if defined?(LightingConfig) && LightingConfig.enabled == false
      unless @_disabled_hidden
        hide_all
        @_disabled_hidden = true
      end
      return
    elsif @_disabled_hidden
      show_all
      @_disabled_hidden = false
    end
    # Cache per-frame state for should_update? and the time-based helpers
    # (one Time fetch instead of dozens of pbGetTimeNow calls per frame).
    @_cached_night = night?
    @_cached_outside = outside?
    @_cached_weather = $game_screen ? $game_screen.weather_type : :None
    now = (pbGetTimeNow rescue nil)
    if now
      @_cached_hour = now.hour
      @_cached_min = now.min
      @_cached_month = now.mon
    end
    # Decorative, screen-wide environmental effects can be switched off globally
    # (LightingConfig.ambient_fx) or per map (metadata flag "NoLightFX"). Core
    # lighting, per-light opt-in effects and gameplay overlays stay on.
    fx = ambient_fx_enabled?
    update_ambient_fx_visibility(fx)
    update_weather_flash
    update_fades
    update_lifespans
    update_paths
    refresh_tone
    refresh_attached
    update_event_light_pages
    update_light_sprites
    update_water_reflections
    update_ember_particles
    update_fireflies if fx
    update_moonlight if fx
    update_caustics if fx
    update_flash_sprite
    update_vignette
    update_beam_sprites
    update_stars if fx
    update_event_triggers
    update_smoke_particles
    update_aurora if fx
    update_window_spill
    update_item_glows
    update_light_sounds
    update_keyframes
    update_tone_transition
    # Batch 7-10 features
    update_puddle_reflections if fx
    update_pollen_drift if fx
    update_firefly_lanterns if fx
    update_drip_ripples if fx
    update_ore_glow if fx
    update_echo_glow if fx
    update_jellyfish if fx
    update_dive_vignette if fx
    update_heat_haze if fx
    update_lens_flares if fx
    update_canopy_dapple if fx
    update_flame_sprites
    update_color_bleed
    update_horizon_glow if fx
    update_power_grid
    update_crystal_refraction
    update_warm_zones
    update_perf_auto_scaler
    # Batch 11 features
    update_fog_scatter
    update_rain_streaks
    update_lava_pulse if fx
    update_frost_rings
    update_spotlight_follow
    update_chain_propagation
    update_light_counter
    refresh_bitmap
    refresh_sprite
    refresh_overlay
    refresh_pattern
    update_debug_preview
    update_profiler
  end

  # ============================================================================
  # DRAWING: Circle with mathematical calculation
  # ============================================================================
  def draw_circle(cx, cy, radius, opacity, target_bitmap = @bitmap, color = nil)
    for i in -radius..radius
      y = i + cy
      next if y < 0
      next if y >= target_bitmap.height
      next if (y % @resolution) != 0
      diff2 = (radius * radius) - (i * i)
      diff = Math.sqrt(diff2)
      
      if color
        # Draw colored glow
        draw_col = Color.new(color.red, color.green, color.blue, opacity)
        target_bitmap.fill_rect(cx - diff, y, diff * 2, @resolution, draw_col)
      else
        # Draw darkness mask
        col = Color.black
        col.alpha = opacity
        target_bitmap.fill_rect(cx - diff, y, diff * 2, @resolution, col)
      end
    end
  end

  # ============================================================================
  # DRAWING: Cone / circular sector (directional light). Centred on (cx,cy),
  # facing angle_deg (screen degrees: 0=right, 90=down) with total opening
  # spread_deg. Same darkness-mask / colored-glow contract as draw_circle.
  # Each scanline of a convex sector (spread < 360) is a single contiguous run,
  # so we batch fills per row instead of per pixel.
  # ============================================================================
  def draw_cone(cx, cy, radius, angle_deg, spread_deg, opacity, target_bitmap = @bitmap, color = nil)
    return if radius <= 0
    half = (spread_deg.to_f.clamp(1.0, 359.0)) * Math::PI / 360.0  # half-spread (rad)
    a0 = angle_deg.to_f * Math::PI / 180.0
    fill_col = color ? Color.new(color.red, color.green, color.blue, opacity) : Color.new(0, 0, 0, opacity)
    for i in -radius..radius
      y = i + cy
      next if y < 0 || y >= target_bitmap.height
      next if (y % @resolution) != 0
      diff2 = (radius * radius) - (i * i)
      next if diff2 < 0
      diff = Math.sqrt(diff2).to_i
      run_start = nil
      x = cx - diff
      x_end = cx + diff
      while x <= x_end
        # Angular distance from this pixel to the cone's facing direction.
        d = Math.atan2(i, x - cx) - a0
        d -= 2 * Math::PI while d > Math::PI
        d += 2 * Math::PI while d < -Math::PI
        if d.abs <= half
          run_start = x if run_start.nil?
        elsif run_start
          target_bitmap.fill_rect(run_start, y, x - run_start, @resolution, fill_col)
          run_start = nil
        end
        x += 1
      end
      target_bitmap.fill_rect(run_start, y, x_end - run_start + 1, @resolution, fill_col) if run_start
    end
  end

  # ============================================================================
  # DRAWING: Rectangle with simple fill (no rounded corners)
  # ============================================================================
  def draw_rect(x, y, width, height, opacity, target_bitmap = @bitmap, color = nil, radius = 0)
    if color
       draw_col = Color.new(color.red, color.green, color.blue, opacity)
       target_bitmap.fill_rect(x, y, width, height, draw_col)
    else
      col = Color.black
      col.alpha = opacity
      # Simple filled rectangle - sharp corners create square light effect
      target_bitmap.fill_rect(x, y, width, height, col)
    end
  end

  # ============================================================================
  # DRAWING: Bitmap-based light with stretch animation
  # ============================================================================
  def draw_bitmap(x, y, bitmap, stretch = 1)
    return unless bitmap
    width = [bitmap.width, 96].min
    height = [bitmap.height, 96].min
    stretch_x = (width * stretch).abs
    stretch_y = (height * stretch).abs
    @bitmap.fill_rect(x - stretch_x, y - stretch_y, bitmap.width + stretch_x, bitmap.height + stretch_y, Color.new(0, 0, 0, 0))
    @bitmap.stretch_blt(Rect.new(x - stretch_x, y - stretch_y, bitmap.width + stretch_x, bitmap.height + stretch_y), 
      bitmap, Rect.new(0, 0, bitmap.width, bitmap.height))
  end

  def show_all
    @sprite_add.visible = true
    @sprite_sub.visible = true
    @light_sprites.each_value { |s| s.visible = true }
    @reflect_sprites.each_value { |s| s.visible = true } if @reflect_sprites
    @beam_sprites.each_value { |s| s.visible = true } if @beam_sprites
    @overlay.visible = true
    @flash_sprite.visible = true if @flash_sprite
    @moonlight_sprite.visible = true if @moonlight_sprite
    @vignette_sprite.visible = true if @vignette_sprite && !@vignette_sprite.disposed?
    @star_sprites.each { |s| s.visible = true }
    @aurora_sprite.visible = true if @aurora_sprite && !@aurora_sprite.disposed?
    @smoke_particles.each { |p| p[:sprite].visible = true }
    @window_spill_sprites.each_value { |s| s.visible = true }
    @item_glow_sprites.each_value { |s| s.visible = true }
    @puddle_sprites.each { |p| p[:sprite].visible = true }
    @pollen_particles.each { |p| p[:sprite].visible = true }
    @cloud_shadow_sprite.visible = true if @cloud_shadow_sprite && !@cloud_shadow_sprite.disposed?
    @sunset_silhouettes.each_value { |s| s.visible = true }
    @drip_ripples.each { |d| d[:sprite].visible = true }
    @ore_glow_sprites.each_value { |s| s.visible = true if !s.disposed? }
    @stalactite_shadow_sprite.visible = true if @stalactite_shadow_sprite && !@stalactite_shadow_sprite.disposed?
    @echo_glow_sprites.each { |e| e[:sprite].visible = true }
    @jellyfish_sprites.each { |j| j[:sprite].visible = true }
    @flame_overlay_sprites.each_value { |s| s.visible = true }
    @color_bleed_sprites.each_value { |arr| arr.each { |s| s.visible = true } }
    @horizon_glow_sprite.visible = true if @horizon_glow_sprite && !@horizon_glow_sprite.disposed?
    @crystal_refract_sprites.each_value { |arr| arr.each { |s| s.visible = true } }
    @canopy_dapple_sprite.visible = true if @canopy_dapple_sprite && !@canopy_dapple_sprite.disposed?
    @heat_haze_sprite.visible = true if @heat_haze_sprite && !@heat_haze_sprite.disposed?
    @lens_flare_sprites.each_value { |s| s.visible = true }
    @flicker_shadow_sprites.each_value { |arr| arr.each { |s| s.visible = true } }
    @fog_scatter_sprites.each_value { |s| s.visible = true if !s.disposed? }
    @rain_streak_sprites.each { |d| d[:sprite].visible = true }
    @lava_pulse_sprites.each { |d| d[:sprite].visible = true }
    @frost_ring_sprites.each_value { |s| s.visible = true if !s.disposed? }
    @shadow_sprites.each_value { |arr| arr.each { |h| h[:sprite].visible = true unless h[:sprite].disposed? } }
    @tile_shadow_sprites.each_value { |s| s.visible = true if !s.disposed? } if @tile_shadow_sprites
    @light_counter_sprite.visible = true if @light_counter_sprite && !@light_counter_sprite.disposed?
  end

  def hide_all
    @sprite_add.visible = false
    @sprite_sub.visible = false
    @light_sprites.each_value { |s| s.visible = false }
    @reflect_sprites.each_value { |s| s.visible = false } if @reflect_sprites
    @beam_sprites.each_value { |s| s.visible = false } if @beam_sprites
    @overlay.visible = false
    @flash_sprite.visible = false if @flash_sprite
    @moonlight_sprite.visible = false if @moonlight_sprite
    @vignette_sprite.visible = false if @vignette_sprite && !@vignette_sprite.disposed?
    @star_sprites.each { |s| s.visible = false }
    @aurora_sprite.visible = false if @aurora_sprite && !@aurora_sprite.disposed?
    @smoke_particles.each { |p| p[:sprite].visible = false }
    @window_spill_sprites.each_value { |s| s.visible = false }
    @item_glow_sprites.each_value { |s| s.visible = false }
    @puddle_sprites.each { |p| p[:sprite].visible = false }
    @pollen_particles.each { |p| p[:sprite].visible = false }
    @cloud_shadow_sprite.visible = false if @cloud_shadow_sprite && !@cloud_shadow_sprite.disposed?
    @sunset_silhouettes.each_value { |s| s.visible = false }
    @drip_ripples.each { |d| d[:sprite].visible = false }
    @ore_glow_sprites.each_value { |s| s.visible = false if !s.disposed? }
    @stalactite_shadow_sprite.visible = false if @stalactite_shadow_sprite && !@stalactite_shadow_sprite.disposed?
    @echo_glow_sprites.each { |e| e[:sprite].visible = false }
    @jellyfish_sprites.each { |j| j[:sprite].visible = false }
    @flame_overlay_sprites.each_value { |s| s.visible = false }
    @color_bleed_sprites.each_value { |arr| arr.each { |s| s.visible = false } }
    @horizon_glow_sprite.visible = false if @horizon_glow_sprite && !@horizon_glow_sprite.disposed?
    @crystal_refract_sprites.each_value { |arr| arr.each { |s| s.visible = false } }
    @canopy_dapple_sprite.visible = false if @canopy_dapple_sprite && !@canopy_dapple_sprite.disposed?
    @heat_haze_sprite.visible = false if @heat_haze_sprite && !@heat_haze_sprite.disposed?
    @lens_flare_sprites.each_value { |s| s.visible = false }
    @flicker_shadow_sprites.each_value { |arr| arr.each { |s| s.visible = false } }
    @fog_scatter_sprites.each_value { |s| s.visible = false if !s.disposed? }
    @rain_streak_sprites.each { |d| d[:sprite].visible = false }
    @lava_pulse_sprites.each { |d| d[:sprite].visible = false }
    @frost_ring_sprites.each_value { |s| s.visible = false if !s.disposed? }
    @shadow_sprites.each_value { |arr| arr.each { |h| h[:sprite].visible = false unless h[:sprite].disposed? } }
    @tile_shadow_sprites.each_value { |s| s.visible = false if !s.disposed? } if @tile_shadow_sprites
    @light_counter_sprite.visible = false if @light_counter_sprite && !@light_counter_sprite.disposed?
  end

  def outside?
    return GameData::MapMetadata.exists?(@map.map_id) && GameData::MapMetadata.get(@map.map_id).outdoor_map
  end

  def night?
    return PBDayNight.isNight?
  end

  def canopy?
    return @map.metadata&.has_flag?("Forest")
  end

  # Whether decorative, screen-wide ambient effects (fireflies, stars, aurora,
  # weather scatter, ...) should run. Off globally via LightingConfig.ambient_fx
  # or per map via the "NoLightFX" metadata flag. Takes effect on map (re)load.
  def ambient_fx_enabled?
    return false if defined?(LightingConfig) && !LightingConfig.ambient_fx
    return false if @map && @map.metadata&.has_flag?("NoLightFX")
    return true
  end

  def should_update?(effect)
    return true if effect.id == :follower_light
    return true if effect.id == :player_flashlight
    return false if effect.hide
    return false if effect.switch && !$game_switches[effect.switch]
    if effect.active_weather && !effect.active_weather.empty?
      current_weather = @_cached_weather.to_s
      return false if !effect.active_weather.any? { |weather| weather.to_s == current_weather }
    end
    return false if effect.fade_opacity <= 0 && effect.fade_target <= 0
    # Hour-range scheduling: on_hour/off_hour (24h)
    if effect.on_hour && effect.off_hour
      hour = @_cached_hour
      if effect.on_hour < effect.off_hour
        # Same-day range (e.g. 8–18)
        return false if hour < effect.on_hour || hour > effect.off_hour
      else
        # Overnight range (e.g. 18–6)
        return false if hour > effect.off_hour && hour < effect.on_hour
      end
    end
    # Outdoor day/night visibility via the smooth dawn/dusk ramp (also drives
    # brightness in effective_intensity). dawn_dusk_mult returns 0 outside the
    # light's active window, 1 inside, and a fractional value during the
    # 05:00–06:00 / 19:00–20:00 cross-fades. Indoor maps are unaffected.
    return false if @_cached_outside && !effect.day.nil? && dawn_dusk_mult(effect) <= 0.0
    # Light Culling Distance — skip lights too far from the player
    if effect.cull_distance
      dx = (effect.map_x - $game_player.x).abs
      dy = (effect.map_y - $game_player.y).abs
      return false if dx > effect.cull_distance || dy > effect.cull_distance
    end
    return true
  end

  def flick(key)
    @effects[key].flick if @effects[key]
  end

  def hide(key)
    @effects[key].hide = true if @effects[key]
  end

  def show(key)
    @effects[key].hide = false if @effects[key]
  end

  def fade_in(key, speed = nil)
    return if !@effects[key]
    @effects[key].fade_target = 1.0
    @effects[key].fade_speed = speed if speed
  end

  def fade_out(key, speed = nil)
    return if !@effects[key]
    @effects[key].fade_target = 0.0
    @effects[key].fade_speed = speed if speed
  end

  def get(key)
    return @effects[key] if @effects[key]
  end

  def attach(key, event)
    return if !@effects[key]
    event = event.id if !event.is_a?(Integer)
    @effects[key].event = event
  end

  def detach(key)
    @effects[key].event = nil if @effects[key]
  end

  def dispose
    # Map recreation paths can converge here (Scene_Map and Spriteset_Global).
    # Disposing RGSS bitmaps twice raises, so make teardown safely idempotent.
    return if @disposed
    @disposed = true
    @bitmap.dispose if @bitmap && !@bitmap.disposed?
    @sprite_add.dispose if @sprite_add && !@sprite_add.disposed?
    @sprite_sub.dispose if @sprite_sub && !@sprite_sub.disposed?
    @light_sprites.each_value { |sprite| sprite.dispose if !sprite.disposed? }
    @light_sprites.clear
    @gradient_cache.each_value { |bmp| bmp.dispose if bmp && !bmp.disposed? }
    @gradient_cache.clear
    @gradient_cache_lru.clear if @gradient_cache_lru
    @reflect_sprites.each_value { |s| s.dispose } if @reflect_sprites
    @reflect_sprites.clear if @reflect_sprites
    @ember_particles.each { |p| p[:sprite].bitmap&.dispose; p[:sprite].dispose } if @ember_particles
    @ember_particles.clear if @ember_particles
    @firefly_particles.each { |f| f[:sprite].bitmap&.dispose; f[:sprite].dispose } if @firefly_particles
    @firefly_particles.clear if @firefly_particles
    @halo_sprites.each_value { |s| s.dispose } if @halo_sprites
    @halo_sprites.clear if @halo_sprites
    @beam_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @beam_sprites
    @beam_sprites.clear if @beam_sprites
    @star_sprites.each { |s| s.bitmap&.dispose; s.dispose } if @star_sprites
    @star_sprites.clear if @star_sprites
    @star_data.clear if @star_data
    @moonlight_sprite.dispose if @moonlight_sprite && !@moonlight_sprite.disposed?
    @caustic_sprite.bitmap&.dispose if @caustic_sprite && !@caustic_sprite.disposed?
    @caustic_sprite.dispose if @caustic_sprite && !@caustic_sprite.disposed?
    @flash_sprite.bitmap&.dispose if @flash_sprite && !@flash_sprite.disposed?
    @flash_sprite.dispose if @flash_sprite && !@flash_sprite.disposed?
    @vignette_sprite.bitmap&.dispose if @vignette_sprite && !@vignette_sprite.disposed?
    @vignette_sprite.dispose if @vignette_sprite && !@vignette_sprite.disposed?
    @profiler_sprite.bitmap&.dispose if @profiler_sprite && !@profiler_sprite.disposed?
    @profiler_sprite.dispose if @profiler_sprite && !@profiler_sprite.disposed?
    @smoke_particles.each { |p| p[:sprite].bitmap&.dispose; p[:sprite].dispose } if @smoke_particles
    @smoke_particles.clear if @smoke_particles
    @aurora_sprite.bitmap&.dispose if @aurora_sprite && !@aurora_sprite.disposed?
    @aurora_sprite.dispose if @aurora_sprite && !@aurora_sprite.disposed?
    @window_spill_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @window_spill_sprites
    @window_spill_sprites.clear if @window_spill_sprites
    @item_glow_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @item_glow_sprites
    @item_glow_sprites.clear if @item_glow_sprites
    # Batch 7-10 sprite disposal
    @puddle_sprites.each { |p| p[:sprite].bitmap&.dispose; p[:sprite].dispose } if @puddle_sprites
    @puddle_sprites.clear if @puddle_sprites
    @pollen_particles.each { |p| p[:sprite].bitmap&.dispose; p[:sprite].dispose } if @pollen_particles
    @pollen_particles.clear if @pollen_particles
    @cloud_shadow_sprite.bitmap&.dispose if @cloud_shadow_sprite && !@cloud_shadow_sprite.disposed?
    @cloud_shadow_sprite.dispose if @cloud_shadow_sprite && !@cloud_shadow_sprite.disposed?
    @sunset_silhouettes.each_value { |s| s.bitmap&.dispose; s.dispose } if @sunset_silhouettes
    @sunset_silhouettes.clear if @sunset_silhouettes
    @drip_ripples.each { |d| d[:sprite].bitmap&.dispose; d[:sprite].dispose } if @drip_ripples
    @drip_ripples.clear if @drip_ripples
    @ore_glow_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @ore_glow_sprites
    @ore_glow_sprites.clear if @ore_glow_sprites
    @stalactite_shadow_sprite.bitmap&.dispose if @stalactite_shadow_sprite && !@stalactite_shadow_sprite.disposed?
    @stalactite_shadow_sprite.dispose if @stalactite_shadow_sprite && !@stalactite_shadow_sprite.disposed?
    @echo_glow_sprites.each { |e| e[:sprite].bitmap&.dispose; e[:sprite].dispose } if @echo_glow_sprites
    @echo_glow_sprites.clear if @echo_glow_sprites
    @jellyfish_sprites.each { |j| j[:sprite].bitmap&.dispose; j[:sprite].dispose } if @jellyfish_sprites
    @jellyfish_sprites.clear if @jellyfish_sprites
    @flame_overlay_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @flame_overlay_sprites
    @flame_overlay_sprites.clear if @flame_overlay_sprites
    @color_bleed_sprites.each_value { |arr| arr.each { |s| s.bitmap&.dispose; s.dispose } } if @color_bleed_sprites
    @color_bleed_sprites.clear if @color_bleed_sprites
    @horizon_glow_sprite.bitmap&.dispose if @horizon_glow_sprite && !@horizon_glow_sprite.disposed?
    @horizon_glow_sprite.dispose if @horizon_glow_sprite && !@horizon_glow_sprite.disposed?
    @crystal_refract_sprites.each_value { |arr| arr.each { |s| s.bitmap&.dispose; s.dispose } } if @crystal_refract_sprites
    @crystal_refract_sprites.clear if @crystal_refract_sprites
    @canopy_dapple_sprite.bitmap&.dispose if @canopy_dapple_sprite && !@canopy_dapple_sprite.disposed?
    @canopy_dapple_sprite.dispose if @canopy_dapple_sprite && !@canopy_dapple_sprite.disposed?
    @heat_haze_sprite.bitmap&.dispose if @heat_haze_sprite && !@heat_haze_sprite.disposed?
    @heat_haze_sprite.dispose if @heat_haze_sprite && !@heat_haze_sprite.disposed?
    @lens_flare_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @lens_flare_sprites
    @lens_flare_sprites.clear if @lens_flare_sprites
    # Batch 11 disposal
    @flicker_shadow_sprites.each_value { |arr| arr.each { |s| s.bitmap&.dispose; s.dispose } } if @flicker_shadow_sprites
    @flicker_shadow_sprites.clear if @flicker_shadow_sprites
    @fog_scatter_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @fog_scatter_sprites
    @fog_scatter_sprites.clear if @fog_scatter_sprites
    @rain_streak_sprites.each { |d| d[:sprite].bitmap&.dispose; d[:sprite].dispose } if @rain_streak_sprites
    @rain_streak_sprites.clear if @rain_streak_sprites
    @lava_pulse_sprites.each { |d| d[:sprite].bitmap&.dispose; d[:sprite].dispose } if @lava_pulse_sprites
    @lava_pulse_sprites.clear if @lava_pulse_sprites
    @frost_ring_sprites.each_value { |s| s.bitmap&.dispose; s.dispose } if @frost_ring_sprites
    @frost_ring_sprites.clear if @frost_ring_sprites
    # Shadow sprites share one decal bitmap — dispose sprites (not their bitmap),
    # then dispose the shared decal exactly once.
    @shadow_sprites.each_value { |arr| arr.each { |h| h[:sprite].dispose unless h[:sprite].disposed? } } if @shadow_sprites
    @shadow_sprites.clear if @shadow_sprites
    @shadow_decal_bitmap.dispose if @shadow_decal_bitmap && !@shadow_decal_bitmap.disposed?
    @tile_shadow_sprites.each_value { |s| s.dispose if !s.disposed? } if @tile_shadow_sprites
    @tile_shadow_sprites.clear if @tile_shadow_sprites
    if @_tile_shadow_sil
      @_tile_shadow_sil.each_value { |b| b.dispose if b && b != @_tile_shadow_blob && !b.disposed? }
      @_tile_shadow_sil.clear
    end
    @_tile_shadow_blob.dispose if @_tile_shadow_blob && !@_tile_shadow_blob.disposed?
    @light_counter_sprite.bitmap&.dispose if @light_counter_sprite && !@light_counter_sprite.disposed?
    @light_counter_sprite.dispose if @light_counter_sprite && !@light_counter_sprite.disposed?
    dispose_debug_preview

    @overlay.bitmap.dispose if @overlay && @overlay.bitmap && !@overlay.bitmap.disposed?
    @overlay.dispose if @overlay && !@overlay.disposed?
    @effects_bitmaps.each_value { |bitmap| bitmap.dispose if bitmap && !bitmap.disposed? }
    @map_settings = nil
    @effects = nil
    @effects_bitmaps = nil
  end

  # ============================================================================
  # FEATURE: Map Editor Preview — show light positions/radii without darkness
  # ============================================================================
  def toggle_debug_preview
    @debug_preview = !@debug_preview
    if @debug_preview
      refresh_debug_preview
    else
      dispose_debug_preview
    end
    return @debug_preview
  end

  def refresh_debug_preview
    dispose_debug_preview
    return if !@debug_preview
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    @effects.each do |id, effect|
      next if effect.map_id && effect.map_id != @map.map_id
      spr = Sprite.new(@viewport)
      r = effect.radius
      diameter = r * 2
      bmp = Bitmap.new([diameter, 4].max, [diameter, 4].max)
      color = effect.current_color
      preview_color = Color.new(color.red, color.green, color.blue, 80)
      border_color = Color.new(color.red, color.green, color.blue, 180)
      if effect.type == :circle || effect.type == :cone
        # Draw filled circle outline
        for i in -r..r
          dy2 = i * i
          diff2 = r * r - dy2
          next if diff2 < 0
          diff = Math.sqrt(diff2).to_i
          cy = i + r
          bmp.fill_rect(r - diff, cy, diff * 2, 1, preview_color)
          # Ring border
          bmp.fill_rect(r - diff, cy, 2, 1, border_color) if diff > 0
          bmp.fill_rect(r + diff - 2, cy, 2, 1, border_color) if diff > 0
        end
        # Cross at center
        bmp.fill_rect(r - 4, r, 8, 1, border_color)
        bmp.fill_rect(r, r - 4, 1, 8, border_color)
      elsif effect.type == :rect
        w = effect.width_px
        h = effect.height_px
        bmp.dispose
        bmp = Bitmap.new([w, 4].max, [h, 4].max)
        bmp.fill_rect(0, 0, w, h, preview_color)
        bmp.fill_rect(0, 0, w, 2, border_color)
        bmp.fill_rect(0, h - 2, w, 2, border_color)
        bmp.fill_rect(0, 0, 2, h, border_color)
        bmp.fill_rect(w - 2, 0, 2, h, border_color)
      end
      spr.bitmap = bmp
      spr.ox = bmp.width / 2
      spr.oy = bmp.height / 2
      spr.x = effect.x - scroll_x
      spr.y = effect.y - scroll_y
      spr.z = 100001
      spr.blend_type = 0
      # Add a label
      label = Sprite.new(@viewport)
      label_bmp = Bitmap.new(160, 18)
      label_bmp.font.size = 14
      label_bmp.font.color = Color.new(255, 255, 255)
      text = "#{effect.id} (#{effect.type})"
      label_bmp.draw_text(0, 0, 160, 18, text, 0)
      label.bitmap = label_bmp
      label.x = effect.x - scroll_x - 40
      label.y = effect.y - scroll_y - r - 18
      label.z = 100002
      @debug_preview_sprites << spr
      @debug_preview_sprites << label
    end
  end

  def dispose_debug_preview
    return if !@debug_preview_sprites
    @debug_preview_sprites.each do |s|
      s.bitmap&.dispose
      s.dispose
    end
    @debug_preview_sprites.clear
  end

  def update_debug_preview
    return if !@debug_preview || @debug_preview_sprites.empty?
    scroll_x = (@map.display_x / Game_Map::X_SUBPIXELS).round
    scroll_y = (@map.display_y / Game_Map::Y_SUBPIXELS).round
    # Re-generate when scrolling changes (simple approach: just refresh)
    refresh_debug_preview if Graphics.frame_count % 15 == 0
  end

  def disposed?
    return @disposed
  end

  def loaded?
    return !@disposed
  end
end

# ===============================================================================
# Flashlight / Lantern System
# ===============================================================================

module Flashlight
  LIGHT_ID    = :player_flashlight
  RADIUS      = 80
  CONE_RADIUS = 132     # Cones reach a little further than the circle lantern
  CONE_SPREAD = 70      # Opening angle (degrees) of the cone flashlight
  OFFSET      = 48
  LERP_SPEED  = 0.25    # How fast the light sweeps to new direction (0..1)

  def self.active?
    # Persist in $PokemonGlobal so it survives save/load
    return $PokemonGlobal&.flashlight_active || false
  end

  # Whether the flashlight projects a directional cone instead of a circle.
  def self.cone?
    return $PokemonGlobal&.flashlight_cone || false
  end

  def self.cone=(value)
    $PokemonGlobal.flashlight_cone = !!value if $PokemonGlobal
  end

  def self.toggle_cone
    self.cone = !cone?
  end

  def self.toggle
    active? ? off : on
  end

  def self.on
    $PokemonGlobal.flashlight_active = true if $PokemonGlobal
    @lerp_x = nil
    @lerp_y = nil
  end

  def self.off
    $PokemonGlobal.flashlight_active = false if $PokemonGlobal
    @lerp_x = nil
    @lerp_y = nil
  end

  def self.update
    return if !$scene.is_a?(Scene_Map)
    lighting = $scene.spritesetGlobal&.lighting
    return if !lighting || lighting.disposed?

    if active?
      want_type = cone? ? :cone : :circle
      effect = lighting.get(LIGHT_ID)
      # (Re)create when missing or when the player toggled circle <-> cone.
      if !effect || effect.type != want_type
        GameData::LightEffect::DATA.delete(LIGHT_ID)
        hash = {
          :id        => LIGHT_ID,
          :map_x     => $game_player.x,
          :map_y     => $game_player.y,
          :map_id    => $game_map.map_id,
          :stop_anim => true,
          :color     => Color.new(255, 245, 220)
        }
        if want_type == :cone
          hash[:type]        = :cone
          hash[:radius]      = CONE_RADIUS
          hash[:cone_spread] = CONE_SPREAD
          hash[:cone_angle]  = 0
        else
          hash[:type]   = :circle
          hash[:radius] = RADIUS
        end
        GameData::LightEffect.add(hash)
        lighting.refresh_all(true)
        effect = lighting.get(LIGHT_ID)
      end
      return if !effect
      dir = $game_player.direction
      px = ($game_player.real_x / 4).round + Game_Map::TILE_WIDTH / 2
      py = ($game_player.real_y / 4).round + Game_Map::TILE_HEIGHT / 2
      sway = lighting.lantern_sway_offset
      if want_type == :cone
        # Apex sits on the player, beam points in the facing direction.
        effect.cone_angle = lighting.facing_to_screen_angle(dir)
        effect.x = px + sway[0]
        effect.y = py + sway[1]
      else
        target_x = px
        target_y = py
        case dir
        when 2 then target_y += OFFSET
        when 4 then target_x -= OFFSET
        when 6 then target_x += OFFSET
        when 8 then target_y -= OFFSET
        end
        # Smooth lerp toward target position
        @lerp_x = @lerp_x ? @lerp_x + (target_x - @lerp_x) * LERP_SPEED : target_x
        @lerp_y = @lerp_y ? @lerp_y + (target_y - @lerp_y) * LERP_SPEED : target_y
        effect.x = @lerp_x.round + sway[0]
        effect.y = @lerp_y.round + sway[1]
      end
    else
      if lighting.get(LIGHT_ID)
        GameData::LightEffect::DATA.delete(LIGHT_ID)
        lighting.refresh_all(true)
      end
    end
  end
end

EventHandlers.add(:on_frame_update, :flashlight_update,
  proc { Flashlight.update }
)

# ===============================================================================
# Follower Light — a soft warm glow that follows the lead follower Pokémon.
# Mirrors the Flashlight lifecycle; the light id :follower_light is already
# special-cased throughout the engine (always-on, soft inner-fade gradient,
# excluded from save).
# ===============================================================================
module FollowerLight
  LIGHT_ID = :follower_light
  RADIUS   = 56

  def self.active?
    return $PokemonGlobal&.follower_light_active || false
  end

  def self.toggle
    active? ? off : on
  end

  def self.on
    $PokemonGlobal.follower_light_active = true if $PokemonGlobal
  end

  def self.off
    $PokemonGlobal.follower_light_active = false if $PokemonGlobal
  end

  def self.update
    return if !$scene.is_a?(Scene_Map)
    lighting = $scene.spritesetGlobal&.lighting
    return if !lighting || lighting.disposed?

    follower = ($game_temp&.followers&.get_follower_by_index(0) rescue nil)
    visible  = follower && follower.character_name && !follower.character_name.empty?

    if active? && visible
      effect = lighting.get(LIGHT_ID)
      if !effect
        GameData::LightEffect::DATA.delete(LIGHT_ID)
        GameData::LightEffect.add({
          :id      => LIGHT_ID,
          :type    => :circle,
          :radius  => RADIUS,
          :map_x   => follower.x,
          :map_y   => follower.y,
          :map_id  => $game_map.map_id,
          :color   => Color.new(255, 215, 160),
          :pulse   => :candle,
          :flicker => 0.12
        })
        lighting.refresh_all(true)
        effect = lighting.get(LIGHT_ID)
      end
      return if !effect
      effect.x = (follower.real_x / 4).round + Game_Map::TILE_WIDTH / 2
      effect.y = (follower.real_y / 4).round + Game_Map::TILE_HEIGHT / 2
      effect.map_x = follower.x
      effect.map_y = follower.y
    else
      if lighting.get(LIGHT_ID)
        GameData::LightEffect::DATA.delete(LIGHT_ID)
        lighting.refresh_all(true)
      end
    end
  end
end

EventHandlers.add(:on_frame_update, :follower_light_update,
  proc { FollowerLight.update }
)
