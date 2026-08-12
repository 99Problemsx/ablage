/**
 * Imports an existing RPG Maker XP / Essentials project into SCMap.
 *
 * The import is additive and non-destructive: it reads Data/*.rxdata and PBS/*
 * and writes Data/SCMaps/*.json. Nothing in the original project is modified, so
 * the game keeps booting off .rxdata until the runtime plugin is switched on.
 *
 * Layer mapping: RMXP's 3 layers become SCMap layers 0-2 with identical content,
 * and layers 3-4 (Canopy, Sky) start empty. That keeps every imported map
 * pixel-identical to how it renders today.
 */

import { MarshalReader } from '../marshal/reader';
import { marshalToJson } from '../marshal/json';
import { asNumber, RHash, RObject, RString, RTable, type RValue } from '../marshal/types';
import {
  DEFAULT_LAYERS,
  LAYER_COUNT,
  SCMAP_FORMAT_VERSION,
  blankLayer,
  encodeLayerRows,
  packTile,
  type SCAudioRef,
  type SCConnection,
  type SCEncounterTable,
  type SCEvent,
  type SCLayer,
  type SCMap,
  type SCMapMetadata,
  type SCTileset,
  type SCWeather,
} from '../scmap/format';
import {
  metadataFromSection,
  parseEncounters,
  parseMapConnections,
  parseSectionedPbs,
  type ParsedConnection,
} from '../pbs/parse';

/** Minimal filesystem surface, so this module works in Electron main and tests. */
export interface ImportFs {
  readFile(path: string): Uint8Array;
  readTextIfExists(path: string): string | null;
  listDir(path: string): string[];
  join(...parts: string[]): string;
}

/** Parses Tilesets.rxdata into the catalogue the palette panel needs. */
export function importTilesets(data: RValue): Map<number, SCTileset> {
  const out = new Map<number, SCTileset>();
  if (!Array.isArray(data)) return out;

  for (const entry of data) {
    if (!(entry instanceof RObject)) continue; // index 0 is nil in RMXP arrays
    const id = entry.int('@id');
    const autotileNames = entry.get('@autotile_names');
    const autotiles = Array.isArray(autotileNames)
      ? autotileNames.map((a) => (a instanceof RString ? a.value : ''))
      : [];

    out.set(id, {
      id,
      name: entry.str('@name'),
      graphic: entry.str('@tileset_name'),
      // RMXP always stores 7 slots; normalise short arrays so indexing is safe.
      autotiles: Array.from({ length: 7 }, (_, i) => autotiles[i] ?? ''),
      passages: tableToRecord(entry.get('@passages')),
      priorities: tableToRecord(entry.get('@priorities')),
      terrainTags: tableToRecord(entry.get('@terrain_tags')),
    });
  }
  return out;
}

/** Flattens a 1-D RMXP attribute Table into a sparse id -> value record. */
function tableToRecord(value: RValue): Record<number, number> {
  if (!(value instanceof RTable)) return {};
  const out: Record<number, number> = {};
  for (let i = 0; i < value.data.length; i++) {
    // Sparse on purpose: the vast majority of entries are 0 and writing them all
    // would add ~8000 useless keys per tileset to every map file.
    if (value.data[i] !== 0) out[i] = value.data[i];
  }
  return out;
}

export interface MapInfoEntry {
  id: number;
  name: string;
  parentId: number;
  order: number;
  expanded: boolean;
  scrollX: number;
  scrollY: number;
}

/** Parses MapInfos.rxdata (a Hash of mapId -> RPG::MapInfo). */
export function importMapInfos(data: RValue): Map<number, MapInfoEntry> {
  const out = new Map<number, MapInfoEntry>();
  if (!(data instanceof RHash)) return out;

  for (const [key, value] of data.entries) {
    if (typeof key !== 'number' || !(value instanceof RObject)) continue;
    out.set(key, {
      id: key,
      name: value.str('@name'),
      parentId: value.int('@parent_id'),
      order: value.int('@order'),
      expanded: value.bool('@expanded'),
      scrollX: value.int('@scroll_x'),
      scrollY: value.int('@scroll_y'),
    });
  }
  return out;
}

function audioFromRmxp(value: RValue): SCAudioRef | null {
  if (!(value instanceof RObject)) return null;
  const name = value.str('@name');
  // RMXP writes an AudioFile with an empty name to mean "no track".
  if (name.length === 0) return null;
  return { name, volume: value.int('@volume', 100), pitch: value.int('@pitch', 100) };
}

/**
 * Converts the connection list into the per-map view the editor uses.
 * Each PBS entry describes one seam, which both maps need to know about, so it
 * is emitted twice — once from each side's perspective.
 */
export function connectionsForMap(
  mapId: number,
  parsed: ParsedConnection[],
): SCConnection[] {
  const out: SCConnection[] = [];
  for (const c of parsed) {
    if (c.mapA === mapId) {
      out.push({
        edge: c.edgeA,
        offset: c.offsetA,
        toMapId: c.mapB,
        toEdge: c.edgeB,
        toOffset: c.offsetB,
      });
    }
    if (c.mapB === mapId) {
      out.push({
        edge: c.edgeB,
        offset: c.offsetB,
        toMapId: c.mapA,
        toEdge: c.edgeA,
        toOffset: c.offsetA,
      });
    }
  }
  return out;
}

/** Builds the five SCMap layers from an RMXP tile Table. */
function layersFromTable(table: RTable | null, width: number, height: number): SCLayer[] {
  const layers: SCLayer[] = [];
  for (let z = 0; z < LAYER_COUNT; z++) {
    const spec = DEFAULT_LAYERS[z];
    // RMXP only has 3 layers; Canopy and Sky are new and start empty.
    if (table === null || z >= table.zsize) {
      layers.push(blankLayer(width, height, spec));
      continue;
    }
    const flat = new Int32Array(width * height);
    for (let y = 0; y < height; y++) {
      for (let x = 0; x < width; x++) {
        const id = table.at(x, y, z);
        // Slot 0: an imported map draws from exactly one tileset.
        flat[y * width + x] = packTile(0, id);
      }
    }
    layers.push({
      ...blankLayer(width, height, spec),
      rows: encodeLayerRows(flat, width, height),
    });
  }
  return layers;
}

function eventsFromRmxp(value: RValue): SCEvent[] {
  if (!(value instanceof RHash)) return [];
  const out: SCEvent[] = [];
  for (const [key, event] of value.entries) {
    if (!(event instanceof RObject)) continue;
    out.push({
      id: typeof key === 'number' ? key : event.int('@id'),
      name: event.str('@name'),
      x: event.int('@x'),
      y: event.int('@y'),
      // Verbatim command tree. This is what makes export lossless.
      raw: marshalToJson(event),
    });
  }
  out.sort((a, b) => a.id - b.id);
  return out;
}

const DEFAULT_WEATHER: SCWeather = { kind: 'None', power: 0, chance: 100 };

/** Derives the weather block from `Weather = Rain,50` in map_metadata.txt. */
function weatherFromMetadata(meta: SCMapMetadata): SCWeather {
  if (!meta.weatherPBS) return { ...DEFAULT_WEATHER };
  const [kind, chance] = meta.weatherPBS;
  return {
    kind: (kind as SCWeather['kind']) || 'None',
    // PBS stores only kind and chance; power starts mid-scale so the map looks
    // the same in-editor as in-game until the author tunes it.
    power: 5,
    chance: chance || 100,
  };
}

export interface ImportResult {
  maps: SCMap[];
  tilesets: Map<number, SCTileset>;
  mapInfos: Map<number, MapInfoEntry>;
  warnings: string[];
}

/** Runs a full project import. `root` is the Shattered Crowns project folder. */
export function importProject(fs: ImportFs, root: string): ImportResult {
  const warnings: string[] = [];
  const dataDir = fs.join(root, 'Data');
  const pbsDir = fs.join(root, 'PBS');

  const tilesets = importTilesets(MarshalReader.parse(fs.readFile(fs.join(dataDir, 'Tilesets.rxdata'))));
  const mapInfos = importMapInfos(MarshalReader.parse(fs.readFile(fs.join(dataDir, 'MapInfos.rxdata'))));

  const connectionsText = fs.readTextIfExists(fs.join(pbsDir, 'map_connections.txt'));
  const parsedConnections = connectionsText ? parseMapConnections(connectionsText).connections : [];
  if (!connectionsText) warnings.push('PBS/map_connections.txt not found; no connections imported.');

  const metadataText = fs.readTextIfExists(fs.join(pbsDir, 'map_metadata.txt'));
  const metadataByMap = new Map<number, SCMapMetadata>();
  if (metadataText) {
    for (const section of parseSectionedPbs(metadataText).sections) {
      const id = Number.parseInt(section.key, 10);
      if (!Number.isNaN(id)) metadataByMap.set(id, metadataFromSection(section));
    }
  } else {
    warnings.push('PBS/map_metadata.txt not found; metadata will be empty.');
  }

  const encountersText = fs.readTextIfExists(fs.join(pbsDir, 'encounters.txt'));
  const encountersByMap: Map<number, SCEncounterTable[]> = encountersText
    ? parseEncounters(encountersText)
    : new Map();

  const mapFiles = fs
    .listDir(dataDir)
    .filter((f) => /^Map\d+\.rxdata$/.test(f))
    .sort();

  const maps: SCMap[] = [];
  for (const file of mapFiles) {
    const id = Number.parseInt(file.slice(3, -7), 10);
    let parsed: RValue;
    try {
      parsed = MarshalReader.parse(fs.readFile(fs.join(dataDir, file)));
    } catch (err) {
      warnings.push(`${file}: failed to parse (${(err as Error).message}); skipped.`);
      continue;
    }
    if (!(parsed instanceof RObject)) {
      warnings.push(`${file}: unexpected root type; skipped.`);
      continue;
    }

    const width = parsed.int('@width');
    const height = parsed.int('@height');
    const tilesetId = parsed.int('@tileset_id');
    const tileData = parsed.get('@data');
    const info = mapInfos.get(id);
    const metadata = metadataByMap.get(id) ?? { extra: {} };

    const tilesetRef = tilesets.get(tilesetId);
    if (!tilesetRef) {
      warnings.push(`${file}: references unknown tileset #${tilesetId}.`);
    }

    if (!(tileData instanceof RTable)) {
      warnings.push(`${file}: @data is not a Table; imported as empty.`);
    } else if (tileData.xsize !== width || tileData.ysize !== height) {
      warnings.push(
        `${file}: @data is ${tileData.xsize}x${tileData.ysize} but header says ${width}x${height}.`,
      );
    }

    maps.push({
      formatVersion: SCMAP_FORMAT_VERSION,
      id,
      name: info?.name ?? metadata.name ?? `Map ${id}`,
      parentId: info?.parentId ?? 0,
      order: info?.order ?? id,
      width,
      height,
      // Slot 0 is the map's original RMXP tileset; more can be added in-editor.
      tilesets: [{ tilesetId }],
      layers: layersFromTable(tileData instanceof RTable ? tileData : null, width, height),
      bgm: audioFromRmxp(parsed.get('@bgm')),
      bgs: audioFromRmxp(parsed.get('@bgs')),
      autoplayBgm: parsed.bool('@autoplay_bgm'),
      autoplayBgs: parsed.bool('@autoplay_bgs'),
      connections: connectionsForMap(id, parsedConnections),
      weather: weatherFromMetadata(metadata),
      lighting: {
        // Dark maps already imply lighting in Essentials; pre-enable those so the
        // author sees the same darkness in the editor as in-game.
        enabled: metadata.darkMap === true || metadata.dark === true,
        ambient: metadata.darkMap === true || metadata.dark === true ? 0.72 : 0,
        tintByHour: {},
        lights: [],
      },
      encounters: encountersByMap.get(id) ?? [],
      encounterStep: asNumber(parsed.get('@encounter_step'), 30),
      metadata,
      events: eventsFromRmxp(parsed.get('@events')),
      notes: '',
    });
  }

  return { maps, tilesets, mapInfos, warnings };
}
