/**
 * Preload bridge. Exposes a narrow, typed API on `window.sc` and nothing else —
 * the renderer never sees `require`, `ipcRenderer`, or the filesystem.
 */

import { contextBridge, ipcRenderer } from 'electron';
import {
  IPC,
  type GameLogLine,
  type LoadedImage,
  type MapMutationResult,
  type MapTreeChange,
  type NewMapRequest,
  type NewTilesetRequest,
  type ProjectSummary,
  type SystemNames,
  type TilesetMutationResult,
} from './ipc.ts';
import type { SCCommonEvent } from '../src/core/events/commonEvents.ts';
import type {
  SCConnection,
  SCMap,
  SCTileset,
  SCTilesetCatalog,
} from '../src/core/scmap/format.ts';

const api = {
  project: {
    open: (root: string): Promise<ProjectSummary> => ipcRenderer.invoke(IPC.projectOpen, root),
    pick: (): Promise<ProjectSummary | null> => ipcRenderer.invoke(IPC.projectPick),
    reimport: (): Promise<ProjectSummary> => ipcRenderer.invoke(IPC.projectReimport),
  },
  map: {
    load: (id: number): Promise<SCMap> => ipcRenderer.invoke(IPC.mapLoad, id),
    /** Resolves with the warnings from the .rxdata export, if any. */
    save: (map: SCMap): Promise<string[]> => ipcRenderer.invoke(IPC.mapSave, map),
    create: (request: NewMapRequest): Promise<MapMutationResult> =>
      ipcRenderer.invoke(IPC.mapCreate, request),
    duplicate: (id: number): Promise<MapMutationResult> =>
      ipcRenderer.invoke(IPC.mapDuplicate, id),
    remove: (id: number): Promise<MapMutationResult> => ipcRenderer.invoke(IPC.mapDelete, id),
    /** Renames, reparents and reorders in one call. */
    tree: (changes: MapTreeChange[]): Promise<MapMutationResult> =>
      ipcRenderer.invoke(IPC.mapTree, changes),
    connections: (mapId: number, connections: SCConnection[]): Promise<MapMutationResult> =>
      ipcRenderer.invoke(IPC.mapConnections, mapId, connections),
  },
  commonEvents: {
    load: (): Promise<SCCommonEvent[]> => ipcRenderer.invoke(IPC.commonEventsLoad),
    save: (entries: SCCommonEvent[]): Promise<void> =>
      ipcRenderer.invoke(IPC.commonEventsSave, entries),
  },
  tilesets: {
    load: (): Promise<SCTilesetCatalog> => ipcRenderer.invoke(IPC.tilesetCatalogLoad),
    save: (catalog: SCTilesetCatalog): Promise<void> =>
      ipcRenderer.invoke(IPC.tilesetCatalogSave, catalog),
    /** Registers a new tileset in both the catalogue and Tilesets.rxdata. */
    create: (request: NewTilesetRequest): Promise<TilesetMutationResult> =>
      ipcRenderer.invoke(IPC.tilesetCreate, request),
    update: (tileset: SCTileset): Promise<TilesetMutationResult> =>
      ipcRenderer.invoke(IPC.tilesetUpdate, tileset),
  },
  /** Copies a picked image into Graphics/Tilesets or Graphics/Autotiles. */
  graphicsImport: (folder: 'Tilesets' | 'Autotiles'): Promise<string | null> =>
    ipcRenderer.invoke(IPC.graphicsImport, folder),
  /** Names (no extension) of the graphics in a Graphics subfolder. */
  graphicsList: (folder: string): Promise<string[]> =>
    ipcRenderer.invoke(IPC.graphicsList, folder),
  systemNames: (): Promise<SystemNames> => ipcRenderer.invoke(IPC.systemNames),
  event: {
    /** Opens a save dialog and writes the JSON; resolves false if cancelled. */
    export: (suggestedName: string, json: string): Promise<boolean> =>
      ipcRenderer.invoke(IPC.eventExport, suggestedName, json),
    /** Opens a load dialog; resolves null if cancelled. */
    import: (): Promise<string | null> => ipcRenderer.invoke(IPC.eventImport),
  },
  /** `folder` is relative to Graphics/, e.g. "Tilesets" or "Autotiles". */
  image: (folder: string, name: string): Promise<LoadedImage | null> =>
    ipcRenderer.invoke(IPC.imageLoad, folder, name),
  pbs: {
    read: (file: string): Promise<string | null> => ipcRenderer.invoke(IPC.pbsRead, file),
    write: (file: string, text: string): Promise<void> =>
      ipcRenderer.invoke(IPC.pbsWrite, file, text),
  },
  scripts: {
    list: (): Promise<string[]> => ipcRenderer.invoke(IPC.scriptList),
    read: (rel: string): Promise<string> => ipcRenderer.invoke(IPC.scriptRead, rel),
    write: (rel: string, text: string): Promise<void> =>
      ipcRenderer.invoke(IPC.scriptWrite, rel, text),
  },
  scriptSystem: {
    read: (rel: string): Promise<string | null> => ipcRenderer.invoke(IPC.scriptSystemRead, rel),
    write: (rel: string, text: string): Promise<void> =>
      ipcRenderer.invoke(IPC.scriptSystemWrite, rel, text),
  },
  window: {
    minimize: (): Promise<void> => ipcRenderer.invoke(IPC.windowMinimize),
    toggleMaximize: (): Promise<boolean> => ipcRenderer.invoke(IPC.windowToggleMaximize),
    close: (): Promise<void> => ipcRenderer.invoke(IPC.windowClose),
    onState: (handler: (state: { maximized: boolean }) => void): (() => void) => {
      const listener = (_e: unknown, state: { maximized: boolean }): void => handler(state);
      ipcRenderer.on(IPC.windowState, listener);
      return () => {
        ipcRenderer.off(IPC.windowState, listener);
      };
    },
  },
  game: {
    launch: (): Promise<void> => ipcRenderer.invoke(IPC.gameLaunch),
    stop: (): Promise<void> => ipcRenderer.invoke(IPC.gameStop),
    /** Returns an unsubscribe function, so React effects can clean up. */
    onLog: (handler: (line: GameLogLine) => void): (() => void) => {
      const listener = (_e: unknown, line: GameLogLine): void => handler(line);
      ipcRenderer.on(IPC.gameLog, listener);
      return () => {
        ipcRenderer.off(IPC.gameLog, listener);
      };
    },
  },
};

contextBridge.exposeInMainWorld('sc', api);

export type ScApi = typeof api;
