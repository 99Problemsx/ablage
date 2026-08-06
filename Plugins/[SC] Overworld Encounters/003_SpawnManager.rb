#===============================================================================
# [SC] Overworld Encounters — Spawn-Manager
#===============================================================================
# Spawnt/despawnt die Overworld-Pokemon einer Karte aus GameData::Encounter,
# regelt Anzahl/Despawn/Repel/Tag-Nacht/Wetter und startet den Kampf bei Kontakt.
# Wird pro Frame aus Scene_Map#update aufgerufen (siehe 004_Hooks.rb).
#===============================================================================

module SCOEManager
  module_function

  def reset
    dispose_all
    @broken     = false
    @entries    = []      # [ [SCOverworldPokemon, SCOESprite], ... ]
    @own_viewport ||= nil
    @next_spawn_at = System.uptime + SCOverworldEncounters::INITIAL_SPAWN_DELAY
    @steps_until_spawn = rand(SCOverworldEncounters::SPAWN_STEPS_MIN..
                              SCOverworldEncounters::SPAWN_STEPS_MAX)
    @last_player_pos = $game_player ? [$game_player.x, $game_player.y] : nil
    @map_id     = $game_map ? $game_map.map_id : -1
    @last_heartbeat_at = nil
    debug("RESET map=#{@map_id} player=#{@last_player_pos.inspect}")
  end

  def entries; @entries ||= []; end

  def viewport
    # In den geteilten Map-Viewport (@@viewport1: Map/Events/Spieler, z=0) rendern,
    # damit die Overworld-Pokemon per screen_z korrekt mit Events/Spieler layern.
    # Ein eigener z=0-Viewport landete hinter der Karte -> Mon blitzte nur kurz auf.
    if defined?(Spriteset_Map) && Spriteset_Map.respond_to?(:viewport)
      vp = (Spriteset_Map.viewport rescue nil)
      return vp if vp && !vp.disposed?
    end
    # Fallback: eigener Viewport (nur falls der Map-Viewport nicht verfuegbar ist)
    if @own_viewport.nil? || @own_viewport.disposed?
      @own_viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
      @own_viewport.z = 0
    end
    @own_viewport
  end

  def dispose_all
    (@entries || []).each { |_e, spr| spr.dispose rescue nil }
    @entries = []
    # NUR den eigenen Fallback-Viewport disposen, NIEMALS den geteilten Map-Viewport.
    if @own_viewport && !@own_viewport.disposed?
      @own_viewport.dispose
      @own_viewport = nil
    end
  end

  def log(msg)
    return if !SCOverworldEncounters::DEBUG
    stamp = Time.now.strftime("%H:%M:%S.%L") rescue Time.now.to_s
    line = "[#{stamp}] [SC/OWENC   ] INFO  #{msg}"
    echoln(line)
    File.open(SCOverworldEncounters::DEBUG_LOG_FILE, "ab") do |file|
      file.write(line + "\n")
    end
  rescue StandardError => e
    echoln("[SC/OWENC   ] ERROR Log failed: #{e.message}") rescue nil
  end
  def debug(msg)
    log(msg)
  end

  #-----------------------------------------------------------------------------
  # Haupt-Update (jeder Frame)
  #-----------------------------------------------------------------------------
  def update
    return if !SCOverworldEncounters::ENABLED
    return if !$game_map || !$game_player
    if @battle_starting
      # Keep nameplates, aura and the alpha emote alive during the intro
      # message, but never update AI or start a second battle recursively.
      entries.each { |_mon, spr| spr.update rescue nil }
      return
    end
    # Bei Kartenwechsel alles zuruecksetzen
    if @map_id != $game_map.map_id
      reset
      return
    end
    track_player_steps
    heartbeat

    pending_battle = nil
    entries.each do |entry|
      mon, spr = entry
      if !spr || spr.disposed?
        spr = SCOESprite.new(mon, viewport)
        entry[1] = spr
        debug("Sprite wiederhergestellt: #{mon.pkmn.speciesName}")
      end
      begin
        mon.update if can_update_entities?
        spr.update
      rescue StandardError => e
        debug("ENTITY-FEHLER #{mon.pkmn.speciesName} #{e.class}: #{e.message}")
        debug(e.backtrace[0, 8].join("\n")) if e.backtrace
        mon.sc_remove = true
        next
      end
      if mon.sc_battle && pending_battle.nil?
        pending_battle = entry
      end
    end
    SCOESprite.resolve_plate_overlaps(entries.map { |_mon, spr| spr })

    # Despawns einsammeln
    entries.reject! do |mon, spr|
      if mon.sc_remove
        spr.dispose rescue nil
        debug("despawn #{mon.pkmn.speciesName} (#{mon.sc_remove_reason || :unknown})")
        true
      else
        false
      end
    end

    # Kampf ausloesen (nach der Update-Schleife, um Re-Entrancy zu vermeiden)
    if pending_battle
      start_battle(pending_battle)
      return
    end

    # Neuen Spawn versuchen
    @next_spawn_at ||= System.uptime + 0.5
    population_low = entries.length < SCOverworldEncounters::MIN_PER_MAP
    walked_enough  = (@steps_until_spawn || 0) <= 0
    if can_spawn? && System.uptime >= @next_spawn_at &&
       (population_low || walked_enough)
      delay = if entries.length < SCOverworldEncounters::MIN_PER_MAP
                SCOverworldEncounters::FILL_SPAWN_DELAY
              else
                rand * (SCOverworldEncounters::SPAWN_INTERVAL_MAX -
                        SCOverworldEncounters::SPAWN_INTERVAL_MIN) +
                  SCOverworldEncounters::SPAWN_INTERVAL_MIN
              end
      @next_spawn_at = System.uptime + delay
      try_spawn
      @steps_until_spawn = rand(SCOverworldEncounters::SPAWN_STEPS_MIN..
                                SCOverworldEncounters::SPAWN_STEPS_MAX)
    end
  end

  def heartbeat
    return if !SCOverworldEncounters::DEBUG_HEARTBEAT
    now = System.uptime
    return if @last_heartbeat_at && now - @last_heartbeat_at < 2.0
    @last_heartbeat_at = now
    flags = "menu=#{$game_temp.in_menu.inspect} battle=#{$game_temp.in_battle.inspect} " \
            "message=#{$game_temp.message_window_showing.inspect}"
    wait = @next_spawn_at ? (@next_spawn_at - now).round(2) : nil
    mons = entries.map do |mon, _spr|
      "#{mon.pkmn.speciesName}@#{mon.x},#{mon.y}:#{mon.sc_state}"
    end.join("|")
    debug("HEARTBEAT map=#{$game_map.map_id} pos=#{$game_player.x},#{$game_player.y} " \
          "entries=#{entries.length} steps=#{@steps_until_spawn.inspect} " \
          "spawn_in=#{wait.inspect} #{flags} mons=[#{mons}]")
  end

  def track_player_steps
    pos = [$game_player.x, $game_player.y]
    if @last_player_pos && pos != @last_player_pos
      @steps_until_spawn = (@steps_until_spawn || 1) - 1
    end
    @last_player_pos = pos
  end

  # Spritepositionen muessen auch bei Nachrichten/Parallel-Events aktualisiert
  # werden. Nur die KI pausiert in Menues und im Kampf.
  def can_update_entities?
    return false if $game_temp.in_menu || $game_temp.in_battle
    return true
  end

  def can_spawn?
    return false if $game_temp.in_menu || $game_temp.in_battle
    return false if $game_temp.message_window_showing
    return true
  end

  #-----------------------------------------------------------------------------
  # Kampf starten und die Entitaet entfernen
  #-----------------------------------------------------------------------------
  def start_battle(entry)
    mon, spr = entry
    pkmn = mon.pkmn
    @battle_starting = true
    mon.sc_battle = false
    # Beide Beteiligten vor dem Kampfbeginn sichtbar zueinander drehen.
    $game_player.straighten
    mon.straighten
    pbTurnTowardEvent($game_player, mon)
    pbTurnTowardEvent(mon, $game_player)
    spr.update
    $scene.spritesetGlobal.playersprite.update rescue nil
    4.times { Graphics.update }

    if mon.alpha? && SCOverworldEncounters::ALPHA_ENCOUNTER_INTRO
      mon.show_emote(:EXCLAIM)
      spr.update
      pbWait(0.35)
      messages = SCOverworldEncounters::ALPHA_ENCOUNTER_MESSAGES
      if messages && !messages.empty?
        pbMessage(_INTL(messages.sample, pkmn.name))
      end
    end

    entries.delete(entry)
    spr.dispose rescue nil
    tags = []
    tags << "SHINY" if pkmn.shiny?
    tags << "ALPHA" if mon.alpha?
    suffix = tags.empty? ? "" : " (#{tags.join(', ')})"
    debug("battle vs #{pkmn.speciesName} Lv.#{pkmn.level}#{suffix}")
    WildBattle.start(pkmn, can_override: true)
  ensure
    @battle_starting = false
  end

  #-----------------------------------------------------------------------------
  # Spawn-Versuch
  #-----------------------------------------------------------------------------
  def try_spawn
    if entries.length >= SCOverworldEncounters::MAX_PER_MAP
      debug("SPAWN BLOCKIERT: Population voll (#{entries.length})")
      return
    end
    if repel_active?
      debug("SPAWN BLOCKIERT: Repel aktiv")
      return
    end
    slots = current_slots
    if slots.nil? || slots.empty?
      # Maps without encounters (interiors, cutscene maps, etc.) must not retry
      # and print the same diagnostic every fill interval.
      @next_spawn_at = System.uptime + 10.0
      return
    end

    total = slots.sum { |s| s[:weight] }
    if total <= 0
      debug("SPAWN BLOCKIERT: Slotgewicht #{total}")
      return
    end
    rnd = rand(total)
    chosen = nil
    slots.each do |s|
      rnd -= s[:weight]
      if rnd < 0
        chosen = s
        break
      end
    end
    if chosen.nil?
      debug("SPAWN BLOCKIERT: gewichtete Auswahl ergab nil")
      return
    end

    pos     = find_spawn_tile
    if pos.nil?
      debug("SPAWN BLOCKIERT: kein Tile fuer #{@spawn_encounter_category.inspect} " \
            "im Radius #{SCOverworldEncounters::SPAWN_MIN_DISTANCE}..#{SCOverworldEncounters::SPAWN_MAX_DISTANCE}")
      return
    end

    swarm = rand(100) < SCOverworldEncounters::SWARM_CHANCE
    amount = swarm ? rand(SCOverworldEncounters::SWARM_SIZE) : 1
    amount = [amount, SCOverworldEncounters::MAX_PER_MAP - entries.length].min
    spawned = 0
    amount.times do |i|
      spawn_pos = (i == 0) ? pos : find_nearby_spawn_tile(pos[0], pos[1])
      next if spawn_pos.nil?
      mon = spawn_one(chosen, spawn_pos)
      next if !mon
      mon.play_cry if spawned == 0
      spawned += 1
    end
    debug("Schwarm x#{spawned} #{chosen[:species]}") if swarm && spawned > 1
  end

  def spawn_one(chosen, pos)
    percent = (chosen[:base].to_f / @base_total * 100.0)
    rarity  = SCOverworldEncounters.rarity_for_percent(percent)
    alpha   = rand(100) < SCOverworldEncounters::ALPHA_CHANCE
    level   = rand(chosen[:min]..chosen[:max])
    if alpha
      level += rand(SCOverworldEncounters::ALPHA_LEVEL_BONUS)
      level = [level, 100].min
    end
    pkmn = pbGenerateWildPokemon(chosen[:species], level)
    denom = SCOverworldEncounters::SHINY_CHANCE_DENOMINATOR
    pkmn.shiny = (rand(denom) == 0) if denom
    mon = SCOverworldPokemon.new(pkmn, rarity, percent, pos[0], pos[1], alpha)
    spr = SCOESprite.new(mon, viewport)
    entries.push([mon, spr])
    kind = alpha ? "ALPHA " : ""
    debug("spawn #{kind}#{pkmn.speciesName} Lv.#{level} #{rarity} @ #{pos[0]},#{pos[1]}")
    return mon
  end

  # Encounter-Slots der aktuellen Karte, gefiltert nach Tag/Nacht + Wetter.
  # Liefert [{species:, weight:, base:, min:, max:}], setzt @base_total.
  def current_slots
    types = live_encounter_tables
    if types.nil? || types.empty?
      if @missing_encounter_table_map != $game_map.map_id
        debug("keine Encounter-Tabelle fuer Map #{$game_map.map_id} (Script System / $PokemonEncounters leer)")
        @missing_encounter_table_map = $game_map.map_id
      end
      return nil
    end
    @missing_encounter_table_map = nil
    list = nil
    selected_key = nil
    @spawn_encounter_category = nil
    SCOverworldEncounters::ENCOUNTER_TYPES.each do |t|
      # Basis-Typ zuerst, dann Tag/Nacht-Varianten (:Land -> :LandDay/:LandNight/...)
      key = [t, :"#{t}Day", :"#{t}Night", :"#{t}Morning", :"#{t}Afternoon", :"#{t}Evening"].find do |k|
        types[k] && !types[k].empty?
      end
      if key
        list = types[key]
        selected_key = key
        @spawn_encounter_category = (GameData::EncounterType.get(key).type rescue
                                     (t == :Cave ? :cave : :land))
        break
      end
    end
    if list.nil?
      debug("Map #{$game_map.map_id}: Encounters vorhanden, aber keine Typen aus #{SCOverworldEncounters::ENCOUNTER_TYPES.inspect}")
      return nil
    end

    night   = (PBDayNight.isNight? rescue false)
    weather = ($game_screen.weather_type rescue :None)
    wrule   = SCOverworldEncounters::WEATHER_RULES[weather] || {}
    wonly   = wrule[:only]
    wboost  = wrule[:boost] || []

    @base_total = list.sum { |slot| slot[0] }
    debug("ENCOUNTER-TABELLE key=#{selected_key.inspect} category=#{@spawn_encounter_category.inspect} " \
          "slots=#{list.length} total=#{@base_total}")
    out = []
    list.each do |slot|
      prob, species, minlv, maxlv = slot[0], slot[1], slot[2], slot[3]
      next if SCOverworldEncounters::NIGHT_ONLY_SPECIES.include?(species) && !night
      next if SCOverworldEncounters::DAY_ONLY_SPECIES.include?(species) && night
      next if wonly && !wonly.empty? && !wonly.include?(species)
      w = prob
      w *= 2 if wboost.include?(species)
      out.push({ species: species, weight: w, base: prob, min: minlv, max: maxlv })
    end
    out
  end

  # Live-Encounter-Tabellen der aktuellen Karte im Format {typ => [[prob,species,min,max],...]}.
  # Bevorzugt $PokemonEncounters (vom Spiel korrekt ge-setupt, gespeist aus unserem
  # Script System via GameData::Encounter-Hook), Fallback: direkte Abfrage.
  def live_encounter_tables
    if defined?($PokemonEncounters) && $PokemonEncounters
      t = ($PokemonEncounters.instance_variable_get(:@encounter_tables) rescue nil)
      return t if t && !t.empty?
    end
    ver = ($PokemonGlobal&.encounter_version rescue 0) || 0
    enc = (GameData::Encounter.get($game_map.map_id, ver) rescue nil)
    return nil if enc.nil? || !enc.respond_to?(:types)
    enc.types
  end

  def repel_active?
    return false if !SCOverworldEncounters::RESPECT_REPEL
    return false if !$PokemonGlobal.respond_to?(:repel)
    return $PokemonGlobal.repel && $PokemonGlobal.repel > 0
  end

  #-----------------------------------------------------------------------------
  # Freie, begehbare Kachel in Reichweite des Spielers finden
  #-----------------------------------------------------------------------------
  def find_spawn_tile
    px = $game_player.x
    py = $game_player.y
    mind = SCOverworldEncounters::SPAWN_MIN_DISTANCE
    maxd = SCOverworldEncounters::SPAWN_MAX_DISTANCE
    80.times do
      dx = rand(-maxd..maxd)
      dy = rand(-maxd..maxd)
      dist = dx.abs + dy.abs
      next if dist < mind || dist > maxd
      x = px + dx
      y = py + dy
      next if x < 0 || y < 0 || x >= $game_map.width || y >= $game_map.height
      next if !spawn_tile_passable?(x, y)
      next if !encounter_tile?(x, y)
      next if occupied?(x, y)
      return [x, y]
    end
    nil
  end

  def find_nearby_spawn_tile(center_x, center_y)
    radius = SCOverworldEncounters::SWARM_RADIUS
    40.times do
      dx = rand(-radius..radius)
      dy = rand(-radius..radius)
      dist = dx.abs + dy.abs
      next if dist == 0 || dist > radius
      x = center_x + dx
      y = center_y + dy
      next if x < 0 || y < 0 || x >= $game_map.width || y >= $game_map.height
      next if !spawn_tile_passable?(x, y)
      next if !encounter_tile?(x, y)
      next if occupied?(x, y)
      return [x, y]
    end
    nil
  end

  # Essentials v22 akzeptiert bei Game_Map#passable? nur die Richtungen
  # 2/4/6/8. Der alte Aufruf mit 0 erzeugte beim ersten Spawnversuch einen
  # RangeError und safe_update deaktivierte danach den gesamten Manager.
  def spawn_tile_passable?(x, y)
    [2, 4, 6, 8].any? { |dir| $game_map.passable?(x, y, dir) }
  rescue StandardError
    false
  end

  # Land-Pokemon erscheinen nur auf Terrain, auf dem v22 auch normale
  # Land-Encounters erlaubt. In Hoehlen ist jede begehbare Kachel geeignet.
  def encounter_tile?(x, y)
    return true if @spawn_encounter_category == :cave
    terrain = $game_map.terrain_tag(x, y)
    return terrain && terrain.land_wild_encounters && !terrain.ice
  rescue StandardError
    false
  end

  def occupied?(x, y)
    return true if $game_player.x == x && $game_player.y == y
    $game_map.events.each_value { |e| return true if e.x == x && e.y == y && !e.through }
    entries.each { |mon, _s| return true if mon.x == x && mon.y == y }
    false
  end
end
