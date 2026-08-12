/**
 * SCMap — the Shattered Crowns map format.
 *
 * Why a new format at all: RGSS hardcodes exactly 3 tile layers and exactly 1
 * tileset per map, both baked into the binary Table layout of RPG::Map. Neither
 * limit can be lifted while .rxdata remains the source of truth, so maps move to
 * JSON and an Essentials runtime plugin reconstructs an RPG::Map at load time.
 *
 * Design rules for this format:
 *  - Human-diffable. It lives in git next to the project, so tile rows are
 *    written as run-length strings rather than 20k-element JSON arrays.
 *  - Lossless w.r.t. RPG Maker. Events keep their original command trees
 *    verbatim (see `events`), so an export back to .rxdata is exact.
 *  - Forward-compatible. `formatVersion` gates migrations; unknown keys survive
 *    a load/save cycle rather than being dropped.
 */

/** Bumped whenever a migration is required. See `migrations.ts`. */
export const SCMAP_FORMAT_VERSION = 1;

/** RGSS tile geometry. Essentials uses 32x32 throughout. */
export const TILE_SIZE = 32;

/**
 * Tile IDs follow RMXP's numbering so imported maps need no remapping:
 *   0            empty
 *   1..383       autotiles (id / 48 = autotile slot, id % 48 = variant)
 *   384+         regular tiles, indexed row-major into the tileset graphic
 *
 * The high bits carry which of the map's tilesets the ID belongs to, because a
 * map may now reference several. See `packTile` / `unpackTile`.
 */
export const TILE_ID_BITS = 16;
export const TILE_ID_MASK = 0xffff;
export const AUTOTILE_BASE = 48;
export const REGULAR_TILE_BASE = 384;

/** Composite tile value: which tileset slot, and the RMXP tile ID within it. */
export interface Tile {
  /** Index into `SCMap.tilesets`. */
  readonly slot: number;
  /** RMXP-compatible tile ID. */
  readonly id: number;
}

export function packTile(slot: number, id: number): number {
  return id === 0 ? 0 : ((slot & 0xff) << TILE_ID_BITS) | (id & TILE_ID_MASK);
}

export function unpackTile(packed: number): Tile {
  return { slot: (packed >>> TILE_ID_BITS) & 0xff, id: packed & TILE_ID_MASK };
}

export function isAutotile(id: number): boolean {
  return id >= AUTOTILE_BASE && id < REGULAR_TILE_BASE;
}

/** Which autotile slot (0-6) a tile ID belongs to, or -1 if it is not one. */
export function autotileSlot(id: number): number {
  return isAutotile(id) ? Math.floor(id / AUTOTILE_BASE) - 1 : -1;
}

// ---------------------------------------------------------------------- layers

/**
 * Five layers, up from RGSS's three.
 *
 * The first three keep RMXP's semantics exactly so imports land unchanged; the
 * two new ones are what the extra depth is actually for. `role` is what the
 * runtime renderer uses to decide draw order relative to the player sprite.
 */
export type LayerRole =
  | 'ground' // below everything, always behind the player
  | 'decor' // still behind the player
  | 'overlay' // behind the player, but above decor
  | 'canopy' // drawn above the player (tree tops, roofs, bridges over)
  | 'sky'; // drawn above everything, unaffected by map lighting

export const LAYER_COUNT = 5;

export const DEFAULT_LAYERS: ReadonlyArray<{ name: string; role: LayerRole }> = [
  { name: 'Ground', role: 'ground' },
  { name: 'Decor', role: 'decor' },
  { name: 'Overlay', role: 'overlay' },
  { name: 'Canopy', role: 'canopy' },
  { name: 'Sky', role: 'sky' },
];

export interface SCLayer {
  name: string;
  role: LayerRole;
  /** Editor-only; the runtime always renders every layer. */
  visible: boolean;
  locked: boolean;
  /** 0..1, multiplied into the tile colour at draw time. */
  opacity: number;
  /**
   * Run-length encoded tile data, one string per row, top to bottom.
   * Format: space-separated runs of `value` or `value*count`, where value is the
   * packed tile written in base 36. `.` is shorthand for a single empty tile.
   * Chosen so a one-tile edit produces a one-line diff.
   */
  rows: string[];
}

// -------------------------------------------------------------------- tilesets

/**
 * A tileset definition. These live in one shared catalogue
 * (`Data/SCMaps/tilesets.json`), not inside map files.
 *
 * The attribute tables are the reason: passability, priority and terrain tags
 * are properties of the tileset itself, and inlining them per map would both
 * duplicate ~8000 entries across every map that uses the tileset and make
 * "change this tile to impassable" a 71-file edit with no single source of truth.
 */
export interface SCTileset {
  /** RMXP Tilesets.rxdata id, kept so exports can restore `@tileset_id`. */
  id: number;
  /** Display name, e.g. "Outside". */
  name: string;
  /** Path under Graphics/Tilesets, without extension. */
  graphic: string;
  /** Seven autotile graphic names, '' where unused. Paths under Graphics/Autotiles. */
  autotiles: string[];
  /** Per-tile attributes, keyed by RMXP tile ID. Sparse: absent means 0. */
  passages: Record<number, number>;
  priorities: Record<number, number>;
  terrainTags: Record<number, number>;
}

export interface SCTilesetCatalog {
  formatVersion: number;
  tilesets: SCTileset[];
}

/**
 * A map's reference to a catalogue tileset, occupying one packed-tile slot.
 * Slot order is significant — it is what `packTile` encodes — so entries are
 * never reordered without rewriting the map's tile data.
 */
export interface SCTilesetSlot {
  /** Catalogue tileset id. */
  tilesetId: number;
  /** Editor-only: dim this tileset's tiles to focus on another. */
  dimmed?: boolean;
}

// ----------------------------------------------------------------- connections

export type Edge = 'N' | 'S' | 'E' | 'W';

/**
 * A seam between two maps. Mirrors PBS/map_connections.txt semantics: the two
 * maps touch along opposing edges, offset by a tile count.
 *
 * The editor renders the neighbour translucently at exactly this offset, which
 * is the whole point — misaligned seams become visible instead of being found
 * by walking into them in-game.
 */
export interface SCConnection {
  /** Edge of *this* map that the neighbour attaches to. */
  edge: Edge;
  /** Tile offset along that edge. */
  offset: number;
  /** Map ID of the neighbour. */
  toMapId: number;
  /** Edge of the neighbour that touches us; normally the opposite of `edge`. */
  toEdge: Edge;
  toOffset: number;
}

// -------------------------------------------------------- weather and lighting

export type WeatherKind =
  | 'None'
  | 'Rain'
  | 'HeavyRain'
  | 'Storm'
  | 'Snow'
  | 'Blizzard'
  | 'Sandstorm'
  | 'Fog'
  | 'Sun'
  | 'Ash'
  | 'Cloudy';

export interface SCWeather {
  kind: WeatherKind;
  /** 0..9, matching Essentials' intensity scale. */
  power: number;
  /** Percent chance this weather applies when the map loads. */
  chance: number;
}

/**
 * Per-map lighting, driving the [SC] Dynamic Lighting System plugin.
 * `tint` entries are keyed by in-game hour (0-23) so dusk/dawn can be authored
 * visually rather than guessed at in a script.
 */
export interface SCLighting {
  enabled: boolean;
  /** Ambient darkness 0..1 applied outside any light source. */
  ambient: number;
  /** #rrggbb tint per hour; sparse, interpolated between defined hours. */
  tintByHour: Record<number, string>;
  lights: SCLight[];
}

export interface SCLight {
  id: string;
  /** Editor/runtime master toggle for this individual source. */
  enabled?: boolean;
  x: number;
  y: number;
  /** Radius in tiles. */
  radius: number;
  color: string;
  intensity: number;
  /** Flicker amplitude 0..1 — 0 is a steady lamp, higher is torchlight. */
  flicker: number;
  /** Shape rendered by the runtime and editor. Older maps default to circle. */
  type?: 'circle' | 'rect' | 'cone';
  /** Pulse amplitude 0..1 and cycles/second. */
  pulse?: number;
  animationSpeed?: number;
  /** Rectangle size in tiles. */
  width?: number;
  height?: number;
  /** Cone direction/spread in degrees. */
  angle?: number;
  spread?: number;
  /** Only lit between these hours, inclusive. Omit for always-on. */
  activeHours?: [number, number];
  /** Game switch that must be ON for this light to render. */
  switchId?: number;
  /** Optional event attachment. The light follows this map event in game. */
  eventId?: number;
  /** Shared authoring/control group. */
  group?: string;
  /** Weather kinds in which this light is active; omitted means every weather. */
  activeWeather?: WeatherKind[];
  /** Optional editor preset provenance; values remain fully editable. */
  preset?: 'torch' | 'candle' | 'neon' | 'window' | 'crystal' | 'streetlamp';
  layer?: 'ground' | 'character' | 'overhead';
  blend?: 'additive' | 'multiply' | 'subtractive';
  occlude?: boolean;
}

// ---------------------------------------------------------------------- events

/**
 * An event, stored as the original RMXP structure serialised to JSON.
 *
 * We deliberately do *not* model event command trees in this format. There are
 * ~100 command codes plus every Essentials extension, and a lossy model would
 * corrupt the 72 existing maps on first save. `raw` is the Marshal tree encoded
 * by `core/marshal/json.ts`, which the event editor reads and writes in place.
 */
export interface SCEvent {
  id: number;
  name: string;
  x: number;
  y: number;
  /** Marshal tree for RPG::Event, as JSON. Round-trips exactly. */
  raw: unknown;
}

// ------------------------------------------------------------------- encounters

export interface SCEncounterSlot {
  /** Species internal name, e.g. "PIDGEY". */
  species: string;
  probability: number;
  minLevel: number;
  maxLevel: number;
}

export interface SCEncounterTable {
  /** Essentials encounter type, e.g. "Land", "Water", "Cave", "HeadbuttLow". */
  type: string;
  /** Steps between encounter checks; 0 inherits the map default. */
  step: number;
  slots: SCEncounterSlot[];
}

// ----------------------------------------------------------------------- metadata

/**
 * Fields mirroring PBS/map_metadata.txt. Kept as an explicit interface (rather
 * than a string map) so the metadata panel can offer typed editors, but
 * `extra` preserves any key we do not know about.
 */
export interface SCMapMetadata {
  name?: string;
  outdoor?: boolean;
  showArea?: boolean;
  bicycleUsable?: boolean;
  bicycleAlways?: boolean;
  dark?: boolean;
  safariMap?: boolean;
  snapEdges?: boolean;
  dive?: number;
  darkMap?: boolean;
  healingSpot?: [number, number, number];
  mapPosition?: [number, number, number];
  mapSize?: { width: number; layout: string };
  weatherPBS?: [string, number];
  battleBack?: string;
  locationSign?: string;
  wildBattleBGM?: string;
  trainerBattleBGM?: string;
  wildVictoryBGM?: string;
  trainerVictoryBGM?: string;
  wildCaptureME?: string;
  mapWeather?: string;
  flyDestination?: boolean;
  /** Unrecognised PBS keys, preserved verbatim on save. */
  extra: Record<string, string>;
}

// -------------------------------------------------------------------- the map

export interface SCMap {
  formatVersion: number;
  id: number;
  /** Display name from MapInfos, e.g. "Lappet Town". */
  name: string;
  /** MapInfos tree parent, 0 for top level. */
  parentId: number;
  /** Sort order within the map tree. */
  order: number;

  width: number;
  height: number;

  /**
   * Tilesets this map draws from, in slot order. Index N here is the `slot` that
   * `packTile` writes into the high bits, so appending is safe and reordering is
   * not. A vanilla imported map has exactly one entry.
   */
  tilesets: SCTilesetSlot[];
  layers: SCLayer[];

  /** Nil-safe: an imported map with no BGM has `null` here, not `""`. */
  bgm: SCAudioRef | null;
  bgs: SCAudioRef | null;
  autoplayBgm: boolean;
  autoplayBgs: boolean;

  connections: SCConnection[];
  weather: SCWeather;
  lighting: SCLighting;
  encounters: SCEncounterTable[];
  encounterStep: number;
  metadata: SCMapMetadata;
  events: SCEvent[];

  /** Free-form notes for the author; never read by the runtime. */
  notes: string;
}

export interface SCAudioRef {
  name: string;
  volume: number;
  pitch: number;
}

// ------------------------------------------------------- tile data (de)serialise

/**
 * Encodes a row of packed tile values as the run-length string described on
 * `SCLayer.rows`.
 */
export function encodeRow(values: ArrayLike<number>): string {
  const runs: string[] = [];
  let i = 0;
  while (i < values.length) {
    const v = values[i];
    let n = 1;
    while (i + n < values.length && values[i + n] === v) n++;
    const token = v === 0 ? '.' : v.toString(36);
    runs.push(n === 1 ? token : `${token}*${n}`);
    i += n;
  }
  return runs.join(' ');
}

/** Inverse of `encodeRow`. `width` guards against truncated or padded rows. */
export function decodeRow(row: string, width: number): Int32Array {
  const out = new Int32Array(width);
  let x = 0;
  if (row.length === 0) return out;
  for (const run of row.split(' ')) {
    if (run.length === 0) continue;
    const star = run.indexOf('*');
    const token = star === -1 ? run : run.slice(0, star);
    const count = star === -1 ? 1 : Number.parseInt(run.slice(star + 1), 10);
    const value = token === '.' ? 0 : Number.parseInt(token, 36);
    for (let k = 0; k < count && x < width; k++) out[x++] = value;
  }
  return out;
}

/** Allocates an all-empty layer of the given size. */
export function blankLayer(
  width: number,
  height: number,
  spec: { name: string; role: LayerRole },
): SCLayer {
  return {
    name: spec.name,
    role: spec.role,
    visible: true,
    locked: false,
    opacity: 1,
    rows: Array.from({ length: height }, () => (width > 0 ? `.*${width}` : '')),
  };
}

/** Decodes every layer into one flat Int32Array per layer, for the renderer. */
export function decodeLayers(map: SCMap): Int32Array[] {
  return map.layers.map((layer) => {
    const flat = new Int32Array(map.width * map.height);
    for (let y = 0; y < map.height; y++) {
      const row = decodeRow(layer.rows[y] ?? '', map.width);
      flat.set(row, y * map.width);
    }
    return flat;
  });
}

/** Re-encodes a flat layer buffer back into RLE rows. */
export function encodeLayerRows(
  flat: ArrayLike<number>,
  width: number,
  height: number,
): string[] {
  const rows: string[] = [];
  for (let y = 0; y < height; y++) {
    rows.push(encodeRow(Array.prototype.slice.call(flat, y * width, (y + 1) * width)));
  }
  return rows;
}
