/**
 * Exports SCMap back to genuine RPG Maker XP .rxdata.
 *
 * This is the inverse of `core/import/rxdata.ts`, and it is what makes the
 * editor's saves actually reach the game: Essentials boots off Data/MapNNN.rxdata
 * and Data/MapInfos.rxdata, not off Data/SCMaps/*.json. Without this module a new
 * map would exist only inside the editor.
 *
 * Two properties matter more than elegance here:
 *
 *  - **Patch, don't rebuild.** When the original .rxdata exists we mutate the
 *    parsed object rather than constructing a fresh one, so ivar order and any
 *    field we do not model (plugins do occasionally bolt things onto RPG::Map)
 *    survive the round trip untouched.
 *  - **Loud about what does not fit.** RGSS hardcodes 3 tile layers and 1 tileset
 *    per map. SCMap has 5 and N. Anything outside that envelope cannot be written
 *    and is reported as a warning instead of being silently dropped — the JSON
 *    keeps it, so nothing is lost, but the author needs to know the game will not
 *    show it.
 */

import { jsonToMarshal, type JValue } from '../marshal/json';
import { RHash, RObject, RString, RTable, type RValue } from '../marshal/types';
import { decodeRow, unpackTile, type SCAudioRef, type SCMap } from '../scmap/format';

/** RGSS's fixed layer count. SCMap layers 3 and 4 have no .rxdata equivalent. */
const RMXP_LAYER_COUNT = 3;

export interface MapExport {
  map: RObject;
  warnings: string[];
}

/** `Map001.rxdata` — RMXP zero-pads to three digits and so must we. */
export function rxdataMapFile(id: number): string {
  return `Map${String(id).padStart(3, '0')}.rxdata`;
}

/**
 * A Ruby String as RGSS writes them: raw bytes, no encoding ivar.
 *
 * `RString.from` tags UTF-8, which Marshal emits as an `I`-wrapped string with
 * an `:E` ivar. RGSS runs Ruby 1.8, which predates that form — so tagging would
 * both break byte-identity with the project's existing files and risk handing
 * the engine a string shape it was never built to load.
 */
function rmxpString(text: string): RString {
  return new RString(new TextEncoder().encode(text));
}

/**
 * Builds an RPG::AudioFile, reusing the template wherever nothing changed.
 *
 * Two subtleties, both learned from the project's own files:
 *
 *  - SCMap stores a nameless track as `null`, which discards the volume and
 *    pitch RMXP still keeps on it. So an unchanged empty track must be left
 *    untouched rather than rebuilt at the 100/100 default.
 *  - String encoding tags are inconsistent across these files — some names are
 *    plain Ruby 1.8 strings, others carry `:E`. Keeping the original RString
 *    object when the text is unchanged sidesteps the guess entirely.
 */
function audioToRmxp(audio: SCAudioRef | null, template: RValue): RObject {
  const name = audio?.name ?? '';
  if (template instanceof RObject) {
    const current = template.get('@name');
    if (current instanceof RString && current.value === name) {
      if (audio === null) return template;
      template.set('@volume', audio.volume);
      template.set('@pitch', audio.pitch);
      return template;
    }
  }

  const out = template instanceof RObject ? template : new RObject('RPG::AudioFile');
  // RMXP represents "no track" as an AudioFile with an empty name, never as nil,
  // and Essentials' autoplay check reads @name — so write the empty file rather
  // than omitting the ivar.
  out.set('@name', rmxpString(name));
  out.set('@volume', audio?.volume ?? 100);
  out.set('@pitch', audio?.pitch ?? 100);
  return out;
}

/** Flattens SCMap's five layers into RMXP's `Table(width, height, 3)`. */
function tileTable(map: SCMap, warnings: string[]): RTable {
  const table = new RTable(map.width, map.height, RMXP_LAYER_COUNT);
  let aboveLayerThree = 0;
  let foreignSlot = 0;

  for (let z = 0; z < map.layers.length; z++) {
    const rows = map.layers[z]?.rows ?? [];
    for (let y = 0; y < map.height; y++) {
      const row = decodeRow(rows[y] ?? '', map.width);
      for (let x = 0; x < map.width; x++) {
        const packed = row[x];
        if (packed === 0) continue;
        if (z >= RMXP_LAYER_COUNT) {
          aboveLayerThree++;
          continue;
        }
        const { slot, id } = unpackTile(packed);
        // Slot N>0 means a second tileset, which RPG::Map cannot address at all:
        // the tile ID space is relative to the single @tileset_id.
        if (slot !== 0) {
          foreignSlot++;
          continue;
        }
        table.put(x, y, z, id);
      }
    }
  }

  if (aboveLayerThree > 0) {
    warnings.push(
      `${aboveLayerThree} tiles on the Canopy/Sky layers have no .rxdata equivalent and were left out of ${rxdataMapFile(map.id)}. They remain in the SCMap JSON, so the runtime plugin still renders them.`,
    );
  }
  if (foreignSlot > 0) {
    warnings.push(
      `${foreignSlot} tiles use a second tileset slot, which RPG Maker XP cannot store. They were left out of ${rxdataMapFile(map.id)} but remain in the SCMap JSON.`,
    );
  }
  return table;
}

/**
 * Rebuilds `@events` from the SCMap event list, keyed by event id as RMXP does.
 *
 * Entries follow the template's order, with anything new appended. Ruby does not
 * care, but rewriting a 40-event map into a different hash order turns "I moved
 * one NPC" into a file that differs almost everywhere.
 */
function eventsHash(map: SCMap, template: RValue, warnings: string[]): RHash {
  const hash = new RHash();
  const position = new Map<number, number>();
  if (template instanceof RHash) {
    template.entries.forEach(([key], index) => {
      if (typeof key === 'number') position.set(key, index);
    });
  }
  const ordered = [...map.events].sort(
    (a, b) =>
      (position.get(a.id) ?? Number.POSITIVE_INFINITY) -
        (position.get(b.id) ?? Number.POSITIVE_INFINITY) || a.id - b.id,
  );

  for (const event of ordered) {
    let decoded: RValue;
    try {
      decoded = jsonToMarshal(event.raw as JValue);
    } catch (err) {
      warnings.push(`Event ${event.id} (${event.name}) could not be exported: ${(err as Error).message}`);
      continue;
    }
    if (!(decoded instanceof RObject)) {
      warnings.push(`Event ${event.id} (${event.name}) did not decode to an RPG::Event; skipped.`);
      continue;
    }
    hash.set(event.id, decoded);
  }
  return hash;
}

/**
 * Builds the RPG::Map for one SCMap. `template` is the previously parsed
 * .rxdata for this id, when one exists, so unmodelled ivars survive.
 */
export function mapToRmxp(map: SCMap, template: RValue = null): MapExport {
  const warnings: string[] = [];
  const out = template instanceof RObject ? template : new RObject('RPG::Map');

  const tilesetId = map.tilesets[0]?.tilesetId ?? 1;
  if (map.tilesets.length > 1) {
    warnings.push(
      `Map ${map.id} references ${map.tilesets.length} tilesets; only slot 0 (#${tilesetId}) is written to .rxdata.`,
    );
  }

  out.set('@tileset_id', tilesetId);
  out.set('@width', map.width);
  out.set('@height', map.height);
  out.set('@autoplay_bgm', map.autoplayBgm);
  out.set('@bgm', audioToRmxp(map.bgm, out.get('@bgm')));
  out.set('@autoplay_bgs', map.autoplayBgs);
  out.set('@bgs', audioToRmxp(map.bgs, out.get('@bgs')));
  // Essentials drives encounters from PBS/encounters.txt, so @encounter_list is
  // vestigial — but RPG::Map must still have it or RMXP's editor errors on load.
  if (!Array.isArray(out.get('@encounter_list'))) out.set('@encounter_list', []);
  out.set('@encounter_step', map.encounterStep);
  out.set('@data', tileTable(map, warnings));
  out.set('@events', eventsHash(map, out.get('@events'), warnings));

  return { map: out, warnings };
}

// ------------------------------------------------------------------ MapInfos

/** One row of MapInfos.rxdata, as the tree operations need to write it. */
export interface MapInfoPatch {
  id: number;
  name: string;
  parentId: number;
  order: number;
}

/**
 * Applies tree changes to a parsed MapInfos hash.
 *
 * `remove` runs before `upsert` so a delete-and-recreate in one call behaves the
 * way the caller wrote it. Entries not mentioned keep their @expanded and scroll
 * position, which are pure RMXP editor state we have no business resetting.
 */
export function patchMapInfos(
  parsed: RValue,
  { upsert = [], remove = [] }: { upsert?: MapInfoPatch[]; remove?: number[] },
): RHash {
  const hash = parsed instanceof RHash ? parsed : new RHash();

  if (remove.length > 0) {
    const drop = new Set(remove);
    const kept = hash.entries.filter(([key]) => !(typeof key === 'number' && drop.has(key)));
    hash.entries.length = 0;
    hash.entries.push(...kept);
  }

  for (const patch of upsert) {
    const existing = hash.get(patch.id);
    const info = existing instanceof RObject ? existing : new RObject('RPG::MapInfo');
    info.set('@name', rmxpString(patch.name));
    info.set('@parent_id', patch.parentId);
    info.set('@order', patch.order);
    if (!info.has('@expanded')) info.set('@expanded', false);
    if (!info.has('@scroll_x')) info.set('@scroll_x', 0);
    if (!info.has('@scroll_y')) info.set('@scroll_y', 0);
    // `RHash.set` updates in place when the key exists, so an edit keeps its
    // position and only genuinely new maps are appended. Entry order in the file
    // is RMXP's own arbitrary hash order — re-sorting it would rewrite the whole
    // file to say nothing.
    hash.set(patch.id, info);
  }

  return hash;
}
