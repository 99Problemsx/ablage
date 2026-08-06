#===============================================================================
# [SC] Relationship System - UI Scene
# Displays relationship status for all known characters.
#===============================================================================

class RelationshipScene
  def initialize
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @sprites = {}
    @index = 0
    @characters = RelationshipSystem::CHARACTERS.keys
  end

  def pbStartScene
    @sprites["bg"] = IconSprite.new(0, 0, @viewport)
    bg_path = "Graphics/Pictures/#{RelationshipSystem::GRAPHICS_FOLDER}/bg"
    @sprites["bg"].setBitmap(bg_path) if pbResolveBitmap(bg_path)

    @sprites["overlay"] = BitmapSprite.new(Graphics.width, Graphics.height, @viewport)
    pbSetSystemFont(@sprites["overlay"].bitmap)

    @sprites["arrow_left"] = AnimatedSprite.new("Graphics/Pictures/leftarrow", 8, 40, 28, 2, @viewport)
    @sprites["arrow_left"].x = 4
    @sprites["arrow_left"].y = Graphics.height / 2 - 14
    @sprites["arrow_left"].play

    @sprites["arrow_right"] = AnimatedSprite.new("Graphics/Pictures/rightarrow", 8, 40, 28, 2, @viewport)
    @sprites["arrow_right"].x = Graphics.width - 44
    @sprites["arrow_right"].y = Graphics.height / 2 - 14
    @sprites["arrow_right"].play

    draw_character(@index)
  end

  def draw_character(idx)
    overlay = @sprites["overlay"].bitmap
    overlay.clear
    char_id = @characters[idx]
    config = RelationshipSystem::CHARACTERS[char_id]
    entry = pbRelationship.get(char_id)
    tier = entry.tier
    colors = RelationshipSystem::TIER_COLORS[tier] || [Color.new(248, 248, 248), Color.new(72, 72, 72)]

    # Character name
    pbDrawTextPositions(overlay, [
      [config[:name], Graphics.width / 2, 24, 2,
       colors[0], colors[1]]
    ])

    # Tier label
    pbDrawTextPositions(overlay, [
      [tier.to_s.capitalize, Graphics.width / 2, 64, 2,
       colors[0], colors[1]]
    ])

    # Points bar background
    bar_x = 80
    bar_y = 120
    bar_w = Graphics.width - 160
    bar_h = 24
    overlay.fill_rect(bar_x, bar_y, bar_w, bar_h, Color.new(40, 40, 40))

    # Points bar fill
    range = RelationshipSystem::POINTS_MAX - RelationshipSystem::POINTS_MIN
    normalized = (entry.points - RelationshipSystem::POINTS_MIN).to_f / range
    fill_w = (bar_w * normalized).to_i.clamp(0, bar_w)
    overlay.fill_rect(bar_x, bar_y, fill_w, bar_h, colors[0])

    # Points text
    pbDrawTextPositions(overlay, [
      [_INTL("{1} / {2}", entry.points, RelationshipSystem::POINTS_MAX),
       Graphics.width / 2, bar_y + bar_h + 8, 2,
       Color.new(248, 248, 248), Color.new(72, 72, 72)]
    ])

    # Portrait
    portrait_path = "Graphics/Pictures/#{RelationshipSystem::GRAPHICS_FOLDER}/#{config[:portrait_key]}"
    if @sprites["portrait"]
      @sprites["portrait"].dispose
      @sprites.delete("portrait")
    end
    if pbResolveBitmap(portrait_path)
      @sprites["portrait"] = IconSprite.new(Graphics.width / 2 - 48, 170, @viewport)
      @sprites["portrait"].setBitmap(portrait_path)
    end

    # Guardian info
    if config[:guardian]
      pbDrawTextPositions(overlay, [
        [_INTL("Guardian: {1}", config[:guardian].to_s.capitalize),
         Graphics.width / 2, 340, 2,
         Color.new(200, 200, 200), Color.new(72, 72, 72)]
      ])
    end

    # Recent history (last 3)
    y_pos = 380
    entry.history.last(3).reverse.each do |_ts, change, reason|
      sign = change > 0 ? "+" : ""
      txt = reason.empty? ? "#{sign}#{change}" : "#{sign}#{change} — #{reason}"
      pbDrawTextPositions(overlay, [
        [txt, Graphics.width / 2, y_pos, 2,
         change > 0 ? Color.new(100, 220, 100) : Color.new(220, 100, 100),
         Color.new(40, 40, 40)]
      ])
      y_pos += 24
    end

    # Page indicator
    pbDrawTextPositions(overlay, [
      [_INTL("{1} / {2}", idx + 1, @characters.length),
       Graphics.width / 2, Graphics.height - 40, 2,
       Color.new(200, 200, 200), Color.new(72, 72, 72)]
    ])
  end

  def pbMain
    loop do
      Graphics.update
      Input.update
      pbUpdateSpriteHash(@sprites)
      if Input.trigger?(Input::RIGHT)
        @index = (@index + 1) % @characters.length
        pbPlayCursorSE
        draw_character(@index)
      elsif Input.trigger?(Input::LEFT)
        @index = (@index - 1) % @characters.length
        pbPlayCursorSE
        draw_character(@index)
      elsif Input.trigger?(Input::BACK)
        pbPlayCancelSE
        break
      end
    end
  end

  def pbEndScene
    pbDisposeSpriteHash(@sprites)
    @viewport.dispose
  end
end

class RelationshipScreen
  def initialize(scene)
    @scene = scene
  end

  def pbStartScreen
    @scene.pbStartScene
    @scene.pbMain
    @scene.pbEndScene
  end
end

# Quick launch helper for events
def pbOpenRelationshipScreen
  scene = RelationshipScene.new
  screen = RelationshipScreen.new(scene)
  screen.pbStartScreen
end
