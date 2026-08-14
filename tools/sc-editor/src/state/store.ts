/**
 * Editor state.
 *
 * Layer decisions worth knowing:
 *  - Tile data lives outside React as `Int32Array`s in `MapDoc.layerData`. Putting
 *    50k tiles into React state would re-render the tree on every brush stroke;
 *    instead edits bump `revision`, which the canvas watches to rebuild GPU buffers.
 *  - Undo stores compact patches (before/after per touched cell), not map
 *    snapshots, so a long painting session does not accumulate megabytes.
 */

import { create } from 'zustand';
import {
  LAYER_COUNT,
  decodeLayers,
  encodeLayerRows,
  packTile,
  unpackTile,
  type SCMap,
  type SCEvent,
  type SCTileset,
  type SCLight,
  type SCLighting,
} from '../core/scmap/format';
import type { SCConnection } from '../core/scmap/format';
import { newEventRaw, setIvar, strNode } from '../core/events/model';
import type {
  MapMutationResult,
  MapTreeChange,
  MapTreeNode,
  NewMapRequest,
  NewTilesetRequest,
  ProjectSummary,
} from '../../electron/ipc';

/** Tile-attribute overlay modes. */
export type CheckerMode = 'none' | 'priority' | 'passage' | 'terrain';

/** A rectangular stamp of packed tile values. 1x1 for a plain tile pick. */
export interface Brush {
  w: number;
  h: number;
  tiles: number[];
}

export function singleBrush(packed: number): Brush {
  return { w: 1, h: 1, tiles: [packed] };
}

export type Tool = 'pencil' | 'rect' | 'fill' | 'eyedropper' | 'erase' | 'select' | 'event' | 'light';

/** An open map, with tile data held outside React for performance. */
export interface MapDoc {
  map: SCMap;
  /** One flat buffer per layer, `width * height` packed tiles. */
  layerData: Int32Array[];
  /** Bumped on every tile edit; the renderer keys its GPU cache on this. */
  revision: number;
  dirty: boolean;
}

/** One cell change, as recorded for undo. */
interface CellPatch {
  layer: number;
  index: number;
  before: number;
  after: number;
}

interface TileUndoEntry {
  kind: 'tiles';
  mapId: number;
  label: string;
  patches: CellPatch[];
}

interface EventUndoEntry {
  kind: 'events';
  mapId: number;
  label: string;
  before: SCEvent[];
  after: SCEvent[];
}

interface LightingUndoEntry {
  kind: 'lighting';
  mapId: number;
  label: string;
  before: SCLighting;
  after: SCLighting;
}

/**
 * A resize, stored as a snapshot rather than a patch.
 *
 * Every other edit touches a bounded set of cells, so a patch is both smaller
 * and simpler. A resize changes the map's dimensions and therefore the meaning
 * of every index in it — there is no patch that describes that, and one snapshot
 * of a map the author just resized is a cost paid once.
 */
interface ResizeSnapshot {
  width: number;
  height: number;
  layers: Int32Array[];
  events: SCEvent[];
  lighting: SCLighting;
}

interface ResizeUndoEntry {
  kind: 'resize';
  mapId: number;
  label: string;
  before: ResizeSnapshot;
  after: ResizeSnapshot;
}

type UndoEntry = TileUndoEntry | EventUndoEntry | LightingUndoEntry | ResizeUndoEntry;

export interface ConsoleLine {
  id: number;
  level: 'info' | 'warn' | 'error' | 'game';
  text: string;
  at: number;
}

interface EditorState {
  // ------------------------------------------------------------------ project
  project: ProjectSummary | null;
  loading: boolean;
  openProject: () => Promise<void>;
  reimport: () => Promise<void>;

  // --------------------------------------------------------------------- maps
  /** Cache of loaded maps, keyed by id. */
  docs: Map<number, MapDoc>;
  activeMapId: number | null;
  selectMap: (id: number) => Promise<void>;
  /** Writes one map to JSON and .rxdata. */
  saveMap: (id: number) => Promise<void>;
  saveActive: () => Promise<void>;
  /** Writes every map with unsaved changes, one after another. */
  saveAll: () => Promise<void>;
  updateMapProperties: (value: Pick<SCMap, 'name' | 'width' | 'height' | 'autoplayBgm' | 'autoplayBgs' | 'bgm' | 'bgs' | 'encounterStep' | 'weather'>) => void;
  updateMapMetadata: (metadata: SCMap['metadata'], notes: string) => void;
  /**
   * Resizes the map, moving its content by `shiftX`/`shiftY`.
   *
   * `wrap` decides the fate of anything pushed outside the new bounds: wrapped
   * around to the opposite edge, or dropped. One undo step either way.
   */
  resizeMap: (value: {
    width: number;
    height: number;
    shiftX: number;
    shiftY: number;
    wrap: boolean;
  }) => void;
  /** Creates a blank map on disk and opens it. Resolves with its id. */
  createMap: (request: NewMapRequest) => Promise<number | null>;
  duplicateMap: (id: number) => Promise<number | null>;
  deleteMap: (id: number) => Promise<void>;
  /** Rename, reparent and reorder, batched into one write. */
  applyTreeChanges: (changes: MapTreeChange[]) => Promise<void>;
  /** Rewrites this map's seams in PBS/map_connections.txt and both maps' JSON. */
  saveConnections: (mapId: number, connections: SCConnection[]) => Promise<void>;
  /**
   * Parent id the New Map dialog should preselect, or null when it is closed.
   * Lives in the store because both the tree and the ribbon open the same dialog.
   */
  newMapParentId: number | null;
  openNewMap: (parentId: number) => void;
  closeNewMap: () => void;

  // ----------------------------------------------------------------- tilesets
  catalog: Map<number, SCTileset>;
  /**
   * Registers a new tileset from a graphic, in the catalogue and in
   * Tilesets.rxdata. Resolves with its id, which is also added to the open map.
   */
  createTileset: (request: NewTilesetRequest) => Promise<number | null>;
  /** Renames a tileset or repoints it at a different graphic. */
  updateTileset: (tileset: SCTileset) => Promise<void>;

  // -------------------------------------------------------------------- tools
  tool: Tool;
  setTool: (tool: Tool) => void;
  activeLayer: number;
  setActiveLayer: (index: number) => void;
  /**
   * The active brush. A rectangular stamp rather than a single tile, because
   * copying a region with right-drag (as RPG Maker XP does) is how anyone
   * actually reproduces a house or a cliff edge.
   */
  brush: Brush;
  setBrush: (brush: Brush) => void;
  /**
   * Square brush width for single-tile painting and erasing, in tiles.
   *
   * Only applies when the brush is one tile: a stamp copied from the palette or
   * the map already has a size, and scaling it would mean inventing tiles that
   * were never picked.
   */
  brushSize: number;
  setBrushSize: (size: number) => void;
  /** Copies a region of the active layer into the brush. */
  copyRegion: (x: number, y: number, w: number, h: number) => void;
  /**
   * Picks a tile from any tileset in the project.
   *
   * Slots are an encoding detail — `packTile` stores one in every painted tile —
   * and making the author attach a tileset to the map before they can use it
   * turns "paint with that rock" into a two-step errand. So attaching happens
   * here, on first use, and the palette never mentions slots at all.
   */
  pickTile: (tilesetId: number, tileId: number) => void;
  /**
   * Picks a rectangle of tiles from one tileset, as dragging across the palette
   * produces. `tiles` is row-major, `w * h` long, with 0 for empty cells.
   */
  pickTiles: (tilesetId: number, tiles: number[], w: number, h: number) => void;
  /** Appends a tileset slot to the active map. */
  addTileset: (tilesetId: number) => void;
  /** Removes a tileset slot, clearing any tiles that referenced it. */
  removeTileset: (slot: number) => void;

  // ---------------------------------------------------------------- view state
  /**
   * Fades every layer except the one being edited. RPG Maker XP's equivalent of
   * per-layer opacity sliders, and far more useful in practice: the question is
   * almost always "where does *my* layer sit", not "what opacity is layer 3".
   */
  dimInactiveLayers: boolean;
  toggleDimInactiveLayers: () => void;
  showGrid: boolean;
  toggleGrid: () => void;
  showNeighbours: boolean;
  toggleNeighbours: () => void;
  showEvents: boolean;
  toggleEvents: () => void;
  showEventGraphics: boolean;
  toggleEventGraphics: () => void;
  showEventIds: boolean;
  toggleEventIds: () => void;
  showEventTriggers: boolean;
  toggleEventTriggers: () => void;
  /** Animate autotiles (water, fountains) the way they move in game. */
  animate: boolean;
  toggleAnimate: () => void;
  /**
   * Which tile-attribute overlay is active. One mode rather than independent
   * flags: the overlays all paint the same cells, so showing two at once just
   * makes both unreadable.
   */
  checker: CheckerMode;
  setChecker: (mode: CheckerMode) => void;
  zoom: number;
  setZoom: (zoom: number) => void;
  showLighting: boolean;
  toggleLighting: () => void;
  lightingHour: number;
  setLightingHour: (hour: number) => void;
  lightingClockPlaying: boolean;
  toggleLightingClock: () => void;
  lightingClockSpeed: number;
  setLightingClockSpeed: (speed: number) => void;
  selectedLightId: string | null;
  selectedLightIds: string[];
  selectLight: (id: string | null, additive?: boolean) => void;
  updateLighting: (patch: Partial<SCLighting>) => void;
  addLight: (x?: number, y?: number) => string | null;
  updateLight: (id: string, patch: Partial<SCLight>) => void;
  removeLight: (id: string) => void;
  lightPlacementPreview: SCLight[];
  setLightPlacementPreview: (lights: SCLight[]) => void;

  // -------------------------------------------------------------------- layers
  setLayerVisible: (index: number, visible: boolean) => void;
  setLayerOpacity: (index: number, opacity: number) => void;
  setLayerLocked: (index: number, locked: boolean) => void;

  // --------------------------------------------------------------------- edits
  /** Applies a set of cell writes as one undoable operation. */
  paint: (label: string, cells: Array<{ x: number; y: number; value: number }>) => void;
  undo: () => void;
  redo: () => void;
  undoDepth: () => number;

  // -------------------------------------------------------------------- events
  /** Event currently open in the inspector. */
  selectedEventId: number | null;
  selectEvent: (id: number | null) => void;
  /** Switch and variable names from System.rxdata, for readable conditions. */
  switchNames: string[];
  variableNames: string[];
  databaseNames: Record<string, string[]>;
  loadSystemNames: () => Promise<void>;
  /** Which bottom panel is showing. Lives here so selecting an event can reveal it. */
  bottomTab: 'console' | 'event';
  setBottomTab: (tab: 'console' | 'event') => void;
  /**
   * Whether the bottom dock is open. Closed by default: it costs a fifth of the
   * canvas and matters mainly while playtesting, which opens it on its own.
   */
  consoleOpen: boolean;
  toggleConsole: () => void;
  selectedPage: number;
  setSelectedPage: (index: number) => void;
  /** Flags the active map dirty after an in-place edit to an event's raw tree. */
  markEventDirty: () => void;
  createEvent: (x: number, y: number) => number | null;
  deleteEvent: (id: number) => void;
  copyEvent: (id: number) => void;
  pasteEvent: (x: number, y: number) => number | null;
  moveEvent: (id: number, x: number, y: number) => void;
  eventPreviewPages: Map<string, number>;
  setEventPreviewPage: (eventId: number, page: number) => void;

  // ------------------------------------------------------------------- console
  console: ConsoleLine[];
  log: (level: ConsoleLine['level'], text: string) => void;
  clearConsole: () => void;
}

let consoleSeq = 0;

/** Undo/redo stacks live outside the store: they are never rendered directly. */
const undoStack: UndoEntry[] = [];
const redoStack: UndoEntry[] = [];
const UNDO_LIMIT = 200;
const eventBaselines = new Map<number, string>();
let eventClipboard: SCEvent | null = null;

function cloneEvents(events: SCEvent[]): SCEvent[] {
  return JSON.parse(JSON.stringify(events)) as SCEvent[];
}

function normaliseLighting(map: SCMap): void {
  const source = map.lighting;
  const usedIds = new Set<string>();
  map.lighting = {
    enabled: source?.enabled ?? false,
    ambient: Math.min(1, Math.max(0, source?.ambient ?? 0.65)),
    tintByHour: source?.tintByHour ?? {},
    lights: (source?.lights ?? []).map((light, index) => {
      const base = light.id || `light_${index + 1}`;
      let id = base;
      let suffix = 2;
      while (usedIds.has(id)) id = `${base}_${suffix++}`;
      usedIds.add(id);
      return {
      ...light, id, enabled: light.enabled ?? true,
      x: Math.min(map.width - 1, Math.max(0, Math.round(light.x ?? 0))),
      y: Math.min(map.height - 1, Math.max(0, Math.round(light.y ?? 0))),
      type: light.type ?? 'circle', radius: Math.max(0.1, light.radius ?? 3),
      color: /^#[0-9a-f]{6}$/i.test(light.color) ? light.color : '#ffffff',
      intensity: Math.min(2, Math.max(0, light.intensity ?? 1)),
      flicker: Math.min(1, Math.max(0, light.flicker ?? 0)),
    }; }),
  };
}

function rememberEventBaseline(mapId: number, events: SCEvent[]): void {
  eventBaselines.set(mapId, JSON.stringify(events));
}

function pushHistory(entry: UndoEntry): void {
  undoStack.push(entry);
  if (undoStack.length > UNDO_LIMIT) undoStack.shift();
  redoStack.length = 0;
}

export const useEditor = create<EditorState>((set, get) => ({
  project: null,
  loading: false,

  openProject: async () => {
    set({ loading: true });
    try {
      const summary = await window.sc.project.pick();
      if (!summary) return;
      const catalogRaw = await window.sc.tilesets.load().catch(() => null);
      set({
        project: summary,
        catalog: new Map((catalogRaw?.tilesets ?? []).map((t) => [t.id, t])),
        docs: new Map(),
        activeMapId: null,
      });
      for (const w of summary.warnings) get().log('warn', w);
      get().log('info', `Opened ${summary.title} — ${summary.maps.length} maps.`);
    } catch (err) {
      get().log('error', (err as Error).message);
    } finally {
      set({ loading: false });
    }
  },

  reimport: async () => {
    set({ loading: true });
    try {
      const summary = await window.sc.project.reimport();
      const catalogRaw = await window.sc.tilesets.load().catch(() => null);
      set({
        project: summary,
        catalog: new Map((catalogRaw?.tilesets ?? []).map((t) => [t.id, t])),
        // Every doc is stale after a reimport.
        docs: new Map(),
      });
      get().log('info', `Reimported ${summary.maps.length} maps from .rxdata.`);
      for (const w of summary.warnings) get().log('warn', w);
    } catch (err) {
      get().log('error', (err as Error).message);
    } finally {
      set({ loading: false });
    }
  },

  docs: new Map(),
  activeMapId: null,

  selectMap: async (id) => {
    const existing = get().docs.get(id);
    if (existing) {
      if (!eventBaselines.has(id)) rememberEventBaseline(id, existing.map.events);
      set({ activeMapId: id, selectedLightId: null, selectedLightIds: [], lightPlacementPreview: [] });
      localStorage.setItem('sc.lastMapId', String(id));
      return;
    }
    try {
      const map = await window.sc.map.load(id);
      normaliseLighting(map);
      const doc: MapDoc = {
        map,
        layerData: decodeLayers(map),
        revision: 1,
        dirty: false,
      };
      // Older files may predate the 5-layer default; pad rather than reject.
      while (doc.layerData.length < LAYER_COUNT) {
        doc.layerData.push(new Int32Array(map.width * map.height));
      }
      const docs = new Map(get().docs);
      docs.set(id, doc);
      set({ docs, activeMapId: id, selectedLightId: null, selectedLightIds: [], lightPlacementPreview: [] });
      rememberEventBaseline(id, map.events);
      localStorage.setItem('sc.lastMapId', String(id));
    } catch (err) {
      get().log('error', `Could not open map ${id}: ${(err as Error).message}`);
    }
  },

  saveMap: async (id) => {
    const doc = get().docs.get(id);
    if (!doc) return;

    // Re-encode tile data from the live buffers before writing.
    const map: SCMap = {
      ...doc.map,
      layers: doc.map.layers.map((layer, i) => ({
        ...layer,
        rows: encodeLayerRows(doc.layerData[i], doc.map.width, doc.map.height),
      })),
    };
    try {
      const warnings = await window.sc.map.save(map);
      const next = new Map(get().docs);
      // Re-read the doc: a save is async and the author may have painted more
      // while it was in flight. Only the encoded map is replaced, and the doc
      // stays dirty if anything changed since.
      const current = next.get(id) ?? doc;
      next.set(id, { ...current, map, dirty: current.revision !== doc.revision });
      // The tree caches the name, and saving is where a rename in Map Properties
      // finally reaches disk.
      const project = get().project;
      set({
        docs: next,
        project: project
          ? {
              ...project,
              maps: project.maps.map((node) =>
                node.id === map.id ? { ...node, name: map.name } : node,
              ),
            }
          : project,
      });
      get().log('info', `Saved ${map.name} (map ${map.id}) to JSON and .rxdata.`);
      for (const warning of warnings) get().log('warn', warning);
    } catch (err) {
      get().log('error', `Save failed: ${(err as Error).message}`);
    }
  },

  saveActive: async () => {
    const { activeMapId } = get();
    if (activeMapId === null) return;
    await get().saveMap(activeMapId);
  },

  saveAll: async () => {
    const dirty = [...get().docs.entries()]
      .filter(([, doc]) => doc.dirty)
      .map(([id]) => id);
    if (dirty.length === 0) return;
    // Sequential rather than parallel: each save rewrites MapInfos.rxdata, and
    // two of those racing would have one of them read a half-written file.
    for (const id of dirty) await get().saveMap(id);
    if (dirty.length > 1) get().log('info', `Saved ${dirty.length} maps.`);
  },

  updateMapProperties: (value) => {
    const { activeMapId, docs, project } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    const width = Math.max(1, Math.min(500, Math.round(value.width)));
    const height = Math.max(1, Math.min(500, Math.round(value.height)));
    let layerData = doc.layerData;
    if (width !== doc.map.width || height !== doc.map.height) {
      layerData = doc.layerData.map((source) => {
        const target = new Int32Array(width * height);
        const copyW = Math.min(width, doc.map.width);
        const copyH = Math.min(height, doc.map.height);
        for (let y = 0; y < copyH; y++) {
          target.set(source.subarray(y * doc.map.width, y * doc.map.width + copyW), y * width);
        }
        return target;
      });
    }
    const events = cloneEvents(doc.map.events).map((event) => {
      const x = Math.max(0, Math.min(width - 1, event.x));
      const y = Math.max(0, Math.min(height - 1, event.y));
      if (x !== event.x) { event.x = x; setIvar(event.raw as never, 'x', x); }
      if (y !== event.y) { event.y = y; setIvar(event.raw as never, 'y', y); }
      return event;
    });
    const lighting = { ...doc.map.lighting, lights: doc.map.lighting.lights.map((light) => ({ ...light, x: Math.max(0, Math.min(width - 1, light.x)), y: Math.max(0, Math.min(height - 1, light.y)) })) };
    const map = { ...doc.map, ...value, width, height, events, lighting };
    rememberEventBaseline(activeMapId, events);
    const next = new Map(docs);
    next.set(activeMapId, { ...doc, map, layerData, revision: doc.revision + 1, dirty: true });
    const summary = project ? {
      ...project,
      maps: project.maps.map((item) => item.id === activeMapId ? { ...item, name: map.name, width, height } : item),
    } : project;
    set({ docs: next, project: summary });
  },

  resizeMap: ({ width, height, shiftX, shiftY, wrap }) => {
    const { activeMapId, docs, project } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;

    const w = Math.max(1, Math.min(500, Math.round(width)));
    const h = Math.max(1, Math.min(500, Math.round(height)));
    const oldW = doc.map.width;
    const oldH = doc.map.height;
    if (w === oldW && h === oldH && shiftX === 0 && shiftY === 0) return;

    // Where a source cell lands, or null when it falls outside and is dropped.
    const place = (x: number, y: number): { x: number; y: number } | null => {
      let nx = x + shiftX;
      let ny = y + shiftY;
      if (wrap) {
        nx = ((nx % w) + w) % w;
        ny = ((ny % h) + h) % h;
      } else if (nx < 0 || ny < 0 || nx >= w || ny >= h) {
        return null;
      }
      return { x: nx, y: ny };
    };

    const before: ResizeSnapshot = {
      width: oldW,
      height: oldH,
      layers: doc.layerData.map((layer) => Int32Array.from(layer)),
      events: cloneEvents(doc.map.events),
      lighting: JSON.parse(JSON.stringify(doc.map.lighting)) as SCLighting,
    };

    const layerData = doc.layerData.map((source) => {
      const target = new Int32Array(w * h);
      for (let y = 0; y < oldH; y++) {
        for (let x = 0; x < oldW; x++) {
          const value = source[y * oldW + x];
          if (value === 0) continue;
          const to = place(x, y);
          if (to) target[to.y * w + to.x] = value;
        }
      }
      return target;
    });

    // Events and lights move with the tiles; anything dropped is clamped back
    // inside rather than deleted, because losing an event to a resize is a far
    // worse surprise than finding it at the edge.
    const events = cloneEvents(doc.map.events).map((event) => {
      const to = place(event.x, event.y) ?? {
        x: Math.max(0, Math.min(w - 1, event.x + shiftX)),
        y: Math.max(0, Math.min(h - 1, event.y + shiftY)),
      };
      if (to.x !== event.x) { event.x = to.x; setIvar(event.raw as never, 'x', to.x); }
      if (to.y !== event.y) { event.y = to.y; setIvar(event.raw as never, 'y', to.y); }
      return event;
    });

    const lighting: SCLighting = {
      ...doc.map.lighting,
      lights: doc.map.lighting.lights.map((light) => {
        const to = place(light.x, light.y) ?? {
          x: Math.max(0, Math.min(w - 1, light.x + shiftX)),
          y: Math.max(0, Math.min(h - 1, light.y + shiftY)),
        };
        return { ...light, x: to.x, y: to.y };
      }),
    };

    const after: ResizeSnapshot = {
      width: w,
      height: h,
      layers: layerData.map((layer) => Int32Array.from(layer)),
      events: cloneEvents(events),
      lighting: JSON.parse(JSON.stringify(lighting)) as SCLighting,
    };
    pushHistory({ kind: 'resize', mapId: activeMapId, label: 'Resize map', before, after });
    rememberEventBaseline(activeMapId, events);

    const map = { ...doc.map, width: w, height: h, events, lighting };
    const next = new Map(docs);
    next.set(activeMapId, { ...doc, map, layerData, revision: doc.revision + 1, dirty: true });
    const summary = project
      ? { ...project, maps: project.maps.map((node) => (node.id === activeMapId ? { ...node, width: w, height: h } : node)) }
      : project;
    set({ docs: next, project: summary });
    get().log('info', `Resized ${map.name} to ${w}×${h}.`);
  },

  updateMapMetadata: (metadata, notes) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    const next = new Map(docs);
    next.set(activeMapId, { ...doc, map: { ...doc.map, metadata, notes }, revision: doc.revision + 1, dirty: true });
    set({ docs: next });
  },

  createMap: async (request) => {
    try {
      const result = await window.sc.map.create(request);
      applyMutation(set, get, result);
      if (result.newMapId === undefined) return null;
      get().log('info', `Created map ${result.newMapId} — ${request.name}.`);
      await get().selectMap(result.newMapId);
      return result.newMapId;
    } catch (err) {
      get().log('error', `Could not create map: ${(err as Error).message}`);
      return null;
    }
  },

  duplicateMap: async (id) => {
    try {
      const result = await window.sc.map.duplicate(id);
      applyMutation(set, get, result);
      if (result.newMapId === undefined) return null;
      get().log('info', `Duplicated map ${id} as map ${result.newMapId}.`);
      await get().selectMap(result.newMapId);
      return result.newMapId;
    } catch (err) {
      get().log('error', `Could not duplicate map ${id}: ${(err as Error).message}`);
      return null;
    }
  },

  deleteMap: async (id) => {
    try {
      const result = await window.sc.map.remove(id);
      const docs = new Map(get().docs);
      docs.delete(id);
      set({ docs });
      applyMutation(set, get, result);
      get().log('info', `Deleted map ${id}.`);

      if (get().activeMapId === id) {
        // Landing on a blank canvas after a delete looks like a crash. Fall back
        // to whatever the tree shows first.
        set({ activeMapId: null, selectedEventId: null });
        const next = [...result.summary.maps].sort((a, b) => a.order - b.order || a.id - b.id)[0];
        if (next) await get().selectMap(next.id);
      }
    } catch (err) {
      get().log('error', `Could not delete map ${id}: ${(err as Error).message}`);
    }
  },

  applyTreeChanges: async (changes) => {
    if (changes.length === 0) return;
    try {
      const result = await window.sc.map.tree(changes);
      applyMutation(set, get, result);
      // Keep any still-open doc in step with what was just written, so the title
      // bar and canvas do not show the pre-rename state.
      const docs = new Map(get().docs);
      for (const change of changes) {
        const doc = docs.get(change.id);
        if (!doc) continue;
        docs.set(change.id, {
          ...doc,
          map: {
            ...doc.map,
            name: change.name?.trim() || doc.map.name,
            parentId: change.parentId ?? doc.map.parentId,
            order: change.order ?? doc.map.order,
          },
        });
      }
      set({ docs });
    } catch (err) {
      get().log('error', `Could not update the map tree: ${(err as Error).message}`);
    }
  },

  saveConnections: async (mapId, connections) => {
    try {
      const result = await window.sc.map.connections(mapId, connections);
      applyMutation(set, get, result);
      // The edited map's own doc is updated in place rather than reloaded: it may
      // hold unsaved tile edits, and connections are not part of that work.
      const docs = new Map(get().docs);
      const doc = docs.get(mapId);
      if (doc) {
        docs.set(mapId, { ...doc, map: { ...doc.map, connections } });
        set({ docs });
      }
      get().log('info', `Wrote ${connections.length} connection(s) for map ${mapId}.`);
    } catch (err) {
      get().log('error', `Could not save connections: ${(err as Error).message}`);
    }
  },

  newMapParentId: null,
  openNewMap: (parentId) => set({ newMapParentId: parentId }),
  closeNewMap: () => set({ newMapParentId: null }),

  catalog: new Map(),

  createTileset: async (request) => {
    try {
      const result = await window.sc.tilesets.create(request);
      set({ catalog: new Map(result.catalog.tilesets.map((t) => [t.id, t])) });
      for (const warning of result.warnings) get().log('warn', warning);
      if (result.newTilesetId === undefined) return null;
      get().log('info', `Registered tileset #${result.newTilesetId} — ${request.name}.`);
      // Registering a tileset is almost always a step towards painting with it,
      // so put it on the open map rather than making that a second errand.
      if (get().activeMapId !== null) get().addTileset(result.newTilesetId);
      return result.newTilesetId;
    } catch (err) {
      get().log('error', `Could not create the tileset: ${(err as Error).message}`);
      return null;
    }
  },

  updateTileset: async (tileset) => {
    try {
      const result = await window.sc.tilesets.update(tileset);
      set({ catalog: new Map(result.catalog.tilesets.map((t) => [t.id, t])) });
      for (const warning of result.warnings) get().log('warn', warning);
      get().log('info', `Updated tileset #${tileset.id} — ${tileset.name}.`);
    } catch (err) {
      get().log('error', `Could not update the tileset: ${(err as Error).message}`);
    }
  },

  tool: 'pencil',
  setTool: (tool) => set({ tool }),
  activeLayer: 0,
  setActiveLayer: (activeLayer) =>
    set((s) => ({
      activeLayer,
      // Choosing a layer means "I want to paint", so leave event mode. Without
      // this, selecting an event traps you: clicks keep hitting events and the
      // brush never applies again.
      tool: s.tool === 'event' ? 'pencil' : s.tool,
      selectedEventId: s.tool === 'event' ? null : s.selectedEventId,
    })),
  brush: singleBrush(packTile(0, 384)),
  setBrush: (brush) => set({ brush }),
  brushSize: 1,
  setBrushSize: (size) => set({ brushSize: Math.max(1, Math.min(9, Math.round(size) || 1)) }),

  copyRegion: (x, y, w, h) => {
    const { activeMapId, docs, activeLayer } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    const buffer = doc.layerData[activeLayer];
    if (!buffer) return;

    const x0 = Math.max(0, x);
    const y0 = Math.max(0, y);
    const x1 = Math.min(doc.map.width, x + w);
    const y1 = Math.min(doc.map.height, y + h);
    if (x1 <= x0 || y1 <= y0) return;

    const tiles: number[] = [];
    for (let ty = y0; ty < y1; ty++) {
      for (let tx = x0; tx < x1; tx++) tiles.push(buffer[ty * doc.map.width + tx]);
    }
    set({ brush: { w: x1 - x0, h: y1 - y0, tiles } });
    // A single-tile pick is the right-click eyedropper, which happens constantly
    // while painting; logging every one would bury everything else.
    if (x1 - x0 > 1 || y1 - y0 > 1) {
      get().log('info', `Copied ${x1 - x0}x${y1 - y0} tiles from ${doc.map.layers[activeLayer]?.name}.`);
    }
  },

  pickTile: (tilesetId, tileId) => get().pickTiles(tilesetId, [tileId], 1, 1),

  pickTiles: (tilesetId, tiles, w, h) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null || w < 1 || h < 1) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;

    let slot = doc.map.tilesets.findIndex((entry) => entry.tilesetId === tilesetId);
    if (slot === -1) {
      get().addTileset(tilesetId);
      // Re-read: addTileset appended to a fresh doc, so the index is only known
      // after it has run.
      slot = get().docs.get(activeMapId)?.map.tilesets
        .findIndex((entry) => entry.tilesetId === tilesetId) ?? -1;
      if (slot === -1) return;
    }
    set({ brush: { w, h, tiles: tiles.map((id) => (id > 0 ? packTile(slot, id) : 0)) } });
  },

  addTileset: (tilesetId) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    if (doc.map.tilesets.some((t) => t.tilesetId === tilesetId)) {
      get().log('warn', 'That tileset is already on this map.');
      return;
    }
    // Append only. Slot order is encoded into every painted tile, so inserting
    // or reordering would silently repoint existing tiles at the wrong graphic.
    const next = new Map(docs);
    next.set(activeMapId, {
      ...doc,
      map: { ...doc.map, tilesets: [...doc.map.tilesets, { tilesetId }] },
      dirty: true,
    });
    set({ docs: next });
    get().log('info', `Added tileset #${tilesetId} as slot ${doc.map.tilesets.length}.`);
  },

  removeTileset: (slot) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null || slot === 0) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;

    // Removing a slot shifts every later slot down, so tiles must be rewritten:
    // clear tiles from the removed slot, and renumber the ones above it.
    let cleared = 0;
    for (const buffer of doc.layerData) {
      for (let i = 0; i < buffer.length; i++) {
        const packed = buffer[i];
        if (packed === 0) continue;
        const { slot: s, id } = unpackTile(packed);
        if (s === slot) {
          buffer[i] = 0;
          cleared++;
        } else if (s > slot) {
          buffer[i] = packTile(s - 1, id);
        }
      }
    }

    const tilesets = doc.map.tilesets.filter((_, i) => i !== slot);
    const next = new Map(docs);
    next.set(activeMapId, {
      ...doc,
      map: { ...doc.map, tilesets },
      revision: doc.revision + 1,
      dirty: true,
    });
    set({ docs: next });
    get().log(
      cleared > 0 ? 'warn' : 'info',
      `Removed tileset slot ${slot}${cleared > 0 ? `, clearing ${cleared} tiles that used it` : ''}.`,
    );
  },

  // On by default: with five layers, "which layer am I on" is the question you
  // ask most often while painting, and dimming answers it without a glance away
  // from the map.
  dimInactiveLayers: true,
  toggleDimInactiveLayers: () => set((s) => ({ dimInactiveLayers: !s.dimInactiveLayers })),
  showGrid: true,
  toggleGrid: () => set((s) => ({ showGrid: !s.showGrid })),
  showNeighbours: true,
  toggleNeighbours: () => set((s) => ({ showNeighbours: !s.showNeighbours })),
  showEvents: true,
  toggleEvents: () => set((s) => ({ showEvents: !s.showEvents })),
  showEventGraphics: true,
  toggleEventGraphics: () => set((s) => ({ showEventGraphics: !s.showEventGraphics })),
  showEventIds: true,
  toggleEventIds: () => set((s) => ({ showEventIds: !s.showEventIds })),
  showEventTriggers: true,
  toggleEventTriggers: () => set((s) => ({ showEventTriggers: !s.showEventTriggers })),
  animate: true,
  toggleAnimate: () => set((s) => ({ animate: !s.animate })),
  checker: 'none',
  // Selecting the active mode again turns it off, so one key toggles.
  setChecker: (mode) => set((s) => ({ checker: s.checker === mode ? 'none' : mode })),
  zoom: 1,
  setZoom: (zoom) => set({ zoom: Math.min(4, Math.max(0.125, zoom)) }),
  showLighting: true,
  toggleLighting: () => set((s) => ({ showLighting: !s.showLighting })),
  lightingHour: 21,
  setLightingHour: (lightingHour) => set({ lightingHour: ((lightingHour % 24) + 24) % 24 }),
  lightingClockPlaying: false,
  toggleLightingClock: () => set((state) => ({ lightingClockPlaying: !state.lightingClockPlaying })),
  lightingClockSpeed: 50,
  setLightingClockSpeed: (lightingClockSpeed) => set({ lightingClockSpeed: Math.max(1, Math.min(3600, lightingClockSpeed)) }),
  selectedLightId: null,
  selectedLightIds: [],
  selectLight: (selectedLightId, additive = false) => set((state) => {
    if (!selectedLightId) return { selectedLightId: null, selectedLightIds: [] };
    if (!additive) return { selectedLightId, selectedLightIds: [selectedLightId] };
    const selectedLightIds = state.selectedLightIds.includes(selectedLightId) ? state.selectedLightIds.filter((id) => id !== selectedLightId) : [...state.selectedLightIds, selectedLightId];
    return { selectedLightId: selectedLightIds.includes(selectedLightId) ? selectedLightId : selectedLightIds.at(-1) ?? null, selectedLightIds };
  }),
  updateLighting: (patch) => mutateLighting(set, get, (lighting) => ({ ...lighting, ...patch })),
  addLight: (x, y) => {
    const { activeMapId, docs } = get();
    const doc = activeMapId === null ? undefined : docs.get(activeMapId);
    if (!doc) return null;
    const taken = new Set(doc.map.lighting.lights.map((light) => light.id));
    let index = doc.map.lighting.lights.length + 1;
    while (taken.has(`light_${index}`)) index++;
    const id = `light_${index}`;
    const light: SCLight = { id, enabled: true, x: x ?? Math.floor(doc.map.width / 2), y: y ?? Math.floor(doc.map.height / 2), type: 'circle', radius: 3, color: '#ffd27a', intensity: 1, flicker: 0.12, pulse: 0.06, animationSpeed: 1 };
    mutateLighting(set, get, (lighting) => ({ ...lighting, enabled: true, lights: [...lighting.lights, light] }));
    set({ selectedLightId: id, selectedLightIds: [id], tool: 'light', showLighting: true });
    return id;
  },
  updateLight: (id, patch) => mutateLighting(set, get, (lighting) => {
    const requestedId = patch.id?.trim();
    const duplicate = requestedId && requestedId !== id && lighting.lights.some((light) => light.id === requestedId);
    const safePatch = duplicate ? { ...patch, id } : patch;
    const lights = lighting.lights.map((light) => light.id === id ? { ...light, ...safePatch } : light);
    if (safePatch.id && safePatch.id !== id) {
      set((state) => ({ selectedLightId: safePatch.id!, selectedLightIds: state.selectedLightIds.map((item) => item === id ? safePatch.id! : item) }));
    }
    return { ...lighting, lights };
  }),
  removeLight: (id) => {
    mutateLighting(set, get, (lighting) => ({ ...lighting, lights: lighting.lights.filter((light) => light.id !== id) }));
    if (get().selectedLightIds.includes(id)) {
      const selectedLightIds = get().selectedLightIds.filter((item) => item !== id);
      set({ selectedLightIds, selectedLightId: selectedLightIds.at(-1) ?? null });
    }
  },
  lightPlacementPreview: [],
  setLightPlacementPreview: (lightPlacementPreview) => set({ lightPlacementPreview }),

  setLayerVisible: (index, visible) => mutateLayer(set, get, index, { visible }),
  setLayerOpacity: (index, opacity) => mutateLayer(set, get, index, { opacity }),
  setLayerLocked: (index, locked) => mutateLayer(set, get, index, { locked }),

  paint: (label, cells) => {
    const { activeMapId, docs, activeLayer } = get();
    if (activeMapId === null || cells.length === 0) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    if (doc.map.layers[activeLayer]?.locked) {
      get().log('warn', `Layer "${doc.map.layers[activeLayer].name}" is locked.`);
      return;
    }

    const buffer = doc.layerData[activeLayer];
    const patches: CellPatch[] = [];
    for (const { x, y, value } of cells) {
      if (x < 0 || y < 0 || x >= doc.map.width || y >= doc.map.height) continue;
      const index = y * doc.map.width + x;
      const before = buffer[index];
      if (before === value) continue; // no-op writes must not enter undo history
      buffer[index] = value;
      patches.push({ layer: activeLayer, index, before, after: value });
    }
    if (patches.length === 0) return;

    pushHistory({ kind: 'tiles', mapId: activeMapId, label, patches });

    bumpRevision(set, get, activeMapId);
  },

  undo: () => applyHistory(set, get, undoStack, redoStack, 'before'),
  redo: () => applyHistory(set, get, redoStack, undoStack, 'after'),
  undoDepth: () => undoStack.length,

  selectedEventId: null,
  // Selecting an event switches to the inspector. Clicking an event and having
  // nothing visibly happen is worse than a stolen tab.
  selectEvent: (selectedEventId) =>
    set({
      selectedEventId,
      selectedPage: 0,
      // The inspector lives in the bottom dock, which is closed by default, so
      // revealing it is part of selecting an event rather than a separate step.
      ...(selectedEventId !== null ? { bottomTab: 'event' as const, consoleOpen: true } : {}),
    }),
  switchNames: [],
  variableNames: [],
  databaseNames: {},
  loadSystemNames: async () => {
    try {
      const names = await window.sc.systemNames();
      set({ switchNames: names.switches, variableNames: names.variables, databaseNames: names.database });
    } catch (err) {
      get().log('warn', `Could not read switch names: ${(err as Error).message}`);
    }
  },
  bottomTab: 'console',
  setBottomTab: (bottomTab) => set({ bottomTab }),
  consoleOpen: false,
  toggleConsole: () => set((s) => ({ consoleOpen: !s.consoleOpen })),
  selectedPage: 0,
  setSelectedPage: (selectedPage) => set({ selectedPage }),
  markEventDirty: () => {
    const { activeMapId, docs } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    // The event tree was mutated in place, so nothing to copy — but React needs a
    // new doc object to notice, and the map must be marked unsaved.
    const after = cloneEvents(doc.map.events);
    const beforeText = eventBaselines.get(activeMapId);
    const afterText = JSON.stringify(after);
    if (beforeText && beforeText !== afterText) {
      pushHistory({ kind: 'events', mapId: activeMapId, label: 'Edit event', before: JSON.parse(beforeText) as SCEvent[], after });
    }
    eventBaselines.set(activeMapId, afterText);
    const next = new Map(docs);
    next.set(activeMapId, { ...doc, map: { ...doc.map, events: after }, revision: doc.revision + 1, dirty: true });
    set({ docs: next });
  },

  createEvent: (x, y) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null) return null;
    const doc = docs.get(activeMapId);
    if (!doc || x < 0 || y < 0 || x >= doc.map.width || y >= doc.map.height) return null;
    const before = cloneEvents(doc.map.events);
    const id = Math.max(0, ...before.map((event) => event.id)) + 1;
    const name = `EV${String(id).padStart(3, '0')}`;
    const created: SCEvent = { id, name, x, y, raw: newEventRaw(id, x, y, name) };
    const after = [...before, created];
    commitEvents(set, docs, doc, activeMapId, before, after, 'Create event');
    set({ selectedEventId: id, selectedPage: 0, tool: 'event' });
    return id;
  },

  deleteEvent: (id) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc) return;
    const before = cloneEvents(doc.map.events);
    const after = before.filter((event) => event.id !== id);
    if (after.length === before.length) return;
    commitEvents(set, docs, doc, activeMapId, before, after, 'Delete event');
    if (get().selectedEventId === id) set({ selectedEventId: null });
  },

  copyEvent: (id) => {
    const { activeMapId, docs } = get();
    const event = activeMapId === null ? undefined : docs.get(activeMapId)?.map.events.find((candidate) => candidate.id === id);
    if (event) {
      eventClipboard = JSON.parse(JSON.stringify(event)) as SCEvent;
      get().log('info', `Copied event ${id}: ${event.name}.`);
    }
  },

  pasteEvent: (x, y) => {
    const { activeMapId, docs } = get();
    if (!eventClipboard || activeMapId === null) return null;
    const doc = docs.get(activeMapId);
    if (!doc || x < 0 || y < 0 || x >= doc.map.width || y >= doc.map.height) return null;
    const before = cloneEvents(doc.map.events);
    const id = Math.max(0, ...before.map((event) => event.id)) + 1;
    const pasted = JSON.parse(JSON.stringify(eventClipboard)) as SCEvent;
    pasted.id = id; pasted.x = x; pasted.y = y; pasted.name = `${pasted.name} Copy`;
    setIvar(pasted.raw as never, 'id', id); setIvar(pasted.raw as never, 'x', x);
    setIvar(pasted.raw as never, 'y', y); setIvar(pasted.raw as never, 'name', strNode(pasted.name));
    const after = [...before, pasted];
    commitEvents(set, docs, doc, activeMapId, before, after, 'Paste event');
    set({ selectedEventId: id, selectedPage: 0, tool: 'event' });
    return id;
  },

  moveEvent: (id, x, y) => {
    const { activeMapId, docs } = get();
    if (activeMapId === null) return;
    const doc = docs.get(activeMapId);
    if (!doc || x < 0 || y < 0 || x >= doc.map.width || y >= doc.map.height) return;
    const before = cloneEvents(doc.map.events);
    const after = cloneEvents(before);
    const event = after.find((candidate) => candidate.id === id);
    if (!event || (event.x === x && event.y === y)) return;
    event.x = x; event.y = y;
    setIvar(event.raw as never, 'x', x); setIvar(event.raw as never, 'y', y);
    commitEvents(set, docs, doc, activeMapId, before, after, 'Move event');
  },

  eventPreviewPages: new Map(),
  setEventPreviewPage: (eventId, page) => {
    const mapId = get().activeMapId;
    if (mapId === null) return;
    const next = new Map(get().eventPreviewPages);
    next.set(`${mapId}:${eventId}`, page);
    set({ eventPreviewPages: next });
  },

  console: [],
  log: (level, text) =>
    set((s) => ({
      // Cap the buffer: a crashing game can emit output faster than anyone reads it.
      console: [...s.console.slice(-999), { id: ++consoleSeq, level, text, at: Date.now() }],
    })),
  clearConsole: () => set({ console: [] }),
}));

type SetState = (partial: Partial<EditorState> | ((s: EditorState) => Partial<EditorState>)) => void;
type GetState = () => EditorState;

/**
 * Folds the result of a map-tree mutation back into the store.
 *
 * Maps the main process rewrote are dropped from the cache so they reload from
 * disk — except when they have unsaved edits, where silently discarding the
 * author's work would be far worse than showing a slightly stale connection list.
 */
function applyMutation(set: SetState, get: GetState, result: MapMutationResult): void {
  const docs = new Map(get().docs);
  let reopenActive = false;
  for (const id of result.invalidated) {
    const doc = docs.get(id);
    if (!doc) continue;
    if (doc.dirty) {
      get().log(
        'warn',
        `Map ${id} changed on disk while it had unsaved edits; the in-editor version was kept.`,
      );
      continue;
    }
    docs.delete(id);
    if (id === get().activeMapId) reopenActive = true;
  }
  set({ project: result.summary, docs });
  // Dropping the doc the canvas is currently drawing would blank the editor, so
  // the map being looked at is reloaded rather than merely evicted.
  const activeMapId = get().activeMapId;
  if (reopenActive && activeMapId !== null) void get().selectMap(activeMapId);
  for (const warning of result.warnings) get().log('warn', warning);
}

function bumpRevision(set: SetState, get: GetState, mapId: number): void {
  const docs = new Map(get().docs);
  const doc = docs.get(mapId);
  if (!doc) return;
  docs.set(mapId, { ...doc, revision: doc.revision + 1, dirty: true });
  set({ docs });
}

function commitEvents(
  set: SetState,
  docs: Map<number, MapDoc>,
  doc: MapDoc,
  mapId: number,
  before: SCEvent[],
  after: SCEvent[],
  label: string,
): void {
  pushHistory({ kind: 'events', mapId, label, before, after });
  rememberEventBaseline(mapId, after);
  const next = new Map(docs);
  next.set(mapId, { ...doc, map: { ...doc.map, events: after }, revision: doc.revision + 1, dirty: true });
  set({ docs: next });
}

function mutateLayer(
  set: SetState,
  get: GetState,
  index: number,
  patch: Partial<{ visible: boolean; opacity: number; locked: boolean }>,
): void {
  const { activeMapId, docs } = get();
  if (activeMapId === null) return;
  const doc = docs.get(activeMapId);
  if (!doc) return;
  const layers = doc.map.layers.map((l, i) => (i === index ? { ...l, ...patch } : l));
  const next = new Map(docs);
  // Visibility and opacity are view state as far as the GPU cache is concerned —
  // they are uniforms, not instance data — so `revision` deliberately stays put.
  next.set(activeMapId, { ...doc, map: { ...doc.map, layers }, dirty: true });
  set({ docs: next });
}

function mutateLighting(set: SetState, get: GetState, change: (lighting: SCLighting) => SCLighting): void {
  const { activeMapId, docs } = get();
  if (activeMapId === null) return;
  const doc = docs.get(activeMapId);
  if (!doc) return;
  const before = JSON.parse(JSON.stringify(doc.map.lighting)) as SCLighting;
  const after = change(before);
  if (JSON.stringify(before) === JSON.stringify(after)) return;
  pushHistory({ kind: 'lighting', mapId: activeMapId, label: 'Edit lighting', before, after: JSON.parse(JSON.stringify(after)) as SCLighting });
  const next = new Map(docs);
  next.set(activeMapId, { ...doc, map: { ...doc.map, lighting: after }, revision: doc.revision + 1, dirty: true });
  set({ docs: next });
}

/** Shared implementation of undo and redo; `field` picks which side to apply. */
function applyHistory(
  set: SetState,
  get: GetState,
  from: UndoEntry[],
  to: UndoEntry[],
  field: 'before' | 'after',
): void {
  const entry = from.pop();
  if (!entry) return;
  const doc = get().docs.get(entry.mapId);
  if (!doc) return;

  if (entry.kind === 'tiles') {
    for (const patch of entry.patches) doc.layerData[patch.layer][patch.index] = patch[field];
    to.push(entry);
    bumpRevision(set, get, entry.mapId);
    return;
  }

  if (entry.kind === 'resize') {
    const snapshot = entry[field];
    const docs = new Map(get().docs);
    docs.set(entry.mapId, {
      ...doc,
      map: {
        ...doc.map,
        width: snapshot.width,
        height: snapshot.height,
        events: cloneEvents(snapshot.events),
        lighting: JSON.parse(JSON.stringify(snapshot.lighting)) as SCLighting,
      },
      layerData: snapshot.layers.map((layer) => Int32Array.from(layer)),
      revision: doc.revision + 1,
      dirty: true,
    });
    rememberEventBaseline(entry.mapId, snapshot.events);
    to.push(entry);
    const project = get().project;
    set({
      docs,
      project: project
        ? { ...project, maps: project.maps.map((node) => (node.id === entry.mapId ? { ...node, width: snapshot.width, height: snapshot.height } : node)) }
        : project,
    });
    return;
  }

  if (entry.kind === 'lighting') {
    const lighting = JSON.parse(JSON.stringify(entry[field])) as SCLighting;
    const docs = new Map(get().docs);
    docs.set(entry.mapId, { ...doc, map: { ...doc.map, lighting }, revision: doc.revision + 1, dirty: true });
    to.push(entry);
    const selected = get().selectedLightId;
    const selectedLightIds = get().selectedLightIds.filter((id) => lighting.lights.some((light) => light.id === id));
    set({ docs, selectedLightIds, selectedLightId: selected && selectedLightIds.includes(selected) ? selected : selectedLightIds.at(-1) ?? null });
    return;
  }

  const events = cloneEvents(entry[field]);
  const docs = new Map(get().docs);
  docs.set(entry.mapId, { ...doc, map: { ...doc.map, events }, revision: doc.revision + 1, dirty: true });
  rememberEventBaseline(entry.mapId, events);
  to.push(entry);
  const selected = get().selectedEventId;
  set({ docs, selectedEventId: selected !== null && events.some((event) => event.id === selected) ? selected : null });
}

/** Builds the parent/child tree the map list renders. */
export interface MapTreeItem extends MapTreeNode {
  depth: number;
  children: MapTreeItem[];
}

export function buildMapTree(maps: MapTreeNode[]): MapTreeItem[] {
  const items = new Map<number, MapTreeItem>();
  for (const m of maps) items.set(m.id, { ...m, depth: 0, children: [] });

  const roots: MapTreeItem[] = [];
  for (const item of items.values()) {
    const parent = item.parentId !== 0 ? items.get(item.parentId) : undefined;
    // A map whose parent is missing would otherwise vanish from the tree.
    if (parent) parent.children.push(item);
    else roots.push(item);
  }

  const sortRec = (list: MapTreeItem[], depth: number): void => {
    list.sort((a, b) => a.order - b.order || a.id - b.id);
    for (const item of list) {
      item.depth = depth;
      sortRec(item.children, depth + 1);
    }
  };
  sortRec(roots, 0);
  return roots;
}

export function flattenTree(items: MapTreeItem[]): MapTreeItem[] {
  const out: MapTreeItem[] = [];
  const walk = (list: MapTreeItem[]): void => {
    for (const item of list) {
      out.push(item);
      walk(item.children);
    }
  };
  walk(items);
  return out;
}
