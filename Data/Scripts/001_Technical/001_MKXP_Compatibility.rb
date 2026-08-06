#===============================================================================
# Using mkxp-z-ext v2.4.2/2f2b824.
# https://github.com/mkxp-z/mkxp-z/actions/runs/28475006907
#===============================================================================
$VERBOSE = nil
Font.default_shadow = false if Font.respond_to?(:default_shadow)
Encoding.default_internal = Encoding::UTF_8
Encoding.default_external = Encoding::UTF_8

def pbSetWindowText(string)
  System.set_window_title(string || System.game_title)
end

def pbSetResizeFactor(factor)
  if !$ResizeInitialized
    Graphics.resize_screen(Settings::SCREEN_WIDTH, Settings::SCREEN_HEIGHT)
    # -ext applies the HiRes framebuffer resize asynchronously. Flush that
    # request before setting the physical window size below, otherwise the
    # queued 1024x768 resize can overwrite our 512x384 request afterwards.
    Graphics.update
    $ResizeInitialized = true
  end
  if factor < 0 || factor == 4
    Graphics.fullscreen = true if !Graphics.fullscreen
  else
    Graphics.fullscreen = false if Graphics.fullscreen
    # mkxp-z-ext's HiRes framebuffer is 2x the logical game resolution.
    # Graphics.scale therefore also sees that 2x framebuffer and would turn
    # the normal 512x384 option into a 1024x768 window. Resize the physical
    # window from Essentials' logical dimensions instead; this keeps every
    # window-size option unchanged while EBDX still renders internally at 2x.
    scale = (factor + 1) * 0.5
    width = (Settings::SCREEN_WIDTH * scale).round
    height = (Settings::SCREEN_HEIGHT * scale).round
    if Graphics.respond_to?(:resize_window)
      Graphics.resize_window(width, height, true)
    else
      Graphics.scale = scale
      Graphics.center
    end
  end
end

#===============================================================================
#
#===============================================================================
class Bitmap
  GENDER_SYMBOL_FONT = "Power Red and Blue Intl"

  attr_accessor :text_offset_y

  alias mkxp_draw_text draw_text unless method_defined?(:mkxp_draw_text)
  alias mkxp_text_size text_size unless method_defined?(:mkxp_text_size)

  # Most clean UI fonts omit the Pokemon gender glyphs. Keep the selected UI
  # font for all normal text and use Essentials' bundled face only for ♀/♂.
  def text_size(text)
    return mkxp_text_size(text) if text != "♀" && text != "♂"
    old_name = font.name
    begin
      font.name = GENDER_SYMBOL_FONT
      return mkxp_text_size(text)
    ensure
      font.name = old_name
    end
  end

  def draw_text(x, y, width, height = nil, text = "", align = 0)
    actual_text = x.is_a?(Rect) ? y : text
    old_name = font.name
    begin
      font.name = GENDER_SYMBOL_FONT if actual_text == "♀" || actual_text == "♂"
      if x.is_a?(Rect)
        x.y -= (@text_offset_y || 0)
        # rect, string & alignment
        mkxp_draw_text(x, y, width)
      else
        y -= (@text_offset_y || 0)
        height = text_size(text).height
        mkxp_draw_text(x, y, width, height, text, align)
      end
    ensure
      font.name = old_name
    end
  end
end

#===============================================================================
#
#===============================================================================
if System::VERSION != Essentials::MKXPZ_VERSION
  printf(sprintf("\e[1;33mWARNING: mkxp-z version %s detected, but this version of Pokémon Essentials was designed for mkxp-z version %s.\e[0m\r\n",
                 System::VERSION, Essentials::MKXPZ_VERSION))
  printf("\e[1;33mWARNING: Pokémon Essentials may not work properly.\e[0m\r\n")
end
