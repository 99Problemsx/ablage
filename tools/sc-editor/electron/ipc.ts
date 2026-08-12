/**
 * The IPC contract between the Electron main process and the editor UI.
 *
 * Shared by main and preload so the channel names and payload shapes cannot
 * drift apart. The renderer runs with nodeIntegration off and contextIsolation
 * on, so this is the only route to the filesystem — every project write goes
 * through a named channel here rather than arbitrary fs access.
 */

export const IPC = {
  projectOpen: 'project:open',
  projectPick: 'project:pick',
  projectReimport: 'project:reimport',
  mapLoad: 'map:load',
  mapSave: 'map:save',
  tilesetCatalogLoad: 'tileset:catalog:load',
  tilesetCatalogSave: 'tileset:catalog:save',
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
