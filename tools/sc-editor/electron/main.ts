/**
 * Electron main process.
 *
 * Owns all filesystem and child-process access. Every write is confined to the
 * currently open project root and validated by `resolveInProject`, so a bug in
 * the UI cannot escape the project folder.
 */

import { spawn, type ChildProcess } from 'node:child_process';
import { existsSync, mkdirSync, readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { dirname, isAbsolute, join, relative, resolve, sep, parse as parsePath } from 'node:path';
import { BrowserWindow, app, dialog, ipcMain, session, shell } from 'electron';
import {
  IPC,
  type GameLogLine,
  type LoadedImage,
  type MapTreeNode,
  type ProjectSummary,
  type SystemNames,
} from './ipc.ts';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import { RObject, RString } from '../src/core/marshal/types.ts';
import { importProject, type ImportFs } from '../src/core/import/rxdata.ts';
import { serialiseMap } from '../src/core/scmap/serialize.ts';
import { SCMAP_FORMAT_VERSION, type SCMap } from '../src/core/scmap/format.ts';

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

  ipcMain.handle(IPC.mapSave, (_e, map: SCMap): void => {
    if (typeof map?.id !== 'number') throw new Error('Refusing to save a map with no id');
    const path = resolveInProject(join('Data', 'SCMaps', `Map${String(map.id).padStart(3, '0')}.json`));
    mkdirSync(dirname(path), { recursive: true });
    writeFileSync(path, serialiseMap(map), 'utf8');
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
