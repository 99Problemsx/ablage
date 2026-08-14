/**
 * Application shell: title bar, tool rail, three docked regions, status bar.
 *
 * The layout is a CSS grid with widths held in state so the splitters can drag
 * them. Deliberately not a general docking framework — a fixed, predictable
 * layout is faster to use than a rearrangeable one, and far less code.
 */

import { useCallback, useEffect, useRef, useState } from 'react';
import { useEditor, type Tool } from '../state/store';
import { MapCanvas } from './panels/MapCanvas';
import { HeaderBar, type RibbonTab } from './panels/HeaderBar';
import { MapTree } from './panels/MapTree';
import { TilesetPalette } from './panels/TilesetPalette';
import { ConsolePanel } from './panels/ConsolePanel';
import { EventDialog } from './panels/EventDialog';
import { LightingPanel } from './panels/LightingPanel';

const TOOLS: Array<{ id: Tool; glyph: string; label: string; key: string }> = [
  { id: 'pencil', glyph: '✏', label: 'Pencil', key: 'B' },
  { id: 'rect', glyph: '▭', label: 'Rectangle', key: 'R' },
  { id: 'fill', glyph: '◆', label: 'Flood fill', key: 'F' },
  { id: 'erase', glyph: '⌫', label: 'Erase', key: 'E' },
  { id: 'eyedropper', glyph: '⊙', label: 'Pick tile', key: 'I' },
  { id: 'select', glyph: '⬚', label: 'Select', key: 'S' },
  { id: 'event', glyph: '◈', label: 'Events', key: 'V' },
  { id: 'light', glyph: '☀', label: 'Lights', key: 'L' },
];

export function App(): React.JSX.Element {
  const {
    project, loading, saveActive, saveAll, activeMapId, docs, setTool, toggleGrid,
    toggleNeighbours, undo, redo, log, setActiveLayer, catalog, setChecker,
    lightingClockPlaying, lightingClockSpeed, zoom, setZoom, tool, consoleOpen,
    selectedLightId,
  } = useEditor();

  const [leftWidth, setLeftWidth] = useState(248);
  const [rightWidth, setRightWidth] = useState(316);
  const [consoleHeight, setConsoleHeight] = useState(240);
  const [ribbonTab, setRibbonTab] = useState<RibbonTab>('draw');

  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;

  // Open the project the editor ships inside, so first launch shows real content.
  const bootstrapped = useRef(false);
  useEffect(() => {
    if (bootstrapped.current || project) return;
    bootstrapped.current = true;
    void (async () => {
      try {
        // The main process already resolved the bundled root; '' means "use it".
        const summary = await window.sc.project.open('.');
        const catalogRaw = await window.sc.tilesets.load().catch(() => null);
        useEditor.setState({
          project: summary,
          catalog: new Map((catalogRaw?.tilesets ?? []).map((t) => [t.id, t])),
        });
        log('info', `${summary.title}: ${summary.maps.length} maps, ${catalogRaw?.tilesets.length ?? 0} tilesets.`);
        for (const w of summary.warnings) log('warn', w);
        void useEditor.getState().loadSystemNames();

        // Open something immediately. Landing on an empty canvas tells the author
        // nothing about whether the project loaded correctly. Prefer the map they
        // had open last, so relaunching resumes where they left off.
        const remembered = Number(localStorage.getItem('sc.lastMapId') ?? '');
        const target =
          summary.maps.find((m) => m.id === remembered) ??
          [...summary.maps].sort((a, b) => a.order - b.order || a.id - b.id)[0];
        if (target) await useEditor.getState().selectMap(target.id);
      } catch (err) {
        log('warn', `Auto-open failed: ${(err as Error).message}. Use Open Project.`);
      }
    })();
  }, [project, log]);

  useEffect(() => {
    if (!lightingClockPlaying) return;
    let previous = performance.now();
    const timer = window.setInterval(() => {
      const now = performance.now();
      const elapsedSeconds = (now - previous) / 1000;
      previous = now;
      const state = useEditor.getState();
      state.setLightingHour(state.lightingHour + elapsedSeconds * lightingClockSpeed / 3600);
    }, 100);
    return () => window.clearInterval(timer);
  }, [lightingClockPlaying, lightingClockSpeed]);

  // ------------------------------------------------------------- shortcuts

  useEffect(() => {
    const onKey = (e: KeyboardEvent): void => {
      const target = e.target as HTMLElement | null;
      // Never hijack typing in a field.
      if (target && /^(INPUT|TEXTAREA|SELECT)$/.test(target.tagName)) return;

      const mod = e.ctrlKey || e.metaKey;
      if (mod && e.key.toLowerCase() === 's') {
        e.preventDefault();
        if (e.shiftKey) void saveAll();
        else void saveActive();
        return;
      }
      if (mod && e.key.toLowerCase() === 'z') {
        e.preventDefault();
        if (e.shiftKey) redo();
        else undo();
        return;
      }
      if (mod) return;

      if (e.key === 'Escape') {
        // One key out of event mode, back to the brush.
        useEditor.getState().selectEvent(null);
        setTool('pencil');
      } else if (e.key === 'g') toggleGrid();
      else if (e.key === 'n') toggleNeighbours();
      else if (e.key === 'p') setChecker('priority');
      else if (e.key === 'o') setChecker('passage');
      else if (e.key === 't') setChecker('terrain');
      else if (e.key >= '1' && e.key <= '5') setActiveLayer(Number(e.key) - 1);
      else {
        const match = TOOLS.find((t) => t.key.toLowerCase() === e.key.toLowerCase());
        if (match) setTool(match.id);
      }
    };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [
    saveActive, saveAll, undo, redo, toggleGrid, toggleNeighbours, setActiveLayer,
    setTool, setChecker,
  ]);

  // -------------------------------------------------------------- splitters

  const startDrag = useCallback(
    (
      axis: 'x' | 'y',
      initial: number,
      sign: 1 | -1,
      apply: (value: number) => void,
      min: number,
      max: number,
    ) =>
      (e: React.PointerEvent<HTMLDivElement>) => {
        e.preventDefault();
        const start = axis === 'x' ? e.clientX : e.clientY;
        const onMove = (ev: PointerEvent): void => {
          const delta = ((axis === 'x' ? ev.clientX : ev.clientY) - start) * sign;
          apply(Math.min(max, Math.max(min, initial + delta)));
        };
        const onUp = (): void => {
          window.removeEventListener('pointermove', onMove);
          window.removeEventListener('pointerup', onUp);
        };
        window.addEventListener('pointermove', onMove);
        window.addEventListener('pointerup', onUp);
      },
    [],
  );

  return (
    <div className="sc-shell">
      <div className="sc-ambient" />

      <HeaderBar tab={ribbonTab} setTab={setRibbonTab} />
      <EventDialog />

      {/* ---------------------------------------------------------- body */}
      <div
        className="sc-body"
        style={{
          gridTemplateColumns: `${leftWidth}px 4px 1fr 4px ${rightWidth}px`,
        }}
      >
        <aside className="sc-dock sc-dock-left">
          <MapTree />
        </aside>

        <div
          className="sc-splitter sc-splitter-v"
          onPointerDown={startDrag('x', leftWidth, 1, setLeftWidth, 180, 460)}
        />

        <main className="sc-center">
          <div className="sc-center-canvas">
            <MapCanvas />
          </div>
          {consoleOpen && (
            <>
              <div
                className="sc-splitter sc-splitter-h"
                onPointerDown={startDrag('y', consoleHeight, -1, setConsoleHeight, 80, 520)}
              />
              <div className="sc-center-console" style={{ height: consoleHeight }}>
                <div className="sc-panel sc-stack sc-fill">
                  <ConsolePanel embedded />
                </div>
              </div>
            </>
          )}
        </main>

        <div
          className="sc-splitter sc-splitter-v"
          onPointerDown={startDrag('x', rightWidth, -1, setRightWidth, 240, 560)}
        />

        {/*
          No Layers panel here on purpose: the ribbon's Draw tab already owns
          layer selection, visibility and dimming, and duplicating it cost ~40%
          of the right dock for a list of five rows.
        */}
        {/*
          The lighting inspector is not a permanent fixture. It was taking the
          top third of the right dock at all times, and the dock's real job is
          the tile palette — which now lists every tileset in the project and
          wants all the height it can get. Lighting appears when you are
          actually doing lighting: the Lighting tab, or a selected light.
        */}
        <aside className="sc-dock sc-dock-right">
          {(ribbonTab === 'lighting' || selectedLightId !== null) && <LightingPanel />}
          <TilesetPalette />
        </aside>
      </div>

      {/* ----------------------------------------------------- status bar */}
      <footer className="sc-statusbar">
        {loading ? (
          <span className="sc-status-item" style={{ color: 'var(--sc-accent)' }}>working…</span>
        ) : doc ? (
          <span className="sc-status-item">
            {doc.map.name} <span className="sc-faint">—</span>{' '}
            <span className="sc-mono">{doc.map.width}×{doc.map.height}</span>
          </span>
        ) : (
          <span className="sc-status-item sc-faint">{project ? 'no map open' : 'no project'}</span>
        )}

        {/*
          Capability chips. They answer "what is this map carrying" at a glance —
          which of the five layers hold tiles, whether it has autotiles, PBS
          metadata, or events — without opening four dialogs to find out.
        */}
        {doc && (
          <span className="sc-status-chips">
            <span className="sc-chip" data-on title="Five tile layers">5L</span>
            <span
              className="sc-chip"
              data-on={doc.layerData.some((layer) => layer.some((v) => v !== 0 && (v & 0xffff) < 384))}
              title="Uses autotiles"
            >
              AT
            </span>
            <span
              className="sc-chip"
              data-on={Object.keys(doc.map.metadata).length > 1}
              title="Has PBS map metadata"
            >
              MD
            </span>
            <span className="sc-chip" data-on={doc.map.events.length > 0} title={`${doc.map.events.length} events`}>
              ED
            </span>
          </span>
        )}

        <span className="sc-status-item sc-faint">Tool: {tool}</span>
        <span style={{ flex: 1 }} />
        {doc && (
          <span className="sc-status-item sc-mono sc-faint">
            {doc.map.events.length} events · {doc.map.connections.length} seams
          </span>
        )}
        <span className="sc-status-item sc-mono sc-faint">{catalog.size} tilesets</span>
        <span className="sc-status-item sc-mono sc-faint">{project?.maps.length ?? 0} maps</span>
        <span className="sc-status-zoom">
          <button className="sc-qa" onClick={() => setZoom(zoom / 2)} title="Zoom out">−</button>
          <span className="sc-mono">{Math.round(zoom * 100)}%</span>
          <button className="sc-qa" onClick={() => setZoom(zoom * 2)} title="Zoom in">+</button>
        </span>
      </footer>
    </div>
  );
}
