#===============================================================================
# [SC] Overworld Encounters — Configuration
#===============================================================================
# Sichtbare Wild-Pokemon laufen auf der Karte herum (statt Zufallskampf im Gras).
# Gespawnt wird map-genau aus GameData::Encounter (euer Script-System, Rate = %).
# Seltenheit ergibt sich aus der Erscheinungs-Wahrscheinlichkeit und faerbt den
# Namen in der schwebenden Box. Rebuild fuer Essentials v22 (Aug 2026).
#===============================================================================

module SCOverworldEncounters
  # Master-Schalter
  ENABLED = true
  DEBUG   = true    # true = Konsolen-Logs zum Spawnen/Despawnen
  DEBUG_HEARTBEAT = false # true = kompletter Zustand alle 2 Sekunden (sehr laut)
  DEBUG_LOG_FILE = "overworld_encounters.log"

  #-----------------------------------------------------------------------------
  # Bewegung (Werte aus der alten Version)
  #-----------------------------------------------------------------------------
  FLEE_SPEED  = 4   # Move-Speed beim Fliehen  (1-6)
  CHASE_SPEED = 4   # Move-Speed beim Verfolgen (1-6)
  WANDER_SPEED = 3  # Speed beim normalen Umherlaufen

  # Repel verhindert weiterhin normale Zufallskaempfe, blendet sichtbare
  # Overworld-Pokemon aber nicht aus (wichtig fuer Permanent Repel).
  RESPECT_REPEL = false

  #-----------------------------------------------------------------------------
  # Spawn-Steuerung
  #-----------------------------------------------------------------------------
  MIN_PER_MAP        = 3     # Grundpopulation, wird gestaffelt aufgebaut
  MAX_PER_MAP        = 8     # max. gleichzeitig sichtbare Overworld-Pokemon
  INITIAL_SPAWN_DELAY = 0.75 # erster Spawn nach Kartenbetritt
  FILL_SPAWN_DELAY    = 1.50 # Abstand bis die Grundpopulation erreicht ist
  SPAWN_INTERVAL_MIN  = 6.0  # danach natuerlicher, zufaelliger Spawnabstand
  SPAWN_INTERVAL_MAX  = 12.0
  SPAWN_STEPS_MIN     = 5    # neue Population waehrend der Spieler herumlaeuft
  SPAWN_STEPS_MAX     = 12
  SPAWN_FADE_SECONDS  = 0.6  # Pokemon tauchen weich auf
  DESPAWN_AFTER      = 0     # Legacy-Schalter; 0 = variable Lebensdauer unten
  DESPAWN_MIN_SECONDS = 45
  DESPAWN_MAX_SECONDS = 90
  DESPAWN_DISTANCE   = 0     # 0 = kein hartes Entfernen nur wegen Spielerdistanz
  DESPAWN_FADE_SECONDS = 1.5 # sichtbares Ausblenden statt abruptem Verschwinden
  SPAWN_MIN_DISTANCE = 5      # min. Kachel-Abstand zum Spieler beim Spawn
  SPAWN_MAX_DISTANCE = 12     # max. Kachel-Abstand zum Spieler beim Spawn
  ENCOUNTER_TYPES    = [:Land, :Cave]   # welche Encounter-Methoden Overworld-Spawns liefern

  # Seltene Gruppen derselben Art und groessere/staerkere Alpha-Pokemon.
  SWARM_CHANCE = 15           # Prozent pro Spawn-Versuch
  SWARM_SIZE   = 3..5
  SWARM_RADIUS = 3
  ALPHA_CHANCE = 4            # Prozent pro einzelnem Spawn
  ALPHA_LEVEL_BONUS = 5..10
  ALPHA_SCALE  = 1.35

  # Alpha encounters announce their unusual presence before the battle begins.
  ALPHA_ENCOUNTER_INTRO = true
  ALPHA_ENCOUNTER_MESSAGES = [
    "A strange energy radiates from the wild {1}...",
    "The air around the wild {1} crackles with an unusual power...",
    "An overwhelming presence emanates from the wild {1}...",
    "The wild {1} is surrounded by a mysterious energy!"
  ]

  #-----------------------------------------------------------------------------
  # Aggro / Verhalten
  #-----------------------------------------------------------------------------
  AGGRO_RADIUS = 3    # ab wie vielen Kacheln Naehe reagiert das Pokemon ("!" + Verfolgen/Fliehen)
  ALERT_TIME   = 40   # Frames, die die "!"-Blase angezeigt wird, bevor es losgeht
  # Legacy ID aliases for event scripts. The renderer itself uses the supplied
  # Follower_Emote1 sheet, so these no longer depend on Animations.rxdata.
  QUESTION_ANIMATION_ID    = 4
  EXCLAMATION_ANIMATION_ID = Settings::EXCLAMATION_ANIMATION_ID

  # Fluchtwahrscheinlichkeit je Seltenheit (0-100): Chance, dass es flieht statt
  # zu verfolgen/stehenzubleiben, sobald es den Spieler bemerkt.
  FLEE_CHANCE = {
    :common    => 5,
    :uncommon  => 15,
    :rare      => 35,
    :ultra     => 60,
    :legendary => 85
  }

  #-----------------------------------------------------------------------------
  # Shiny im Overworld
  #-----------------------------------------------------------------------------
  # Nenner der Shiny-Chance beim Spawn (512 = 1/512). nil = Standard-Spielrate.
  SHINY_CHANCE_DENOMINATOR = 512

  #-----------------------------------------------------------------------------
  # Seltenheits-Stufen: bestimmt aus der Spawn-Rate in Prozent (rate / summe * 100)
  #   Reihenfolge = von selten nach haeufig gepruet; erste passende Schwelle gilt.
  # name_color / level_color / border sind Text-/Rahmenfarben in der Box.
  #-----------------------------------------------------------------------------
  # [Stufen-Symbol, min_prozent, Namensfarbe (r,g,b), Aura?]
  RARITY_TIERS = [
    [:legendary,  0.0, [255, 215,  0], true ],   # < 2 %  Gold      + Aura
    [:ultra,      2.0, [190, 120, 255], true ],   # 2-4 %  Lila      + Aura
    [:rare,       5.0, [ 90, 170, 255], false],   # 5-9 %  Blau
    [:uncommon,  10.0, [110, 225, 130], false],   # 10-19% Gruen
    [:common,    20.0, [255, 255, 255], false]    # >=20 % Weiss
  ]

  # Level-Zahl (gold, wie im Original) und Geschlechtssymbol-Farben
  LEVEL_COLOR        = [255, 208,  64]
  GENDER_MALE_COLOR  = [ 96, 168, 255]
  GENDER_FEMALE_COLOR= [255, 120, 152]
  # Halbtransparente schwarze Bar hinter Name, Geschlecht und Level.
  BOX_FILL           = [0, 0, 0, 150]
  # Shiny-Highlight: Rahmenfarbe der Box + kleines Funkel-Symbol
  SHINY_TINT         = [255, 245, 150]

  #-----------------------------------------------------------------------------
  # Aura/Partikel bei Ultra/Legendary (nur ueber vorhandene Zeichenprimitive,
  # keine neuen Grafikdateien): farbiger, pulsierender Ring + aufsteigende Funken.
  #-----------------------------------------------------------------------------
  AURA_COLOR = {
    :ultra     => [190, 120, 255],
    :legendary => [255, 215,  60],
    :alpha     => [255,  80,  55]
  }

  #-----------------------------------------------------------------------------
  # Tag/Nacht- & Wetter-abhaengige Spawns
  #-----------------------------------------------------------------------------
  # Nur nachts / nur tags spawnende Arten (Symbole). Leer lassen = keine Einschraenkung.
  NIGHT_ONLY_SPECIES = []   # z.B. [:HOOTHOOT, :ZUBAT, :HAUNTER]
  DAY_ONLY_SPECIES   = []   # z.B. [:HOOTHOOT] tagsueber nie

  # Wetterbedingte Boosts/Sperren: :weather => { boost: [Arten x2], only: [nur diese] }
  # $game_screen.weather_type liefert :None, :Rain, :Storm, :Snow, :Sandstorm, :Sun, :Fog ...
  WEATHER_RULES = {
    :Rain      => { boost: [] },   # z.B. boost: [:MUDKIP, :PSYDUCK]
    :Storm     => { boost: [] },
    :Sandstorm => { boost: [] },
    :Snow      => { boost: [] },
    :Sun       => { boost: [] }
  }

  #-----------------------------------------------------------------------------
  # Helfer: Seltenheitsstufe + Farbe aus Prozentwert
  #-----------------------------------------------------------------------------
  def self.rarity_for_percent(percent)
    # Hoechste Mindestschwelle, die der Prozentwert noch erreicht.
    best = RARITY_TIERS.select { |t| percent >= t[1] }.max_by { |t| t[1] }
    best ||= RARITY_TIERS.first
    return best[0]
  end

  def self.tier_data(rarity_sym)
    RARITY_TIERS.find { |t| t[0] == rarity_sym } || RARITY_TIERS.last
  end

  def self.name_color(rarity_sym)
    c = tier_data(rarity_sym)[2]
    Color.new(c[0], c[1], c[2])
  end

  def self.has_aura?(rarity_sym)
    tier_data(rarity_sym)[3]
  end
end
