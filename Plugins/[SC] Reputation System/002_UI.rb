#===============================================================================
# [SC] Reputation System - UI Scene
#===============================================================================

class ReputationScene
  def initialize
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    @sprites = {}
    @index = 0
    @factions = ReputationSystem::FACTIONS.keys
  end

  def pbStartScene
    @sprites["bg"] = IconSprite.new(0, 0, @viewport)
    @sprites["overlay"] = BitmapSprite.new(Graphics.width, Graphics.height, @viewport)
    pbSetSystemFont(@sprites["overlay"].bitmap)
    draw_list
  end

  def draw_list
    overlay = @sprites["overlay"].bitmap
    overlay.clear

    pbDrawTextPositions(overlay, [
      ["Reputation", Graphics.width / 2, 8, 2,
       Color.new(255, 220, 100), Color.new(80, 60, 30)]
    ])

    y = 52
    @factions.each_with_index do |fid, i|
      config = ReputationSystem::FACTIONS[fid]
      pts = pbReputation.points(fid)
      tier = pbReputation.tier(fid)
      selected = (i == @index)
      color = selected ? config[:color] : Color.new(200, 200, 200)
      shadow = Color.new(40, 40, 40)

      # Name + tier
      prefix = selected ? "▸ " : "  "
      pbDrawTextPositions(overlay, [
        [prefix + config[:name], 20, y, 0, color, shadow],
        [tier.to_s.capitalize, Graphics.width - 20, y, 1, color, shadow]
      ])

      # Bar
      bar_y = y + 24
      bar_x = 30
      bar_w = Graphics.width - 60
      bar_h = 10
      overlay.fill_rect(bar_x, bar_y, bar_w, bar_h, Color.new(40, 40, 40))
      range = ReputationSystem::REP_MAX - ReputationSystem::REP_MIN
      norm = (pts - ReputationSystem::REP_MIN).to_f / range
      fill_w = (bar_w * norm).to_i.clamp(0, bar_w)
      overlay.fill_rect(bar_x, bar_y, fill_w, bar_h, color)

      # Points
      pbDrawTextPositions(overlay, [
        [pts.to_s, Graphics.width / 2, bar_y + 12, 2, Color.new(180, 180, 180), shadow]
      ])

      y += 58
    end

    # Selected faction description
    if @factions[@index]
      config = ReputationSystem::FACTIONS[@factions[@index]]
      overlay.fill_rect(10, Graphics.height - 60, Graphics.width - 20, 50, Color.new(0, 0, 0, 160))
      pbDrawTextPositions(overlay, [
        [config[:desc], Graphics.width / 2, Graphics.height - 50, 2,
         Color.new(248, 248, 248), Color.new(72, 72, 72)]
      ])
    end
  end

  def pbMain
    loop do
      Graphics.update
      Input.update
      if Input.trigger?(Input::DOWN)
        @index = (@index + 1) % @factions.length
        pbPlayCursorSE; draw_list
      elsif Input.trigger?(Input::UP)
        @index = (@index - 1) % @factions.length
        pbPlayCursorSE; draw_list
      elsif Input.trigger?(Input::BACK)
        pbPlayCancelSE; break
      end
    end
  end

  def pbEndScene
    pbDisposeSpriteHash(@sprites)
    @viewport.dispose
  end
end

def pbOpenReputationScreen
  scene = ReputationScene.new
  scene.pbStartScene
  scene.pbMain
  scene.pbEndScene
end
