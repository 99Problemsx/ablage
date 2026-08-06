# ===============================================================================
# Debug Tools für Lighting System
# ===============================================================================

# Define missing Input key constants (Windows virtual key codes)
module Input
  L = 0x4C unless defined?(Input::L)
  P = 0x50 unless defined?(Input::P)
  N = 0x4E unless defined?(Input::N)
end

# Zeige Map-Koordinaten bei Tastendruck
# SC FIX (review C4): only register debug frame-handler in $DEBUG builds.
# Otherwise it runs Input.press? checks 60×/s for every player in release.
if $DEBUG
  EventHandlers.add(:on_frame_update, :lighting_debug,
    proc {
      if Input.press?(Input::CTRL) && Input.trigger?(Input::USE)
        x = $game_player.x
        y = $game_player.y
        pbMessage("Position: X=#{x}, Y=#{y}\\nMap ID: #{$game_map.map_id}")
      end
    }
  )
end

# Debug-Menü für Lighting
MenuHandlers.add(:debug_menu, :lighting_system, {
  "name"        => _INTL("Lighting System"),
  "parent"      => :field_menu,
  "description" => _INTL("Add/remove lights at current position."),
  "effect"      => proc { |menu|
    commands = []
    commands.push(_INTL("Add Circle Light Here"))
    commands.push(_INTL("Add Rect Light Here"))
    commands.push(_INTL("List All Lights"))
    commands.push(_INTL("Remove Nearest Light"))
    commands.push(_INTL("Toggle All Lights"))
    commands.push(_INTL("Add Small Circle Light"))
    commands.push(_INTL("Add Red Circle Light"))
    commands.push(_INTL("Add Blue Circle Light"))
    commands.push(_INTL("Add Yellow Circle Light"))
    commands.push(_INTL("Add Preset Light"))
    commands.push(_INTL("Toggle Light Preview"))
    commands.push(_INTL("Toggle Flashlight"))
    commands.push(_INTL("Toggle Flashlight Cone"))
    commands.push(_INTL("Toggle Follower Light"))
    commands.push(_INTL("Export Map Lights to Script"))

    if !$scene.is_a?(Scene_Map) || !$scene.spritesetGlobal&.lighting
      pbMessage("Lighting system not available (not on map).")
      next
    end
    
    choice = pbMessage(_INTL("Lighting Debug"), commands, -1)
    
    case choice
    when 0  # Add Circle Light
      x = $game_player.x
      y = $game_player.y
      id = "debug_circle_#{x}_#{y}_#{rand(1000)}".to_sym
      GameData::LightEffect.add({
        :id => id,
        :type => :circle,
        :radius => 64,
        :map_x => x,
        :map_y => y,
        :map_id => $game_map.map_id,
        :day => false
      })
      $scene.spritesetGlobal.lighting.refresh_all(true)
      pbMessage("Circle light added at (#{x}, #{y})\\nID: #{id}")
      
    when 1  # Add Rect Light
      x = $game_player.x
      y = $game_player.y
      id = "debug_rect_#{x}_#{y}_#{rand(1000)}".to_sym
      GameData::LightEffect.add({
        :id => id,
        :type => :rect,
        :width => 1,
        :height => 1,
        :map_x => x,
        :map_y => y,
        :map_id => $game_map.map_id,
        :day => false
      })
      $scene.spritesetGlobal.lighting.refresh_all(true)
      pbMessage("Rect light added at (#{x}, #{y})\\nID: #{id}")
      
    when 2  # List All Lights
      lights = []
      GameData::LightEffect.each do |effect|
        next if effect.map_id != $game_map.map_id
        lights.push("#{effect.id}: (#{effect.map_x}, #{effect.map_y}) - #{effect.type}")
      end
      if lights.empty?
        pbMessage("No lights on this map.")
      else
        pbMessage("Lights on Map #{$game_map.map_id}:\\n" + lights.join("\\n"))
      end
      
    when 3  # Remove Nearest Light
      px = $game_player.x
      py = $game_player.y
      nearest = nil
      nearest_dist = Float::INFINITY
      GameData::LightEffect.each do |effect|
        next if effect.map_id != $game_map.map_id
        dist = (effect.map_x - px).abs + (effect.map_y - py).abs
        if dist < nearest_dist
          nearest_dist = dist
          nearest = effect
        end
      end
      if nearest
        GameData::LightEffect::DATA.delete(nearest.id)
        $scene.spritesetGlobal.lighting.refresh_all(true)
        pbMessage("Removed light #{nearest.id} at (#{nearest.map_x}, #{nearest.map_y})")
      else
        pbMessage("No lights found on this map.")
      end
      
    when 4  # Toggle All Lights
      if $scene.spritesetGlobal.lighting
        if $scene.spritesetGlobal.lighting.disposed?
          pbMessage("Lighting system is disposed")
        else
          GameData::LightEffect.each do |effect|
            next if effect.map_id != $game_map.map_id
            $scene.spritesetGlobal.lighting.flick(effect.id)
          end
          pbMessage("Toggled all lights on this map")
        end
      end
    when 5  # Add Small Circle Light
      x = $game_player.x
      y = $game_player.y
      id = "debug_small_circle_#{x}_#{y}_#{rand(1000)}".to_sym
      GameData::LightEffect.add({
        :id => id,
        :type => :circle,
        :radius => 32,
        :map_x => x,
        :map_y => y,
        :map_id => $game_map.map_id,
        :day => false
      })
      $scene.spritesetGlobal.lighting.refresh_all(true)
      pbMessage("Small circle light added at (#{x}, #{y})\\nID: #{id}")
      
    when 6  # Add Red Circle Light
      x = $game_player.x
      y = $game_player.y
      id = "debug_red_circle_#{x}_#{y}_#{rand(1000)}".to_sym
      GameData::LightEffect.add({
        :id => id,
        :type => :circle,
        :radius => 64,
        :color => Color.new(255, 0, 0),
        :map_x => x,
        :map_y => y,
        :map_id => $game_map.map_id,
        :day => false
      })
      $scene.spritesetGlobal.lighting.refresh_all(true)
      pbMessage("Red circle light added at (#{x}, #{y})\\nID: #{id}")

    when 7  # Add Blue Circle Light
      x = $game_player.x
      y = $game_player.y
      id = "debug_blue_circle_#{x}_#{y}_#{rand(1000)}".to_sym
      GameData::LightEffect.add({
        :id => id,
        :type => :circle,
        :radius => 64,
        :color => Color.new(0, 0, 255),
        :map_x => x,
        :map_y => y,
        :map_id => $game_map.map_id,
        :day => false
      })
      $scene.spritesetGlobal.lighting.refresh_all(true)
      pbMessage("Blue circle light added at (#{x}, #{y})\\nID: #{id}")

    when 8  # Add Yellow Circle Light
      x = $game_player.x
      y = $game_player.y
      id = "debug_yellow_circle_#{x}_#{y}_#{rand(1000)}".to_sym
      GameData::LightEffect.add({
        :id => id,
        :type => :circle,
        :radius => 64,
        :color => Color.new(255, 255, 0),
        :map_x => x,
        :map_y => y,
        :map_id => $game_map.map_id,
        :day => false
      })
      $scene.spritesetGlobal.lighting.refresh_all(true)
      pbMessage("Yellow circle light added at (#{x}, #{y})\\nID: #{id}")

    when 9  # Add Preset Light
      preset_names = LIGHT_PRESETS.keys.map { |k| k.to_s }
      choice2 = pbMessage("Choose preset:", preset_names, -1)
      if choice2 >= 0
        x = $game_player.x
        y = $game_player.y
        preset_sym = LIGHT_PRESETS.keys[choice2]
        id = pbAddLight(x, y, preset: preset_sym)
        pbMessage("Preset :#{preset_sym} added at (#{x}, #{y})\\nID: #{id}")
      end

    when 10  # Toggle Light Preview
      lighting = $scene.spritesetGlobal.lighting
      state = lighting.toggle_debug_preview
      pbMessage("Light Preview: #{state ? 'ON' : 'OFF'}\\nShows positions/radii without darkness.")

    when 11  # Toggle Flashlight
      Flashlight.toggle
      pbMessage("Flashlight: #{Flashlight.active? ? 'ON' : 'OFF'}")

    when 12  # Toggle Flashlight Cone
      Flashlight.toggle_cone
      pbMessage("Flashlight mode: #{Flashlight.cone? ? 'CONE' : 'CIRCLE'}\\n(Turn the flashlight on to see it.)")

    when 13  # Toggle Follower Light
      FollowerLight.toggle
      pbMessage("Follower Light: #{FollowerLight.active? ? 'ON' : 'OFF'}\\nNeeds a visible follower Pokémon.")

    when 14  # Export Map Lights to Script
      count = pbExportMapLightsToScript($game_map.map_id)
      if count > 0
        pbMessage("Exported #{count} light(s) on Map #{$game_map.map_id}\\nappended to [009] Light_Definitions.rb.\\nRun once in $DEBUG to bake them in.")
      else
        pbMessage("No exportable lights on this map.")
      end
    end
  }
})

# ===============================================================================
# Export the current map's placed lights as pbDefineLight(...) lines, appended to
# "[009] Light_Definitions.rb". Skips the runtime-managed lights (flashlight,
# follower, event/door auto-lights) that are rebuilt automatically.
# ===============================================================================
LIGHT_DEFINITIONS_FILE = "Plugins/[SC] Dynamic Lighting System/[009] Light_Definitions.rb"

def pbExportMapLightsToScript(map_id)
  lines = []
  GameData::LightEffect.each do |e|
    next if e.map_id != map_id
    next if e.id == :player_flashlight || e.id == :follower_light
    next if e.id.to_s.start_with?("_evt_light_", "_door_bleed_")
    next if ![:circle, :rect, :cone].include?(e.type)
    kw = []
    kw << "color:#{e.color.red},#{e.color.green},#{e.color.blue}" if e.color
    kw << "intensity:#{e.intensity}" if e.intensity && e.intensity != 1.0
    kw << "day" if e.day
    kw << "flicker" if e.flicker
    kw << "embers" if e.embers
    kw << "beam" if e.beam
    kw << "window" if e.window
    kw << "reflect" if e.water_reflect
    kw << "shadows" if e.shadows
    kw << "pulse:#{e.pulse}" if e.pulse
    kw << "group:#{e.group}" if e.group
    kw << "switch:#{e.switch}" if e.switch
    kw << "width:#{e.width}" if e.type == :rect
    kw << "height:#{e.height}" if e.type == :rect
    kw << "spread:#{e.cone_spread}" if e.type == :cone
    kw << "angle:#{e.cone_angle}" if e.type == :cone
    args = [map_id, e.map_x, e.map_y, ":#{e.type}", e.radius]
    args.concat(kw.map { |k| "\"#{k}\"" })
    lines << "pbDefineLight(#{args.join(", ")})"
  end
  return 0 if lines.empty?
  begin
    File.open(LIGHT_DEFINITIONS_FILE, "a", encoding: "UTF-8") do |f|
      f.puts("")
      f.puts("# --- Exported from Map #{map_id} on #{Time.now.strftime('%Y-%m-%d %H:%M')} ---")
      lines.each { |l| f.puts(l) }
    end
  rescue => e
    pbMessage("Export failed: #{e.message}")
    return 0
  end
  return lines.length
end

# Schnellbefehl: Strg+L = Lighting Info
# SC FIX (review C4): registered only in $DEBUG; the previous inline
# `next if !$DEBUG` guard still ran 60×/s for every player in release.
if $DEBUG
  EventHandlers.add(:on_frame_update, :quick_add_light,
    proc {
      if Input.press?(Input::CTRL) && Input.trigger?(Input::L)
      if $scene.is_a?(Scene_Map) && $scene.instance_variable_get(:@spritesetGlobal)
        lighting = $scene.instance_variable_get(:@spritesetGlobal).lighting
        if lighting
          msg = "Lighting System Active\\n"
          msg += "Map ID: #{$game_map.map_id}\\n"
          msg += "Disposed: #{lighting.disposed?}\\n"
          msg += "Night: #{lighting.night?}\\n"
          msg += "Outside: #{lighting.outside?}\\n"
          effects_count = 0
          GameData::LightEffect.each { |e| effects_count += 1 if !e.map_id || e.map_id == $game_map.map_id }
          msg += "Effects on map: #{effects_count}"
          pbMessage(msg)
        else
          pbMessage("Lighting system not initialized!")
        end
      end
    end
    # Ctrl+P = Toggle light editor preview
    if Input.press?(Input::CTRL) && Input.trigger?(Input::P)
      if $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
        state = $scene.spritesetGlobal.lighting.toggle_debug_preview
        echoln("Light Preview: #{state ? 'ON' : 'OFF'}")
      end
    end
    # Ctrl+Shift+L = Toggle performance profiler overlay
    if Input.press?(Input::CTRL) && Input.press?(Input::SHIFT) && Input.trigger?(Input::L)
      if $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
        state = $scene.spritesetGlobal.lighting.toggle_profiler
        echoln("Lighting Profiler: #{state ? 'ON' : 'OFF'}")
      end
    end
    # Ctrl+Shift+C = Toggle light counter HUD
    # NOTE: Input::C is the engine's gamepad action button, not the keyboard
    # "C" key — use the raw VK code (0x43) like the L/P/N bindings above.
    if Input.press?(Input::CTRL) && Input.press?(Input::SHIFT) && Input.trigger?(0x43)
      if $scene.is_a?(Scene_Map) && $scene.spritesetGlobal&.lighting
        state = $scene.spritesetGlobal.lighting.toggle_light_counter
        echoln("Light Counter HUD: #{state ? 'ON' : 'OFF'}")
      end
    end
  }
)
end
