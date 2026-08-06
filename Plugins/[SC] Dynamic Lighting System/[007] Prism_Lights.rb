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
        GameData::LightEffect.add(hash)
        count += 1
      rescue
        # skip a single bad entry, keep the rest
      end
    end
    echoln("PrismLights: #{count} editor-placed light(s) loaded") if $DEBUG && count > 0
  end
end

PrismLights.load_all
