"use strict";
const electron = require("electron");
const IPC = {
  projectOpen: "project:open",
  projectPick: "project:pick",
  projectReimport: "project:reimport",
  mapLoad: "map:load",
  mapSave: "map:save",
  tilesetCatalogLoad: "tileset:catalog:load",
  tilesetCatalogSave: "tileset:catalog:save",
  imageLoad: "image:load",
  pbsRead: "pbs:read",
  pbsWrite: "pbs:write",
  scriptList: "script:list",
  scriptRead: "script:read",
  scriptWrite: "script:write",
  scriptSystemRead: "script-system:read",
  scriptSystemWrite: "script-system:write",
  gameLaunch: "game:launch",
  gameStop: "game:stop",
  gameLog: "game:log",
  windowMinimize: "window:minimize",
  windowToggleMaximize: "window:toggle-maximize",
  windowClose: "window:close",
  windowState: "window:state",
  graphicsList: "graphics:list",
  systemNames: "system:names",
  eventExport: "event:export",
  eventImport: "event:import"
};
const api = {
  project: {
    open: (root) => electron.ipcRenderer.invoke(IPC.projectOpen, root),
    pick: () => electron.ipcRenderer.invoke(IPC.projectPick),
    reimport: () => electron.ipcRenderer.invoke(IPC.projectReimport)
  },
  map: {
    load: (id) => electron.ipcRenderer.invoke(IPC.mapLoad, id),
    save: (map) => electron.ipcRenderer.invoke(IPC.mapSave, map)
  },
  tilesets: {
    load: () => electron.ipcRenderer.invoke(IPC.tilesetCatalogLoad),
    save: (catalog) => electron.ipcRenderer.invoke(IPC.tilesetCatalogSave, catalog)
  },
  /** Names (no extension) of the graphics in a Graphics subfolder. */
  graphicsList: (folder) => electron.ipcRenderer.invoke(IPC.graphicsList, folder),
  systemNames: () => electron.ipcRenderer.invoke(IPC.systemNames),
  event: {
    /** Opens a save dialog and writes the JSON; resolves false if cancelled. */
    export: (suggestedName, json) => electron.ipcRenderer.invoke(IPC.eventExport, suggestedName, json),
    /** Opens a load dialog; resolves null if cancelled. */
    import: () => electron.ipcRenderer.invoke(IPC.eventImport)
  },
  /** `folder` is relative to Graphics/, e.g. "Tilesets" or "Autotiles". */
  image: (folder, name) => electron.ipcRenderer.invoke(IPC.imageLoad, folder, name),
  pbs: {
    read: (file) => electron.ipcRenderer.invoke(IPC.pbsRead, file),
    write: (file, text) => electron.ipcRenderer.invoke(IPC.pbsWrite, file, text)
  },
  scripts: {
    list: () => electron.ipcRenderer.invoke(IPC.scriptList),
    read: (rel) => electron.ipcRenderer.invoke(IPC.scriptRead, rel),
    write: (rel, text) => electron.ipcRenderer.invoke(IPC.scriptWrite, rel, text)
  },
  scriptSystem: {
    read: (rel) => electron.ipcRenderer.invoke(IPC.scriptSystemRead, rel),
    write: (rel, text) => electron.ipcRenderer.invoke(IPC.scriptSystemWrite, rel, text)
  },
  window: {
    minimize: () => electron.ipcRenderer.invoke(IPC.windowMinimize),
    toggleMaximize: () => electron.ipcRenderer.invoke(IPC.windowToggleMaximize),
    close: () => electron.ipcRenderer.invoke(IPC.windowClose),
    onState: (handler) => {
      const listener = (_e, state) => handler(state);
      electron.ipcRenderer.on(IPC.windowState, listener);
      return () => {
        electron.ipcRenderer.off(IPC.windowState, listener);
      };
    }
  },
  game: {
    launch: () => electron.ipcRenderer.invoke(IPC.gameLaunch),
    stop: () => electron.ipcRenderer.invoke(IPC.gameStop),
    /** Returns an unsubscribe function, so React effects can clean up. */
    onLog: (handler) => {
      const listener = (_e, line) => handler(line);
      electron.ipcRenderer.on(IPC.gameLog, listener);
      return () => {
        electron.ipcRenderer.off(IPC.gameLog, listener);
      };
    }
  }
};
electron.contextBridge.exposeInMainWorld("sc", api);
