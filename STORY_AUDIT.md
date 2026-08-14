# Story-Audit – Befunde und Änderungen

## Ausgangslage

Die wiedergefundene `Main_Story.rb` umfasst rund 20.600 Zeilen, 89.600 Wörter,
55 Kapitel und vier Interludes. Sie ist keine kurze Outline, sondern eine fast
vollständige Dialog- und Cutscene-Fassung.

## Behobene Logikprobleme

- Die scheinbar zweimal restaurierte Krone getrennt: Kapitel 34 erzeugt nur ein
  provisorisches Echo; Kapitel 42 restauriert die historische Originalkrone.
- Eternatus bleibt nach seiner Befreiung ein eigenständiges Wesen. Nidhoggr nutzt
  im zweiten Finale eine eigene körperlose Void-Form statt erneut Eternatus.
- Die falsche Aussage entfernt, Nidhoggrs Gefängnis sei nach Kapitel 35 für immer
  verschwunden; nur der Zugang aus der sterblichen Welt schließt sich.
- Nidhoggrs Standard-Bossreden durch gestohlene Erinnerungen, Hungerbilder und
  Sätze der Verstorbenen ersetzt.
- Hoopas drei Statuswechsel eindeutig getrennt: Befreiung aus dem alten Siegel,
  Bergung aus Nidhoggr und körperliche Restaurierung durch Arceus.
- Marcus und Aurora bleiben bis einschließlich True Ending lebendig und aktiv.
- Den letzten aktiven Legacy-Namen Verdantia in Kapitel 49 entfernt.
- Kapitel 43, 47, 49 und 51–55 um Entscheidungen, zivile Gegenstimmen,
  Rettungsaufgaben, Familienentwicklung und selbstgewählte Zukunft ausgebaut.

- Falscher Legacy-Name `ch24_elm_death` zu `ch24_aldric_death` geändert.
- Nicht vorhandenen `SW::ELM_DIED` durch `SW::ALDRIC_DIED` ersetzt.
- Eigene Kontinuitätsschalter für Aldric, Ragnar und Elena angelegt.
- Zwei falsch nummerierte Cutscene-IDs den Kapiteln 21 und 23 zugeordnet.
- Veralteten Regionsnamen Verdania in Storydialogen durch Asgheim ersetzt.
- Kopfzeile von „40 Kapitel“ auf tatsächlich vorhandene 55 korrigiert.
- Hoopas Motivation vom freiwilligen Chaosgegner zum unfreiwilligen Gefangenen
  und warnenden Schlüssel umgeschrieben.
- Hoopa erhält in Kapitel 47 eine Befreiungs- und Restaurationsszene.
- Ruin an den neueren, stärkeren Figurenkanon angepasst: weiblich, freiwillige
  Nihilistin, keine unglaubwürdige Reue in letzter Sekunde.
- Ragnars Opfer als sichtbare Entscheidung mit vorhandenem Fluchtweg geschärft.
- Alle `trainer_battle`-Aufrufe syntaktisch auf drei Argumente vereinheitlicht.
- Vier besonders kurze Schlusskapitel um insgesamt elf Cutscenes erweitert.
- Ruins echten Rayquaza-Segen wiederhergestellt und als tragisch fehlgeleitetes
  Vertrauen statt moralisches Gütesiegel eingeordnet.
- Einen ungelösten Konflikt und spätere Vertrauensregeln für Lyra und Kael ergänzt.
- Aldrics, Ragnars und Elenas Tod um langfristig sichtbare Folgen erweitert.
- Alle acht Arenen als Informations-, Zugangs- oder Unterstützungsnetz mit der
  Hauptquest verbunden, ohne bestehende Arenakämpfe zu entfernen.
- Akt 5 um 23 Cutscenes mit spielbaren Rettungen, drei unterschiedlichen
  Tempelmechaniken, Astorias Zivilbevölkerung, Distortion-World-Erkundung und
  einem mechanisch eigenständigen Endkampf erweitert.
- Giratina von einer vierten Energiequelle zum freiwilligen Partner mit eigener
  verwundeter Heimat und ausdrücklich widerrufbaren Bedingungen ausgebaut.
- Die zuvor untergewichteten Kapitel 31, 33, 48 und 50 um 17 Szenen erweitert:
  Asgaheim-Erkundung, Elenas taktische Nachwirkung, beschädigte Heimkehr sowie
  konkrete institutionelle und persönliche Aufbauarbeit.

## Weiterhin kritisch

### Technische Gegnerdefinitionen

Folgende Story-Gegnertypen fehlen gegenwärtig in den aktuellen TrainerType-Daten:

`ASTORIAN_WILD`, `CULTIST_AMBUSH1`, `CULTIST_AMBUSH2`, `CULTIST_PATROL`,
`CULTIST_WAVE1`, `FORGOTTEN`, `GYMLEADER`, `LEADER`, `NIDHOGGR_FINAL`,
`NIDHOGGR_PHASE1`, `POKEMON`, `RIVAL`, `SHATTEREDHAND`, `VOIDCREATURE`,
`VOIDWALKER`.

Das ist kein Storylogikfehler, blockiert aber die spätere Ausführung betroffener
Kämpfe. Diese Typen müssen auf aktuelle Trainerklassen gemappt oder neu angelegt
werden.

### Arenaleiter

Die Hauptstory verwendet teilweise generische Namen wie „Gym Leader 6“ und
„Draco“. Der neuere Codex etabliert Fern, Karel, Kestra, Sören, Inés, Petra,
Tarquin und Vala. Die vorhandenen Trainerteams Flora, Marina und Rocky sind
Legacy-Daten. Vor Mapproduktion ist eine einmalige Kanonentscheidung nötig.

### Umfangsgefälle nach dem Ausbau

Akt 1–4 liegen typischerweise bei 14–22 Cutscenes. Kapitel 36–47 besitzen nach
dem Ausbau 8–15 Cutscenes und konkrete Gameplay-Regie für Rettungen, Rätsel,
Nebenwege sowie Bossziele. Kapitel 49, 51, 53 und 54 wurden zuvor ebenfalls
erweitert. Das verbleibende Gefälle soll beim Mapbau durch die beschriebenen
spielbaren Sequenzen geschlossen werden, nicht durch weitere Textboxen.

### Ton des letzten Endes – bewusste Setzung

Kapitel 55 wiederholt häufig „forever“, „saved everything“, „love“ und
„the world was safe“. Das ist als stark emotionaler, märchenhafter Abschluss
beabsichtigt und bleibt erhalten. Die ergänzten konkreten Erinnerungen und
Handlungen stehen daneben, statt diese Wiederholungen zu ersetzen.

### Absichtlich große Eskalation

Der scheinbare Sieg in Kapitel 34/35, sein Bruch ab Kapitel 36 und der endgültige
Kampf in Kapitel 45/46 bleiben bewusst bestehen. Ebenso bleiben Astoria,
Giratina, Arceus, die Distortion World und das große Legendären-Ensemble erhalten.
Bei weiteren Überarbeitungen soll ihre jeweilige Funktion geschärft, aber kein
Bestandteil aus Gründen einer vermeintlichen „Legendary Inflation“ entfernt werden.

## Kapitelumfang nach dem Audit

Kapitel 36–47 sind als zweite Finalroute jetzt inhaltlich ausreichend konzipiert.
Der tatsächliche Spielumfang hängt davon ab, dass die markierten Tempelrätsel,
Astoria-Aufgaben, Perspektivwechsel und Vier-Anker-Bossmechanik umgesetzt werden.
