# ===============================================================================
# Dynamic Lighting System for Pokémon Essentials v21.1
# ===============================================================================
# This plugin adds a dynamic lighting system with:
# - Circle and rectangular light sources
# - Bitmap-based custom light shapes
# - Pulsating animations
# - Day/Night conditional lighting
# - Event-attached lights (follow characters)
# - Multi-layer glow effects
# - Flickering, color cycling, fade in/out
# - Flashlight / lantern with smooth direction sweep
# - Light intensity control
# - Switch-triggered visibility
# ===============================================================================

# Extend PokemonGlobalMetadata so flashlight state survives save/load
class PokemonGlobalMetadata
  attr_accessor :flashlight_active
  attr_accessor :flashlight_cone      # Boolean: flashlight projects a directional cone
  attr_accessor :follower_light_active # Boolean: a soft light follows the lead follower
  attr_accessor :saved_lights       # Array of hashes for runtime-added lights
end

# ===============================================================================
# Global configuration toggles
# ===============================================================================
# Lets games disable the whole system or just the decorative ambient effects
# (fireflies, stars, aurora, weather scatter, ...) without touching the engine.
# Per-map opt-out is also available via the map metadata flag "NoLightFX".
# Changes to ambient_fx take effect on the next map (re)load.
module LightingConfig
  @enabled = true          # Master switch — false makes the whole darkness/light system invisible
  @darkness = 1.0          # Darkness intensity multiplier 0.0 (no darkening) .. 1.0 (full). Accessibility/QoL.
  @ambient_fx = true       # Decorative, screen-wide environmental effects
  @glow_layers = 3         # Darkness-mask glow layers per light (quality; 1-4)
  @resolution  = 2         # Darkness-mask scanline step in px (higher = faster/coarser)
  @particle_scale = 1.0    # Global multiplier for particle/effect caps (0.0-1.0)
  @priority_occlusion = true   # Lights are hidden by high-priority tiles (trees/roofs),
                               # using the engine's own tile z rule — no tile-ID lists.
  @animations = true       # Master switch for pulse/flicker/color-cycle motion
  @animation_speed = 1.0   # Real-time multiplier; independent of the game's FPS
  @pulse_strength = 1.0    # Global breathing/pulse amplitude

  # --- Auto tile shadows -----------------------------------------------------
  # Every priority OBJECT (trees, buildings, lamps …) casts a PROJECTED shadow:
  # its own silhouette, mirrored at the object's base, slanted sideways and
  # squashed — like Dynamic Overworld Shadows, but for tiles, driven entirely
  # by the tileset's priority data (no tile-ID lists). Live-tweakable.
  @tile_shadows             = false   # master switch (aus: projizierte Tile-Schatten kosten zu viel FPS / Lags bei Map-Wechsel)
  @tile_shadow_opacity      = 90      # base strength 0-255
  @tile_shadow_skew         = 0.0     # 0 = mirror straight below the object; >0 slants sideways (px per px height)
  @tile_shadow_squash       = 0.4     # vertical size of the mirrored shadow (1.0 = full mirror, smaller = shorter)
  @tile_shadow_dir          = 1       # 1 = slant east/right, -1 = west/left (only when skew > 0)
  @tile_shadow_min_priority = 1       # only tiles with priority >= this cast
  @tile_shadow_night_mult   = 0.4     # strength at night (moonlight)
  @tile_shadow_weather_mult = 0.35    # strength under overcast weather (rain/storm/fog/snow)
  @tile_shadow_sun_arc      = false   # optional: direction/length follow the time of day (needs skew > 0)
  @tile_shadow_indoor       = false   # also cast on non-outdoor maps

  class << self
    attr_accessor :enabled, :darkness,
                  :ambient_fx, :glow_layers, :resolution, :particle_scale, :priority_occlusion,
                  :animations, :animation_speed, :pulse_strength,
                  :tile_shadows, :tile_shadow_opacity, :tile_shadow_skew, :tile_shadow_squash,
                  :tile_shadow_dir, :tile_shadow_min_priority, :tile_shadow_night_mult,
                  :tile_shadow_weather_mult, :tile_shadow_sun_arc, :tile_shadow_indoor

    # One shared real-time clock keeps the darkness mask, colored glow sprites
    # and color cycling perfectly in phase, even at 40/60/144 FPS.
    def animation_time
      return 0.0 if !@animations
      now = (System.uptime rescue (Graphics.frame_count / [Graphics.frame_rate.to_f, 1.0].max))
      return now.to_f * @animation_speed.to_f
    end

    # Player-facing options are stored in PokemonSystem. Keeping this bridge in
    # LightingConfig preserves the existing scripting API and old save files.
    def sync_from_system
      return if !defined?($PokemonSystem) || !$PokemonSystem
      @enabled = ($PokemonSystem.sc_lighting_enabled == 0)
      @ambient_fx = ($PokemonSystem.sc_lighting_ambient == 0)
      case $PokemonSystem.sc_lighting_animation
      when 0
        @animations = false
        @animation_speed = 1.0
        @pulse_strength = 0.0
      when 1
        @animations = true
        @animation_speed = 0.75
        @pulse_strength = 0.65
      when 3
        @animations = true
        @animation_speed = 1.2
        @pulse_strength = 1.35
      else
        @animations = true
        @animation_speed = 1.0
        @pulse_strength = 1.0
      end
      quality = $PokemonSystem.sc_lighting_quality
      @glow_layers, @resolution, @particle_scale = case quality
                                                   when 0 then [4, 1, 1.0]
                                                   when 2 then [2, 4, 0.55]
                                                   else        [3, 2, 0.8]
                                                   end
      @darkness = [0.65, 0.85, 1.0][$PokemonSystem.sc_lighting_darkness] || 1.0
    end
  end
end

module GameData
  class LightEffect
    attr_reader :id
    attr_reader :type              # :circle, :rect, :bitmap
    attr_reader :tone              
    attr_accessor :map_x                 
    attr_accessor :map_y   
    attr_reader :map_id
    attr_accessor :radius
    attr_reader :color
    attr_reader :width
    attr_reader :height
    attr_reader :stop_anim
    attr_reader :hide
    attr_reader :day
    attr_reader :flicker
    attr_reader :color_cycle
    attr_reader :cycle_speed
    attr_reader :switch
    attr_reader :group
    attr_reader :on_hour
    attr_reader :off_hour
    attr_reader :pulse
    attr_reader :proximity
    attr_accessor :intensity
    attr_accessor :fade_speed
    attr_accessor :fade_opacity
    attr_accessor :fade_target
    attr_reader :cone_spread       # Degrees for cone light spread (default 60)
    attr_accessor :cone_angle      # Current cone direction in screen degrees (0=right, 90=down)
    attr_reader :lifespan          # Frames until auto-expire (nil = infinite)
    attr_accessor :created_at      # Graphics.frame_count at creation
    attr_reader :path              # Array of [x,y] tile waypoints for animated travel
    attr_reader :path_speed        # Tiles per second along path (default 1.0)
    attr_accessor :path_index      # Current waypoint index
    attr_accessor :path_t          # Interpolation progress [0.0, 1.0)
    attr_reader :heat_shimmer      # Boolean: enable heat shimmer wobble
    attr_reader :shadows           # Boolean: enable soft shadow casting
    attr_reader :sync_group        # Symbol: lights with same sync_group animate in unison
    attr_reader :water_reflect     # Boolean: render flipped reflection on water tiles below
    attr_reader :embers            # Boolean: spawn ember particles above this light
    attr_reader :beam              # Boolean: project visible light beam rays
    attr_reader :window            # Boolean: project angled window light spill on ground
    attr_reader :blend             # :additive, :subtractive, :multiply per-light blend mode
    attr_reader :keyframes         # Array of {t:, radius:, color:, intensity:} for animation
    attr_reader :sound             # SE filename to auto-play when player is nearby
    attr_reader :sound_range       # Tile distance for sound audibility (default 3)
    attr_reader :item_glow         # Boolean: faint hint glow for hidden items
    attr_reader :layer             # :ground, :mid, :overhead — Z-priority layer
    attr_reader :occlude           # false = light shines over priority tiles (default true)
    attr_reader :color_var         # Game variable ID: light color changes based on variable value
    attr_reader :power_grid        # Boolean: participates in flickering power grid
    attr_reader :crystal_refract   # Boolean: splits into rainbow sub-beams
    attr_reader :flame_sprite      # Boolean: show animated flame overlay
    attr_reader :color_bleed       # Boolean: tint adjacent tiles with light color
    attr_reader :on_activate       # Proc: called when light activates
    attr_reader :on_deactivate     # Proc: called when light deactivates
    attr_accessor :_was_active     # Internal: previous active state for trigger detection
    attr_reader :follow_target     # :player, :nearest_event, or event_id — spotlight follow target
    attr_reader :follow_range      # Max tile distance for follow tracking (default 6)
    attr_reader :cull_distance     # Max tile distance from player before skipping render (nil = no limit)
    attr_accessor :chain_to        # ID of another light to chain toggle/fade with
    attr_reader :seasonal          # Boolean: outdoor light color auto-shifts by season
    attr_accessor :runtime_added   # Internal: true if registered during an active game session
    attr_writer :x                 
    attr_writer :y
    attr_writer :event

    DATA = {}

    extend ClassMethodsSymbols
    include InstanceMethods

    def self.load; end
    def self.save; end

    @@next_auto_id = 0

    def self.add(hash)
      unless hash[:id]
        @@next_auto_id += 1
        hash[:id] = :"_auto_#{@@next_auto_id}_#{Time.now.to_i}"
      end
      hash[:map_id] = $game_map.map_id if !hash.key?(:map_id) && $game_map
      self.register(hash)
      # Tag lights created while a game is running so they can be purged on
      # load / new game — otherwise the session-global DATA leaks runtime lights
      # from a previous save into the next one (cross-save contamination).
      eff = DATA[hash[:id]]
      eff.runtime_added = true if eff && defined?($PokemonGlobal) && $PokemonGlobal
      return eff
    end

    def self.bulk_add_circle(map_id, coords, radius = 64, day = false)
      coords.each do |coord|
        @@next_auto_id += 1
        hash = {
          :id => :"_auto_#{@@next_auto_id}_#{Time.now.to_i}",
          :map_id => map_id, 
          :type => :circle,
          :radius => radius,
          :map_x => coord[0], 
          :map_y => coord[1],
          :day => day
        }
        self.register(hash)
        eff = DATA[hash[:id]]
        eff.runtime_added = true if eff && defined?($PokemonGlobal) && $PokemonGlobal
      end
    end

    def initialize(hash)
      @id           = hash[:id]         || nil
      @type         = hash[:type]
      @map_x        = hash[:map_x]
      @map_y        = hash[:map_y]
      @map_id       = hash[:map_id]
      @tone         = hash[:tone]       || nil
      @radius       = hash[:radius]     || 64
      @color        = hash[:color]      || Color.new(255, 255, 255)
      @width        = hash[:width]      || 2
      @height       = hash[:height]     || 2
      @bitmap_path  = hash[:bitmap]     || nil
      @stop_anim    = hash[:stop_anim]  || false
      @hide         = hash[:hide]       || false
      @day          = hash[:day]        || false
      @flicker      = hash[:flicker]    || false
      @color_cycle  = hash[:color_cycle]|| nil
      @cycle_speed  = hash[:cycle_speed]|| 2.0
      @switch       = hash[:switch]     || nil
      @group        = hash[:group]      || nil
      @on_hour      = hash[:on_hour]    || nil
      @off_hour     = hash[:off_hour]   || nil
      @pulse        = hash[:pulse]      || nil
      @proximity    = hash[:proximity]  || nil
      @intensity    = hash[:intensity]  || 1.0
      @fade_speed   = hash[:fade_speed] || 0.05
      @fade_opacity = 1.0
      @fade_target  = 1.0
      @cone_spread  = hash[:cone_spread]  || 60
      @cone_angle   = hash[:cone_angle]   || 0
      @lifespan     = hash[:lifespan]     || nil
      @created_at   = (defined?(Graphics) ? Graphics.frame_count : 0) rescue 0
      @path         = hash[:path]         || nil
      @path_speed   = hash[:path_speed]   || 1.0
      @path_index   = 0
      @path_t       = 0.0
      @heat_shimmer = hash[:heat_shimmer] || false
      @shadows      = hash[:shadows]      || false
      @sync_group   = hash[:sync_group]   || nil
      @water_reflect= hash[:water_reflect]|| false
      @embers       = hash[:embers]       || false
      @beam         = hash[:beam]         || false
      @window       = hash[:window]       || false
      @blend        = hash[:blend]        || nil
      @keyframes    = hash[:keyframes]    || nil
      @sound        = hash[:sound]        || nil
      @sound_range  = hash[:sound_range]  || 3
      @item_glow    = hash[:item_glow]    || false
      @layer        = hash[:layer]        || nil
      @color_var    = hash[:color_var]    || nil
      @power_grid   = hash[:power_grid]   || false
      @crystal_refract = hash[:crystal_refract] || false
      @flame_sprite = hash[:flame_sprite] || false
      @color_bleed  = hash[:color_bleed]  || false
      @on_activate  = hash[:on_activate]  || nil
      @on_deactivate= hash[:on_deactivate]|| nil
      @_was_active  = nil
      @follow_target= hash[:follow_target]|| nil
      @follow_range = hash[:follow_range] || 6
      @cull_distance= hash[:cull_distance]|| nil
      @chain_to     = hash[:chain_to]     || nil
      @seasonal     = hash[:seasonal]     || false
      @x            = hash[:x]          || nil
      @y            = hash[:y]          || nil
      @event        = hash[:event]      || nil
      # Priority occlusion (default ON): high-priority tiles (trees/roofs) hide this
      # light like they hide the player. Set occlude: false for lights that should
      # deliberately shine over everything (e.g. UI-ish spotlights).
      @occlude      = hash.key?(:occlude) ? hash[:occlude] : true
    end

    def bitmap
      return @bitmap_path
    end

    def flick
      @hide = !@hide
      return @hide
    end

    def hide=(v)
      @hide = v
    end

    def x
      return (@x) ? @x : @map_x * Game_Map::TILE_WIDTH + Game_Map::TILE_WIDTH / 2 
    end

    def y 
      return (@y) ? @y : @map_y * Game_Map::TILE_HEIGHT + Game_Map::TILE_HEIGHT / 2 
    end

    def event
      return nil if @event.nil?
      return pbMapInterpreter.get_character(@event)
    end

    def current_color
      return @color if !@color_cycle || @color_cycle.empty?
      return @color_cycle[0] if defined?(LightingConfig) && !LightingConfig.animations
      duration = [@cycle_speed.to_f, 0.01].max
      clock = defined?(LightingConfig) ? LightingConfig.animation_time :
              (Graphics.frame_count / [Graphics.frame_rate.to_f, 1.0].max)
      progress = (clock % duration) / duration
      idx = (progress * @color_cycle.length).floor
      next_idx = (idx + 1) % @color_cycle.length
      t = (progress * @color_cycle.length) - idx
      c1 = @color_cycle[idx]
      c2 = @color_cycle[next_idx]
      Color.new(
        c1.red + (c2.red - c1.red) * t,
        c1.green + (c2.green - c1.green) * t,
        c1.blue + (c2.blue - c1.blue) * t
      )
    end

    def update_fade
      return if @fade_opacity == @fade_target
      if @fade_opacity < @fade_target
        @fade_opacity = [@fade_opacity + @fade_speed, @fade_target].min
      else
        @fade_opacity = [@fade_opacity - @fade_speed, @fade_target].max
      end
    end

    def expired?
      return false if !@lifespan
      return (Graphics.frame_count - @created_at) >= @lifespan
    end

    # Serialize to a hash for save/load persistence.
    # NOTE: Procs (@on_activate, @on_deactivate) are intentionally excluded —
    # they can't be Marshal'd. Callers that rely on them must re-attach the
    # procs after load (e.g. via map setup events).
    def to_save_hash
      h = {
        :id => @id, :type => @type, :map_x => @map_x, :map_y => @map_y,
        :map_id => @map_id, :radius => @radius, :width => @width, :height => @height,
        :day => @day, :intensity => @intensity, :stop_anim => @stop_anim,
        :flicker => @flicker, :pulse => @pulse, :group => @group,
        :on_hour => @on_hour, :off_hour => @off_hour, :switch => @switch,
        :sync_group => @sync_group, :water_reflect => @water_reflect,
        :embers => @embers, :hide => @hide, :beam => @beam,
        :window => @window, :item_glow => @item_glow,
        :layer => @layer, :color_var => @color_var,
        :power_grid => @power_grid, :crystal_refract => @crystal_refract,
        :flame_sprite => @flame_sprite, :color_bleed => @color_bleed,
        :follow_target => @follow_target, :follow_range => @follow_range,
        :cull_distance => @cull_distance, :chain_to => @chain_to,
        :seasonal => @seasonal,
        :occlude => @occlude,
        # Previously missing — these silently disappeared on save/load:
        :bitmap        => @bitmap_path,
        :sound         => @sound,
        :sound_range   => @sound_range,
        :heat_shimmer  => @heat_shimmer,
        :shadows       => @shadows,
        :blend         => @blend
      }
      h[:color] = [@color.red, @color.green, @color.blue] if @color
      h[:tone] = [@tone.red, @tone.green, @tone.blue, @tone.gray] if @tone
      if @color_cycle && !@color_cycle.empty?
        h[:color_cycle] = @color_cycle.map { |c| [c.red, c.green, c.blue] }
      end
      h[:cycle_speed] = @cycle_speed if @color_cycle
      h[:proximity] = @proximity if @proximity
      h[:cone_spread] = @cone_spread if @type == :cone
      h[:cone_angle] = @cone_angle if @type == :cone
      h[:lifespan] = @lifespan if @lifespan
      h[:path] = @path if @path
      h[:path_speed] = @path_speed if @path
      return h
    end

    # Reconstruct a LightEffect from a saved hash (deserialize Color objects)
    def self.from_save_hash(h)
      h = h.dup
      if h[:color].is_a?(Array)
        h[:color] = Color.new(h[:color][0], h[:color][1], h[:color][2])
      end
      if h[:tone].is_a?(Array)
        h[:tone] = Tone.new(h[:tone][0], h[:tone][1], h[:tone][2], h[:tone][3] || 0)
      end
      if h[:color_cycle].is_a?(Array)
        h[:color_cycle] = h[:color_cycle].map { |c| Color.new(c[0], c[1], c[2]) }
      end
      self.register(h)
      # Restored lights are runtime-managed too, so a subsequent load purges them.
      eff = DATA[h[:id]]
      eff.runtime_added = true if eff
      return eff
    end

    def width_px; return @width * Game_Map::TILE_WIDTH; end
    def height_px; return @height * Game_Map::TILE_HEIGHT; end
  end

  class LightMap
    attr_reader :id                # :map_id
    attr_reader :type              # :night, :cave, :forest, :custom
    attr_reader :tone                
    attr_reader :overlay           # [Color, radius, rings]
    attr_reader :spawn_proc

    DATA = {}

    extend ClassMethodsIDNumbers
    include InstanceMethods

    def self.load; end
    def self.save; end

    def initialize(hash)
      @id         = hash[:id]
      @type       = hash[:type]
      @tone       = hash[:tone]     || nil
      @overlay    = hash[:overlay]  || nil
      @spawn_proc = hash[:spawn_proc]
    end

    def call_spawn(*args)
      return (@spawn_proc) ? @spawn_proc.call(*args) : true
    end
  end
end

# ===============================================================================
# Light Presets / Templates — named shortcuts for common light setups
# ===============================================================================
LIGHT_PRESETS = {
  :torch => {
    :type => :circle, :radius => 48, :color => Color.new(255, 180, 80),
    :flicker => 0.2, :pulse => :candle, :day => false, :embers => true
  },
  :streetlamp => {
    :type => :circle, :radius => 72, :color => Color.new(255, 240, 200),
    :day => false, :stop_anim => true, :intensity => 0.9
  },
  :neon_sign => {
    :type => :rect, :width => 2, :height => 1,
    :color_cycle => [Color.new(255, 0, 100), Color.new(0, 200, 255), Color.new(255, 255, 0)],
    :cycle_speed => 3.0, :day => false, :stop_anim => true
  },
  :campfire => {
    :type => :circle, :radius => 56,
    :color_cycle => [Color.new(255, 160, 40), Color.new(255, 120, 20), Color.new(255, 200, 60)],
    :cycle_speed => 1.5, :pulse => :candle, :flicker => 0.25, :embers => true, :day => false
  },
  :candle => {
    :type => :circle, :radius => 28, :color => Color.new(255, 200, 100),
    :pulse => :candle, :flicker => 0.15, :day => false
  },
  :crystal => {
    :type => :circle, :radius => 40, :color => Color.new(120, 200, 255),
    :pulse => :heartbeat, :day => true, :intensity => 0.6
  },
  :lava => {
    :type => :circle, :radius => 44,
    :color_cycle => [Color.new(255, 80, 0), Color.new(255, 40, 0), Color.new(255, 120, 20)],
    :cycle_speed => 2.0, :pulse => :candle, :flicker => 0.3, :heat_shimmer => true
  },
  :moonbeam => {
    :type => :circle, :radius => 64, :color => Color.new(180, 200, 255),
    :day => false, :stop_anim => true, :intensity => 0.35
  },
  :spotlight => {
    :type => :circle, :radius => 96, :color => Color.new(255, 255, 255),
    :stop_anim => true, :intensity => 1.0
  },
  :damaged_neon => {
    :type => :rect, :width => 2, :height => 1,
    :color_cycle => [Color.new(255, 0, 100), Color.new(0, 200, 255)],
    :cycle_speed => 2.0, :pulse => :damaged_neon, :day => false, :stop_anim => true
  },
  :window_warm => {
    :type => :rect, :width => 1, :height => 1,
    :color => Color.new(255, 200, 120), :day => false, :window => true,
    :stop_anim => true, :intensity => 0.7
  },
  :crystal_cave => {
    :type => :circle, :radius => 40, :color => Color.new(120, 200, 255),
    :pulse => :heartbeat, :day => true, :intensity => 0.6,
    :crystal_refract => true
  },
  :wall_torch => {
    :type => :circle, :radius => 48, :color => Color.new(255, 180, 80),
    :pulse => :candle, :day => false, :embers => true, :flame_sprite => true
  },
  :power_lamp => {
    :type => :circle, :radius => 60, :color => Color.new(255, 240, 200),
    :day => false, :stop_anim => true, :power_grid => true
  },
  :deep_sea_glow => {
    :type => :circle, :radius => 36, :color => Color.new(80, 200, 255),
    :pulse => :candle, :day => true, :intensity => 0.5
  },
  :ore_vein => {
    :type => :circle, :radius => 20, :color => Color.new(200, 160, 60),
    :pulse => :heartbeat, :day => true, :intensity => 0.3
  },
  :spotlight_follow => {
    :type => :circle, :radius => 72, :color => Color.new(255, 255, 255),
    :stop_anim => true, :intensity => 0.9,
    :follow_target => :nearest_event, :follow_range => 8
  },
  :lava_floor => {
    :type => :circle, :radius => 32,
    :color_cycle => [Color.new(255, 80, 0), Color.new(255, 40, 0), Color.new(255, 120, 20)],
    :cycle_speed => 2.5, :pulse => :candle, :day => true, :intensity => 0.5
  }
}

# ===============================================================================
# Script Command Helpers — for easy use in event "Script" commands
# ===============================================================================

# Add a circle light at the given tile coordinates.
# Returns the generated ID.
#   pbAddLight(x, y)
#   pbAddLight(x, y, radius)
#   pbAddLight(x, y, radius, color)
#   pbAddLight(x, y, preset: :torch)
def pbAddLight(x, y, radius = 64, color = nil, day: false, intensity: 1.0, preset: nil)
  if preset && LIGHT_PRESETS[preset]
    hash = LIGHT_PRESETS[preset].dup
    hash[:map_x] = x
    hash[:map_y] = y
    # Allow overrides
    hash[:radius] = radius if radius != 64
    hash[:color] = color if color
    hash[:day] = day if day != false
    hash[:intensity] = intensity if intensity != 1.0
  else
    hash = {
      :type      => :circle,
      :radius    => radius,
      :map_x     => x,
      :map_y     => y,
      :day       => day,
      :intensity => intensity
    }
    hash[:color] = color if color
  end
  GameData::LightEffect.add(hash)
  id = hash[:id]
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  lighting.refresh_all(true) if lighting && !lighting.disposed?
  return id
end

# Remove a light by its ID.
def pbRemoveLight(id)
  GameData::LightEffect::DATA.delete(id)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  lighting.refresh_all(true) if lighting && !lighting.disposed?
end

# Add many circle lights at once (e.g. a row of windows).
#   pbBulkAddCircleLights(5, [[10,12],[11,12],[12,12]])
#   pbBulkAddCircleLights(5, coords, 48, true)
def pbBulkAddCircleLights(map_id, coords, radius = 64, day = false)
  GameData::LightEffect.bulk_add_circle(map_id, coords, radius, day)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  lighting.refresh_all(true) if lighting && !lighting.disposed?
end

# Smoothly fade a light in or out.
#   pbFadeLight(id, :in)
#   pbFadeLight(id, :out)
#   pbFadeLight(id, :in, 0.02)   # slower
def pbFadeLight(id, direction = :in, speed = nil)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  if direction == :in
    lighting.fade_in(id, speed)
  else
    lighting.fade_out(id, speed)
  end
end

# Attach an existing light to a map event so it follows the event.
#   pbAttachLight(light_id, event_id)
def pbAttachLight(light_id, event_id)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  lighting.attach(light_id, event_id)
end

# Set intensity of an existing light (0.0 to 1.0).
def pbSetLightIntensity(id, value)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  effect = lighting.get(id)
  effect.intensity = [[value, 0.0].max, 1.0].min if effect
end

# Move an existing light to a new tile (x, y). Clears any pixel-position
# override so the tile position takes effect; glow and dark-hole follow it.
#   pbMoveLight(:my_light, 12, 8)
def pbMoveLight(id, x, y)
  e = GameData::LightEffect.try_get(id)
  return false if !e
  e.map_x = x
  e.map_y = y
  e.x = nil
  e.y = nil
  return true
end

# Recolor an existing light at runtime (live — no rebuild needed).
#   pbSetLightColor(:my_light, Color.new(255, 80, 80))
def pbSetLightColor(id, color)
  e = GameData::LightEffect.try_get(id)
  return false if !e || !color
  e.instance_variable_set(:@color, color)
  return true
end

# Resize an existing light. The dark hole follows immediately; the cached glow
# sprite is rebuilt (its bitmap is baked at the old radius).
#   pbSetLightRadius(:my_light, 96)
def pbSetLightRadius(id, radius)
  e = GameData::LightEffect.try_get(id)
  return false if !e
  e.radius = radius
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  lighting.rebuild_light_sprite(id) if lighting && !lighting.disposed?
  return true
end

# ===============================================================================
# Group Commands — control all lights sharing the same :group tag at once
# ===============================================================================

# Fade in all lights in a group.
#   pbGroupFadeIn(:house_lights)
#   pbGroupFadeIn(:house_lights, 0.02)
def pbGroupFadeIn(group, speed = nil)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  GameData::LightEffect.each do |effect|
    next if effect.group != group
    lighting.fade_in(effect.id, speed)
  end
end

# Fade out all lights in a group.
def pbGroupFadeOut(group, speed = nil)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  GameData::LightEffect.each do |effect|
    next if effect.group != group
    lighting.fade_out(effect.id, speed)
  end
end

# Hide all lights in a group instantly.
def pbGroupHide(group)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  GameData::LightEffect.each do |effect|
    next if effect.group != group
    lighting.hide(effect.id)
  end
end

# Show all lights in a group instantly.
def pbGroupShow(group)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return if !lighting || lighting.disposed?
  GameData::LightEffect.each do |effect|
    next if effect.group != group
    lighting.show(effect.id)
  end
end

# Set intensity for all lights in a group.
def pbGroupSetIntensity(group, value)
  GameData::LightEffect.each do |effect|
    next if effect.group != group
    effect.intensity = [[value, 0.0].max, 1.0].min
  end
end

# ===============================================================================
# Light Effect Chaining — link two lights so toggling one affects the other
# ===============================================================================

# Chain two lights together (bidirectional).
#   pbChainLights(:light_a, :light_b)
def pbChainLights(id1, id2)
  e1 = GameData::LightEffect.try_get(id1)
  e2 = GameData::LightEffect.try_get(id2)
  return if !e1 || !e2
  e1.chain_to = id2
  e2.chain_to = id1
end

# Unchain a light from its partner (bidirectional).
def pbUnchainLight(id)
  e = GameData::LightEffect.try_get(id)
  return if !e || !e.chain_to
  partner = GameData::LightEffect.try_get(e.chain_to)
  partner.chain_to = nil if partner
  e.chain_to = nil
end

# ===============================================================================
# Save/Load Light State — persist runtime-added lights across save/load
# ===============================================================================

# Save all current runtime lights into $PokemonGlobal
def pbSaveLights
  return if !$PokemonGlobal
  lights = []
  GameData::LightEffect.each do |effect|
    next if effect.id == :player_flashlight
    next if effect.id == :follower_light
    next if effect.id.to_s.start_with?("_evt_light_")   # Event-spawned, auto-rebuilt
    next if effect.id.to_s.start_with?("_door_bleed_")   # Door bleed, auto-rebuilt
    lights << effect.to_save_hash
  end
  $PokemonGlobal.saved_lights = lights
end

# Remove all runtime-added lights from the session-global DATA. Static lights
# compiled at boot ([001]/[004]) are left untouched (they have runtime_added
# = nil). Called at load / new-game boundaries so lights from a previous save
# don't bleed into the next one.
def pbPurgeRuntimeLights
  stale = GameData::LightEffect::DATA.select { |_, e| e.runtime_added }.keys
  stale.each { |id| GameData::LightEffect::DATA.delete(id) }
  echoln("Lighting: Purged #{stale.length} runtime lights") if $DEBUG && !stale.empty?
end

# Restore saved lights (called after loading a save)
def pbRestoreLights
  return if !$PokemonGlobal || !$PokemonGlobal.saved_lights
  $PokemonGlobal.saved_lights.each do |h|
    next if GameData::LightEffect::DATA[h[:id]]
    GameData::LightEffect.from_save_hash(h)
  end
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  lighting.refresh_all(true) if lighting && !lighting.disposed?
end

# Hook into Game.save to auto-persist lights before marshaling
module Game
  class << self
    alias _lighting_save save unless method_defined?(:_lighting_save)
    # v22-Port: Game.save-Signatur ist jetzt (index, directory, safe:) statt (save_file, safe:)
    def save(index = 0, directory = SaveData::DIRECTORY, safe: false)
      pbSaveLights
      _lighting_save(index, directory, safe: safe)
    end

    # Purge the previous session's runtime lights from DATA *before* the new
    # save's values (and its saved_lights) are loaded, so they can't leak in.
    alias _lighting_load load unless method_defined?(:_lighting_load)
    def load(save_data)
      pbPurgeRuntimeLights
      _lighting_load(save_data)
    end
  end
end

# Starting a brand-new game must also drop any runtime lights left in DATA by a
# previous session (e.g. after returning to the title screen and starting over).
EventHandlers.add(:on_start_new_game, :purge_runtime_lights,
  proc { pbPurgeRuntimeLights }
)

# Restore lights when the map scene starts after a load
EventHandlers.add(:on_enter_map, :restore_saved_lights,
  proc {
    pbRestoreLights if $PokemonGlobal&.saved_lights && !$PokemonGlobal.saved_lights.empty?
  }
)

# ===============================================================================
# Light Puzzle Helper — check if a tile is illuminated by any active light
# ===============================================================================
# Returns true if any active light's radius covers the given tile.
#   pbTileIlluminated?(x, y)
def pbTileIlluminated?(x, y)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return false if !lighting || lighting.disposed?
  return lighting.tile_illuminated?(x, y)
end

# ===============================================================================
# Dark Zone Encounters — multiplier for wild encounter rate when no lights nearby
# ===============================================================================
# Returns a Float multiplier (e.g. 1.5 = 50% more encounters).
# Call from encounter rate formulas or event conditions.
#   pbDarkZoneEncounterMult(range = 4, dark_mult = 1.5)
def pbDarkZoneEncounterMult(range = 4, dark_mult = 1.5)
  lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
  return 1.0 if !lighting || lighting.disposed?
  return lighting.dark_zone_mult($game_player.x, $game_player.y, range, dark_mult)
end

# ===============================================================================
# Bulk Light Definitions — Ruby DSL (replaces the old PBS/lights.txt import)
# ===============================================================================
# Define lights in Ruby instead of a PBS text file, in keeping with the SC
# Script System (PBS_REPLACEMENT_MODE) — no runtime file I/O, no PBS dependency.
# Register lights from any plugin script with pbDefineLight; they are applied
# once when the game starts. See "[009] Light_Definitions.rb".
#
#   pbDefineLight(MAP_ID, X, Y, TYPE, RADIUS = 48, *keywords)
#   TYPE:     :circle, :rect, :cone
#   RADIUS:   size in pixels (0 = use the preset's default)
#   keywords: optional preset name first (e.g. "torch"), then the same tags the
#             event-comment parser understands ("warm", "flicker", "width:2", …)
#
# Examples:
#   pbDefineLight(5, 10, 12, :circle, 48, "torch")
#   pbDefineLight(5, 14,  8, :circle, 64, "warm", "flicker")
#   pbDefineLight(8,  3,  5, :rect,    0, "width:2", "height:1", "red", "day")
# ===============================================================================
module GameData
  class LightEffect
    # Registry of bulk light definitions registered via pbDefineLight.
    BULK_DEFINITIONS = [] unless defined?(BULK_DEFINITIONS)
  end
end

# DSL entry point — register a bulk light definition (call at script load time).
def pbDefineLight(map_id, x, y, type, radius = 48, *keywords)
  type = type.to_s.downcase.to_sym
  return if ![:circle, :rect, :cone].include?(type)
  GameData::LightEffect::BULK_DEFINITIONS << {
    :map_id   => map_id.to_i,
    :map_x    => x.to_i,
    :map_y    => y.to_i,
    :type     => type,
    :radius   => radius.to_i,
    :keywords => keywords.flatten.map { |k| k.to_s }
  }
end

# Apply all registered bulk light definitions. Mirrors the old PBS parser:
# an optional leading preset token, then event-comment-style keyword tags.
def pbLoadBulkLights
  count = 0
  GameData::LightEffect::BULK_DEFINITIONS.each do |defn|
    map_id = defn[:map_id]
    tx     = defn[:map_x]
    ty     = defn[:map_y]
    type   = defn[:type]
    radius = defn[:radius]

    tokens = defn[:keywords].dup
    hash = { :type => type, :map_x => tx, :map_y => ty, :map_id => map_id, :day => false }

    if !tokens.empty? && defined?(LIGHT_PRESETS) && LIGHT_PRESETS[tokens[0].to_sym]
      preset = LIGHT_PRESETS[tokens.shift.to_sym]
      preset.each { |k, v| hash[k] = v }
    end
    hash[:radius] = radius if radius > 0

    # Parse remaining keyword tokens (same syntax as event comment tags)
    tokens.each do |token|
      case token.downcase
      when 'red'     then hash[:color] = Color.new(255, 80, 80)
      when 'blue'    then hash[:color] = Color.new(80, 80, 255)
      when 'yellow'  then hash[:color] = Color.new(255, 255, 80)
      when 'green'   then hash[:color] = Color.new(80, 255, 80)
      when 'orange'  then hash[:color] = Color.new(255, 160, 40)
      when 'warm'    then hash[:color] = Color.new(255, 200, 120)
      when 'day'     then hash[:day] = true
      when 'flicker' then hash[:flicker] = true
      when 'embers'  then hash[:embers] = true
      when 'reflect' then hash[:water_reflect] = true
      when 'beam'    then hash[:beam] = true
      when 'window'  then hash[:window] = true
      when /^blend:(\w+)$/i
        b = $1.to_sym
        hash[:blend] = b if [:additive, :subtractive, :multiply].include?(b)
      when /^sound:(.+)$/i       then hash[:sound] = $1
      when /^sound_range:(\d+)$/i then hash[:sound_range] = $1.to_i
      when /^color:(\d+),(\d+),(\d+)$/i
        hash[:color] = Color.new($1.to_i.clamp(0,255), $2.to_i.clamp(0,255), $3.to_i.clamp(0,255))
      when /^pulse:(\w+)$/i      then hash[:pulse] = $1.to_sym
      when /^intensity:([\d.]+)$/i then hash[:intensity] = $1.to_f
      when /^group:(\w+)$/i       then hash[:group] = $1.to_sym
      when /^switch:(\d+)$/i      then hash[:switch] = $1.to_i
      when /^width:(\d+)$/i       then hash[:width] = $1.to_i
      when /^height:(\d+)$/i      then hash[:height] = $1.to_i
      when /^spread:(\d+)$/i      then hash[:cone_spread] = $1.to_i
      when /^angle:(\d+)$/i       then hash[:cone_angle] = $1.to_i
      when /^sync:(\w+)$/i        then hash[:sync_group] = $1.to_sym
      when /^on_hour:(\d+)$/i     then hash[:on_hour] = $1.to_i
      when /^off_hour:(\d+)$/i    then hash[:off_hour] = $1.to_i
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
      end
    end

    GameData::LightEffect.add(hash)
    count += 1
  end
  echoln("Lighting: Loaded #{count} bulk light(s) from script definitions") if $DEBUG && count > 0
  if count > 0
    lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
    lighting.refresh_all(true) if lighting && !lighting.disposed?
  end
end

# Apply bulk light definitions once when the game starts
EventHandlers.add(:on_enter_map, :bulk_light_import,
  proc {
    next if $game_temp && $game_temp.instance_variable_get(:@_bulk_lights_loaded)
    pbLoadBulkLights
    $game_temp.instance_variable_set(:@_bulk_lights_loaded, true) if $game_temp
  }
)
