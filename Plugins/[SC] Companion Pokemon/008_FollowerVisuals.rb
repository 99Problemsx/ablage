#===============================================================================
# [SC] Companion Pokemon - Follower Visuals
# Status-condition tone overlay (with pulse) and water-surface reflection.
#
# Hooks Sprite_Character to add per-frame visual effects to the follower
# without disturbing other map sprites:
#
#   * Pulsing RGB tone tint based on the follower's status condition
#     (BURN orange, POISON purple, PARALYSIS yellow, FROZEN cyan,
#     SLEEP desaturate). Mirrors what Following Pokemon EX did.
#
#   * Water reflection — reuses Essentials' built-in Sprite_Reflection
#     (which already handles bridges, animation, and time tinting).
#     Vanilla Essentials only spawns a reflection for $game_player and
#     events whose name contains "reflection"; we extend it to cover
#     Game_FollowingPkmn so the follower mirrors over water like the
#     player does.
#===============================================================================

module CompanionFollower
  # Maps status -> [r, g, b] tone offset.
  # Values come from CompanionFollower config so users can tweak them.
  STATUS_TONE_RGB = {
    :BURN      => CompanionFollower::TONE_BURN,
    :POISON    => CompanionFollower::TONE_POISON,
    :PARALYSIS => CompanionFollower::TONE_PARALYSIS,
    :FROZEN    => CompanionFollower::TONE_FROZEN,
    :SLEEP     => CompanionFollower::TONE_SLEEP
  }
end

#===============================================================================
# Sheet-based companion emotes
#===============================================================================
class SCCompanionEmoteSprite < Sprite
  def initialize(viewport, owner)
    super(viewport)
    @owner = owner
    @sheet = nil
    @sequence = nil
    @sequence_index = 0
    @frame_timer = 0
    @hold_timer = 0
    @fade_timer = 0
    @key = nil
    self.visible = false
    self.ox = CompanionFollower::EMOTE_CONTENT_CENTER_X
    self.oy = CompanionFollower::EMOTE_SHEET_CELL_SIZE / 2
  end

  def play(key)
    data = CompanionFollower::EMOTE_SHEET_FRAMES[key]
    return unless data
    dispose_sheet
    @sheet = AnimatedBitmap.new("Graphics/Animations/#{data[0]}")
    @key = key
    self.bitmap = @sheet.bitmap
    @sequence = data[1]
    @sequence_index = 0
    @frame_timer = CompanionFollower::EMOTE_FRAME_DURATION
    @hold_timer = CompanionFollower::EMOTE_HOLD_DURATION
    @fade_timer = CompanionFollower::EMOTE_FADE_DURATION
    self.opacity = 255
    self.visible = true
    set_cell(@sequence[0])
  end

  def update
    super
    return unless @sequence
    update_position
    return unless self.visible
    if @sequence_index < @sequence.length - 1
      @frame_timer -= 1
      if @frame_timer <= 0
        @sequence_index += 1
        set_cell(@sequence[@sequence_index])
        @frame_timer = CompanionFollower::EMOTE_FRAME_DURATION
      end
    elsif @hold_timer > 0
      @hold_timer -= 1
    elsif @fade_timer > 0
      @fade_timer -= 1
      self.opacity = (255 * @fade_timer / CompanionFollower::EMOTE_FADE_DURATION.to_f).to_i
    else
      stop
    end
  end

  def stop
    self.visible = false
    self.bitmap = nil
    @sequence = nil
    @key = nil
    dispose_sheet
  end

  def dispose
    dispose_sheet
    @owner = nil
    super
  end

  private

  def set_cell(index)
    size = CompanionFollower::EMOTE_SHEET_CELL_SIZE
    self.src_rect.set((index % 5) * size, (index / 5) * size, size, size)
  end

  def update_position
    self.x = @owner.x
    self.y = @owner.y - (@owner.src_rect.height / 2) - CompanionFollower::EMOTE_Y_OFFSET
    self.z = @owner.z + 100
    transition = (@key == :COME_OUT || @key == :COME_IN)
    self.visible = transition || (@owner.visible && CompanionFollower.active?)
  end

  def dispose_sheet
    @sheet&.dispose
    @sheet = nil
  end
end

#===============================================================================
# Sprite_Character — initialize: also create reflection for the follower
#===============================================================================
class Sprite_Character < RPG::Sprite
  alias __sc_follower__init initialize unless method_defined?(:__sc_follower__init)
  def initialize(viewport, character = nil)
    __sc_follower__init(viewport, character)
    if character.is_a?(Game_FollowingPkmn) && !@reflection &&
       CompanionFollower::SHOW_REFLECTION
      @reflection = Sprite_Reflection.new(self, viewport)
    end
    if character.is_a?(Game_FollowingPkmn)
      @sc_companion_emote = SCCompanionEmoteSprite.new(viewport, self)
      @sc_companion_emote_serial = CompanionFollower.emote_request[0]
    end
  end

  alias __sc_follower__dispose_visuals dispose unless method_defined?(:__sc_follower__dispose_visuals)
  def dispose
    @sc_companion_emote&.dispose
    @sc_companion_emote = nil
    __sc_follower__dispose_visuals
  end

  #-----------------------------------------------------------------------------
  # update: apply pulsing status tone after the base update has refreshed
  # the sprite's bitmap and frame. Reflection automatically inherits tone
  # via Sprite_Reflection#update which copies @parent_sprite.tone.
  #-----------------------------------------------------------------------------
  alias __sc_follower__update_visuals update unless method_defined?(:__sc_follower__update_visuals)
  def update
    __sc_follower__update_visuals
    return unless @character.is_a?(Game_FollowingPkmn)
    sc_update_companion_emote
    return unless CompanionFollower::APPLY_STATUS_TONES
    if !CompanionFollower.active?
      sc_clear_follower_tone
      return
    end
    sc_apply_follower_status_tone
  end

  #-----------------------------------------------------------------------------
  # Distance offset — nudge the follower sprite a few pixels away from the
  # player so big Pokemon don't visually overlap them. Applied in screen_x/y so
  # the reflection and the emote bubble move along with the sprite.
  #-----------------------------------------------------------------------------
  alias __sc_follower__screen_x screen_x unless method_defined?(:__sc_follower__screen_x)
  def screen_x
    return __sc_follower__screen_x + sc_follower_offset[0]
  end

  alias __sc_follower__screen_y screen_y unless method_defined?(:__sc_follower__screen_y)
  def screen_y
    return __sc_follower__screen_y + sc_follower_offset[1]
  end

  # [x, y] pixel offset for the current frame. Cached per frame because both
  # screen_x and screen_y ask for it.
  def sc_follower_offset
    return [0, 0] if !@character.is_a?(Game_FollowingPkmn)
    return [0, 0] if !CompanionFollower::USE_DISTANCE_OFFSET
    frame = Graphics.frame_count
    return @sc_offset_value if @sc_offset_frame == frame && @sc_offset_value
    @sc_offset_frame = frame
    @sc_offset_value = sc_calc_follower_offset
    return @sc_offset_value
  end

  def sc_calc_follower_offset
    return [0, 0] if !$game_player || !CompanionFollower.active?
    amount = sc_follower_offset_amount
    return [0, 0] if amount == 0
    dx = @character.real_x - $game_player.real_x
    dy = @character.real_y - $game_player.real_y
    return [0, 0] if dx == 0 && dy == 0
    if dx.abs >= dy.abs
      return [(amount * (dx <=> 0) * TilemapRenderer::ZOOM_X).round, 0]
    end
    return [0, (amount * (dy <=> 0) * TilemapRenderer::ZOOM_Y).round]
  end

  # Per-species offset, recalculated only when the follower graphic changes.
  def sc_follower_offset_amount
    key = @character.character_name
    return @sc_offset_amount if @sc_offset_amount_key == key && @sc_offset_amount
    @sc_offset_amount_key = key
    pkmn = CompanionFollower.get_pokemon
    amount = CompanionFollower::FOLLOWER_DISTANCE_OFFSET
    if pkmn
      CompanionFollower::FOLLOWER_DISTANCE_EXCEPTIONS.each do |species, value|
        next if species != pkmn.species && species.to_s != "#{pkmn.species}_#{pkmn.form}"
        amount = value
        break
      end
    end
    @sc_offset_amount = amount
    return amount
  end

  def sc_update_companion_emote
    return unless @sc_companion_emote
    serial, key = CompanionFollower.emote_request
    if serial != @sc_companion_emote_serial
      @sc_companion_emote_serial = serial
      @sc_companion_emote.play(key)
    end
    @sc_companion_emote.update
  end

  def sc_apply_follower_status_tone
    pkmn = CompanionFollower.get_pokemon
    if !pkmn || !pkmn.respond_to?(:status) || pkmn.status == :NONE
      sc_clear_follower_tone
      return
    end

    rgb = CompanionFollower::STATUS_TONE_RGB[pkmn.status]
    return sc_clear_follower_tone unless rgb

    # Pulse strength oscillates around the configured intensity over ~2 sec.
    base = CompanionFollower::STATUS_TONE_INTENSITY / 0.55 * 0.7
    if CompanionFollower::STATUS_TONE_PULSE
      t = Graphics.frame_count / (Graphics.frame_rate.to_f * 0.32)
      pulse = base + (0.15 * Math.sin(t))
    else
      pulse = base
    end

    case pkmn.status
    when :SLEEP
      # Desaturate + slight darkening (sleep)
      gray = (160 * pulse).to_i
      self.tone = Tone.new(-25, -25, -25, gray)
    when :FROZEN
      # Cool blue tint + light gray
      r, g, b = rgb
      self.tone = Tone.new((r * 0.35 * pulse).to_i,
                           (g * 0.45 * pulse).to_i,
                           (b * 0.65 * pulse).to_i,
                           (40 * pulse).to_i)
    else
      # BURN / POISON / PARALYSIS: pulse the configured RGB at moderate intensity
      r, g, b = rgb
      self.tone = Tone.new((r * 0.55 * pulse).to_i,
                           (g * 0.55 * pulse).to_i,
                           (b * 0.55 * pulse).to_i, 0)
    end
    @sc_follower_tone_active = true
  end

  def sc_clear_follower_tone
    return unless @sc_follower_tone_active
    self.tone = Tone.new(0, 0, 0, 0)
    @sc_follower_tone_active = false
  end
end
