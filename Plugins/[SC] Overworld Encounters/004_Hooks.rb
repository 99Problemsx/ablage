#===============================================================================
# [SC] Overworld Encounters — Engine-Hooks
#===============================================================================
# Klinkt den Spawn-Manager in die Karten-Szene ein. Bei einem Fehler wird das
# System fuer die Session abgeschaltet (statt jeden Frame zu crashen) und der
# Fehler einmal geloggt.
#===============================================================================

module SCOEManager
  @broken = false
  def self.broken?; @broken; end
  def self.safe_update
    return if @broken
    begin
      update
    rescue StandardError => e
      @broken = true
      log("DEAKTIVIERT #{e.class}: #{e.message}") rescue nil
      log(e.backtrace[0, 12].join("\n")) if e.backtrace rescue nil
      dispose_all rescue nil
    end
  end
end

# Sprite- und Manager-Update ueber den offiziellen v22-Frame-Hook. Ein Alias
# auf Scene_Map#update konnte durch spaeter geladene Plugins ueberschrieben
# werden und lief dann nur noch kurz waehrend des Kartenaufbaus.
EventHandlers.add(:on_frame_update, :sc_overworld_encounters_update,
  proc { SCOEManager.safe_update if $scene.is_a?(Scene_Map) })

SCOEManager.log("PLUGIN GELADEN; Frame-Hook registriert")

class Scene_Map
  alias __scoe_disposeSpritesets disposeSpritesets unless method_defined?(:__scoe_disposeSpritesets)
  def disposeSpritesets
    SCOEManager.dispose_all rescue nil
    __scoe_disposeSpritesets
  end
end

# Beim Kartenwechsel sauber zuruecksetzen (v22: EventHandlers statt Events.onMapChange)
EventHandlers.add(:on_enter_map, :sc_overworld_encounters_reset,
  proc { |prev_map|
    begin
      SCOEManager.log("ON_ENTER_MAP prev=#{prev_map.inspect} current=#{$game_map&.map_id.inspect}")
      SCOEManager.reset
    rescue StandardError => e
      SCOEManager.log("ON_ENTER_MAP FEHLER #{e.class}: #{e.message}") rescue nil
    end
  })
