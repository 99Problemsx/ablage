# Shattered Crowns – Plugin-, Script- und Event-Referenz

Stand: 10. August 2026. Diese Referenz beschreibt die im Projekt vorhandenen
Plugins. Sie ist vor allem für den RPG-Maker-Eventbefehl **Script** und für
**Bedingte Verzweigung → Script** gedacht.

> Wichtig: Ruby unterscheidet Groß-/Kleinschreibung. `pblight` gibt es nicht.
> Für Licht verwendet dieses Projekt `pbAddLight(...)` oder den Event-Kommentar
> `[Light ...]`.

## Schnellstart

```ruby
# Script-Befehl in einem Event
pbAddLight($game_player.x, $game_player.y, preset: :torch)
pbOpenQuestJournal
relChange(:LYRA, 10, "Im Wald geholfen")

# Bedingte Verzweigung → Script
questActive?(:MAIN_01)
pbBountyCompleted?(:WOLF_ALPHA)
pbHourBetween?(18, 23)
```

Symbole beginnen mit `:` (`:LYRA`), Text steht in Anführungszeichen. Methoden
mit `?` geben `true`/`false` zurück und eignen sich für Bedingungen. IDs müssen
in der jeweiligen `000_Config.rb` oder Datendatei existieren.

## Dynamic Lighting System

### Event-Kommentare

Auf der **aktiven Eventseite** einen Kommentar einfügen. Wechselt die Seite,
wird das Licht passend hinzugefügt, geändert oder entfernt.

```text
[Light circle 48]
[Light circle 64 warm flicker]
[Light rect 2 1 yellow day]
[Light cone 96 angle:90 spread:50 intensity:1.2]
[Light circle 48 color:255,120,40 group:torches switch:25]
```

Formen: `circle RADIUS`, `rect BREITE HÖHE`, `cone RADIUS`.

Optionen: `red`, `blue`, `yellow`, `green`, `orange`, `warm`, `day`, `flicker`,
`flicker:0.5`, `shimmer`, `reflect`, `embers`, `beam`, `window`, `power_grid`,
`crystal`, `flame`, `bleed`, `seasonal`, `color:R,G,B`, `radius:N`,
`intensity:N`, `pulse:MODUS`, `angle:N`, `spread:N`, `group:NAME`,
`switch:ID`, `lifespan:FRAMES`, `sync:NAME`, `chain:ID`, `layer:ground|mid|overhead`,
`blend:additive|subtractive|multiply`, `follow:player|nearest|EVENT_ID`,
`follow_range:N`, `cull:N`, `color_var:ID`, `sound:DATEI`, `sound_range:N` und
`preset:NAME`. `shadows` ist ein ignorierter Legacy-Parameter.

### Script-Calls

```ruby
id = pbAddLight(10, 12)                                  # Kreislicht, Radius 64
id = pbAddLight(10, 12, 80, Color.new(255, 160, 60))
id = pbAddLight(10, 12, preset: :torch)
pbRemoveLight(id)
pbFadeLight(id, :in)             # alternativ :out; optional dritter Wert = Tempo
pbAttachLight(id, 7)             # an Event-ID 7 hängen
pbMoveLight(id, 15, 9)
pbSetLightIntensity(id, 0.7)
pbSetLightColor(id, Color.new(80, 120, 255))
pbSetLightRadius(id, 96)

pbGroupFadeIn(:torches)
pbGroupFadeOut(:torches, 0.02)
pbGroupHide(:torches)
pbGroupShow(:torches)
pbGroupSetIntensity(:torches, 0.5)
pbChainLights(:light_a, :light_b)
pbUnchainLight(:light_a)

pbBulkAddCircleLights(5, [[10, 12], [11, 12]], 48, false)
pbDefineLight(5, 10, 12, :circle, 48, "warm", "flicker")
pbExportMapLightsToScript($game_map.map_id) # nur sinnvoll im Debug-Modus
pbTileIlluminated?(10, 12)                  # true/false
pbDarkZoneEncounterMult(4, 1.5)             # Begegnungsmultiplikator
```

Taschenlampen-API: `Flashlight.on`, `.off`, `.toggle`, `.active?`,
`.toggle_cone`. Begleiterlicht: `FollowerLight.on`, `.off`, `.toggle`, `.active?`.
Speicher-/Entwicklerhelfer: `pbSaveLights`, `pbRestoreLights`,
`pbPurgeRuntimeLights`, `pbMigrateSavedLights`, `pbLoadBulkLights`.

## Welt, Zeit, Wetter und Musik

### Unreal Time System

```ruby
pbGetTimeNow                         # Time-Objekt
SCGameClock.now
SCGameClock.add_minutes(30)
SCGameClock.add_hours(2)
SCGameClock.add_days(1)
SCGameClock.advance_to(18, 30)
SCGameClock.set(2026, 8, 10, 12, 0, 0)
SCGameClock.paused?
```

### NPC Schedules

```text
[Schedule morning x:10 y:5 dir:down]
[Schedule evening x:3 y:8 dir:left switch:B]
[Schedule night hidden]
[Schedule 8-17 x:10 y:5 dir:right]
[Schedule allday x:5 y:5]
```

```ruby
pbDefineNPCSchedule(5) do |s|
  s.morning x: 10, y: 5, direction: 2
  s.afternoon x: 3, y: 8, direction: 4
  s.night visible: false
end
pbClearNPCSchedule(5)
pbRefreshNPCSchedules
pbGetNPCSchedule(5)
pbNPCVisible?(5)
pbNPCAt?(5, 10, 5)
pbNPCActivity(5)
pbNPCHasSchedule?(5)
pbLockNPCSchedule(5)
pbUnlockNPCSchedule(5)
pbNPCScheduleLocked?(5)
pbCurrentHour
pbHourBetween?(8, 17)
pbIsWorkHours?; pbIsLateNight?; pbIsDawn?; pbIsDusk?
```

Alle NPC-Calls akzeptieren optional eine `map_id` nach der Event-ID.

### Weather Events

`currentWeather`, `weatherForecast`, `pbShowWeatherForecast`,
`weatherAccessible?(:AREA_ID)`. Das Modul stellt zusätzlich
`WeatherEventEngine.forecast(days_ahead)` und `.forecast_list` bereit.

### Dynamic Music

Normalerweise automatisch. Nützliche Calls: `DynamicMusic.recheck_overworld_music`,
`DynamicMusic.transition_bgm("Dateiname")`, `DynamicMusic.restore_bgm`,
`DynamicMusic.reset`, `DynamicMusic.deactivate` und `DynamicMusic.on?`.

### Time Travel und Spirit Realm

```text
[TimeTravel]
[TimeTravel ASGHEIM]
```

```ruby
pbUnlockTimeTravel(PRESENT_MAP_ID)
pbTimeTravel                 # Ziel wählen/reisen
pbCurrentEra                 # :past oder :present
pbInPast?; pbInPresent?
pbTimeTravelCount
pbTimeTravelStatus

pbEnterSpiritRealm(:PORTAL_ID)
pbExitSpiritRealm
pbInSpiritRealm?
pbPortalDiscovered?(:PORTAL_ID)
pbRealmCleared?(:PORTAL_ID)
pbClearSpiritRealm
pbCorruptionLevel
pbMarkShadow(pokemon)
pbIsShadowPokemon?(pokemon)
pbPurifyPokemon(pokemon)     # optional zweites Argument: Item
```

### Map Fog of War und Photo Mode

`pbFogRevealed?(:ORT)`, `pbFogCompletion`, `pbFogRevealAll`,
`pbShowExplorationStatus`, `pbOpenPhotoMode`.

## Story, Quests und Figuren

### Quest Journal

```ruby
questStart(:MAIN_01)
questObjective(:MAIN_01, 0)
questComplete(:MAIN_01)
questFail(:MAIN_01)
questActive?(:MAIN_01)
questDone?(:MAIN_01)
pbOpenQuestJournal
pbQuests
```

### Relationship System

```text
[Relationship LYRA +10]
[Relationship KAEL -5]
```

```ruby
relChange(:LYRA, 10, "Im Wald geholfen")
relPoints(:LYRA)
relCurrentTier(:LYRA)
relTier?(:LYRA, :FRIEND)
relSceneAvailable?("lyra_confession")
relSetBattleCompanion(:LYRA)
relClearBattleCompanion
pbGiveGift(:LYRA)
pbGiftPreferences(:LYRA)
pbOpenRelationshipScreen
pbRelationship
```

### Reputation und Morality

```text
[Reputation ASGHEIM_GUARD +10]
[Morality +5 MERCY_CHOICE]
```

```ruby
repChange(:ASGHEIM_GUARD, 10, "Banditen vertrieben")
repPoints(:ASGHEIM_GUARD)
repTier?(:ASGHEIM_GUARD, :FRIENDLY)
repShopMod(:ASGHEIM_GUARD)
pbOpenReputationScreen

moralShift(5, :MERCY_CHOICE, "Gnade gezeigt")
moralChoice("Wie entscheidest du?", "Helfen", 5, "Ignorieren", -5)
moralValue
moralTier
moralTier?(:LIGHT)
moralLight?; moralNeutral?; moralDark?
moralEndingAvailable?(:ENDING_ID)
```

### Lore, Erinnerungen, Rückblenden und Banter

```text
[Codex NIDHOGGR_ORIGIN]
```

```ruby
codexDiscover(:NIDHOGGR_ORIGIN)
codexFound?(:NIDHOGGR_ORIGIN)
pbOpenLoreCodex                 # Alias: pbCodex
pbMemoryMilestone(:MET_ODIN, "Odin getroffen", :Story)
pbShowMemoryLane
pbStartFlashback(:FLASHBACK_ID)
pbEndFlashback
pbInFlashback?
```

Party Banter läuft über Trigger automatisch. Inhalte werden mit
`BanterRegistry.add(speaker_id, trigger_type, opts)` registriert; die Beispiele
liegen unter `Plugins/[SC] Party Banter/Data/`.

### New Game Plus und QoL

```ruby
pbInNGPlus?
pbNGPlusCycle
pbSawEnding?(:ENDING_ID)
pbOpenQoLMenu
qolEnabled?(:TOGGLE_ID)
qolSet(:TOGGLE_ID, true)
pbStartCutscene(:INTRO)
pbCanSkipCutscene?
pbEndCutscene(:INTRO)
```

## Kämpfe, Trainer und Fortschritt

### Dynamic Difficulty System

```ruby
DynamicDifficulty.score
DynamicDifficulty.current_tier
DynamicDifficulty.current_override
DynamicDifficulty.win_rate(10)
DynamicDifficulty.total_battles
DynamicDifficulty.pause!
DynamicDifficulty.resume!
DynamicDifficulty.paused?
DynamicDifficulty.set_score(50)
DynamicDifficulty.reset!
DynamicDifficulty.summary
```

TeamBuilder, TeamScaler und BattleHooks werden automatisch aufgerufen und sind
nicht als normale Event-Calls gedacht.

### Trainer Rematch

```text
[Rematch TRAINER_KEY]
```

```ruby
pbRematch
pbRematchBattle(:TRAINER_TYPE, "Name", :TRAINER_KEY)
rematchAvailable?(:TRAINER_KEY)
rematchDefeat(:TRAINER_KEY)
rematchTier(:TRAINER_KEY)
```

### Battle Arena, Companion Battles und Nemesis

```text
[CompanionBattle LYRA TEAMROCKET Grunt]
```

```ruby
pbStartArena
pbArenaStatus
pbArenaBestStreak
pbArenaHighestFloor
pbArenaFloorCleared?(5)
pbCompanionBattle(:LYRA, :TEAMROCKET, "Grunt")
pbHasNemesis?
pbNemesisCount
pbNemesisStatus
pbTotalNemesesDefeated
```

Battle Rewards Ex zeichnet Kämpfe automatisch auf und hat keinen globalen
Event-Script-Call. Overworld Encounters arbeitet ebenfalls automatisch über
Map-/Step-Hooks.

### Ancestral Weapons, Destiny und Level Caps

```ruby
pbUnlockWeapon(:ZACIANS_FANG)
pbHasWeapon?(:ZACIANS_FANG)
pbWeaponStage(:ZACIANS_FANG)
pbAddWeaponKOs(:ZACIANS_FANG, 1)
pbWeaponStatus

pbEarnFatePoints(5, "Boss besiegt")
pbFatePoints
pbOpenDestinyBoard
destinyPerkActive?(:PERK_ID)
destinyHasEffect?(:EFFECT_ID)
destinyEffectValue(:EFFECT_ID)
```

Level Caps Ex und Mega Stone Consume hängen sich automatisch in Erfahrung bzw.
Mega-Entwicklung ein. `pbGainExpFromExpCandy(...)` ist ein interner Item-Handler,
kein üblicher Event-Call.

## Pokémon, Begleiter, Items und Services

### Companion Pokemon

**Follower per Script/Event aus- und wieder einschalten** (Cutscenes, Kapitel).
Solange gesperrt ist, kann der Spieler das Pokémon weder mit der Toggle-Taste
noch über die Optionen zurückholen:

```ruby
pbDisableFollower        # Pokémon verschwindet und bleibt weg (mit Animation)
pbEnableFollower         # Sperre wieder aufheben
pbDisableFollower(false) # ohne Ein-/Ausblend-Animation
pbHideFollower           # sofort weg, ohne Animation
pbShowFollower           # sofort wieder da
pbFollowerLocked?        # true, solange gesperrt

pbHideCompanion          # identisch zu pbDisableFollower
pbShowCompanion          # identisch zu pbEnableFollower
```

Ohne Script geht das auch über einen Schalter: in
`Plugins/[SC] Companion Pokemon/001_FollowerConfig.rb` bei `DISABLE_SWITCH`
(komplett aus) oder `HIDE_SWITCH` (nur unsichtbar) eine Schalter-ID eintragen
und diesen Schalter im Event umlegen.

**Normales An/Aus** – das Gleiche, was die Toggle-Taste des Spielers macht:

```ruby
pbFollowerOn
pbFollowerOff
pbToggleFollower
pbToggleCompanion
pbFollowerActive?        # läuft gerade eins hinter dem Spieler?
```

**Interaktion und Sonstiges:**

```ruby
pbFollowerPokemon              # Pokémon-Objekt oder nil
pbFollowerTalk                 # Anrede-/Reaktionsszene auslösen
pbFollowerEmote(:HEART)        # :HEART :HAPPY :MUSIC :DOTS :ANGRY :POISON
                               # :QUESTION :EXCLAIM :COME_OUT :COME_IN
pbFollowerAnimation(30)        # normale RPG-Maker-Animation
pbFollowerMoveRoute([PBMoveRoute::JUMP, 0, 0])
pbFollowerFindItem(:POTION)
pbFollowerCycle(1)             # nächstes/voriges Party-Pokémon als Begleiter
pbFollowerSwapControl          # Sprites mit dem Begleiter tauschen
pbFollowerRefresh              # Sprite/Sichtbarkeit neu berechnen
pbSpawnFollower(event_id)      # Map-Event zum Begleiter machen
pbRemoveFollower
pbCompanionReaction
pbCompanionAffectionLevel
```

Weitere Einstellungen (Standardzustand, Tasten, Distanz-Offset, Spiegelung,
Status-Farbtöne, Sounds) stehen in `001_FollowerConfig.rb`.

Die weiteren `pbChooseItem`, `pbPokemonScreen`, `pbPokeCenterPC`, `pbStartTrade`
usw. sind Engine-Wrappers/Hooks und sollten nicht statt der normalen Essentials-
Calls verwendet werden.

### Pokemon Affection und Pokemon Titles

Beide Systeme arbeiten überwiegend automatisch. Für ein Pokémon-Objekt (zum
Beispiel `pkmn = $player.party[0]`) stehen diese Methoden bereit:

```ruby
pkmn.affection
pkmn.affection_level
pkmn.add_affection(5)
pkmn.title_stats
pkmn.earned_titles
pkmn.active_title
pkmn.active_title = :TITLE_ID
pkmn.display_title
pkmn.name_with_title
pkmn.check_titles
```

### Crafting, Runen und Secret Base

```ruby
pbOpenCrafting
pbDiscoverRecipe(:RECIPE_ID)
pbRecipeKnown?(:RECIPE_ID)
pbCanCraft?(:RECIPE_ID)
pbCraftItem(:RECIPE_ID)

pbDiscoverRune(:RUNE_ID)
pbHasRune?(:RUNE_ID)
pbRuneMenu                   # optional Party-Index
pbPokemonRune(pokemon)
pbOpenRuneForge

pbEstablishBase(:LOCATION_ID)
pbBaseEstablished?
pbEnterBase
pbLeaveBase
pbBuyDecoration(:DECO_ID)
pbBaseHasEffect?(:EFFECT_ID)
```

### NPC-Services und Menüs

```ruby
pbScDowsingRod
pbScDaycareTalk("Daycare Lady")
pbScMoveReminder("Old Sage")
pbMoveTutor(:TUTOR_ID)
pbDiscoverTutor(:TUTOR_ID)
pbTutorDiscovered?(:TUTOR_ID)
pbShowTutorNetwork
pbScMysteryGift("Delivery Person")
pbReceiveHealingVial
pbHasHealingVial?
pbHealingVialCharges
pbRechargeHealingVial
pbShowTrainerCardEx
pbOpenDexModeSelect
pbShowDexModeInfo
pbDexCompletionSummary
```

### Wanted Board

```ruby
pbOpenWantedBoard
pbBountyActive?(:BOUNTY_ID)
pbBountyCompleted?(:BOUNTY_ID)
pbTotalBountiesCompleted
```

## Script System 2.0 – Kurzreferenz

Das Script System ersetzt/ergänzt PBS-Daten durch Ruby-DSLs. Die wichtigsten
Event-Helfer sind:

```ruby
pbCutscene(:intro_scene, event_id: 5)
pbDialogue(:DIALOG_ID)
pbShop(:SHOP_ID)
pbAchievement(:ACHIEVEMENT_ID)
pbChapter(:CHAPTER_ID)
pbQuest(:start, :QUEST_ID)
pbSelectBox("Wähle", ["A", "B"])
pbSelectDifficulty
pbSelectChallengeMode
pbSelectGender
pbSelectLevelCap
pbCameraPan(3, 0, 20)
pbCameraShake(5, 20)
pbCameraFlash(10)
pbCameraReset(10)
pbPlayBGM("Track", 100)
pbPlaySE("Sound", 80)
pbPlayJingle(:PRESET)
pbCrossfade("Track", 1.0)
pbDisableEvent(5)             # optional Self-Switch, Standard 'A'
pbEnableEvent(5)
pbScriptDebug
```

Definitions-DSLs: `TrainerTeam.define`, `GameData::Shop.define`,
`GameData::Quest.define`, `GameData::Cutscene.define`, `MapConnection.define`,
`MysteryGift.define` sowie die Registrierungen für eigene Moves, Abilities,
Items, Pokémon, Typen und Trainer Types. Vollständige Beispiele stehen direkt
in den Dateien `Plugins/[SC] Script System/003_...` bis `054_...`.

Map Events Import ist ebenfalls eine Definitions-DSL (`MapEvents.define`)
und lädt Manifeste automatisch; seine RuntimeSpawner-Methoden sind intern.

## Installierte Drittanbieter-Plugins

Diese Ordner sind ebenfalls vorhanden, werden aber hier nur inventarisiert,
weil ihre APIs nicht zum `[SC]`-Eventvertrag gehören:

- Autosave Feature – automatisches Speichern.
- Battle Speed Control – Kampfgeschwindigkeit/Option.
- Box Auto-Sort – PC-Boxen sortieren.
- Challenge Modes – Spielmodi/Regelvarianten.
- EBDX Stat Boost Overlay – Statusstufen-Anzeige.
- Egg Steps Display – verbleibende Ei-Schritte.
- Elite Battle DX – Kampfszenen, Animationen und Battle-Scripting.
- Multiple Item Use – mehrere Items gleichzeitig verwenden.
- Permanent Repel – dauerhaftes Schutz-System.
- Pokemon World Tournament – Turnier-System.
- Travelling Trader – reisender Händler.
- Water Puddle Animation – Pfützenanimationen.
- `[000] Luka's Scripting Utilities` – Bibliothek/Abhängigkeit.
- `[AAI] Advanced AI System` – Kampf-KI; Abhängigkeit des DDS.

## Wo neue Inhalte eingetragen werden

- Plugin-Schalter, IDs und Balancing: jeweilige `000_Config.rb`.
- Lichtdefinitionen: `Plugins/[SC] Dynamic Lighting System/[009] Light_Definitions.rb`.
- Quests: `Plugins/[SC] Quest Journal/Data/`.
- Lore: `Plugins/[SC] Lore Codex/Data/`.
- Banter: `Plugins/[SC] Party Banter/Data/`.
- Script-System-Beispiele: `Plugins/[SC] Script System/`.
