# ============================================================================
# Prism Lights Loader — lights placed in the Prism Engine map editor.
#
# Prism writes Data/prism_lights.rxdata: a marshalled Array of Hashes, each a
# plain LightEffect.add hash (symbol keys; :color/:tone stored as [r,g,b]
# arrays so no RGSS classes are needed inside the file). Loaded once at boot,
# so editing lights in Prism only needs a game RESTART — no plugin recompile.
#
# Missing/corrupt file → no lights, never crashes boot.
# ============================================================================
module PrismLights
  FILE = "Data/prism_lights.rxdata"

  def self.load_all
    exists = defined?(pbRgssExists?) ? pbRgssExists?(FILE) : FileTest.exist?(FILE)
    return if !exists
    list = (load_data(FILE) rescue nil)
    return if !list.is_a?(Array)
    count = 0
    list.each do |h|
      next if !h.is_a?(Hash)
      begin
        hash = {}
        h.each { |k, v| hash[k.to_sym] = v }
        hash[:id] = hash[:id].to_sym if hash[:id].is_a?(String)
        hash[:type] = hash[:type].to_sym if hash[:type].is_a?(String)
        hash[:color] = Color.new(*hash[:color]) if hash[:color].is_a?(Array)
        next if !hash[:map_id] || !hash[:map_x] || !hash[:map_y]
        # Editor-authored data is static project content, not a runtime light.
        # Using add tagged it for savegame persistence and later purging.
        GameData::LightEffect.register(hash)
        count += 1
      rescue
        # skip a single bad entry, keep the rest
      end
    end
    echoln("PrismLights: #{count} editor-placed light(s) loaded") if $DEBUG && count > 0
  end
end

PrismLights.load_all

# mkxp-z does not necessarily ship Ruby's `json` standard library. This small
# parser covers JSON values without external dependencies. Forge only feeds it
# the compact `lighting` object extracted from each otherwise very large map.
module SCJSON
  class Parser
    def initialize(text); @text = text; @index = 0; end
    def parse; value = read_value; skip_space; raise "trailing JSON data" if @index < @text.length; value; end
    def skip_space; @index += 1 while @index < @text.length && @text.getbyte(@index) <= 32; end
    def read_value
      skip_space
      case @text.getbyte(@index)
      when 123 then read_object
      when 91  then read_array
      when 34  then read_string
      when 116 then read_literal("true", true)
      when 102 then read_literal("false", false)
      when 110 then read_literal("null", nil)
      else read_number
      end
    end
    def read_literal(word, value); raise "invalid JSON literal" if @text[@index, word.length] != word; @index += word.length; value; end
    def read_object
      result = {}; @index += 1; skip_space
      return (@index += 1; result) if @text.getbyte(@index) == 125
      loop do
        key = read_string; skip_space; raise "expected ':'" if @text.getbyte(@index) != 58
        @index += 1; result[key] = read_value; skip_space
        byte = @text.getbyte(@index); @index += 1
        break if byte == 125
        raise "expected ','" if byte != 44
        skip_space
      end
      result
    end
    def read_array
      result = []; @index += 1; skip_space
      return (@index += 1; result) if @text.getbyte(@index) == 93
      loop do
        result << read_value; skip_space; byte = @text.getbyte(@index); @index += 1
        break if byte == 93
        raise "expected ','" if byte != 44
      end
      result
    end
    def read_string
      skip_space; raise 'expected string' if @text.getbyte(@index) != 34
      @index += 1; result = +""
      while @index < @text.length
        byte = @text.getbyte(@index); @index += 1
        break if byte == 34
        if byte == 92
          esc = @text.getbyte(@index); @index += 1
          mapped = { 34 => '"', 92 => "\\", 47 => "/", 98 => "\b", 102 => "\f", 110 => "\n", 114 => "\r", 116 => "\t" }[esc]
          if esc == 117
            code = @text[@index, 4].to_i(16); @index += 4
            result << [code].pack("U")
          elsif mapped
            result << mapped
          else
            raise "invalid string escape"
          end
        else
          result << byte.chr
        end
      end
      result
    end
    def read_number
      start = @index
      @index += 1 while @index < @text.length && @text.getbyte(@index).chr.match?(/[0-9eE+\-.]/)
      token = @text[start...@index]
      raise "invalid number" if token.empty?
      token.match?(/[\.eE]/) ? token.to_f : token.to_i
    end
  end

  def self.parse(text); Parser.new(text).parse; end

  def self.member(text, name)
    match = text.match(/"#{Regexp.escape(name)}"\s*:/)
    return nil if !match
    start = match.end(0); start += 1 while start < text.length && text.getbyte(start) <= 32
    opening = text.getbyte(start)
    return text[start..-1].split(/[\s,}]/, 2)[0] if opening != 123 && opening != 91 && opening != 34
    close = { 123 => 125, 91 => 93, 34 => 34 }[opening]
    depth = 0; string = false; escaped = false; index = start
    while index < text.length
      byte = text.getbyte(index)
      if string
        if escaped then escaped = false
        elsif byte == 92 then escaped = true
        elsif byte == 34 then string = false; return text[start..index] if opening == 34
        end
      elsif byte == 34 then string = true
      elsif byte == opening then depth += 1
      elsif byte == close
        depth -= 1
        return text[start..index] if depth == 0
      end
      index += 1
    end
    nil
  end
end

# SC Editor integration -------------------------------------------------------
# Forge stores lighting beside the map in Data/SCMaps/MapNNN.json. Import it at
# boot so Save in the editor is all that is required; no Ruby export/recompile.
module SCEditorLights
  DIR = "Data/SCMaps"
  @settings = {}

  def self.ambient(map_id)
    value = @settings[map_id] && @settings[map_id][:ambient]
    return value.nil? ? 1.0 : value
  end

  def self.tint(map_id, hour)
    keys = @settings[map_id] && @settings[map_id][:tints]
    return nil if !keys || keys.empty?
    hours = keys.keys.sort
    return keys[hours[0]] if hours.length == 1
    nxt = hours.find { |value| value >= hour } || hours[0]
    idx = hours.index(nxt)
    prv = hours[(idx - 1) % hours.length]
    span = (nxt - prv) % 24
    span = 24 if span == 0
    amount = ((hour - prv) % 24).to_f / span
    a = keys[prv]
    b = keys[nxt]
    return [0, 1, 2].map { |i| (a[i] + (b[i] - a[i]) * amount).round }
  end

  def self.load_all(reload = false)
    begin
      files = Dir.glob(DIR + "/Map*.json")
      if reload
        stale = GameData::LightEffect::DATA.keys.select { |id| id.to_s.start_with?("_scmap_") }
        stale.each { |id| GameData::LightEffect::DATA.delete(id) }
        @settings.clear
      end
      count = 0
      files.each do |file|
        begin
          text = File.binread(file)
          lighting_json = SCJSON.member(text, "lighting")
          lighting = lighting_json ? SCJSON.parse(lighting_json) : nil
          map_id = (SCJSON.member(text, "id") || "0").to_i
          map_width = (SCJSON.member(text, "width") || "1").to_i
          map_height = (SCJSON.member(text, "height") || "1").to_i
        rescue => e
          echoln("SCEditorLights: Skipping #{file}: #{e.message}") if $DEBUG
          next
        end
        next if map_id <= 0 || !lighting.is_a?(Hash) || !lighting["enabled"]
        tints = {}
        (lighting["tintByHour"] || {}).each do |hour, color|
          match = color.to_s.match(/^#([0-9a-f]{6})$/i)
          h = hour.to_i
          next if !match || h < 0 || h > 23
          hex = match[1]
          tints[h] = [hex[0, 2].to_i(16), hex[2, 2].to_i(16), hex[4, 2].to_i(16)]
        end
        @settings[map_id] = {
          :ambient => (lighting["ambient"] || 1.0).to_f.clamp(0.0, 1.0),
          :tints => tints
        }
        seen_ids = {}
        (lighting["lights"] || []).each_with_index do |light, index|
          next if !light.is_a?(Hash)
          next if light["enabled"] == false
          color = light["color"].to_s
          rgb = color.match(/^#([0-9a-f]{6})$/i)
          next if !rgb
          hex = rgb[1]
          type = (light["type"] || "circle").to_sym
          type = :circle if ![:circle, :rect, :cone].include?(type)
          hours = light["activeHours"]
          hours = nil if !hours.is_a?(Array) || hours.length < 2
          width_tiles = [map_width, 1].max
          height_tiles = [map_height, 1].max
          map_x = [[light["x"].to_i, 0].max, width_tiles - 1].min
          map_y = [[light["y"].to_i, 0].max, height_tiles - 1].min
          source_id = light["id"].to_s
          source_id = "light_#{index + 1}" if source_id.empty?
          if seen_ids[source_id]
            seen_ids[source_id] += 1
            source_id = "#{source_id}_#{seen_ids[source_id]}"
          else
            seen_ids[source_id] = 1
          end
          switch_id = light["switchId"].to_i
          switch_id = nil if switch_id <= 0
          radius = [[light["radius"].to_f, 0.1].max, 100.0].min
          intensity = [[(light["intensity"] || 1.0).to_f, 0.0].max, 2.0].min
          flicker = [[(light["flicker"] || 0).to_f, 0.0].max, 1.0].min
          pulse = [[(light["pulse"] || 0).to_f, 0.0].max, 1.0].min
          speed = [[(light["animationSpeed"] || 1.0).to_f, 0.05].max, 10.0].min
          width = [[(light["width"] || 2).to_f, 0.1].max, 50.0].min
          height = [[(light["height"] || 1).to_f, 0.1].max, 50.0].min
          spread = [[(light["spread"] || 60).to_f, 1.0].max, 180.0].min
          hash = {
            :id => :"_scmap_#{map_id}_#{source_id}", :map_id => map_id,
            :map_x => map_x, :map_y => map_y, :type => type,
            :radius => (radius * Game_Map::TILE_WIDTH).round,
            :width => width, :height => height,
            :color => Color.new(hex[0, 2].to_i(16), hex[2, 2].to_i(16), hex[4, 2].to_i(16)),
            :intensity => intensity, :flicker => flicker, :pulse => pulse,
            :animation_speed => speed,
            :switch => switch_id, :cone_angle => (light["angle"] || 0).to_f % 360.0,
            :cone_spread => spread,
            :event => (light["eventId"].to_i > 0 ? light["eventId"].to_i : nil),
            :group => (light["group"].to_s.empty? ? nil : light["group"].to_sym),
            :active_weather => (light["activeWeather"].is_a?(Array) ? light["activeWeather"] : nil),
            :layer => (light["layer"] || "character").to_sym,
            :blend => (light["blend"] || "additive").to_sym,
            :occlude => light["occlude"] != false,
            :on_hour => hours.is_a?(Array) ? hours[0].to_i : nil,
            :off_hour => hours.is_a?(Array) ? hours[1].to_i : nil,
            :day => nil
          }
          GameData::LightEffect.register(hash)
          count += 1
        end
      end
      echoln("SCEditorLights: #{count} Forge light(s) loaded") if $DEBUG && count > 0
    rescue => e
      echoln("SCEditorLights: #{e.message}") if $DEBUG
    end
  end
end

SCEditorLights.load_all

# Debug hot reload: saving a MapNNN.json in Forge updates the running map within
# half a second. Release builds do no filesystem polling.
if $DEBUG
  module SCEditorLights
    @file_signature = nil
    def self.file_signature
      Dir.glob(DIR + "/Map*.json").sort.map { |file| [file, File.mtime(file).to_f, File.size(file)] rescue [file, 0, 0] }.hash
    end
    def self.check_hot_reload
      signature = file_signature
      @file_signature ||= signature
      return if signature == @file_signature
      @file_signature = signature
      load_all(true)
      lighting = $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
      lighting.refresh_all(true) if lighting && !lighting.disposed?
      echoln("SCEditorLights: Hot-reloaded Forge lighting")
    end
  end
  EventHandlers.add(:on_frame_update, :sc_editor_lights_hot_reload,
    proc { SCEditorLights.check_hot_reload if Graphics.frame_count % 20 == 0 }
  )
end
