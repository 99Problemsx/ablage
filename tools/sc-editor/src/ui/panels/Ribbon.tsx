/**
 * Ribbon navigation: title row, tab row, and a band of labelled control groups.
 *
 * Chosen over a floating command bar because a map editor has far more actions
 * than a build menu can hold, and they cluster naturally by task ("I am drawing"
 * vs "I am checking tile flags"). A ribbon shows one cluster at full width with
 * every control visible and labelled, instead of hiding them behind icons.
 *
 * The group caption under each cluster is load-bearing, not decoration: it is
 * what makes an unfamiliar icon guessable without a tooltip hunt.
 */

import { useEffect, useState } from 'react';
import { LAYER_COUNT } from '../../core/scmap/format';
import { useEditor, type CheckerMode, type Tool } from '../../state/store';
import { MapMetadataDialog, MapPropertiesDialog } from './MapDialogs';
import { EncounterEditor, TrainerEditor } from './ScriptSystemEditors';

export type RibbonTab = 'home' | 'draw' | 'map' | 'events' | 'lighting' | 'view' | 'tilesets';

const TABS: Array<{ id: RibbonTab; label: string }> = [
  { id: 'home', label: 'Home' },
  { id: 'draw', label: 'Draw' },
  { id: 'map', label: 'Map' },
  { id: 'events', label: 'Events' },
  { id: 'lighting', label: 'Lighting' },
  { id: 'view', label: 'View' },
  { id: 'tilesets', label: 'Tilesets' },
];

/** A labelled cluster of controls. */
function Group({ label, children }: { label: string; children: React.ReactNode }): React.JSX.Element {
  return (
    <div className="sc-rb-group">
      <div className="sc-rb-row">{children}</div>
      <div className="sc-rb-caption">{label}</div>
    </div>
  );
}

/** Large button with the glyph above the label, as the primary ribbon action. */
function Big({
  glyph, label, active, disabled, onClick, title, tone,
}: {
  glyph: string;
  label: string;
  active?: boolean;
  disabled?: boolean;
  onClick?: () => void;
  title?: string;
  tone?: string;
}): React.JSX.Element {
  return (
    <button
      className="sc-rb-big"
      data-active={active === true}
      disabled={disabled}
      onClick={onClick}
      title={title ?? label}
      style={tone ? ({ ['--tone' as string]: tone }) : undefined}
    >
      <span className="sc-rb-glyph">{glyph}</span>
      <span className="sc-rb-label">{label}</span>
    </button>
  );
}

/** Compact button, stacked three-per-column beside the big ones. */
function Small({
  glyph, label, active, onClick, title,
}: {
  glyph: string;
  label: string;
  active?: boolean;
  onClick?: () => void;
  title?: string;
}): React.JSX.Element {
  return (
    <button
      className="sc-rb-small"
      data-active={active === true}
      onClick={onClick}
      title={title ?? label}
    >
      <span className="sc-rb-small-glyph">{glyph}</span>
      {label}
    </button>
  );
}

const TOOLS: Array<{ id: Tool; glyph: string; label: string }> = [
  { id: 'pencil', glyph: '✏', label: 'Pencil' },
  { id: 'rect', glyph: '▭', label: 'Rectangle' },
  { id: 'fill', glyph: '◆', label: 'Fill' },
  { id: 'erase', glyph: '⌫', label: 'Erase' },
  { id: 'eyedropper', glyph: '⊙', label: 'Sample' },
  { id: 'light', glyph: '☀', label: 'Lights' },
];

const CHECKS: Array<{ id: CheckerMode; glyph: string; label: string }> = [
  { id: 'priority', glyph: '⇕', label: 'Priority' },
  { id: 'passage', glyph: '⊘', label: 'Passage' },
  { id: 'terrain', glyph: '⛰', label: 'Terrain' },
];

const ZOOMS = [0.25, 0.5, 1, 2];

export function Ribbon({
  tab, setTab,
}: {
  tab: RibbonTab;
  setTab: (tab: RibbonTab) => void;
}): React.JSX.Element {
  const {
    project, loading, openProject, reimport, saveActive, undo, redo,
    activeMapId, docs, tool, setTool, activeLayer, setActiveLayer, setLayerVisible,
    dimInactiveLayers, toggleDimInactiveLayers,
    showGrid, toggleGrid, showNeighbours, toggleNeighbours, showEvents, toggleEvents,
    showEventGraphics, toggleEventGraphics, showEventIds, toggleEventIds,
    showEventTriggers, toggleEventTriggers,
    animate, toggleAnimate, checker, setChecker, zoom, setZoom, log, selectEvent,
    setBottomTab, updateMapProperties, updateMapMetadata,
    showLighting, toggleLighting, lightingHour, setLightingHour, addLight,
    lightingClockPlaying, toggleLightingClock, lightingClockSpeed, setLightingClockSpeed,
  } = useEditor();

  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;
  const [mapDialog, setMapDialog] = useState<'properties' | 'metadata' | 'encounters' | 'trainers' | null>(null);
  const dirtyCount = [...docs.values()].filter((d) => d.dirty).length;

  const [maximized, setMaximized] = useState(false);
  useEffect(() => window.sc.window.onState((state) => setMaximized(state.maximized)), []);

  return (
    <>
    <div className="sc-ribbon">
      {/* ------------------------------------------------------- title row */}
      <div className="sc-rb-title">
        <div className="sc-brand">
          <span className="sc-brand-mark" />
          <span className="sc-brand-name">FORGE</span>
        </div>

        <div className="sc-rb-quick">
          <button
            className="sc-qa"
            onClick={() => void saveActive()}
            disabled={!doc?.dirty}
            title={dirtyCount > 1 ? `Save (${dirtyCount} maps unsaved)` : 'Save (Ctrl+S)'}
          >
            ⌷
          </button>
          <button className="sc-qa" onClick={undo} title="Undo (Ctrl+Z)">
            ↶
          </button>
          <button className="sc-qa" onClick={redo} title="Redo (Ctrl+Shift+Z)">
            ↷
          </button>
        </div>

        <div className="sc-rb-doc">
          {doc ? (
            <>
              <span className="sc-faint">Maps /</span>{' '}
              <span className="sc-mono">{String(doc.map.id).padStart(3, '0')}</span>{' '}
              <span className="sc-faint">·</span> {doc.map.name}
              {doc.dirty && <span className="sc-rb-dirty" title="Unsaved changes" />}
            </>
          ) : (
            <span className="sc-faint">{project?.title ?? 'No project'}</span>
          )}
        </div>

        <div className="sc-rb-run">
          <button
            className="sc-play"
            onClick={() => {
              void window.sc.game.launch().catch((err: Error) => log('error', err.message));
              log('info', 'Launching game…');
              setBottomTab('console');
            }}
          >
            ▶ Playtest
          </button>
          <button className="sc-stop" onClick={() => void window.sc.game.stop()}>
            ■ Stop
          </button>
        </div>

        <div className="sc-window-controls">
          <button className="sc-wc" onClick={() => void window.sc.window.minimize()} title="Minimise">
            <svg width="10" height="10" viewBox="0 0 10 10">
              <rect x="1" y="4.6" width="8" height="1" fill="currentColor" />
            </svg>
          </button>
          <button
            className="sc-wc"
            onClick={() => void window.sc.window.toggleMaximize().then(setMaximized)}
            title={maximized ? 'Restore' : 'Maximise'}
          >
            {maximized ? (
              <svg width="10" height="10" viewBox="0 0 10 10">
                <rect x="1" y="3" width="6" height="6" fill="none" stroke="currentColor" />
                <path d="M3 3V1h6v6H7" fill="none" stroke="currentColor" />
              </svg>
            ) : (
              <svg width="10" height="10" viewBox="0 0 10 10">
                <rect x="1" y="1" width="8" height="8" fill="none" stroke="currentColor" />
              </svg>
            )}
          </button>
          <button className="sc-wc sc-wc-close" onClick={() => void window.sc.window.close()} title="Close">
            <svg width="10" height="10" viewBox="0 0 10 10">
              <path d="M1 1l8 8M9 1l-8 8" stroke="currentColor" fill="none" />
            </svg>
          </button>
        </div>
      </div>

      {/* --------------------------------------------------------- tab row */}
      <div className="sc-rb-tabs">
        {TABS.map((t) => (
          <button
            key={t.id}
            className="sc-rb-tab"
            data-active={tab === t.id}
            onClick={() => setTab(t.id)}
          >
            {t.label}
          </button>
        ))}
      </div>

      {/* ------------------------------------------------------- ribbon band */}
      <div className="sc-rb-band">
        {tab === 'home' && (
          <>
            <Group label="Project">
              <Big glyph="⌂" label="Open" onClick={() => void openProject()} disabled={loading} />
              <Big
                glyph="⟳"
                label="Reimport"
                onClick={() => void reimport()}
                disabled={loading || !project}
                title="Re-read Data/*.rxdata into Data/SCMaps. Never modifies .rxdata."
              />
            </Group>
            <Group label="File">
              <Big
                glyph="⌷"
                label="Save"
                active={doc?.dirty === true}
                disabled={!doc?.dirty}
                onClick={() => void saveActive()}
              />
              <div className="sc-rb-col">
                <Small glyph="↶" label="Undo" onClick={undo} />
                <Small glyph="↷" label="Redo" onClick={redo} />
              </div>
            </Group>
            <Group label="Statistics">
              <div className="sc-rb-stats">
                <div>
                  <b>{project?.maps.length ?? 0}</b> maps
                </div>
                <div>
                  <b>{doc?.map.events.length ?? 0}</b> events on this map
                </div>
                <div>
                  <b>{dirtyCount}</b> unsaved
                </div>
              </div>
            </Group>
          </>
        )}

        {tab === 'draw' && (
          <>
            <Group label="Tools">
              {TOOLS.map((t) => (
                <Big
                  key={t.id}
                  glyph={t.glyph}
                  label={t.label}
                  active={tool === t.id}
                  onClick={() => setTool(t.id)}
                />
              ))}
            </Group>
            <Group label="Layers">
              {/*
                Two compact rows replace the old right-hand Layers panel: pick a
                layer on top, toggle its visibility underneath. The eye row sits
                directly below its number so the pairing needs no labels.
              */}
              <div className="sc-rb-layerstack">
                <div className="sc-rb-layers">
                  {Array.from({ length: LAYER_COUNT }, (_, i) => {
                    const layer = doc?.map.layers[i];
                    return (
                      <button
                        key={i}
                        className="sc-rb-layer"
                        data-active={activeLayer === i}
                        title={`${layer?.name ?? `Layer ${i + 1}`} — ${layer?.role ?? ''} (${i + 1})`}
                        onClick={() => {
                          setActiveLayer(i);
                          // Painting onto a hidden layer looks like nothing happening.
                          if (layer && !layer.visible) setLayerVisible(i, true);
                        }}
                      >
                        {i + 1}
                      </button>
                    );
                  })}
                  <button
                    className="sc-rb-layer sc-rb-layer-wide"
                    data-active={tool === 'event'}
                    onClick={() => setTool('event')}
                    title="Event mode (V)"
                  >
                    Events
                  </button>
                </div>
                <div className="sc-rb-layers">
                  {Array.from({ length: LAYER_COUNT }, (_, i) => {
                    const layer = doc?.map.layers[i];
                    const visible = layer?.visible ?? true;
                    return (
                      <button
                        key={i}
                        className="sc-rb-eye"
                        data-off={!visible}
                        disabled={!doc}
                        title={`${visible ? 'Hide' : 'Show'} ${layer?.name ?? `layer ${i + 1}`}`}
                        onClick={() => setLayerVisible(i, !visible)}
                      >
                        {visible ? '◉' : '○'}
                      </button>
                    );
                  })}
                  <button
                    className="sc-rb-layer sc-rb-layer-wide"
                    data-active={dimInactiveLayers}
                    onClick={toggleDimInactiveLayers}
                    title="Fade every layer except the one you are editing"
                  >
                    Dim
                  </button>
                </div>
              </div>
            </Group>
            <Group label="Zoom">
              <div className="sc-rb-zooms">
                {ZOOMS.map((z) => (
                  <button
                    key={z}
                    className="sc-rb-zoom"
                    data-active={Math.abs(zoom - z) < 0.01}
                    onClick={() => setZoom(z)}
                  >
                    {z < 1 ? `${z}×` : `${z}×`}
                  </button>
                ))}
              </div>
            </Group>
          </>
        )}

        {tab === 'view' && (
          <>
            <Group label="Show">
              <Big glyph="⊞" label="Grid" active={showGrid} onClick={toggleGrid} title="Grid (G)" />
              <Big
                glyph="⧉"
                label="Neighbours"
                active={showNeighbours}
                onClick={toggleNeighbours}
                title="Connected maps, translucent (N)"
              />
              <Big glyph="◈" label="Events" active={showEvents} onClick={toggleEvents} />
              <Big glyph="♟" label="Graphics" active={showEventGraphics} onClick={toggleEventGraphics} title="Show event character graphics" />
              <Big glyph="#" label="Event IDs" active={showEventIds} onClick={toggleEventIds} />
              <Big glyph="●" label="Triggers" active={showEventTriggers} onClick={toggleEventTriggers} title="Highlight Autorun and Parallel Process events" />
              <Big
                glyph="≈"
                label="Animate"
                active={animate}
                onClick={toggleAnimate}
                title="Animate autotiles as they move in game"
              />
            </Group>
            <Group label="Checkers">
              {CHECKS.map((c) => (
                <Big
                  key={c.id}
                  glyph={c.glyph}
                  label={c.label}
                  active={checker === c.id}
                  onClick={() => setChecker(c.id)}
                />
              ))}
            </Group>
          </>
        )}

        {tab === 'lighting' && (
          <>
            <Group label="Authoring">
              <Big glyph="☀" label="Light tool" active={tool === 'light'} disabled={!doc} onClick={() => setTool('light')} title="Click to place; drag to move" />
              <Big glyph="＋" label="Add light" disabled={!doc} onClick={() => addLight()} />
              <Big glyph="◉" label="Preview" active={showLighting} onClick={toggleLighting} />
              <Big glyph="≈" label="Animate" active={animate} onClick={toggleAnimate} />
            </Group>
            <Group label="Preview time">
              <div className="sc-rb-stats" style={{ minWidth: 190 }}>
                <div><b>{String(Math.floor(lightingHour)).padStart(2, '0')}:{String(Math.floor((lightingHour % 1) * 60)).padStart(2, '0')}</b> · {lightingClockSpeed}×</div>
                <input type="range" min={0} max={23.9833} step={0.0166667} value={lightingHour} onChange={(event) => setLightingHour(Number(event.target.value))} />
                <div><button className="sc-btn" data-active={lightingClockPlaying} onClick={toggleLightingClock}>{lightingClockPlaying ? 'Pause' : 'Run'}</button> <input className="sc-input sc-mono" style={{ width: 64 }} type="number" min={1} max={3600} value={lightingClockSpeed} onChange={(event) => setLightingClockSpeed(Number(event.target.value))} /></div>
              </div>
            </Group>
            <Group label="Map lighting">
              <div className="sc-rb-stats">
                <div><b>{doc?.map.lighting.lights.length ?? 0}</b> lights</div>
                <div><b>{doc?.map.lighting.lights.filter((light) => light.enabled !== false).length ?? 0}</b> enabled</div>
                <div className="sc-faint">Detailed controls are in the Lighting inspector.</div>
              </div>
            </Group>
          </>
        )}

        {tab === 'map' && (
          <>
            <Group label="Map">
              <Big
                glyph="⚙"
                label="Properties"
                disabled={!doc}
                onClick={() => setMapDialog('properties')}
              />
              <Big
                glyph="☰"
                label="Metadata"
                disabled={!doc}
                onClick={() => setMapDialog('metadata')}
              />
            </Group>
            <Group label="Connections">
              <div className="sc-rb-stats">
                <div>
                  <b>{doc?.map.connections.length ?? 0}</b> connections
                </div>
                {doc?.map.connections.map((c) => (
                  <div key={`${c.edge}-${c.toMapId}`} className="sc-mono sc-faint">
                    {c.edge} → map {c.toMapId} @{c.offset}
                  </div>
                ))}
              </div>
            </Group>
            <Group label="Gameplay">
              <Big glyph="♒" label="Encounters" disabled={!doc} onClick={() => setMapDialog('encounters')} title="Edit this map's Script System encounters" />
            </Group>
          </>
        )}

        {tab === 'events' && (
          <>
            <Group label="Database">
              <Big glyph="♙" label="Trainers" onClick={() => setMapDialog('trainers')} title="Edit Script System trainers" />
            </Group>
            <Group label="Mode">
              <Big
                glyph="◈"
                label="Event mode"
                active={tool === 'event'}
                onClick={() => setTool('event')}
                title="Click events to inspect them (V)"
              />
            </Group>
            <Group label="Events on this map">
              <div className="sc-rb-events">
                {(doc?.map.events ?? []).length === 0 ? (
                  <span className="sc-faint">None.</span>
                ) : (
                  doc?.map.events.map((e) => (
                    <button
                      key={e.id}
                      className="sc-rb-event"
                      onClick={() => {
                        selectEvent(e.id);
                        setTool('event');
                      }}
                      title={`${e.name || 'untitled'} at ${e.x}, ${e.y}`}
                    >
                      <span className="sc-mono sc-faint">{String(e.id).padStart(3, '0')}</span>
                      {e.name || 'untitled'}
                    </button>
                  ))
                )}
              </div>
            </Group>
          </>
        )}

        {tab === 'tilesets' && (
          <Group label="Tilesets on this map">
            <div className="sc-rb-stats">
              {(doc?.map.tilesets ?? []).map((slot, i) => (
                <div key={i} className="sc-mono">
                  <span className="sc-faint">slot {i}</span> #{slot.tilesetId}
                </div>
              ))}
              <div className="sc-faint">Add or remove in the Tilesets panel on the right.</div>
            </div>
          </Group>
        )}
      </div>
    </div>
    {doc && mapDialog === 'properties' && (
      <MapPropertiesDialog map={doc.map} onClose={() => setMapDialog(null)} onApply={updateMapProperties} />
    )}
    {doc && mapDialog === 'metadata' && (
      <MapMetadataDialog map={doc.map} onClose={() => setMapDialog(null)} onApply={updateMapMetadata} />
    )}
    {doc && mapDialog === 'encounters' && (
      <EncounterEditor mapId={doc.map.id} mapName={doc.map.name} onClose={() => setMapDialog(null)} />
    )}
    {mapDialog === 'trainers' && <TrainerEditor onClose={() => setMapDialog(null)} />}
    </>
  );
}
