#===============================================================================
# Travelling Trader
# v1.0 by BoydALoyd
# Town Map
#===============================================================================

#-------------------------------------------------------------------------------
# Town Map marker
#-------------------------------------------------------------------------------

module TravellingTraderTownMapMarker
  def pbStartScene(*args)
    ret = super
    trav_trader_create_marker
    return ret
  end

  def pbMapScene(*args)
    trav_trader_create_marker
    trav_trader_update_marker
    return super
  end

  def pbUpdate(*args)
    ret = super
    trav_trader_update_marker
    return ret
  end

  def pbEndScene(*args)
    trav_trader_dispose_marker
    return super
  end

  # Arcky's Region Map rebuilds its map sprites here.
  def addBackgroundAndRegionSprite(*args)
    ret = super
    trav_trader_create_marker
    trav_trader_update_marker
    return ret
  end

  def trav_trader_arcky_map?
    return false if !instance_variable_defined?(:@spritesMap)
    return false if !@spritesMap
    return false if !@spritesMap["map"]
    return false if @spritesMap["map"].disposed?
    return true
  end

  def trav_trader_marker_key
    return "trav_trader_marker"
  end

  def trav_trader_marker_graphic_path
    graphic = TravellingTrader::TOWN_MAP_MARKER_GRAPHIC
    return pbResolveBitmap(graphic) if defined?(pbResolveBitmap)
    return graphic
  end

  def trav_trader_marker_square_width
    if defined?(ARMSettings) && ARMSettings.const_defined?(:SquareWidth)
      return ARMSettings::SquareWidth
    end
    return TravellingTrader::TOWN_MAP_SQUARE_SIZE
  end

  def trav_trader_marker_square_height
    if defined?(ARMSettings) && ARMSettings.const_defined?(:SquareHeight)
      return ARMSettings::SquareHeight
    end
    return TravellingTrader::TOWN_MAP_SQUARE_SIZE
  end

  def trav_trader_adjust_marker_x(x)
    return adjustPosX(x, true) if respond_to?(:adjustPosX)
    return x
  end

  def trav_trader_adjust_marker_y(y)
    return adjustPosY(y, true) if respond_to?(:adjustPosY)
    return y
  end

  def trav_trader_region_matches?(loc)
    return true if !loc

    current_region = nil
    current_region = @region if instance_variable_defined?(:@region)

    trader_region = TravellingTrader.location_town_map_region(loc)

    return true if current_region.nil?
    return true if current_region.is_a?(Numeric) && current_region < 0

    return current_region == trader_region
  end

  def trav_trader_marker_blink_visible?
    return true if !TravellingTrader::TOWN_MAP_MARKER_BLINK

    visible_frames = 80
    hidden_frames  = 40

    cycle_length = visible_frames + hidden_frames
    cycle_frame = Graphics.frame_count % cycle_length

    return cycle_frame < visible_frames
  end

  def trav_trader_marker_should_be_visible?(loc)
    return false if !loc
    return false if !trav_trader_region_matches?(loc)
    return false if !trav_trader_marker_blink_visible?

    return true
  end

  #-------------------------------------------------------------------------
  # Create marker
  #-------------------------------------------------------------------------

  def trav_trader_create_marker
    return if !defined?(TravellingTrader)
    return if !TravellingTrader::SHOW_TOWN_MAP_MARKER

    if trav_trader_arcky_map?
      trav_trader_create_arcky_marker
    else
      trav_trader_create_default_marker
    end
  end

  def trav_trader_create_arcky_marker
    return if !@spritesMap
    return if @spritesMap[trav_trader_marker_key]

    graphic_path = trav_trader_marker_graphic_path
    if !graphic_path
      echoln "[Travelling Trader] Missing Town Map marker graphic: #{TravellingTrader::TOWN_MAP_MARKER_GRAPHIC}"
      return
    end

    map_sprite = @spritesMap["map"]
    map_width  = @mapWidth  || map_sprite.bitmap.width
    map_height = @mapHeight || map_sprite.bitmap.height

    @spritesMap[trav_trader_marker_key] = BitmapSprite.new(map_width, map_height, @viewportMap)
    @spritesMap[trav_trader_marker_key].x = map_sprite.x
    @spritesMap[trav_trader_marker_key].y = map_sprite.y
    @spritesMap[trav_trader_marker_key].zoom_x = map_sprite.zoom_x
    @spritesMap[trav_trader_marker_key].zoom_y = map_sprite.zoom_y
    @spritesMap[trav_trader_marker_key].z = TravellingTrader::TOWN_MAP_MARKER_Z
    @spritesMap[trav_trader_marker_key].visible = false
    @trav_trader_marker_last_location = nil

    trav_trader_update_marker
  end

  def trav_trader_default_map_sprite
    return nil if !@sprites

    possible_keys = [
      "map",
      "regionmap",
      "region_map",
      "mapSprite",
      "regionMap",
      "mapbg",
      "bg"
    ]

    possible_keys.each do |key|
      spr = @sprites[key]
      return spr if spr && !spr.disposed? && spr.respond_to?(:bitmap) && spr.bitmap
    end

    best_sprite = nil
    best_area = 0

    @sprites.each do |key, spr|
      next if key == trav_trader_marker_key
      next if !spr
      next if spr.disposed?
      next if !spr.respond_to?(:bitmap)
      next if !spr.bitmap

      area = spr.bitmap.width * spr.bitmap.height
      if area > best_area
        best_area = area
        best_sprite = spr
      end
    end

    return best_sprite
  end

  def trav_trader_create_default_marker
    return if !@sprites
    return if @sprites[trav_trader_marker_key]

    graphic_path = trav_trader_marker_graphic_path
    if !graphic_path
      echoln "[Travelling Trader] Missing Town Map marker graphic: #{TravellingTrader::TOWN_MAP_MARKER_GRAPHIC}"
      return
    end

    map_sprite = trav_trader_default_map_sprite
    marker_viewport = map_sprite && map_sprite.viewport ? map_sprite.viewport : @viewport

    @sprites[trav_trader_marker_key] = IconSprite.new(0, 0, marker_viewport)
    @sprites[trav_trader_marker_key].setBitmap(TravellingTrader::TOWN_MAP_MARKER_GRAPHIC)
    @sprites[trav_trader_marker_key].z = TravellingTrader::TOWN_MAP_MARKER_Z
    @sprites[trav_trader_marker_key].visible = false

    trav_trader_update_marker
  end

  #-------------------------------------------------------------------------
  # Update marker
  #-------------------------------------------------------------------------

  def trav_trader_update_marker
    return if !defined?(TravellingTrader)

    if trav_trader_arcky_map?
      trav_trader_update_arcky_marker
    else
      trav_trader_update_default_marker
    end
  end

  def trav_trader_update_arcky_marker
    return if !@spritesMap

    marker = @spritesMap[trav_trader_marker_key]
    return if !marker

    loc = TravellingTrader.town_map_marker_location
    if !trav_trader_marker_should_be_visible?(loc)
      marker.visible = false
      return
    end

    map_sprite = @spritesMap["map"]
    marker.x = map_sprite.x
    marker.y = map_sprite.y
    marker.zoom_x = map_sprite.zoom_x
    marker.zoom_y = map_sprite.zoom_y

    # Only redraw the marker bitmap when the trader changes location.
    if @trav_trader_marker_last_location != loc[:id]
      marker.bitmap.clear

      graphic_path = trav_trader_marker_graphic_path
      if !graphic_path
        marker.visible = false
        return
      end

      icon_bitmap = Bitmap.new(graphic_path)

      square_width  = trav_trader_marker_square_width
      square_height = trav_trader_marker_square_height

      map_x = trav_trader_adjust_marker_x(loc[:town_map_x])
      map_y = trav_trader_adjust_marker_y(loc[:town_map_y])

      draw_x = (map_x * square_width) +
               (square_width / 2) -
               (icon_bitmap.width / 2) +
               TravellingTrader::TOWN_MAP_MARKER_OFFSET_X

      draw_y = (map_y * square_height) +
               (square_height / 2) -
               (icon_bitmap.height / 2) +
               TravellingTrader::TOWN_MAP_MARKER_OFFSET_Y

      marker.bitmap.blt(
        draw_x,
        draw_y,
        icon_bitmap,
        Rect.new(0, 0, icon_bitmap.width, icon_bitmap.height)
      )

      icon_bitmap.dispose
      @trav_trader_marker_last_location = loc[:id]
    end

    marker.visible = true
  end

  def trav_trader_update_default_marker
    return if !@sprites

    marker = @sprites[trav_trader_marker_key]
    return if !marker

    loc = TravellingTrader.town_map_marker_location
    if !trav_trader_marker_should_be_visible?(loc)
      marker.visible = false
      return
    end

    map_sprite = trav_trader_default_map_sprite

    square_width  = trav_trader_marker_square_width
    square_height = trav_trader_marker_square_height

    marker_width  = marker.bitmap ? marker.bitmap.width : 0
    marker_height = marker.bitmap ? marker.bitmap.height : 0

    base_x = map_sprite ? map_sprite.x : 0
    base_y = map_sprite ? map_sprite.y : 0

    marker.x = base_x +
               (loc[:town_map_x] * square_width) +
               (square_width / 2) -
               (marker_width / 2) +
               TravellingTrader::TOWN_MAP_MARKER_OFFSET_X

    marker.y = base_y +
               (loc[:town_map_y] * square_height) +
               (square_height / 2) -
               (marker_height / 2) +
               TravellingTrader::TOWN_MAP_MARKER_OFFSET_Y

    marker.visible = true
  end

  #-------------------------------------------------------------------------
  # Dispose marker
  #-------------------------------------------------------------------------

  def trav_trader_dispose_marker
    if instance_variable_defined?(:@spritesMap) && @spritesMap && @spritesMap[trav_trader_marker_key]
      @spritesMap[trav_trader_marker_key].dispose
      @spritesMap.delete(trav_trader_marker_key)
    end

    if @sprites && @sprites[trav_trader_marker_key]
      @sprites[trav_trader_marker_key].dispose
      @sprites.delete(trav_trader_marker_key)
    end

    @trav_trader_marker_last_location = nil
  end
end

# Essentials v22 Town Map implementation. Pins are anchored in map coordinates,
# so they continue to track correctly while the player pans or zooms the map.
module TravellingTraderTownMapMarkerV22
  def initialize_pins
    super
    trav_trader_create_v22_marker
  end

  def update_visuals
    super
    trav_trader_update_v22_marker
  end

  def trav_trader_create_v22_marker
    return if !TravellingTrader::SHOW_TOWN_MAP_MARKER
    loc = TravellingTrader.town_map_marker_location
    return if !loc || loc[:town_map_x].nil? || loc[:town_map_y].nil?
    return if TravellingTrader.location_town_map_region(loc) != @region
    key = :trav_trader_marker
    @sprites[key].dispose if @sprites[key] && !@sprites[key].disposed?
    create_pin(key, loc[:town_map_x], loc[:town_map_y],
               TravellingTrader::TOWN_MAP_MARKER_GRAPHIC,
               TravellingTrader::TOWN_MAP_MARKER_Z)
    @sprites[key].x += TravellingTrader::TOWN_MAP_MARKER_OFFSET_X
    @sprites[key].y += TravellingTrader::TOWN_MAP_MARKER_OFFSET_Y
    trav_trader_update_v22_marker
  end

  def trav_trader_update_v22_marker
    marker = @sprites[:trav_trader_marker]
    return if !marker || marker.disposed?
    loc = TravellingTrader.town_map_marker_location
    region_matches = loc && TravellingTrader.location_town_map_region(loc) == @region
    blink_visible = !TravellingTrader::TOWN_MAP_MARKER_BLINK || (Graphics.frame_count % 120) < 80
    marker.visible = !!(region_matches && blink_visible)
  end
end

module TravellingTrader
  TOWN_MAP_SCENE_CLASS_NAMES = [
    :PokemonRegionMap_Scene,
    :PokemonRegionMapScene,
    :PokemonRegionMapScreen,
    :RegionMap_Scene,
    :RegionMapScene,
    :ArckyRegionMap_Scene,
    :ArckyRegionMapScene
  ]

  def self.debug_town_map_scene_classes
    found = []

    TOWN_MAP_SCENE_CLASS_NAMES.each do |class_name|
      if Object.const_defined?(class_name)
        klass = Object.const_get(class_name)

        method_list = []
        method_list.push("pbStartScene") if klass.method_defined?(:pbStartScene)
        method_list.push("pbMapScene")   if klass.method_defined?(:pbMapScene)
        method_list.push("pbEndScene")   if klass.method_defined?(:pbEndScene)

        method_text = method_list.empty? ? "no checked methods" : method_list.join(", ")

        found.push("#{class_name} (#{method_text})")
        echoln "[Travelling Trader] Found Town Map class: #{class_name} - #{method_text}"
      else
        echoln "[Travelling Trader] Missing Town Map class: #{class_name}"
      end
    end

    if found.empty?
      pbMessage(_INTL("No known Town Map scene class was found. Check the debug console."))
    else
      pbMessage(_INTL("Found possible Town Map class(es): {1}. Check the debug console.", found.join("; ")))
    end
  end

  def self.install_town_map_marker_hook
    installed = false

    if defined?(UI::TownMapVisuals)
      unless UI::TownMapVisuals.ancestors.include?(TravellingTraderTownMapMarkerV22)
        UI::TownMapVisuals.prepend(TravellingTraderTownMapMarkerV22)
      end
      installed = true
    end

    TOWN_MAP_SCENE_CLASS_NAMES.each do |class_name|
      next if !Object.const_defined?(class_name)

      klass = Object.const_get(class_name)
      next if !klass.is_a?(Class)

      if klass.ancestors.include?(TravellingTraderTownMapMarker)
        echoln "[Travelling Trader] Town Map marker hook already installed into #{class_name}."
        installed = true
        next
      end

      if klass.method_defined?(:pbMapScene)
        klass.prepend(TravellingTraderTownMapMarker)
        echoln "[Travelling Trader] Installed Town Map marker hook into #{class_name}."
        installed = true
      else
        echoln "[Travelling Trader] Found #{class_name}, but it has no pbMapScene method."
      end
    end

    echoln "[Travelling Trader] No compatible Town Map scene class found." if !installed
    return installed
  end
end

TravellingTrader.install_town_map_marker_hook
