#===============================================================================
# [SC] Overworld Encounters — Roaming Pokemon entity
#===============================================================================
# Ein sichtbares Wild-Pokemon auf der Karte. Erbt von Game_Character, damit
# Bewegung (move_toward/away/random), Kollision und Sprite-Positionierung aus
# der Engine kommen. Der Manager erzeugt/aktualisiert diese Objekte.
#===============================================================================

class SCOverworldPokemon < Game_Character
  attr_reader   :pkmn, :rarity, :percent
  attr_reader   :sc_remove_reason
  attr_accessor :sc_remove    # Flag: Manager soll despawnen
  attr_accessor :sc_battle    # Flag: Manager soll Kampf starten

  def initialize(pkmn, rarity, percent, x, y, alpha = false)
    super($game_map)
    @pkmn        = pkmn
    @rarity      = rarity
    @percent     = percent
    @sc_alpha    = alpha
    @sc_remove   = false
    @sc_battle   = false
    @sc_remove_reason = nil
    @sc_despawn_started_at = nil
    @sc_spawn_started_at = System.uptime
    @sc_state    = :wander      # :wander | :alert | :flee | :chase
    @sc_emote_serial = 0
    @sc_emote_key = nil
    now = System.uptime
    @sc_alert_until = nil
    lifetime = rand(SCOverworldEncounters::DESPAWN_MIN_SECONDS..
                    SCOverworldEncounters::DESPAWN_MAX_SECONDS)
    @sc_expires_at = now + lifetime
    @sc_next_move_at = now + (rand(30..90) / 60.0)
    @opacity     = 0
    @through     = false
    @walk_anime  = true
    @move_speed  = SCOverworldEncounters::WANDER_SPEED
    file = GameData::Species.ow_sprite_filename(@pkmn.species, @pkmn.form,
                                                @pkmn.gender, @pkmn.shiny?)
    @character_name = file.to_s.sub(/^Graphics\/Characters\//i, "")
    moveto(x, y)
  end

  def sc_state; @sc_state; end
  # Sprite_Character checks event names for reflection tags. Roaming Pokemon
  # are Game_Character objects rather than Game_Event objects, but still need
  # the same harmless interface to avoid a rescued NoMethodError in debug mode.
  def name; @character_name.to_s; end
  def map_id; @map.map_id; end
  def alpha?; @sc_alpha; end
  def alerted?; @sc_state == :alert; end
  def fleeing?; @sc_state == :flee; end

  def begin_despawn(reason)
    return if @sc_despawn_started_at
    @sc_remove_reason = reason
    @sc_despawn_started_at = System.uptime
    @sc_state = :despawn
    @through = true
  end

  def dist_to_player
    (@x - $game_player.x).abs + (@y - $game_player.y).abs
  end

  def play_cry
    GameData::Species.play_cry_from_species(@pkmn.species, @pkmn.form)
  rescue StandardError
    nil
  end

  def show_emote(key)
    # Compatibility for old callers which still pass the database IDs.
    key = :QUESTION if key == SCOverworldEncounters::QUESTION_ANIMATION_ID
    key = :EXCLAIM if key == SCOverworldEncounters::EXCLAMATION_ANIMATION_ID
    key = key.to_s.upcase.to_sym rescue nil
    return unless CompanionFollower::EMOTE_SHEET_FRAMES[key]
    @sc_emote_key = key
    @sc_emote_serial += 1
  end

  def sc_emote_request
    return [@sc_emote_serial, @sc_emote_key]
  end

  # Game_Character ist in v22 nur noch eine Basisklasse und erwartet diese
  # Callback-Methoden von seinen konkreten Subklassen. Overworld-Pokemon sind
  # keine RPG-Events, deshalb sollen sie hier keine Eventseite starten.
  def check_event_trigger_after_turning; end
  def check_event_trigger_touch(_dir); end

  def update
    super
    now = System.uptime
    if @sc_despawn_started_at
      duration = [SCOverworldEncounters::DESPAWN_FADE_SECONDS, 0.1].max
      progress = (now - @sc_despawn_started_at) / duration
      @opacity = (255 * (1.0 - progress)).clamp(0, 255).to_i
      @sc_remove = true if progress >= 1.0
      return
    end
    if @sc_spawn_started_at
      duration = [SCOverworldEncounters::SPAWN_FADE_SECONDS, 0.1].max
      progress = (now - @sc_spawn_started_at) / duration
      @opacity = (255 * progress).clamp(0, 255).to_i
      if progress >= 1.0
        @opacity = 255
        @sc_spawn_started_at = nil
      end
    end
    return if moving? || jumping?
    d = dist_to_player
    max_distance = SCOverworldEncounters::DESPAWN_DISTANCE
    if max_distance && max_distance > 0 && d >= max_distance
      begin_despawn(:distance)
      return
    end
    # Beruehrung -> Kampf
    if d <= 1
      @sc_battle = true
      return
    end
    case @sc_state
    when :wander
      # v22 kann Map-Updates mit variabler Rate ausfuehren. Deshalb echte Zeit
      # statt Update-Aufrufe zaehlen (1800/60 = 30 Sekunden).
      if @sc_expires_at && now >= @sc_expires_at
        begin_despawn(:lifetime)
        return
      end
      if d <= SCOverworldEncounters::AGGRO_RADIUS
        @sc_state = :alert
        @sc_alert_until = now + (SCOverworldEncounters::ALERT_TIME / 60.0)
        show_emote(:QUESTION)
      elsif now >= @sc_next_move_at
        @sc_next_move_at = now + (rand(30..90) / 60.0)
        move_random
      end
    when :alert
      if @sc_alert_until && now >= @sc_alert_until
        chance = SCOverworldEncounters::FLEE_CHANCE[@rarity] || 0
        if rand(100) < chance
          @sc_state   = :flee
          @move_speed = SCOverworldEncounters::FLEE_SPEED
        else
          @sc_state   = :chase
          @move_speed = SCOverworldEncounters::CHASE_SPEED
        end
        show_emote(:EXCLAIM)
      end
    when :flee
      move_away_from_player
      # entkommen, sobald weit genug weg
      begin_despawn(:fled) if d >= SCOverworldEncounters::SPAWN_MAX_DISTANCE + 3
    when :chase
      move_toward_player
    end
  end
end
