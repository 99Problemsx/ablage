/**
 * The IPC contract between the Electron main process and the editor UI.
 *
 * Shared by main and preload so the channel names and payload shapes cannot
 * drift apart. The renderer runs with nodeIntegration off and contextIsolation
 * on, so this is the only route to the filesystem — every project write goes
 * through a named channel here rather than arbitrary fs access.
 */

import type { SCTilesetCatalog } from '../src/core/scmap/format.ts';

export const IPC = {
  projectOpen: 'project:open',
  projectPick: 'project:pick',
  projectReimport: 'project:reimport',
  mapLoad: 'map:load',
  mapSave: 'map:save',
  mapCreate: 'map:create',
  mapDelete: 'map:delete',
  mapDuplicate: 'map:duplicate',
  mapTree: 'map:tree',
  mapConnections: 'map:connections',
  tilesetCatalogLoad: 'tileset:catalog:load',
  tilesetCatalogSave: 'tileset:catalog:save',
  commonEventsLoad: 'common-events:load',
  commonEventsSave: 'common-events:save',
  tilesetCreate: 'tileset:create',
  tilesetUpdate: 'tileset:update',
  graphicsImport: 'graphics:import',
  imageLoad: 'image:load',
  pbsRead: 'pbs:read',
  pbsWrite: 'pbs:write',
  scriptList: 'script:list',
  scriptRead: 'script:read',
  scriptWrite: 'script:write',
  scriptSystemRead: 'script-system:read',
  scriptSystemWrite: 'script-system:write',
  gameLaunch: 'game:launch',
  gameStop: 'game:stop',
  gameLog: 'game:log',
  windowMinimize: 'window:minimize',
  windowToggleMaximize: 'window:toggle-maximize',
  windowClose: 'window:close',
  windowState: 'window:state',
  graphicsList: 'graphics:list',
  systemNames: 'system:names',
  eventExport: 'event:export',
  eventImport: 'event:import',
} as const;

/** Switch and variable names, read from RPG Maker's System.rxdata. */
export interface SystemNames {
  switches: string[];
  variables: string[];
  database: Record<string, string[]>;
}

export interface ProjectSummary {
  root: string;
  title: string;
  /** True when Data/SCMaps exists, i.e. the project has been imported. */
  imported: boolean;
  maps: MapTreeNode[];
  warnings: string[];
}

export interface NewTilesetRequest {
  name: string;
  /** Filename under Graphics/Tilesets, without extension. */
  graphic: string;
  /** Up to seven filenames under Graphics/Autotiles, '' where unused. */
  autotiles: string[];
}

/**
 * The result of registering or editing a tileset. Carries the whole catalogue
 * back because the renderer keys its palette off it and a partial update would
 * leave the two out of step.
 */
export interface TilesetMutationResult {
  catalog: SCTilesetCatalog;
  warnings: string[];
  newTilesetId?: number;
}

export interface NewMapRequest {
  name: string;
  width: number;
  height: number;
  tilesetId: number;
  parentId: number;
}

/** A rename, reparent or reorder. Omitted fields are left alone. */
export interface MapTreeChange {
  id: number;
  name?: string;
  parentId?: number;
  order?: number;
}

/**
 * The result of any operation that changes which maps exist or how they relate.
 *
 * `invalidated` lists maps whose file on disk no longer matches whatever the
 * renderer has cached — editing a connection rewrites both ends, so the answer is
 * rarely just "the map you touched".
 */
export interface MapMutationResult {
  summary: ProjectSummary;
  warnings: string[];
  invalidated: number[];
  /** Set by create and duplicate, so the caller can select what it just made. */
  newMapId?: number;
}

export interface MapTreeNode {
  id: number;
  name: string;
  parentId: number;
  order: number;
  width: number;
  height: number;
  /** Connected map ids, for the neighbour overlay. */
  connectedTo: number[];
}

/**
 * An image is shipped to the renderer as the raw encoded file bytes, not as
 * decoded RGBA. The renderer then uses `createImageBitmap`, which decodes off
 * the main thread and hands back something uploadable straight to a GL texture —
 * decoding in main would cost a needless copy and a format conversion.
 */
export interface LoadedImage {
  /** Path relative to the project root, for cache keys and error messages. */
  relPath: string;
  bytes: Uint8Array;
}

export interface GameLogLine {
  stream: 'stdout' | 'stderr';
  text: string;
  at: number;
}
