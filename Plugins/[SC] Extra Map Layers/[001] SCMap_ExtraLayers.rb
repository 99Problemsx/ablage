#===============================================================================
# Extra map layers — Canopy and Sky.
#
# RGSS stores exactly three tile layers in RPG::Map, which is why the editor's
# Canopy and Sky layers cannot travel in Data/MapNNN.rxdata. They live in
# Data/SCMaps/MapNNN.json instead, and this file reads them at map setup and
# widens the map's tile Table from 3 layers to 5.
#
# Widening the Table rather than bolting a second renderer alongside the first is
# what keeps this small: TilemapRenderer already walks `map.data` layer by layer,
# so once the data is five deep it draws five layers. The only thing it cannot
# work out for itself is how high the two new layers belong, which [002] answers.
#
# Nothing else in the engine is affected. Every gameplay consumer of map data —
# passability, terrain tags, bush, counters — iterates the layers as the literal
# `[2, 1, 0]`, so the extra layers are invisible to all of them. That is the
# correct behaviour: a tree top the player walks under must not block them.
#===============================================================================

module SCMapExtraLayers
  DIR = "Data/SCMaps"

  # What RGSS itself stores, and what we add on top.
  BASE_LAYER_COUNT  = 3
  EXTRA_LAYER_COUNT = 2
  TOTAL_LAYER_COUNT = BASE_LAYER_COUNT + EXTRA_LAYER_COUNT

  # Packed tile values carry the tileset slot in the high bits (see the editor's
  # `packTile`). Slot 0 is the map's own tileset — the only one RPG::Map can name.
  TILE_ID_MASK   = 0xFFFF
  TILE_SLOT_SHIFT = 16

  # Tiles from a second or third tileset.
  #
  # RGSS's Table is signed 16-bit, so the editor's packed value (slot << 16)
  # cannot be stored in it. Instead a foreign tile is re-encoded into a high id
  # band: slot 1 lands at 10000+, slot 2 at 20000+, and the renderer decodes the
  # band back into "which tileset, which tile".
  #
  # The bands are what the arithmetic allows, not a preference. A tile id is
  # 384 + 8 per tileset row, so a graphic would need to be ~40000px tall to reach
  # 10000 — far past anything real — and three bands is what fits under Int16's
  # 32767 ceiling. Slots beyond that are skipped and reported.
  FOREIGN_BASE   = 10000
  FOREIGN_STRIDE = 10000
  MAX_FOREIGN_SLOTS = 2

  def self.encode_foreign(slot, tile_id)
    return nil if slot < 1 || slot > MAX_FOREIGN_SLOTS || tile_id >= FOREIGN_STRIDE
    return FOREIGN_BASE + ((slot - 1) * FOREIGN_STRIDE) + tile_id
  end

  # [slot, tile_id] for an encoded value, or nil when it is an ordinary tile.
  def self.decode_foreign(value)
    return nil if value < FOREIGN_BASE
    offset = value - FOREIGN_BASE
    return [(offset / FOREIGN_STRIDE) + 1, offset % FOREIGN_STRIDE]
  end

  @layer_cache      = {}
  @warned           = {}
  @applied          = {}
  @foreign_tilesets = {}

  def self.file_for(map_id)
    return sprintf("%s/Map%03d.json", DIR, map_id)
  end

  # Where this plugin reports what it did.
  #
  # A file rather than `echoln`, because the console only exists in debug mode
  # and the editor's Playtest button does not start the game in it. Without this
  # a failure is indistinguishable from "the tiles are there but you cannot see
  # them", which is a terrible position to debug from.
  LOG = "extra_layers.log"

  def self.note(text)
    begin
      File.open(LOG, "a") { |file| file.puts("[#{Time.now.strftime('%H:%M:%S')}] #{text}") }
    rescue
      # Logging must never be the thing that breaks a map load.
    end
    echoln("SCMapExtraLayers: #{text}") if $DEBUG
  end

  # Written once per launch, so each run starts a readable block.
  def self.note_boot
    return if @booted
    @booted = true
    begin
      File.open(LOG, "a") { |file| file.puts("\n=== #{Time.now} — Extra Map Layers loaded ===") }
    rescue
    end
  end

  #-----------------------------------------------------------------------------
  # Reading the JSON.
  #
  # Only the `layers` block is parsed. A map file also holds every event's
  # command tree, which is by far the bulk of it and is of no interest here, so
  # the block is isolated by bracket matching before anything is decoded.
  #-----------------------------------------------------------------------------

  # Returns the text of the array or object that follows `key`, brackets included.
  def self.bracket_section(text, key)
    match = text.index("\"#{key}\"")
    return nil if !match
    index = text.index(":", match + key.length + 2)
    return nil if !index
    index += 1
    index += 1 while index < text.length && text.getbyte(index) <= 32
    opening = text.getbyte(index)
    return nil if opening != 91 && opening != 123   # '[' or '{'
    closing = (opening == 91) ? 93 : 125
    start = index
    depth = 0
    in_string = false
    escaped = false
    while index < text.length
      byte = text.getbyte(index)
      if in_string
        if escaped
          escaped = false
        elsif byte == 92    # backslash
          escaped = true
        elsif byte == 34    # quote
          in_string = false
        end
      elsif byte == 34
        in_string = true
      elsif byte == opening
        depth += 1
      elsif byte == closing
        depth -= 1
        return text[start..index] if depth == 0
      end
      index += 1
    end
    return nil
  end

  # The string arrays following each `"rows"` key, in layer order.
  def self.row_lists(section)
    lists = []
    index = 0
    while (found = section.index("\"rows\"", index))
      open_bracket = section.index("[", found)
      break if !open_bracket
      close_bracket = section.index("]", open_bracket)
      break if !close_bracket
      body = section[(open_bracket + 1)...close_bracket]
      # Tile rows are runs of base-36 digits, '.', '*' and spaces, so they never
      # contain an escape or a bracket. A plain scan for quoted spans is exact.
      lists.push(body.scan(/"([^"]*)"/).flatten)
      index = close_bracket + 1
    end
    return lists
  end

  # Expands one run-length encoded row into `width` packed tile values.
  def self.decode_row(row, width)
    out = Array.new(width, 0)
    return out if row.nil? || row.empty?
    x = 0
    row.split(" ").each do |run|
      break if x >= width
      next if run.empty?
      star = run.index("*")
      token = star ? run[0...star] : run
      count = star ? run[(star + 1)..-1].to_i : 1
      value = (token == ".") ? 0 : token.to_i(36)
      count.times do
        break if x >= width
        out[x] = value
        x += 1
      end
    end
    return out
  end

  # Canopy and Sky as flat arrays of tile ids, or nil when the map has neither.
  def self.extra_layers(map_id, width, height)
    return @layer_cache[map_id] if @layer_cache.key?(map_id)
    @layer_cache[map_id] = read_extra_layers(map_id, width, height)
    return @layer_cache[map_id]
  end

  # The tileset id in each of the map's slots, slot 0 first.
  def self.slot_tileset_ids(text)
    section = bracket_section(text, "tilesets")
    return [] if !section
    return section.scan(/"tilesetId"\s*:\s*(\d+)/).flatten.map { |value| value.to_i }
  end

  def self.read_extra_layers(map_id, width, height)
    path = file_for(map_id)
    if !File.file?(path)
      # Usually a working-directory problem rather than a missing map: the path
      # is relative, so it only resolves when the game runs from its own folder.
      note("map #{map_id}: #{path} not found (cwd #{Dir.pwd})")
      return nil
    end
    begin
      text = File.binread(path)
      section = bracket_section(text, "layers")
      if !section
        note("map #{map_id}: no layers block in #{path}")
        return nil
      end
      lists = row_lists(section)
      if lists.length <= BASE_LAYER_COUNT
        note("map #{map_id}: only #{lists.length} layer(s) in #{path}")
        return nil
      end
      slots = slot_tileset_ids(text)
    rescue => e
      note("could not read #{path} — #{e.class}: #{e.message}")
      return nil
    end

    result = []
    any_content = false
    dropped = 0
    used_slots = {}
    EXTRA_LAYER_COUNT.times do |index|
      rows = lists[BASE_LAYER_COUNT + index] || []
      flat = Array.new(width * height, 0)
      height.times do |y|
        decoded = decode_row(rows[y], width)
        width.times do |x|
          packed = decoded[x]
          next if packed == 0
          slot = (packed >> TILE_SLOT_SHIFT) & 0xFF
          tile_id = packed & TILE_ID_MASK
          if slot > 0
            # Re-encode into the high band the renderer knows how to decode.
            encoded = encode_foreign(slot, tile_id)
            if !encoded || !slots[slot]
              dropped += 1
              next
            end
            used_slots[slot] = slots[slot]
            flat[(y * width) + x] = encoded
          else
            flat[(y * width) + x] = tile_id
          end
          any_content = true
        end
      end
      result.push(flat)
    end

    if dropped > 0 && !@warned[map_id]
      @warned[map_id] = true
      note("map #{map_id} skipped #{dropped} Canopy/Sky tile(s) — past #{MAX_FOREIGN_SLOTS} extra tilesets, or a tile id too large to re-encode.")
    end
    if !any_content
      note("map #{map_id}: no Canopy/Sky content in #{path}")
      return nil
    end
    @foreign_tilesets[map_id] = used_slots
    return result
  end

  # Tileset ids this map needs beyond its own, keyed by slot. The spriteset
  # registers their graphics with the renderer; without that the tiles resolve
  # to a bitmap that was never loaded and simply do not draw.
  def self.foreign_tilesets(map_id)
    return @foreign_tilesets[map_id] || {}
  end

  #-----------------------------------------------------------------------------
  # Standing in for Game_Map.
  #
  # `refresh_tile_bitmap` asks the map which graphic, autotiles and per-tile
  # attributes to use. For a tile from another tileset the answers all come from
  # that tileset instead, so it is handed one of these rather than the map — far
  # less invasive than reimplementing the method for the foreign case.
  #-----------------------------------------------------------------------------
  class TilesetView
    attr_reader :tileset_id, :tileset_name, :autotile_names, :priorities, :terrain_tags

    def initialize(tileset)
      @tileset_id     = tileset.id
      @tileset_name   = tileset.tileset_name
      @autotile_names = tileset.autotile_names
      @priorities     = tileset.priorities
      @terrain_tags   = tileset.terrain_tags
    end
  end

  @views = {}

  # The view for an encoded tile, or nil when it is an ordinary tile.
  def self.view_for(map_id, value)
    decoded = decode_foreign(value)
    return nil if !decoded
    slot, tile_id = decoded
    tileset_id = foreign_tilesets(map_id)[slot]
    return nil if !tileset_id
    view = @views[tileset_id]
    if !view
      tileset = $data_tilesets && $data_tilesets[tileset_id]
      return nil if !tileset
      view = TilesetView.new(tileset)
      @views[tileset_id] = view
    end
    return [view, tile_id]
  end

  #-----------------------------------------------------------------------------
  # Widening the map.
  #-----------------------------------------------------------------------------

  # Every map is widened, not only the ones with content, so that the renderer
  # never has to ask whether a layer exists — `map.data[x, y, 4]` always answers.
  #
  # Wrapped in a rescue on purpose. This runs inside Game_Map#setup, so an
  # exception here would not fail to draw a tree top, it would fail to load the
  # map at all. A map missing its canopy is a bug; a map that will not open is a
  # broken game, and the difference is worth a rescue.
  def self.apply(map_id, map)
    return if !map
    data = map.data
    return if !data.is_a?(Table) || data.zsize >= TOTAL_LAYER_COUNT
    width = map.width
    height = map.height

    begin
      extra = extra_layers(map_id, width, height)

      expanded = Table.new(width, height, TOTAL_LAYER_COUNT)
      height.times do |y|
        width.times do |x|
          BASE_LAYER_COUNT.times { |z| expanded[x, y, z] = data[x, y, z] }
        end
      end

      placed = 0
      if extra
        EXTRA_LAYER_COUNT.times do |index|
          flat = extra[index]
          z = BASE_LAYER_COUNT + index
          height.times do |y|
            row = y * width
            width.times do |x|
              tile_id = flat[row + x]
              next if tile_id == 0
              expanded[x, y, z] = tile_id
              placed += 1
            end
          end
        end
      end

      map.data = expanded
      @applied[map_id] = placed
      note("map #{map_id}: data #{data.zsize} -> #{map.data.zsize} layers, #{placed} Canopy/Sky tiles, " \
           "foreign tilesets #{foreign_tilesets(map_id).inspect}")
    rescue => e
      note("map #{map_id} FAILED, left at #{data.zsize} layers — #{e.class}: #{e.message}")
      note("  #{e.backtrace ? e.backtrace.first(3).join(' | ') : 'no backtrace'}")
    end
  end

  # How many extra-layer tiles were placed on a map this session, or nil if the
  # map has not been set up yet. Exists so a playtest can answer "did it work?"
  # with a number instead of a squint at a tree.
  def self.applied(map_id)
    return @applied[map_id]
  end

  # Editing a map means saving new JSON, so the parsed layers must not outlive it.
  def self.clear_cache
    @layer_cache.clear
    @warned.clear
    @applied.clear
    @foreign_tilesets.clear
    @views.clear
  end
end

EventHandlers.add(:on_game_map_setup, :sc_extra_map_layers,
  proc { |map_id, map, _tileset|
    SCMapExtraLayers.note_boot
    SCMapExtraLayers.apply(map_id, map)
  }
)

#===============================================================================
# Boot self-test.
#
# Runs the whole pipeline against every map that has Canopy or Sky content,
# without anyone having to walk there. It answers the questions static reading
# cannot: does the JSON resolve, do the tiles survive into the Table, and can
# each foreign tile find a loaded tileset with a real graphic behind it.
#
# Only the drawing itself is left uncovered, which is exactly the part that
# needs a screen.
#===============================================================================
module SCMapExtraLayers
  def self.self_test
    note_boot
    note("--- self-test ---")
    files = begin
      Dir.glob("#{DIR}/Map*.json")
    rescue => e
      note("self-test: cannot list #{DIR} (cwd #{Dir.pwd}) — #{e.message}")
      return
    end
    note("self-test: #{files.length} map file(s) under #{DIR}, cwd #{Dir.pwd}")

    files.sort.each do |path|
      map_id = path[/Map(\d+)\.json/, 1].to_i
      next if map_id <= 0
      begin
        text = File.binread(path)
        section = bracket_section(text, "layers")
        next if !section
        lists = row_lists(section)
        next if lists.length <= BASE_LAYER_COUNT
        # Cheap pre-check so the log is not one line per empty map.
        next if lists[BASE_LAYER_COUNT..-1].all? { |rows| rows.all? { |row| row.nil? || !row[/[^.* 0-9]/] && !row[/[1-9a-z]/] } }

        rmxp = load_data(sprintf("Data/Map%03d.rxdata", map_id)) rescue nil
        next if !rmxp
        layers = extra_layers(map_id, rmxp.width, rmxp.height)
        if !layers
          note("self-test map #{map_id}: no usable Canopy/Sky content")
          next
        end
        counts = layers.map { |flat| flat.count { |value| value != 0 } }
        note("self-test map #{map_id} (#{rmxp.width}x#{rmxp.height}): canopy #{counts[0]}, sky #{counts[1]}, " \
             "foreign #{foreign_tilesets(map_id).inspect}")

        # Resolve one tile of each kind the way the renderer will.
        layers.each_with_index do |flat, index|
          sample = flat.find { |value| value != 0 }
          next if !sample
          if sample >= FOREIGN_BASE
            resolved = view_for(map_id, sample)
            if !resolved
              note("  layer #{BASE_LAYER_COUNT + index}: value #{sample} does NOT resolve to a tileset")
            else
              view, real_id = resolved
              note("  layer #{BASE_LAYER_COUNT + index}: value #{sample} -> tileset ##{view.tileset_id} " \
                   "\"#{view.tileset_name}\" tile #{real_id}")
            end
          else
            note("  layer #{BASE_LAYER_COUNT + index}: value #{sample} (map's own tileset)")
          end
        end
      rescue => e
        note("self-test map #{map_id} FAILED — #{e.class}: #{e.message}")
      end
    end
    note("--- self-test done ---")
  end
end

# After the game's data is loaded, so $data_tilesets is available.
# Off by default: it reads every map file in the project, which is a stall at
# boot for information nobody needs once things work. Set it to true and relaunch
# when a map's extra layers do not show up, and the log will say how far the data
# got before it stopped.
SCMapExtraLayers::RUN_SELF_TEST = false

EventHandlers.add(:on_game_map_setup, :sc_extra_map_layers_self_test,
  proc {
    next if !SCMapExtraLayers::RUN_SELF_TEST
    next if SCMapExtraLayers.instance_variable_get(:@self_tested)
    SCMapExtraLayers.instance_variable_set(:@self_tested, true)
    SCMapExtraLayers.self_test
  }
)
