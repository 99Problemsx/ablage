/**
 * Constructing new maps.
 *
 * Kept out of the Electron main process so the rules about what a blank map
 * contains — five layers, one tileset slot, no connections — live next to the
 * format they belong to and can be exercised without an app instance.
 */

import {
  DEFAULT_LAYERS,
  SCMAP_FORMAT_VERSION,
  blankLayer,
  type SCMap,
} from './format';

export interface NewMapOptions {
  id: number;
  name: string;
  width: number;
  height: number;
  tilesetId: number;
  parentId: number;
  order: number;
}

/** Clamped to the same bounds the properties dialog enforces. */
export function clampMapSize(value: number): number {
  return Math.max(1, Math.min(500, Math.round(value) || 1));
}

export function blankMap(options: NewMapOptions): SCMap {
  const width = clampMapSize(options.width);
  const height = clampMapSize(options.height);
  return {
    formatVersion: SCMAP_FORMAT_VERSION,
    id: options.id,
    name: options.name,
    parentId: options.parentId,
    order: options.order,
    width,
    height,
    tilesets: [{ tilesetId: options.tilesetId }],
    layers: DEFAULT_LAYERS.map((spec) => blankLayer(width, height, spec)),
    bgm: null,
    bgs: null,
    autoplayBgm: false,
    autoplayBgs: false,
    connections: [],
    weather: { kind: 'None', power: 0, chance: 100 },
    lighting: { enabled: false, ambient: 0, tintByHour: {}, lights: [] },
    encounters: [],
    encounterStep: 30,
    // Outdoor + ShowArea is what almost every hand-made Essentials map starts as,
    // and both are trivial to turn off; starting with an empty metadata block
    // instead means the new map silently has no area name in game.
    metadata: { outdoor: true, showArea: true, extra: {} },
    events: [],
    notes: '',
  };
}

/**
 * Copies a map under a new id.
 *
 * Connections are deliberately *not* carried over: a seam is a statement about
 * two specific maps, and duplicating one end would put the copy on top of the
 * original in every neighbour overlay. Events keep their ids, which are map-local.
 */
export function duplicateMap(source: SCMap, id: number, name: string, order: number): SCMap {
  const copy = JSON.parse(JSON.stringify(source)) as SCMap;
  return { ...copy, id, name, order, connections: [] };
}

/** Lowest unused positive map id, matching how RMXP fills gaps. */
export function nextMapId(used: Iterable<number>): number {
  const taken = new Set(used);
  let id = 1;
  while (taken.has(id)) id++;
  return id;
}
