#===============================================================================
# Drawing the Canopy and Sky layers.
#
# This owns its sprites rather than lengthening TilemapRenderer's per-cell stack
# and letting the engine's loop draw them. That earlier approach was smaller, and
# it did not work: the data reached the map correctly every time, but the tiles
# only appeared after leaving and re-entering the map — the engine's loop was not
# picking up the extra layers on a first visit. Rather than keep guessing at that
# loop's refresh conditions, this takes the part we need and does it here.
#
# What that buys: the only assumptions left are the ones this file can see. A
# sprite is created, given a bitmap, positioned from the camera and given a z.
# Nothing depends on when the engine decides a tile is stale.
#
# What it still borrows: TilemapRenderer's bitmap bookkeeping. `refresh_tile_bitmap`
# and `refresh_tile_src_rect` already handle autotile assembly, mega textures and
# the tileset cache, and reimplementing them would be both a lot of code and a
# second thing to keep correct. So the sprites are its `TileSprite`s and the
# binding goes through its methods; only *when* and *where* is ours.
#
# The z values are chosen against the other sprites sharing the map viewport:
#
#   character sprites   ~y * 32, a few hundred at most
#   Canopy              1000+   above every character, below the fog
#   fog                 3000
#   lighting overlays   99994 - 100000   (Dynamic Lighting System)
#   Sky                 100001+ above the lighting, so it stays unlit
#
# That last row is not a detail: the SCMap format defines the Sky layer as
# "drawn above everything, unaffected by map lighting", and sitting above the
# lighting overlay is what makes that true rather than merely documented.
#===============================================================================

module SCMapExtraLayers
  # Canopy: above the player, below weather and fog.
  CANOPY_Z_BASE = 1000
  # Sky: above the lighting overlays, so night tinting does not touch it.
  SKY_Z_BASE    = 100_001

  TILE_PIXELS = 32

  class Overlay
    def initialize(viewport)
      @viewport = viewport
      @disposed = false
      # One extra column and row so a half-scrolled tile still has a sprite.
      @columns = (Graphics.width.to_f / TILE_PIXELS).ceil + 1
      @rows    = (Graphics.height.to_f / TILE_PIXELS).ceil + 1
      @sprites = []
      @columns.times do |i|
        @sprites[i] = []
        @rows.times do |j|
          @sprites[i][j] = Array.new(EXTRA_LAYER_COUNT) do
            sprite = TilemapRenderer::TileSprite.new(@viewport)
            sprite.visible = false
            sprite
          end
        end
      end
      SCMapExtraLayers.note("overlay ready: #{@columns}x#{@rows} cells, #{EXTRA_LAYER_COUNT} layers")
    end

    def disposed?
      return @disposed
    end

    def dispose
      return if @disposed
      each_sprite { |sprite| sprite.dispose }
      @sprites.clear
      @disposed = true
    end

    def each_sprite
      @sprites.each do |column|
        column.each do |stack|
          stack.each { |sprite| yield sprite }
        end
      end
    end

    # Rebinds every sprite from the camera position. Called once per frame.
    #
    # Shaped around the fact that almost no map has extra layers: the work is
    # gated behind a per-map content check, so an ordinary map costs one loop
    # over the maps on screen and nothing else. The camera arithmetic is done
    # once per map rather than once per cell — it used to be inside the cell
    # loop, which is roughly nine hundred float divisions per frame for tiles
    # that were mostly empty.
    def update
      return if @disposed || !$game_map
      renderer = $scene.respond_to?(:map_renderer) ? $scene.map_renderer : nil
      return if !renderer || renderer.disposed?

      # Every map on screen, so a connected neighbour's tree tops are drawn too.
      maps = ($map_factory && $map_factory.maps) ? $map_factory.maps : [$game_map]
      active = []
      maps.each do |map|
        next if (SCMapExtraLayers.applied(map.map_id) || 0) == 0
        data = map.data
        next if !data.is_a?(Table) || data.zsize < TOTAL_LAYER_COUNT
        px = (map.display_x.to_f / Game_Map::X_SUBPIXELS).round
        py = (map.display_y.to_f / Game_Map::Y_SUBPIXELS).round
        active.push([map, data, px / TILE_PIXELS, py / TILE_PIXELS, px % TILE_PIXELS, py % TILE_PIXELS])
      end

      if active.empty?
        hide_all
        return
      end

      shown = 0
      @columns.times do |i|
        @rows.times do |j|
          EXTRA_LAYER_COUNT.times do |index|
            sprite = @sprites[i][j][index]
            layer = BASE_LAYER_COUNT + index
            drawn = false

            active.each do |map, data, tx0, ty0, ox, oy|
              tile_x = tx0 + i
              tile_y = ty0 + j
              next if tile_x < 0 || tile_y < 0 || tile_x >= map.width || tile_y >= map.height

              tile_id = data[tile_x, tile_y, layer]
              next if tile_id.nil? || tile_id == 0

              bind(renderer, sprite, map, tile_id)
              sprite.x = (i * TILE_PIXELS) - ox
              sprite.y = (j * TILE_PIXELS) - oy
              sprite.z = (index == 0 ? CANOPY_Z_BASE : SKY_Z_BASE) + (j * TILE_PIXELS)
              sprite.visible = !sprite.bitmap.nil?
              drawn = true
              shown += 1 if sprite.visible
              break
            end

            sprite.visible = false if drawn == false && sprite.visible
          end
        end
      end

      @anything_visible = shown > 0
      SCMapExtraLayers.note_once_drawn(shown)
    end

    # Cheap no-op once everything is already hidden, which is the steady state on
    # every map that does not use these layers.
    def hide_all
      return if @anything_visible == false
      each_sprite { |sprite| sprite.visible = false }
      @anything_visible = false
      SCMapExtraLayers.note_once_drawn(0)
    end

    # Points a sprite at the right graphic, through the engine's own bookkeeping.
    def bind(renderer, sprite, map, tile_id)
      source = map
      real_id = tile_id
      foreign = SCMapExtraLayers.view_for(map.map_id, tile_id)
      if foreign
        source, real_id = foreign
        # Load the tileset the first time one of its tiles is drawn. On demand
        # because connected maps stream in as the player walks toward them.
        if !renderer.tilesets[source.tileset_name]
          renderer.add_tileset(source.tileset_name)
          source.autotile_names.each { |name| renderer.add_autotile(name) }
        end
      end
      return if sprite.tile_id == tile_id && sprite.bitmap
      renderer.refresh_tile_bitmap(sprite, source, real_id)
      # The engine stored the decoded id; remember the encoded one so the next
      # frame's comparison matches what the Table holds.
      sprite.tile_id = tile_id
    end
  end

  @drawn_reported = nil

  # One line the first time a frame actually puts extra tiles on screen, and one
  # when that stops. Enough to answer "is it drawing?" without filling the log.
  def self.note_once_drawn(count)
    state = count > 0
    return if @drawn_reported == state
    @drawn_reported = state
    note(state ? "overlay drawing #{count} extra tile(s)" : "overlay drawing nothing")
  end
end

#===============================================================================
# Attaching the overlay to the map scene.
#
# Spriteset_Map is created and disposed with the map, which is exactly the
# lifetime these sprites want.
#===============================================================================
class Spriteset_Map
  alias sc_extra_layers_initialize initialize
  def initialize(map = nil)
    sc_extra_layers_initialize(map)
    @sc_extra_overlay = SCMapExtraLayers::Overlay.new(@@viewport1)
  end

  alias sc_extra_layers_update update
  def update
    sc_extra_layers_update
    @sc_extra_overlay.update if @sc_extra_overlay && !@sc_extra_overlay.disposed?
  end

  alias sc_extra_layers_dispose dispose
  def dispose
    if @sc_extra_overlay
      @sc_extra_overlay.dispose
      @sc_extra_overlay = nil
    end
    sc_extra_layers_dispose
  end
end
