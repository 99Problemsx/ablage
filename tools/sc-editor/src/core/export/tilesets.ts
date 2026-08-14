/**
 * Exports the tileset catalogue back to Data/Tilesets.rxdata.
 *
 * Same contract as the map exporter: the JSON catalogue is the editable record,
 * but the game and RPG Maker XP both read .rxdata, so a catalogue-only save is a
 * tileset the author cannot actually paint with in game.
 *
 * Patching over rebuilding, again. RPG::Tileset carries a dozen fields SCMap has
 * no opinion about — panorama, fog, battleback — and rebuilding would silently
 * reset every one of them. Only the fields the editor owns are written.
 *
 * One difference from the map path worth knowing: tileset name strings in this
 * project *do* carry an `:E` UTF-8 encoding ivar, where map and MapInfos strings
 * do not. That is not a choice, it is what RPG Maker wrote, so `RString.from`
 * (which tags UTF-8) is correct here and wrong there. The byte-identity check in
 * `verify-tileset-export.ts` is what keeps that straight.
 */

import { RObject, RString, RTable, type RValue } from '../marshal/types';
import type { SCTileset } from '../scmap/format';

/** RMXP allocates this many attribute entries per tileset. */
export const TILESET_ATTRIBUTE_SIZE = 4400;

/** RMXP always stores seven autotile slots, blank where unused. */
export const AUTOTILE_SLOTS = 7;

/** Builds a 1-D attribute Table from the catalogue's sparse record. */
function attributeTable(values: Record<number, number>, template: RValue): RTable {
  // Match the existing table's size when there is one: RMXP sizes these to the
  // tileset graphic, and growing one for no reason would rewrite the whole blob.
  const size = template instanceof RTable ? template.xsize : TILESET_ATTRIBUTE_SIZE;
  const table = new RTable(size, 1, 1);
  for (const [key, value] of Object.entries(values)) {
    const index = Number(key);
    if (!Number.isInteger(index) || index < 0 || index >= size) continue;
    table.data[index] = value;
  }
  return table;
}

function autotileNames(names: string[]): RValue[] {
  return Array.from({ length: AUTOTILE_SLOTS }, (_, i) => RString.from(names[i] ?? ''));
}

/**
 * The ivar order RPG Maker XP itself wrote for this project's tilesets. Only
 * used when creating one from scratch — an existing entry keeps its own order,
 * because `RObject.set` updates in place.
 */
const NEW_TILESET_IVARS: readonly string[] = [
  '@terrain_tags', '@panorama_hue', '@fog_sy', '@name', '@fog_opacity',
  '@priorities', '@panorama_name', '@fog_sx', '@fog_hue', '@passages',
  '@autotile_names', '@fog_zoom', '@fog_name', '@battleback_name',
  '@tileset_name', '@id', '@fog_blend_type',
];

/** Fields RPG::Tileset needs that the editor has no opinion about. */
function fillDefaults(target: RObject): void {
  const defaults: Array<[string, RValue]> = [
    ['@panorama_hue', 0], ['@panorama_name', RString.from('')],
    ['@fog_name', RString.from('')], ['@fog_hue', 0], ['@fog_opacity', 64],
    ['@fog_blend_type', 0], ['@fog_zoom', 100], ['@fog_sx', 0], ['@fog_sy', 0],
    ['@battleback_name', RString.from('')],
  ];
  for (const [name, value] of defaults) {
    // Absent *or* null: a new tileset has its ivars pre-seeded with null to fix
    // their order, so checking `has` alone would leave every default unwritten
    // and hand RPG Maker XP a tileset with a nil where it expects a number.
    if (target.get(name) === null) target.set(name, value);
  }
}

export function tilesetToRmxp(tileset: SCTileset, template: RValue = null): RObject {
  const out = template instanceof RObject ? template : new RObject('RPG::Tileset');

  if (!(template instanceof RObject)) {
    // Seed the ivars in RMXP's own order, so a new entry is indistinguishable
    // from one the editor never touched.
    for (const name of NEW_TILESET_IVARS) out.set(name, null);
  }

  out.set('@id', tileset.id);
  out.set('@name', RString.from(tileset.name));
  out.set('@tileset_name', RString.from(tileset.graphic));
  out.set('@autotile_names', autotileNames(tileset.autotiles));
  out.set('@passages', attributeTable(tileset.passages, out.get('@passages')));
  out.set('@priorities', attributeTable(tileset.priorities, out.get('@priorities')));
  out.set('@terrain_tags', attributeTable(tileset.terrainTags, out.get('@terrain_tags')));
  fillDefaults(out);
  return out;
}

/**
 * Applies catalogue entries to the parsed Tilesets.rxdata array.
 *
 * RMXP indexes this array by id with a nil at 0, so the array is grown to fit
 * and any gap is filled with nil rather than left undefined — a sparse JS array
 * would dump as something Ruby cannot load.
 */
export function patchTilesets(parsed: RValue, upsert: SCTileset[]): RValue[] {
  const list: RValue[] = Array.isArray(parsed) ? [...parsed] : [null];
  if (list.length === 0) list.push(null);

  for (const tileset of upsert) {
    if (!Number.isInteger(tileset.id) || tileset.id < 1) continue;
    while (list.length <= tileset.id) list.push(null);
    list[tileset.id] = tilesetToRmxp(tileset, list[tileset.id]);
  }
  return list;
}

/** Lowest unused tileset id. RMXP ids start at 1; index 0 is always nil. */
export function nextTilesetId(used: Iterable<number>): number {
  const taken = new Set(used);
  let id = 1;
  while (taken.has(id)) id++;
  return id;
}

/** A blank catalogue entry for a freshly registered graphic. */
export function blankTileset(id: number, name: string, graphic: string, autotiles: string[] = []): SCTileset {
  return {
    id,
    name,
    graphic,
    autotiles: Array.from({ length: AUTOTILE_SLOTS }, (_, i) => autotiles[i] ?? ''),
    // Sparse and empty: every tile starts passable, priority 0, terrain 0, which
    // is exactly what RPG Maker XP gives a new tileset too.
    passages: {},
    priorities: {},
    terrainTags: {},
  };
}
