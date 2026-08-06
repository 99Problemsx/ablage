#===============================================================================
# Travelling Trader
# v1.0 by BoydALoyd
# Separate Plugin Functionality
#===============================================================================

#-------------------------------------------------------------------------------
# Voltseon's Pause Menu Integration (if available)
#-------------------------------------------------------------------------------

module TravellingTrader
  def self.voltseons_pause_menu_exists?
    return false if !defined?(Component)
    return false if !defined?(MENU_COMPONENTS)
    return true
  end
end

if TravellingTrader.voltseons_pause_menu_exists?
  class VPM_TraderTokenHud < Component
    def start_component(viewport, menu)
      super(viewport, menu)

      @sprites["overlay"] = BitmapSprite.new(Graphics.width / 2, 32, viewport)
      @sprites["overlay"].x = 0
      @sprites["overlay"].y = 56

      @base_color = $PokemonSystem.from_current_menu_theme(MENU_TEXTCOLOR, Color.new(248, 248, 248))
      @shdw_color = $PokemonSystem.from_current_menu_theme(MENU_TEXTOUTLINE, Color.new(48, 48, 48))
    end

    def should_draw?
      return true
    end

    def refresh
      token_count = defined?(TravellingTrader) ? TravellingTrader.trader_tokens : 0
      text = _INTL("Trader Tokens: {1}", token_count)

      @sprites["overlay"].bitmap.clear
      pbSetSmallFont(@sprites["overlay"].bitmap)

      pbDrawTextPositions(@sprites["overlay"].bitmap, [
        [text, 8, 0, 0, @base_color, @shdw_color]
      ])
    end
  end

  MENU_COMPONENTS << :VPM_TraderTokenHud if defined?(MENU_COMPONENTS)
end