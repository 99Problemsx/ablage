#===============================================================================
# Custom Selection Box UI
#===============================================================================
# A visual selection interface with colored boxes, titles, and descriptions.
# Usage:
#   choice = pbSelectBox("Select difficulty:", [
#     { title: "EASY", desc: "Standard experience", color: :green },
#     { title: "NORMAL", desc: "Smarter AI", color: :blue },
#     { title: "HARD", desc: "Full challenge", color: :red }
#   ])
#===============================================================================

#===============================================================================
# Color Definitions
#===============================================================================
module SelectionBoxColors
  # Predefined colors for boxes
  COLORS = {
    :red    => { bg: Color.new(200, 50, 50),   border: Color.new(255, 100, 100) },
    :blue   => { bg: Color.new(50, 100, 200),  border: Color.new(100, 150, 255) },
    :green  => { bg: Color.new(50, 180, 80),   border: Color.new(100, 220, 130) },
    :orange => { bg: Color.new(220, 140, 40),  border: Color.new(255, 180, 80) },
    :purple => { bg: Color.new(140, 80, 180),  border: Color.new(180, 120, 220) },
    :gray   => { bg: Color.new(100, 100, 100), border: Color.new(150, 150, 150) }
  }
  
  def self.get(color_name)
    COLORS[color_name] || COLORS[:blue]
  end
end

#===============================================================================
# SelectionBox Scene
#===============================================================================
class SelectionBox_Scene
  BOX_HEIGHT = 70
  BOX_MARGIN = 8
  BOX_PADDING = 12
  CURSOR_WIDTH = 20
  
  def initialize
    @viewport = nil
    @sprites = {}
    @index = 0
    @options = []
  end
  
  def start(prompt, options)
    @options = options
    @index = 0
    
    # Create viewport
    @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @viewport.z = 99999
    
    # Create background overlay
    @sprites["overlay"] = Sprite.new(@viewport)
    @sprites["overlay"].bitmap = Bitmap.new(Graphics.width, Graphics.height)
    @sprites["overlay"].bitmap.fill_rect(0, 0, Graphics.width, Graphics.height, Color.new(0, 0, 0, 160))
    
    # Create prompt window
    @sprites["prompt"] = Window_AdvancedTextPokemon.newWithSize(
      prompt, 0, Graphics.height - 64, Graphics.width, 64, @viewport
    )
    @sprites["prompt"].setSkin(MessageConfig.pbGetSystemFrame)
    
    # Calculate starting Y position
    total_height = @options.length * (BOX_HEIGHT + BOX_MARGIN)
    start_y = (Graphics.height - 64 - total_height) / 2
    
    # Create option boxes
    @options.each_with_index do |opt, i|
      create_option_box(i, opt, start_y + i * (BOX_HEIGHT + BOX_MARGIN))
    end
    
    # Create cursor
    @sprites["cursor"] = Sprite.new(@viewport)
    @sprites["cursor"].bitmap = create_cursor_bitmap
    update_cursor
    
    pbSEPlay("GUI sel cursor")
  end
  
  def create_option_box(index, option, y)
    box_width = Graphics.width - 60
    x = 40
    
    # Create box sprite
    sprite = Sprite.new(@viewport)
    sprite.bitmap = Bitmap.new(box_width, BOX_HEIGHT)
    
    # Get colors
    colors = SelectionBoxColors.get(option[:color] || :blue)
    
    # Draw box background
    sprite.bitmap.fill_rect(0, 0, box_width, BOX_HEIGHT, colors[:border])
    sprite.bitmap.fill_rect(3, 3, box_width - 6, BOX_HEIGHT - 6, colors[:bg])
    
    # Draw title
    pbSetSystemFont(sprite.bitmap)
    sprite.bitmap.font.size = 24
    sprite.bitmap.font.bold = true
    title_text = option[:title] || "Option #{index + 1}"
    pbDrawShadowText(sprite.bitmap, BOX_PADDING, 8, box_width - BOX_PADDING * 2, 28,
                     title_text, Color.new(255, 255, 255), Color.new(80, 80, 80))
    
    # Draw description
    sprite.bitmap.font.size = 18
    sprite.bitmap.font.bold = false
    desc_text = option[:desc] || ""
    pbDrawShadowText(sprite.bitmap, BOX_PADDING, 36, box_width - BOX_PADDING * 2, 24,
                     desc_text, Color.new(230, 230, 230), Color.new(60, 60, 60))
    
    sprite.x = x
    sprite.y = y
    
    @sprites["box_#{index}"] = sprite
  end
  
  def create_cursor_bitmap
    bitmap = Bitmap.new(24, 24)
    # Draw arrow
    points = [
      [0, 6], [12, 12], [0, 18]
    ]
    # Fill triangle
    12.times do |i|
      y1 = 6 + i
      y2 = 18 - i
      next if y1 > y2
      bitmap.fill_rect(i, y1, 1, y2 - y1 + 1, Color.new(255, 255, 255))
    end
    bitmap
  end
  
  def update_cursor
    return unless @sprites["cursor"]
    box = @sprites["box_#{@index}"]
    return unless box
    
    @sprites["cursor"].x = 12
    @sprites["cursor"].y = box.y + (BOX_HEIGHT - 24) / 2
  end
  
  def update
    loop do
      Graphics.update
      Input.update
      
      if Input.trigger?(Input::UP)
        if @index > 0
          @index -= 1
          pbSEPlay("GUI sel cursor")
          update_cursor
        end
      elsif Input.trigger?(Input::DOWN)
        if @index < @options.length - 1
          @index += 1
          pbSEPlay("GUI sel cursor")
          update_cursor
        end
      elsif Input.trigger?(Input::USE)
        pbSEPlay("GUI sel decision")
        return @index
      elsif Input.trigger?(Input::BACK)
        pbSEPlay("GUI sel cancel")
        return -1
      end
    end
  end
  
  def dispose
    @sprites.each_value { |s| s.dispose if s }
    @viewport.dispose if @viewport
  end
end

#===============================================================================
# Helper Function - Main API
#===============================================================================
def pbSelectBox(prompt, options)
  scene = SelectionBox_Scene.new
  scene.start(prompt, options)
  result = scene.update
  scene.dispose
  return result
end

#===============================================================================
# Quick Preset Functions
#===============================================================================

# Difficulty selection
def pbSelectDifficulty
  pbSelectBox("Select the difficulty mode.", [
    { title: "EASY MODE",   desc: "Standard Pokémon experience", color: :green },
    { title: "NORMAL MODE", desc: "Trainers use smarter tactics", color: :blue },
    { title: "HARD MODE",   desc: "Full Advanced AI challenge", color: :red }
  ])
end

# Level cap selection
def pbSelectLevelCap
  pbSelectBox("Select level cap mode.", [
    { title: "NO CAPS",    desc: "Train freely to any level", color: :green },
    { title: "SOFT CAP",   desc: "Reduced EXP above cap", color: :blue },
    { title: "HARD CAP",   desc: "No EXP gain above cap", color: :red }
  ])
end

# Challenge mode selection
def pbSelectChallengeMode
  pbSelectBox("Select challenge mode.", [
    { title: "MODE NORMAL", desc: "With no additional rules", color: :green },
    { title: "NUZLOCKE",    desc: "Pokémon 'die' if they faint", color: :orange }
  ])
end

# Gender selection
def pbSelectGender
  pbSelectBox("Are you a boy or a girl?", [
    { title: "BOY",  desc: "Male trainer", color: :blue },
    { title: "GIRL", desc: "Female trainer", color: :purple }
  ])
end

SCScripts.debug("SelectionBox UI loaded", :startup)
