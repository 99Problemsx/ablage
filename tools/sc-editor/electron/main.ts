/**
 * Electron main process.
 *
 * Owns all filesystem and child-process access. Every write is confined to the
 * currently open project root and validated by `resolveInProject`, so a bug in
 * the UI cannot escape the project folder.
 */

import { spawn, type ChildProcess } from 'node:child_process';
import {
  existsSync,
  mkdirSync,
  readdirSync,
  readFileSync,
  renameSync,
  writeFileSync,
} from 'node:fs';
import { dirname, isAbsolute, join, relative, resolve, sep, parse as parsePath } from 'node:path';
import { BrowserWindow, app, dialog, ipcMain, session, shell } from 'electron';
import {
  IPC,
  type GameLogLine,
  type LoadedImage,
  type MapMutationResult,
  type MapTreeChange,
  type MapTreeNode,
  type NewMapRequest,
  type NewTilesetRequest,
  type ProjectSummary,
  type SystemNames,
  type TilesetMutationResult,
} from './ipc.ts';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import { RObject, RString, type RValue } from '../src/core/marshal/types.ts';
import { connectionsForMap, importProject, type ImportFs } from '../src/core/import/rxdata.ts';
import {
  mapToRmxp,
  patchMapInfos,
  rxdataMapFile,
  type MapInfoPatch,
} from '../src/core/export/rxdata.ts';
import {
  blankTileset,
  nextTilesetId,
  patchTilesets,
} from '../src/core/export/tilesets.ts';
import {
  importCommonEvents,
  patchCommonEvents,
  type SCCommonEvent,
} from '../src/core/events/commonEvents.ts';
import { serialiseMap } from '../src/core/scmap/serialize.ts';
import { blankMap, duplicateMap, nextMapId } from '../src/core/scmap/create.ts';
import {
  parseMapConnections,
  serialiseMapConnections,
  stripBom,
  type ParsedConnection,
} from '../src/core/pbs/parse.ts';
import {
  SCMAP_FORMAT_VERSION,
  type SCConnection,
  type SCMap,
  type SCTileset,
  type SCTilesetCatalog,
} from '../src/core/scmap/format.ts';

const isDev = !app.isPackaged;
const DEV_URL = process.env.VITE_DEV_SERVER_URL ?? 'http://localhost:5173';
app.setName('Shattered Crowns Editor');

// Desktop/AppImage launches often inherit a pipe from a short-lived launcher.
// Node emits EPIPE on the stream object when that launcher exits; without an
// error listener this becomes an uncaught exception in Electron's main process.
// Swallow only that expected closed-pipe condition. Other stream failures still
// set a failing exit code so they remain visible during development/CI.
for (const stream of [process.stdout, process.stderr]) {
  stream.on('error', (error: NodeJS.ErrnoException) => {
    if (error.code !== 'EPIPE') process.exitCode = 1;
  });
}

// On a Wayland session Electron defaults to XWayland, which costs sharpness under
// fractional scaling — bad for a pixel-art editor where 1:1 texel mapping is the
// whole point. `auto` picks Wayland when available and falls back cleanly.
if (process.platform === 'linux') {
  app.commandLine.appendSwitch('ozone-platform-hint', 'auto');
  app.commandLine.appendSwitch('enable-features', 'WaylandWindowDecorations');
}

let win: BrowserWindow | null = null;
let projectRoot: string | null = null;
let gameProcess: ChildProcess | null = null;

// ---------------------------------------------------------------- path safety

/**
 * Resolves a project-relative path, refusing anything that escapes the root.
 * Symlinks are not followed for this check because the project is expected to be
 * a plain directory; a traversal attempt is a bug, not a use case.
 */
function resolveInProject(relPath: string): string {
  if (projectRoot === null) throw new Error('No project is open');
  if (isAbsolute(relPath)) throw new Error(`Expected a relative path, got ${relPath}`);
  const full = resolve(projectRoot, relPath);
  const rel = relative(projectRoot, full);
  if (rel.startsWith('..') || (rel.length > 0 && isAbsolute(rel))) {
    throw new Error(`Path escapes the project root: ${relPath}`);
  }
  return full;
}

const nodeFs: ImportFs = {
  readFile: (path) => new Uint8Array(readFileSync(path)),
  readTextIfExists: (path) => (existsSync(path) ? readFileSync(path, 'utf8') : null),
  listDir: (path) => readdirSync(path),
  join: (...parts) => join(...parts),
};

// ------------------------------------------------------------------- project

function scMapsDir(root: string): string {
  return join(root, 'Data', 'SCMaps');
}

function readMapTree(root: string): { maps: MapTreeNode[]; warnings: string[] } {
  const dir = scMapsDir(root);
  const warnings: string[] = [];
  if (!existsSync(dir)) return { maps: [], warnings: ['Project has not been imported yet.'] };

  const maps: MapTreeNode[] = [];
  for (const file of readdirSync(dir).sort()) {
    if (!/^Map\d+\.json$/.test(file)) continue;
    try {
      const map = JSON.parse(readFileSync(join(dir, file), 'utf8')) as SCMap;
      if (map.formatVersion > SCMAP_FORMAT_VERSION) {
        warnings.push(`${file} was written by a newer editor (v${map.formatVersion}); skipped.`);
        continue;
      }
      maps.push({
        id: map.id,
        name: map.name,
        parentId: map.parentId,
        order: map.order,
        width: map.width,
        height: map.height,
        connectedTo: (map.connections ?? []).map((c) => c.toMapId),
      });
    } catch (err) {
      warnings.push(`${file}: ${(err as Error).message}`);
    }
  }
  return { maps, warnings };
}

function summarise(root: string): ProjectSummary {
  const { maps, warnings } = readMapTree(root);
  // Game.ini holds the title RPG Maker knows the project by.
  let title = 'Shattered Crowns';
  const iniPath = join(root, 'Game.ini');
  if (existsSync(iniPath)) {
    const match = /^Title\s*=\s*(.+)$/m.exec(readFileSync(iniPath, 'latin1'));
    if (match) title = match[1].trim();
  }
  return { root, title, imported: existsSync(scMapsDir(root)), maps, warnings };
}

// ------------------------------------------------------- map files and backups

function scMapFile(id: number): string {
  return join('Data', 'SCMaps', `Map${String(id).padStart(3, '0')}.json`);
}

function readScMap(id: number): SCMap {
  return JSON.parse(readFileSync(resolveInProject(scMapFile(id)), 'utf8')) as SCMap;
}

function writeScMap(map: SCMap): void {
  const path = resolveInProject(scMapFile(map.id));
  mkdirSync(dirname(path), { recursive: true });
  writeFileSync(path, serialiseMap(map), 'utf8');
}

/**
 * Copies a file aside the first time we are about to overwrite it.
 *
 * Once only, on purpose: the value of this backup is "the .rxdata as it was
 * before any editor ever touched it". Refreshing it on every save would quietly
 * replace that with a copy of the state the author is trying to recover from.
 */
function backupOnce(absolutePath: string): void {
  if (!existsSync(absolutePath)) return;
  const backup = `${absolutePath}.forge-backup`;
  if (existsSync(backup)) return;
  writeFileSync(backup, readFileSync(absolutePath));
}

/** Every map id the project knows about, from both the JSON and .rxdata sides. */
function knownMapIds(): Set<number> {
  const ids = new Set<number>();
  const scDir = resolveInProject(join('Data', 'SCMaps'));
  if (existsSync(scDir)) {
    for (const file of readdirSync(scDir)) {
      const match = /^Map(\d+)\.json$/.exec(file);
      if (match) ids.add(Number.parseInt(match[1], 10));
    }
  }
  for (const file of readdirSync(resolveInProject('Data'))) {
    const match = /^Map(\d+)\.rxdata$/.exec(file);
    if (match) ids.add(Number.parseInt(match[1], 10));
  }
  return ids;
}

/** Moves a file into Data/SCMaps/.trash rather than unlinking it. */
function trash(relPath: string, stamp: string): void {
  const source = resolveInProject(relPath);
  if (!existsSync(source)) return;
  const dir = resolveInProject(join('Data', 'SCMaps', '.trash', stamp));
  mkdirSync(dir, { recursive: true });
  renameSync(source, join(dir, relPath.split(sep).pop() ?? 'file'));
}

// ------------------------------------------------------------- .rxdata export

function readMapInfos(): RValue {
  const path = resolveInProject(join('Data', 'MapInfos.rxdata'));
  return existsSync(path) ? MarshalReader.parse(new Uint8Array(readFileSync(path))) : null;
}

function writeMapInfos(patch: { upsert?: MapInfoPatch[]; remove?: number[] }): void {
  const path = resolveInProject(join('Data', 'MapInfos.rxdata'));
  backupOnce(path);
  const hash = patchMapInfos(readMapInfos(), patch);
  writeFileSync(path, MarshalWriter.dump(hash));
}

/**
 * Writes one map back to Data/MapNNN.rxdata, so the game and RPG Maker XP see it.
 *
 * Returns the warnings from the conversion — the parts of SCMap that RGSS cannot
 * represent. The caller surfaces them rather than failing the save: the JSON is
 * still the complete record, and refusing to export would leave the game showing
 * an older map with no way forward.
 */
function exportMapToRxdata(map: SCMap): string[] {
  const path = resolveInProject(join('Data', rxdataMapFile(map.id)));
  const template = existsSync(path)
    ? MarshalReader.parse(new Uint8Array(readFileSync(path)))
    : null;
  const { map: rmxp, warnings } = mapToRmxp(map, template);
  backupOnce(path);
  writeFileSync(path, MarshalWriter.dump(rmxp));
  return warnings;
}

// -------------------------------------------------------------------- tilesets

const TILESET_CATALOG_FILE = join('Data', 'SCMaps', 'tilesets.json');

function readTilesetCatalog(): SCTilesetCatalog {
  const path = resolveInProject(TILESET_CATALOG_FILE);
  if (!existsSync(path)) return { formatVersion: SCMAP_FORMAT_VERSION, tilesets: [] };
  const parsed = JSON.parse(readFileSync(path, 'utf8')) as SCTilesetCatalog;
  return { formatVersion: parsed.formatVersion ?? SCMAP_FORMAT_VERSION, tilesets: parsed.tilesets ?? [] };
}

function writeTilesetCatalog(catalog: SCTilesetCatalog): void {
  const path = resolveInProject(TILESET_CATALOG_FILE);
  mkdirSync(dirname(path), { recursive: true });
  writeFileSync(path, `${JSON.stringify(catalog, null, 2)}\n`, 'utf8');
}

/** Writes catalogue entries into Data/Tilesets.rxdata, patching what is there. */
function exportTilesets(upsert: SCTileset[]): void {
  const path = resolveInProject(join('Data', 'Tilesets.rxdata'));
  const template = existsSync(path)
    ? MarshalReader.parse(new Uint8Array(readFileSync(path)))
    : null;
  backupOnce(path);
  writeFileSync(path, MarshalWriter.dump(patchTilesets(template, upsert)));
}

/** True when a graphic of that name exists, whatever its extension or case. */
function graphicExists(folder: string, name: string): boolean {
  if (name.length === 0) return false;
  const dir = resolveInProject(join('Graphics', folder));
  if (!existsSync(dir)) return false;
  const target = name.toLowerCase();
  return readdirSync(dir).some((entry) => entry.replace(/\.[^.]+$/, '').toLowerCase() === target);
}

// ----------------------------------------------------------------- connections

const CONNECTIONS_FILE = join('PBS', 'map_connections.txt');

function readConnectionsFile(): {
  parsed: ParsedConnection[];
  header: string[];
  bom: boolean;
} {
  const path = resolveInProject(CONNECTIONS_FILE);
  if (!existsSync(path)) {
    return {
      parsed: [],
      header: [
        '# See the documentation on the wiki to learn how to edit this file.',
        '#-------------------------------',
      ],
      bom: false,
    };
  }
  const text = readFileSync(path, 'utf8');
  const { connections, header } = parseMapConnections(text);
  return { parsed: connections, header, bom: text !== stripBom(text) };
}

/**
 * Replaces every connection involving `mapId` with the given list.
 *
 * A seam lives in exactly one line of map_connections.txt but appears in *both*
 * maps' JSON, so rewriting one end means rewriting the neighbour's JSON too —
 * otherwise the removed neighbour keeps drawing a map it is no longer joined to.
 * Returns every map id whose file changed.
 */
function writeConnections(mapId: number, connections: SCConnection[], mapNames: Map<number, string>): number[] {
  const { parsed, header, bom } = readConnectionsFile();

  const touched = new Set<number>([mapId]);
  for (const entry of parsed) {
    if (entry.mapA === mapId) touched.add(entry.mapB);
    if (entry.mapB === mapId) touched.add(entry.mapA);
  }

  const kept = parsed.filter((entry) => entry.mapA !== mapId && entry.mapB !== mapId);
  const label = (id: number): string => `${mapNames.get(id) ?? `Map ${id}`} (${id})`;
  for (const connection of connections) {
    touched.add(connection.toMapId);
    kept.push({
      mapA: mapId,
      edgeA: connection.edge,
      offsetA: connection.offset,
      mapB: connection.toMapId,
      edgeB: connection.toEdge,
      offsetB: connection.toOffset,
      // The file is full of hand-written labels like this; a new entry without
      // one is immediately the odd line out in a diff.
      comment: [`# ${label(mapId)} - ${label(connection.toMapId)}`],
    });
  }

  const text = serialiseMapConnections(kept, header);
  writeFileSync(resolveInProject(CONNECTIONS_FILE), bom ? `﻿${text}` : text, 'utf8');

  // Re-derive every affected map's JSON view from the file we just wrote, so the
  // two representations cannot drift.
  const changed: number[] = [];
  for (const id of touched) {
    const path = resolveInProject(scMapFile(id));
    if (!existsSync(path)) continue;
    const map = readScMap(id);
    map.connections = connectionsForMap(id, kept);
    writeScMap(map);
    changed.push(id);
  }
  return changed;
}

function mapNameIndex(): Map<number, string> {
  if (projectRoot === null) return new Map();
  return new Map(readMapTree(projectRoot).maps.map((node) => [node.id, node.name]));
}

/** True when following `id`'s parent chain revisits a map, i.e. the tree loops. */
function createsCycle(id: number, parentOf: Map<number, number>): boolean {
  const seen = new Set<number>([id]);
  let current = parentOf.get(id) ?? 0;
  while (current !== 0) {
    if (seen.has(current)) return true;
    seen.add(current);
    current = parentOf.get(current) ?? 0;
  }
  return false;
}

/** A directory is a project if it has the files an Essentials project must have. */
function looksLikeProject(dir: string): boolean {
  return existsSync(join(dir, 'Data', 'MapInfos.rxdata')) && existsSync(join(dir, 'Graphics'));
}

function findProjectAbove(start: string | undefined): string | null {
  if (!start) return null;
  let current = resolve(start);
  if (!existsSync(current)) current = dirname(current);
  for (;;) {
    if (looksLikeProject(current)) return current;
    const parent = dirname(current);
    if (parent === current || current === parsePath(current).root) return null;
    current = parent;
  }
}

// ------------------------------------------------------------------- handlers

function registerHandlers(): void {
  ipcMain.handle(IPC.projectOpen, (_e, root: string): ProjectSummary => {
    // '' or '.' means "whatever project the editor was launched inside", which the
    // renderer has no way to name — main resolved it at startup.
    const target = root === '' || root === '.' ? projectRoot : root;
    if (target === null) throw new Error('No bundled project was found to open.');
    if (!looksLikeProject(target)) {
      throw new Error(`${target} does not look like an Essentials project (no Data/MapInfos.rxdata).`);
    }
    projectRoot = target;
    return summarise(target);
  });

  ipcMain.handle(IPC.projectPick, async (): Promise<ProjectSummary | null> => {
    const result = await dialog.showOpenDialog({
      title: 'Open project',
      properties: ['openDirectory'],
    });
    if (result.canceled || result.filePaths.length === 0) return null;
    const root = result.filePaths[0];
    if (!looksLikeProject(root)) {
      throw new Error(`${root} does not look like an Essentials project.`);
    }
    projectRoot = root;
    return summarise(root);
  });

  /** Re-runs the .rxdata import. Overwrites Data/SCMaps but touches nothing else. */
  ipcMain.handle(IPC.projectReimport, (): ProjectSummary => {
    if (projectRoot === null) throw new Error('No project is open');
    const result = importProject(nodeFs, projectRoot);
    const dir = scMapsDir(projectRoot);
    mkdirSync(dir, { recursive: true });
    for (const map of result.maps) {
      writeFileSync(join(dir, `Map${String(map.id).padStart(3, '0')}.json`), serialiseMap(map), 'utf8');
    }
    writeFileSync(
      join(dir, 'tilesets.json'),
      `${JSON.stringify(
        {
          formatVersion: SCMAP_FORMAT_VERSION,
          tilesets: [...result.tilesets.values()].sort((a, b) => a.id - b.id),
        },
        null,
        2,
      )}\n`,
      'utf8',
    );
    const summary = summarise(projectRoot);
    summary.warnings.push(...result.warnings);
    return summary;
  });

  ipcMain.handle(IPC.mapLoad, (_e, id: number): SCMap => {
    const path = resolveInProject(join('Data', 'SCMaps', `Map${String(id).padStart(3, '0')}.json`));
    return JSON.parse(readFileSync(path, 'utf8')) as SCMap;
  });

  /**
   * Saves a map to JSON *and* exports it to .rxdata.
   *
   * Both, always: the JSON is the complete record but the game boots off
   * .rxdata, so a JSON-only save is a change the author cannot playtest.
   * Returns the conversion warnings for the console.
   */
  ipcMain.handle(IPC.mapSave, (_e, map: SCMap): string[] => {
    if (typeof map?.id !== 'number') throw new Error('Refusing to save a map with no id');
    writeScMap(map);
    // The name may have been edited in Map Properties, and MapInfos is where the
    // game and RMXP both read it from.
    writeMapInfos({
      upsert: [{ id: map.id, name: map.name, parentId: map.parentId, order: map.order }],
    });
    return exportMapToRxdata(map);
  });

  ipcMain.handle(IPC.mapCreate, (_e, request: NewMapRequest): MapMutationResult => {
    if (projectRoot === null) throw new Error('No project is open');
    const existing = readMapTree(projectRoot).maps;
    const id = nextMapId(knownMapIds());
    const map = blankMap({
      id,
      name: request.name.trim() || `Map ${id}`,
      width: request.width,
      height: request.height,
      tilesetId: request.tilesetId,
      parentId: request.parentId,
      order: existing.reduce((max, node) => Math.max(max, node.order), 0) + 1,
    });

    writeScMap(map);
    writeMapInfos({ upsert: [{ id, name: map.name, parentId: map.parentId, order: map.order }] });
    const warnings = exportMapToRxdata(map);
    return { summary: summarise(projectRoot), warnings, invalidated: [], newMapId: id };
  });

  ipcMain.handle(IPC.mapDuplicate, (_e, id: number): MapMutationResult => {
    if (projectRoot === null) throw new Error('No project is open');
    const source = readScMap(id);
    const existing = readMapTree(projectRoot).maps;
    const newId = nextMapId(knownMapIds());
    const copy = duplicateMap(
      source,
      newId,
      `${source.name} Copy`,
      existing.reduce((max, node) => Math.max(max, node.order), 0) + 1,
    );

    writeScMap(copy);
    writeMapInfos({
      upsert: [{ id: newId, name: copy.name, parentId: copy.parentId, order: copy.order }],
    });
    const warnings = exportMapToRxdata(copy);
    if (source.connections.length > 0) {
      warnings.push(
        `${copy.name} was copied without ${source.name}'s ${source.connections.length} connection(s); a seam belongs to one specific pair of maps.`,
      );
    }
    return { summary: summarise(projectRoot), warnings, invalidated: [], newMapId: newId };
  });

  /**
   * Deletes a map.
   *
   * Files are moved into Data/SCMaps/.trash rather than unlinked. A map is hours
   * of work and the .rxdata half is not in git for most projects, so an undo path
   * that costs one `mv` is worth having.
   */
  ipcMain.handle(IPC.mapDelete, (_e, id: number): MapMutationResult => {
    if (projectRoot === null) throw new Error('No project is open');
    const map = existsSync(resolveInProject(scMapFile(id))) ? readScMap(id) : null;
    const warnings: string[] = [];
    const invalidated = new Set<number>();

    // Drop every seam that mentions this map. This also rewrites the neighbours'
    // JSON, which is why it must happen before the file is moved away.
    for (const changed of writeConnections(id, [], mapNameIndex())) invalidated.add(changed);

    // Orphaned children would vanish from the tree entirely, so lift them to the
    // deleted map's own parent.
    const parentId = map?.parentId ?? 0;
    const upsert: MapInfoPatch[] = [];
    for (const child of readMapTree(projectRoot).maps.filter((node) => node.parentId === id)) {
      if (child.id === id) continue;
      const childMap = readScMap(child.id);
      childMap.parentId = parentId;
      writeScMap(childMap);
      upsert.push({ id: child.id, name: childMap.name, parentId, order: childMap.order });
      invalidated.add(child.id);
    }
    if (upsert.length > 0) {
      warnings.push(`${upsert.length} child map(s) moved up to parent ${parentId || 'root'}.`);
    }

    writeMapInfos({ upsert, remove: [id] });

    const stamp = new Date().toISOString().replace(/[:.]/g, '-');
    trash(scMapFile(id), stamp);
    trash(join('Data', rxdataMapFile(id)), stamp);
    invalidated.delete(id);

    warnings.push(`Map ${id} moved to Data/SCMaps/.trash/${stamp}.`);
    return { summary: summarise(projectRoot), warnings, invalidated: [...invalidated] };
  });

  /** Renames, reparents and reorders maps in one transaction. */
  ipcMain.handle(IPC.mapTree, (_e, changes: MapTreeChange[]): MapMutationResult => {
    if (projectRoot === null) throw new Error('No project is open');
    const nodes = new Map(readMapTree(projectRoot).maps.map((node) => [node.id, node]));
    const upsert: MapInfoPatch[] = [];
    const invalidated: number[] = [];
    const warnings: string[] = [];

    // Apply the requested parents to a scratch copy first, so cycle detection
    // sees the whole batch rather than each change in isolation.
    const parentAfter = new Map([...nodes].map(([id, node]) => [id, node.parentId]));
    for (const change of changes) {
      if (change.parentId !== undefined) parentAfter.set(change.id, change.parentId);
    }

    for (const change of changes) {
      const node = nodes.get(change.id);
      if (!node) {
        warnings.push(`Map ${change.id} no longer exists; skipped.`);
        continue;
      }
      if (change.parentId !== undefined && createsCycle(change.id, parentAfter)) {
        warnings.push(`Map ${node.name} cannot be moved under its own descendant.`);
        parentAfter.set(change.id, node.parentId);
        continue;
      }

      const map = readScMap(change.id);
      map.name = change.name?.trim() || map.name;
      map.parentId = change.parentId ?? map.parentId;
      map.order = change.order ?? map.order;
      writeScMap(map);
      upsert.push({ id: map.id, name: map.name, parentId: map.parentId, order: map.order });
      invalidated.push(map.id);
    }

    if (upsert.length > 0) writeMapInfos({ upsert });
    return { summary: summarise(projectRoot), warnings, invalidated };
  });

  ipcMain.handle(
    IPC.mapConnections,
    (_e, mapId: number, connections: SCConnection[]): MapMutationResult => {
      if (projectRoot === null) throw new Error('No project is open');
      const changed = writeConnections(mapId, connections, mapNameIndex());
      return { summary: summarise(projectRoot), warnings: [], invalidated: changed };
    },
  );

  /**
   * Common events. Read and written whole: there are ten of them, so the cost
   * of reparsing the file on save is nothing next to the risk of tracking which
   * entries changed.
   */
  ipcMain.handle(IPC.commonEventsLoad, (): SCCommonEvent[] => {
    const path = resolveInProject(join('Data', 'CommonEvents.rxdata'));
    if (!existsSync(path)) return [];
    return importCommonEvents(MarshalReader.parse(new Uint8Array(readFileSync(path))));
  });

  ipcMain.handle(IPC.commonEventsSave, (_e, entries: SCCommonEvent[]): void => {
    const path = resolveInProject(join('Data', 'CommonEvents.rxdata'));
    const template = existsSync(path)
      ? MarshalReader.parse(new Uint8Array(readFileSync(path)))
      : null;
    backupOnce(path);
    writeFileSync(path, MarshalWriter.dump(patchCommonEvents(template, entries)));
  });

  ipcMain.handle(IPC.tilesetCatalogLoad, () => {
    const path = resolveInProject(join('Data', 'SCMaps', 'tilesets.json'));
    return JSON.parse(readFileSync(path, 'utf8'));
  });

  ipcMain.handle(IPC.tilesetCatalogSave, (_e, catalog: unknown): void => {
    const path = resolveInProject(join('Data', 'SCMaps', 'tilesets.json'));
    writeFileSync(path, `${JSON.stringify(catalog, null, 2)}\n`, 'utf8');
  });

  /**
   * Registers a new tileset.
   *
   * Writes both halves, for the same reason maps do: the JSON catalogue is what
   * the editor paints from, Data/Tilesets.rxdata is what the game and RPG Maker
   * XP read. A tileset in only one of them is a tileset you cannot ship.
   */
  ipcMain.handle(IPC.tilesetCreate, (_e, request: NewTilesetRequest): TilesetMutationResult => {
    const catalog = readTilesetCatalog();
    const warnings: string[] = [];
    const id = nextTilesetId(catalog.tilesets.map((t) => t.id));
    const graphic = request.graphic.trim();

    if (graphic.length === 0) throw new Error('A tileset needs a graphic from Graphics/Tilesets.');
    if (!graphicExists('Tilesets', graphic)) {
      warnings.push(`Graphics/Tilesets/${graphic} was not found; the palette will be empty until it is added.`);
    }
    for (const name of request.autotiles) {
      if (name && !graphicExists('Autotiles', name)) {
        warnings.push(`Graphics/Autotiles/${name} was not found.`);
      }
    }

    const tileset = blankTileset(id, request.name.trim() || `Tileset ${id}`, graphic, request.autotiles);
    catalog.tilesets.push(tileset);
    catalog.tilesets.sort((a, b) => a.id - b.id);
    writeTilesetCatalog(catalog);
    exportTilesets([tileset]);

    warnings.push(
      `Tile attributes (passability, priority, terrain tags) all start at zero, so every tile on #${id} is passable until they are set in RPG Maker XP.`,
    );
    return { catalog, warnings, newTilesetId: id };
  });

  ipcMain.handle(IPC.tilesetUpdate, (_e, tileset: SCTileset): TilesetMutationResult => {
    const catalog = readTilesetCatalog();
    const index = catalog.tilesets.findIndex((t) => t.id === tileset.id);
    if (index === -1) throw new Error(`Tileset #${tileset.id} is not in the catalogue.`);

    const warnings: string[] = [];
    if (!graphicExists('Tilesets', tileset.graphic)) {
      warnings.push(`Graphics/Tilesets/${tileset.graphic} was not found.`);
    }
    // The whole entry, attribute tables included: the tileset editor sends them
    // back edited, and a rename simply sends them back unchanged. Missing tables
    // still fall back to what the catalogue held, so a partial caller cannot
    // blank a tileset's passability by omission.
    catalog.tilesets[index] = {
      ...catalog.tilesets[index],
      name: tileset.name,
      graphic: tileset.graphic,
      autotiles: tileset.autotiles,
      passages: tileset.passages ?? catalog.tilesets[index].passages,
      priorities: tileset.priorities ?? catalog.tilesets[index].priorities,
      terrainTags: tileset.terrainTags ?? catalog.tilesets[index].terrainTags,
    };
    writeTilesetCatalog(catalog);
    exportTilesets([catalog.tilesets[index]]);
    return { catalog, warnings };
  });

  /** Copies a graphic the author picks into the project, so it can be used. */
  ipcMain.handle(IPC.graphicsImport, async (_e, folder: string): Promise<string | null> => {
    if (projectRoot === null) throw new Error('No project is open');
    if (folder !== 'Tilesets' && folder !== 'Autotiles') {
      throw new Error(`Refusing to import into Graphics/${folder}`);
    }
    const result = await dialog.showOpenDialog({
      title: `Import into Graphics/${folder}`,
      properties: ['openFile'],
      filters: [{ name: 'Images', extensions: ['png', 'jpg', 'jpeg', 'bmp'] }],
    });
    if (result.canceled || result.filePaths.length === 0) return null;

    const source = result.filePaths[0];
    const base = parsePath(source).base;
    const target = resolveInProject(join('Graphics', folder, base));
    mkdirSync(dirname(target), { recursive: true });
    if (existsSync(target)) {
      throw new Error(`Graphics/${folder}/${base} already exists; rename the file or pick the existing one.`);
    }
    writeFileSync(target, readFileSync(source));
    return base.replace(/\.[^.]+$/, '');
  });

  /**
   * Loads a graphic. RMXP stores names without extensions and the project mixes
   * cases, so probe the plausible spellings rather than trusting the stored name.
   */
  ipcMain.handle(IPC.imageLoad, (_e, folder: string, name: string): LoadedImage | null => {
    if (name.length === 0) return null;
    const dir = resolveInProject(join('Graphics', folder));
    if (!existsSync(dir)) return null;

    const candidates = ['.png', '.PNG', '.jpg', '.jpeg', '.bmp', ''];
    for (const ext of candidates) {
      const full = join(dir, name + ext);
      if (existsSync(full)) {
        return { relPath: join('Graphics', folder, name + ext), bytes: new Uint8Array(readFileSync(full)) };
      }
    }
    // Fall back to a case-insensitive scan; cheap enough and saves the author
    // from renaming files to match what RPG Maker recorded years ago.
    const target = name.toLowerCase();
    for (const entry of readdirSync(dir)) {
      const base = entry.replace(/\.[^.]+$/, '').toLowerCase();
      if (base === target) {
        return { relPath: join('Graphics', folder, entry), bytes: new Uint8Array(readFileSync(join(dir, entry))) };
      }
    }
    return null;
  });

  /** Lists graphic names (without extension) in a Graphics subfolder. */
  ipcMain.handle(IPC.graphicsList, (_e, folder: string): string[] => {
    const dir = resolveInProject(join('Graphics', folder));
    if (!existsSync(dir)) return [];
    return readdirSync(dir)
      .filter((f) => /\.(png|jpg|jpeg|bmp)$/i.test(f))
      .map((f) => f.replace(/\.[^.]+$/, ''))
      .sort((a, b) => a.localeCompare(b));
  });

  /**
   * Switch and variable names from System.rxdata.
   *
   * Without these an event condition reads "Switch 15", which tells the author
   * nothing; with them it reads "0015 — s:PBDayNight.isNight?".
   */
  ipcMain.handle(IPC.systemNames, (): SystemNames => {
    const path = resolveInProject(join('Data', 'System.rxdata'));
    if (!existsSync(path)) return { switches: [], variables: [], database: {} };
    const parsed = MarshalReader.parse(new Uint8Array(readFileSync(path)));
    const names = (value: unknown): string[] =>
      Array.isArray(value) ? value.map((v) => (v instanceof RString ? v.value : '')) : [];
    if (!(parsed instanceof RObject)) return { switches: [], variables: [], database: {} };
    const namedDatabase = (file: string): string[] => {
      const dbPath = resolveInProject(join('Data', file));
      if (!existsSync(dbPath)) return [];
      const data = MarshalReader.parse(new Uint8Array(readFileSync(dbPath)));
      if (!Array.isArray(data)) return [];
      return data.map((entry) => entry instanceof RObject && entry.get('@name') instanceof RString
        ? (entry.get('@name') as RString).value : '');
    };
    return {
      switches: names(parsed.get('@switches')),
      variables: names(parsed.get('@variables')),
      database: {
        commonEvents: namedDatabase('CommonEvents.rxdata'), actors: namedDatabase('Actors.rxdata'),
        items: namedDatabase('Items.rxdata'), weapons: namedDatabase('Weapons.rxdata'), armor: namedDatabase('Armors.rxdata'),
        skills: namedDatabase('Skills.rxdata'), states: namedDatabase('States.rxdata'), troops: namedDatabase('Troops.rxdata'),
        animations: namedDatabase('Animations.rxdata'), classes: namedDatabase('Classes.rxdata'), enemies: namedDatabase('Enemies.rxdata'),
      },
    };
  });

  /**
   * Exports a single event's Marshal-as-JSON tree to a file the author picks.
   * Unlike the map save path, this deliberately goes through a native save
   * dialog rather than a fixed project folder: the point is to hand the author
   * a portable file they can diff, share, or hand to another author, not a
   * project-internal artifact.
   */
  ipcMain.handle(
    IPC.eventExport,
    async (_e, suggestedName: string, json: string): Promise<boolean> => {
      if (projectRoot === null) throw new Error('No project is open');
      const result = await dialog.showSaveDialog({
        title: 'Export event',
        defaultPath: join(projectRoot, `${suggestedName}.json`),
        filters: [{ name: 'Event JSON', extensions: ['json'] }],
      });
      if (result.canceled || !result.filePath) return false;
      writeFileSync(result.filePath, json, 'utf8');
      return true;
    },
  );

  ipcMain.handle(IPC.eventImport, async (): Promise<string | null> => {
    if (projectRoot === null) throw new Error('No project is open');
    const result = await dialog.showOpenDialog({
      title: 'Import event',
      defaultPath: projectRoot,
      properties: ['openFile'],
      filters: [{ name: 'Event JSON', extensions: ['json'] }],
    });
    if (result.canceled || result.filePaths.length === 0) return null;
    return readFileSync(result.filePaths[0], 'utf8');
  });

  ipcMain.handle(IPC.pbsRead, (_e, file: string): string | null => {
    const path = resolveInProject(join('PBS', file));
    return existsSync(path) ? readFileSync(path, 'utf8') : null;
  });

  ipcMain.handle(IPC.pbsWrite, (_e, file: string, text: string): void => {
    writeFileSync(resolveInProject(join('PBS', file)), text, 'utf8');
  });

  ipcMain.handle(IPC.scriptList, (): string[] => {
    const root = resolveInProject(join('Data', 'Scripts'));
    const out: string[] = [];
    const walk = (dir: string): void => {
      for (const entry of readdirSync(dir, { withFileTypes: true })) {
        const full = join(dir, entry.name);
        if (entry.isDirectory()) walk(full);
        else if (entry.name.endsWith('.rb')) out.push(relative(root, full).split(sep).join('/'));
      }
    };
    walk(root);
    return out.sort();
  });

  ipcMain.handle(IPC.scriptRead, (_e, rel: string): string =>
    readFileSync(resolveInProject(join('Data', 'Scripts', rel)), 'utf8'),
  );

  ipcMain.handle(IPC.scriptWrite, (_e, rel: string, text: string): void => {
    writeFileSync(resolveInProject(join('Data', 'Scripts', rel)), text, 'utf8');
  });

  const resolveScriptSystemFile = (rel: string): string => {
    if (!rel.endsWith('.rb') || rel.includes('..') || rel.startsWith('/') || rel.includes('\\')) {
      throw new Error('Invalid Script System path');
    }
    return resolveInProject(join('Plugins', '[SC] Script System', rel));
  };
  ipcMain.handle(IPC.scriptSystemRead, (_e, rel: string): string | null => {
    const path = resolveScriptSystemFile(rel);
    return existsSync(path) ? readFileSync(path, 'utf8') : null;
  });
  ipcMain.handle(IPC.scriptSystemWrite, (_e, rel: string, text: string): void => {
    const path = resolveScriptSystemFile(rel);
    mkdirSync(dirname(path), { recursive: true });
    writeFileSync(path, text, 'utf8');
  });

  /** Launches the game and streams its output to the debug console panel. */
  ipcMain.handle(IPC.gameLaunch, (): void => {
    if (projectRoot === null) throw new Error('No project is open');
    if (gameProcess !== null) throw new Error('The game is already running');

    // mkxp-z ships as ./Game on Linux; fall back to the Windows binary via wine
    // only if the author has no native build.
    const nativeBin = join(projectRoot, 'Game');
    const command = existsSync(nativeBin) ? nativeBin : join(projectRoot, 'Game.exe');
    gameProcess = spawn(command, [], { cwd: projectRoot });

    const send = (stream: GameLogLine['stream']) => (chunk: Buffer) => {
      win?.webContents.send(IPC.gameLog, {
        stream,
        text: chunk.toString('utf8'),
        at: Date.now(),
      } satisfies GameLogLine);
    };
    gameProcess.stdout?.on('data', send('stdout'));
    gameProcess.stderr?.on('data', send('stderr'));
    gameProcess.on('exit', (code) => {
      win?.webContents.send(IPC.gameLog, {
        stream: 'stdout',
        text: `\n[game exited with code ${code}]\n`,
        at: Date.now(),
      } satisfies GameLogLine);
      gameProcess = null;
    });
  });

  // The window is frameless so the UI can own the whole surface, which means the
  // UI must also provide minimise/maximise/close.
  ipcMain.handle(IPC.windowMinimize, (): void => win?.minimize());
  ipcMain.handle(IPC.windowToggleMaximize, (): boolean => {
    if (!win) return false;
    if (win.isMaximized()) win.unmaximize();
    else win.maximize();
    return win.isMaximized();
  });
  ipcMain.handle(IPC.windowClose, (): void => win?.close());

  ipcMain.handle(IPC.gameStop, (): void => {
    gameProcess?.kill();
    gameProcess = null;
  });
}

// -------------------------------------------------------------------- window

/**
 * Applies the Content-Security-Policy as a response header.
 *
 * Production is locked to same-origin with no inline script. Dev has to be looser:
 * Vite injects inline module preloads and React Refresh registers inline, and HMR
 * needs a websocket. Keeping the two policies in one place makes the difference
 * auditable instead of buried in an index.html meta tag that cannot vary.
 */
function applyContentSecurityPolicy(): void {
  const policy = isDev
    ? [
        "default-src 'self'",
        "img-src 'self' data: blob:",
        "style-src 'self' 'unsafe-inline'",
        "script-src 'self' 'unsafe-inline' 'unsafe-eval'",
        "font-src 'self' data:",
        `connect-src 'self' ws://localhost:* http://localhost:*`,
      ]
    : [
        "default-src 'self'",
        "img-src 'self' data: blob:",
        "style-src 'self' 'unsafe-inline'",
        "script-src 'self'",
        "font-src 'self' data:",
        "connect-src 'self'",
      ];

  session.defaultSession.webRequest.onHeadersReceived((details, callback) => {
    callback({
      responseHeaders: {
        ...details.responseHeaders,
        'Content-Security-Policy': [policy.join('; ')],
      },
    });
  });
}

/**
 * Mirrors the renderer's console into the main process stdout.
 *
 * Without this, a renderer-side exception shows up as nothing but a black window,
 * because devtools output never reaches the terminal. This is also what feeds the
 * editor's own console panel with its own errors.
 */
function forwardRendererConsole(target: BrowserWindow): void {
  // An AppImage launched from a desktop entry (or via a short-lived parent
  // shell) has no durable stdout pipe. Writing renderer messages there later
  // raises an unhandled EPIPE in Node and kills the whole editor. Console
  // forwarding is a development diagnostic, so never attach it in production.
  if (!isDev) return;
  target.webContents.on('console-message', (event) => {
    const { level, message, lineNumber, sourceId } = event;
    console.log(`[renderer:${level}] ${message} (${sourceId}:${lineNumber})`);
  });

  target.webContents.on('render-process-gone', (_e, details) => {
    console.error(`[renderer] process gone: ${details.reason} (exit ${details.exitCode})`);
  });

  target.webContents.on('preload-error', (_e, preloadPath, error) => {
    console.error(`[preload] ${preloadPath} failed: ${error.message}`);
  });

  target.webContents.on('did-fail-load', (_e, code, description, url) => {
    console.error(`[renderer] failed to load ${url}: ${description} (${code})`);
  });
}

function createWindow(): void {
  win = new BrowserWindow({
    title: 'Shattered Crowns Editor',
    width: 1680,
    height: 980,
    minWidth: 1100,
    minHeight: 700,
    show: false,
    backgroundColor: '#05070d',
    // Frameless so the UI can own the whole surface, including the title bar.
    titleBarStyle: 'hidden',
    frame: process.platform !== 'linux',
    webPreferences: {
      preload: join(import.meta.dirname, 'preload.cjs'),
      contextIsolation: true,
      nodeIntegration: false,
      sandbox: false,
    },
  });

  forwardRendererConsole(win);
  // Keep the titlebar's maximise glyph in sync with reality, including when the
  // user double-clicks the bar or uses a window-manager shortcut.
  const pushWindowState = (): void =>
    win?.webContents.send(IPC.windowState, { maximized: win.isMaximized() });
  win.on('maximize', pushWindowState);
  win.on('unmaximize', pushWindowState);
  win.once('ready-to-show', () => win?.show());
  // Devtools open in dev so a renderer error is visible immediately rather than
  // presenting as an unexplained black window.
  if (isDev) win.webContents.openDevTools({ mode: 'detach' });

  // External links open in the user's browser, never inside the editor.
  win.webContents.setWindowOpenHandler(({ url }) => {
    void shell.openExternal(url);
    return { action: 'deny' };
  });

  if (isDev) {
    void win.loadURL(DEV_URL);
  } else {
    void win.loadFile(join(import.meta.dirname, '../dist/index.html'));
  }
}

/**
 * Dev-only: `kill -USR1 <pid>` writes the window contents to /tmp.
 *
 * `capturePage` reads the compositor-independent surface, so this works even when
 * the window is behind others or on another virtual desktop — which screen-grab
 * tools cannot do. Useful for verifying rendering without stealing focus.
 */
function installCaptureSignal(): void {
  if (!isDev) return;
  process.on('SIGUSR1', () => {
    void win?.webContents
      .capturePage()
      .then((image) => {
        const path = '/tmp/forge-capture.png';
        writeFileSync(path, image.toPNG());
        console.log(`[capture] wrote ${path}`);
      })
      .catch((err: Error) => console.error(`[capture] failed: ${err.message}`));
  });
  console.log(`[capture] SIGUSR1 handler ready (pid ${process.pid})`);
}

void app.whenReady().then(() => {
  applyContentSecurityPolicy();
  installCaptureSignal();
  registerHandlers();

  // Open the project the editor lives inside, so launching it Just Works.
  // Development resolves from source; an AppImage resolves from the .AppImage
  // file's real location (APPIMAGE), not its temporary /tmp/.mount_* contents.
  // Walking upward also supports moving the editor anywhere inside the project.
  const candidates = [
    process.cwd(),
    process.env.APPIMAGE ? dirname(process.env.APPIMAGE) : undefined,
    process.env.OWD,
    import.meta.dirname,
    dirname(process.execPath),
  ];
  for (const candidate of candidates) {
    projectRoot = findProjectAbove(candidate);
    if (projectRoot) break;
  }

  createWindow();

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', () => {
  gameProcess?.kill();
  if (process.platform !== 'darwin') app.quit();
});
