#===============================================================================
# [SC] Overworld Moves - Target cursor
#===============================================================================
# A tile cursor the player drives around the current map while the map keeps
# rendering underneath. Returns [x, y] on confirm, nil on cancel.
#===============================================================================

class SCTargetCursorScene
  CURSOR_ARM       = 11   # length of each corner bracket, in pixels
  CURSOR_THICKNESS = 3
  # How far past DIG_RANGE the cursor may roam. Invalid tiles are still shown
  # (in red) so the player can see where the barrier is instead of guessing.
  ROAM_MARGIN = 3

  def initialize(steps, max_steps = SCOverworldMoves::DIG_RANGE)
    @steps = steps
    @max_steps = max_steps
    @x = $game_player.x
    @y = $game_player.y
    @origin_x = $game_player.x
    @origin_y = $game_player.y
    @blink = 0
    @last_valid = nil
    # The burrow animation runs without polling input, so a confirm press left
    # over from the party menu would otherwise land on the first frame here.
    @input_delay = 6
  end

  def start
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 90000
    @ui_viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @ui_viewport.z = 90500
    @sprites = {}

    @cursor_bitmaps = {
      true  => build_cursor(SCOverworldMoves::CURSOR_COLOR_VALID),
      false => build_cursor(SCOverworldMoves::CURSOR_COLOR_INVALID)
    }
    @sprites["cursor"] = Sprite.new(@viewport)

    @sprites["info"] = BitmapSprite.new(Graphics.width, Graphics.height, @ui_viewport)
    pbSetSystemFont(@sprites["info"].bitmap)

    @cam_x = $game_map.display_x.to_f
    @cam_y = $game_map.display_y.to_f
    refresh
  end

  # Corner brackets rather than a full box, so the tile art stays readable.
  def build_cursor(color)
    width = Game_Map::TILE_WIDTH
    height = Game_Map::TILE_HEIGHT
    bitmap = Bitmap.new(width, height)
    bitmap.fill_rect(CURSOR_THICKNESS, CURSOR_THICKNESS,
                     width - (CURSOR_THICKNESS * 2), height - (CURSOR_THICKNESS * 2),
                     Color.new(color.red, color.green, color.blue, 60))
    [[0, 0], [1, 0], [0, 1], [1, 1]].each do |right, bottom|
      arm_x = (right == 0) ? 0 : width - CURSOR_ARM
      arm_y = (bottom == 0) ? 0 : height - CURSOR_THICKNESS
      bitmap.fill_rect(arm_x, arm_y, CURSOR_ARM, CURSOR_THICKNESS, color)
      arm_x = (right == 0) ? 0 : width - CURSOR_THICKNESS
      arm_y = (bottom == 0) ? 0 : height - CURSOR_ARM
      bitmap.fill_rect(arm_x, arm_y, CURSOR_THICKNESS, CURSOR_ARM, color)
    end
    return bitmap
  end

  #-----------------------------------------------------------------------------
  # Target validation
  #-----------------------------------------------------------------------------

  # Returns [valid, message].
  def target_status
    if @x == @origin_x && @y == @origin_y
      return [false, _INTL("You're already standing here.")]
    end
    if !$game_map.valid?(@x, @y)
      return [false, _INTL("That's off the map.")]
    end
    if $game_map.terrain_tag(@x, @y).id == :NoDig
      return [false, _INTL("The ground is too hard to surface here.")]
    end
    distance = @steps[SCOverworldMoves::Reachability.key($game_map, @x, @y)]
    if !distance
      return [false, _INTL("There's no way through to there.")]
    end
    return [true, _INTL("{1} steps away.", distance)]
  end

  def valid_target?
    return target_status[0]
  end

  #-----------------------------------------------------------------------------
  # Drawing
  #-----------------------------------------------------------------------------

  def refresh
    valid, message = target_status
    if @last_valid != valid
      @sprites["cursor"].bitmap = @cursor_bitmaps[valid]
      @last_valid = valid
    end
    overlay = @sprites["info"].bitmap
    overlay.clear
    overlay.fill_rect(0, 0, Graphics.width, 30, Color.new(0, 0, 0, 150))
    overlay.fill_rect(0, Graphics.height - 34, Graphics.width, 34, Color.new(0, 0, 0, 150))
    text_color = valid ? SCOverworldMoves::CURSOR_COLOR_VALID : SCOverworldMoves::CURSOR_COLOR_INVALID
    shadow = Color.new(40, 40, 40)
    pbDrawTextPositions(overlay, [
      [_INTL("Where should you surface?"), 8, 3, 0, Color.new(248, 248, 248), shadow],
      [message, Graphics.width - 8, 3, 1, text_color, shadow],
      [_INTL("↑↓←→ Move   Z: Surface here   X: Cancel"),
       Graphics.width / 2, Graphics.height - 30, 2, Color.new(200, 200, 200), shadow]
    ])
  end

  def update_camera
    target_x = (@x * Game_Map::REAL_RES_X) - Game_Player::SCREEN_CENTER_X
    target_y = (@y * Game_Map::REAL_RES_Y) - Game_Player::SCREEN_CENTER_Y
    lag = SCOverworldMoves::CURSOR_CAMERA_LAG
    if lag <= 1
      @cam_x = target_x.to_f
      @cam_y = target_y.to_f
    else
      @cam_x += (target_x - @cam_x) / lag.to_f
      @cam_y += (target_y - @cam_y) / lag.to_f
      @cam_x = target_x.to_f if (target_x - @cam_x).abs < 1
      @cam_y = target_y.to_f if (target_y - @cam_y).abs < 1
    end
    $game_map.display_x = @cam_x.round
    $game_map.display_y = @cam_y.round
    # Maps flagged snap_edges clamp the value they were given, so the cursor
    # stops being screen-centred near the borders. Pull the interpolation back
    # in line when that happens, otherwise it builds up an invisible offset that
    # the camera has to burn off before it starts moving again.
    @cam_x = $game_map.display_x.to_f if (@cam_x.round - $game_map.display_x).abs >= 1
    @cam_y = $game_map.display_y.to_f if (@cam_y.round - $game_map.display_y).abs >= 1
  end

  def update_cursor_sprite
    sprite = @sprites["cursor"]
    # Derived from the actual display value, not the cursor tile, so the clamped
    # case above still draws the cursor in the right place.
    sprite.x = (((@x * Game_Map::REAL_RES_X) - $game_map.display_x) / Game_Map::X_SUBPIXELS).round
    sprite.y = (((@y * Game_Map::REAL_RES_Y) - $game_map.display_y) / Game_Map::Y_SUBPIXELS).round
    @blink = (@blink + 1) % 60
    sprite.opacity = 200 + (55 * Math.sin(@blink * Math::PI / 30)).round
  end

  #-----------------------------------------------------------------------------
  # Input
  #-----------------------------------------------------------------------------

  def try_move(dx, dy)
    new_x = @x + dx
    new_y = @y + dy
    return if !$game_map.valid?(new_x, new_y)
    limit = @max_steps + ROAM_MARGIN
    return if (new_x - @origin_x).abs > limit || (new_y - @origin_y).abs > limit
    @x = new_x
    @y = new_y
    pbSEPlay(SCOverworldMoves::SE_CURSOR)
    refresh
  end

  def update_frame
    update_camera
    $scene.updateSpritesets if $scene.is_a?(Scene_Map)
    SCOverworldMoves.enforce_hidden
    update_cursor_sprite
    Graphics.update
  end

  def main
    result = nil
    loop do
      Input.update
      if @input_delay > 0
        @input_delay -= 1
        update_frame
        next
      end
      if Input.repeat?(Input::DOWN)
        try_move(0, 1)
      elsif Input.repeat?(Input::UP)
        try_move(0, -1)
      elsif Input.repeat?(Input::LEFT)
        try_move(-1, 0)
      elsif Input.repeat?(Input::RIGHT)
        try_move(1, 0)
      end
      if Input.trigger?(Input::USE)
        if valid_target?
          pbSEPlay(SCOverworldMoves::SE_SELECT)
          result = [@x, @y]
          break
        end
        pbSEPlay(SCOverworldMoves::SE_INVALID)
      elsif Input.trigger?(Input::BACK)
        pbSEPlay(SCOverworldMoves::SE_CANCEL)
        break
      end
      update_frame
    end
    return result
  end

  def finish
    pbDisposeSpriteHash(@sprites)
    @cursor_bitmaps.each_value { |bitmap| bitmap.dispose }
    @viewport.dispose
    @ui_viewport.dispose
  end
end

#===============================================================================
# Runs the cursor and returns the chosen [x, y], or nil.
#===============================================================================
def pbChooseTargetTile(steps, max_steps = SCOverworldMoves::DIG_RANGE)
  scene = SCTargetCursorScene.new(steps, max_steps)
  scene.start
  result = scene.main
  scene.finish
  return result
end
