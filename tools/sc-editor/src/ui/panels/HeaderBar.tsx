/**
 * Header: one title row with the tabs inline, and one compact tool strip below.
 *
 * This replaces a full ribbon band. The band gave every control a caption and an
 * icon at 84px of height, which is the right trade for an app you use
 * occasionally and the wrong one for a map editor: the vertical space belongs to
 * the map, and an author who paints for an hour learns the toolbar in the first
 * five minutes. So the second row is a single line of controls that changes with
 * the tab, and nothing else competes with the canvas.
 *
 * Tabs marked `stub` are deliberately visible but inert. They are the planned
 * shape of the editor, and hiding them until they work would make the toolbar
 * jump around as features land. Each one says what it will hold rather than
 * pretending to be broken.
 */

import { useEffect, useState } from 'react';
import { LAYER_COUNT } from '../../core/scmap/format';
import { useEditor, type CheckerMode, type Tool } from '../../state/store';
import { ConnectionsDialog, MapMetadataDialog, MapPropertiesDialog } from './MapDialogs';
import { EncounterEditor, TrainerEditor } from './ScriptSystemEditors';
import { ScriptEditor } from './ScriptEditor';
import { CommonEventEditor } from './CommonEventEditor';
import { MapResizeDialog } from './MapResizeDialog';

export type RibbonTab =
  | 'draw' | 'geometry' | 'map' | 'events' | 'view' | 'tilesets'
  | 'common' | 'templates' | 'database' | 'lighting' | 'scripts';

const TABS: Array<{ id: RibbonTab; label: string; stub?: string }> = [
  { id: 'draw', label: 'Draw' },
  { id: 'geometry', label: 'Geometry', stub: 'Shape tools — polygons, paths and terrain sculpting.' },
  { id: 'map', label: 'Map' },
  { id: 'events', label: 'Events' },
  { id: 'view', label: 'View' },
  { id: 'tilesets', label: 'Tilesets' },
  { id: 'common', label: 'Common Events' },
  { id: 'templates', label: 'Templates', stub: 'Reusable map pieces — houses, ledges, cave mouths.' },
  { id: 'database', label: 'Database', stub: 'Items, species, trainers and the rest of the PBS data.' },
  { id: 'lighting', label: 'Lighting' },
  { id: 'scripts', label: 'Scripts' },
];

/** A compact tool-strip button. Icon and label on one line. */
function Tool({
  glyph, label, active, disabled, onClick, title, danger,
}: {
  glyph?: string;
  label: string;
  active?: boolean;
  disabled?: boolean;
  onClick?: () => void;
  title?: string;
  danger?: boolean;
}): React.JSX.Element {
  return (
    <button
      className="sc-tb-btn"
      data-active={active === true}
      data-danger={danger === true}
      disabled={disabled}
      onClick={onClick}
      title={title ?? label}
    >
      {glyph && <span className="sc-tb-glyph">{glyph}</span>}
      {label}
    </button>
  );
}

function Divider(): React.JSX.Element {
  return <span className="sc-tb-divider" />;
}

/** Read-only fact in the tool strip, e.g. the brush size. */
function Chip({ children, title }: { children: React.ReactNode; title?: string }): React.JSX.Element {
  return <span className="sc-tb-chip" title={title}>{children}</span>;
}

const TOOLS: Array<{ id: Tool; glyph: string; label: string }> = [
  { id: 'pencil', glyph: '✏', label: 'Pencil' },
  { id: 'rect', glyph: '▭', label: 'Rect' },
  { id: 'fill', glyph: '◆', label: 'Fill' },
  { id: 'erase', glyph: '⌫', label: 'Erase' },
  { id: 'eyedropper', glyph: '⊙', label: 'Sample' },
];

const CHECKS: Array<{ id: CheckerMode; glyph: string; label: string }> = [
  { id: 'priority', glyph: '⇕', label: 'Priority' },
  { id: 'passage', glyph: '⊘', label: 'Passage' },
  { id: 'terrain', glyph: '⛰', label: 'Terrain' },
];

export function HeaderBar({
  tab, setTab,
}: {
  tab: RibbonTab;
  setTab: (tab: RibbonTab) => void;
}): React.JSX.Element {
  const {
    project, loading, openProject, reimport, saveActive, saveAll, undo, redo,
    activeMapId, docs, tool, setTool, activeLayer, setActiveLayer, setLayerVisible,
    dimInactiveLayers, toggleDimInactiveLayers, brush, brushSize, setBrushSize,
    showGrid, toggleGrid, showNeighbours, toggleNeighbours, showEvents, toggleEvents,
    showEventGraphics, toggleEventGraphics, showEventIds, toggleEventIds,
    showEventTriggers, toggleEventTriggers,
    animate, toggleAnimate, checker, setChecker, log, selectEvent,
    setBottomTab, updateMapProperties, updateMapMetadata,
    showLighting, toggleLighting, lightingHour, setLightingHour, addLight,
    lightingClockPlaying, toggleLightingClock, lightingClockSpeed, setLightingClockSpeed,
    openNewMap, duplicateMap, deleteMap, saveConnections, resizeMap,
    consoleOpen, toggleConsole,
  } = useEditor();

  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;
  const [dialog, setDialog] = useState<
    'properties' | 'metadata' | 'encounters' | 'trainers' | 'scripts' | 'connections' | 'common' | 'resize' | null
  >(null);
  const dirtyCount = [...docs.values()].filter((d) => d.dirty).length;

  const [maximized, setMaximized] = useState(false);
  useEffect(() => window.sc.window.onState((state) => setMaximized(state.maximized)), []);

  const stub = TABS.find((t) => t.id === tab)?.stub;

  return (
    <>
      <div className="sc-header">
        {/* ------------------------------------------------------- title row */}
        <div className="sc-hd-top">
          <div className="sc-brand">
            <span className="sc-brand-mark" />
            <span className="sc-brand-name">Shattered Crowns Editor</span>
          </div>

          {/*
            Save is a labelled button, not a glyph. It was a `⌷`, which is not a
            symbol anyone reads as "save", so the one control the author needs to
            find without hunting was the least findable thing in the bar.
          */}
          <div className="sc-hd-quick">
            <button
              className="sc-save"
              data-dirty={doc?.dirty === true}
              onClick={() => void saveActive()}
              disabled={!doc?.dirty}
              title="Save this map to JSON and .rxdata (Ctrl+S)"
            >
              {doc?.dirty && <span className="sc-save-dot" />}
              Save
            </button>
            {/* Only when it has something to do — otherwise it is a permanently
                dead button teaching the author to ignore that corner. */}
            {dirtyCount > 1 && (
              <button
                className="sc-save"
                data-dirty
                onClick={() => void saveAll()}
                title={`Save all ${dirtyCount} maps with unsaved changes (Ctrl+Shift+S)`}
              >
                Save all · {dirtyCount}
              </button>
            )}
            <button className="sc-qa" onClick={undo} title="Undo (Ctrl+Z)">↶</button>
            <button className="sc-qa" onClick={redo} title="Redo (Ctrl+Shift+Z)">↷</button>
          </div>

          <div className="sc-hd-tabs">
            {TABS.map((t) => (
              <button
                key={t.id}
                className="sc-hd-tab"
                data-active={tab === t.id}
                data-stub={t.stub !== undefined}
                onClick={() => setTab(t.id)}
                title={t.stub ?? t.label}
              >
                {t.label}
              </button>
            ))}
          </div>

          <span className="sc-hd-gap" />

          {/* View toggles that are worth reaching without changing tab. */}
          <div className="sc-hd-icons">
            <button className="sc-qa" data-active={showGrid} onClick={toggleGrid} title="Grid (G)">⊞</button>
            <button className="sc-qa" data-active={showEvents} onClick={toggleEvents} title="Show events">◈</button>
            <button className="sc-qa" data-active={showNeighbours} onClick={toggleNeighbours} title="Connected maps (N)">⧉</button>
            <button className="sc-qa" data-active={showLighting} onClick={toggleLighting} title="Lighting preview">◐</button>
            <button className="sc-qa" data-active={dimInactiveLayers} onClick={toggleDimInactiveLayers} title="Dim inactive layers">≋</button>
            <button className="sc-qa" data-active={consoleOpen} onClick={toggleConsole} title="Console">⌸</button>
          </div>

          <div className="sc-hd-run">
            <button
              className="sc-play"
              onClick={() => {
                void window.sc.game.launch().catch((err: Error) => log('error', err.message));
                log('info', 'Launching game…');
                setBottomTab('console');
                if (!consoleOpen) toggleConsole();
              }}
            >
              ▶ Playtest
            </button>
            <button className="sc-stop" onClick={() => void window.sc.game.stop()}>■ Stop</button>
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

        {/* ------------------------------------------------------ tool strip */}
        <div className="sc-toolstrip">
          {stub && <span className="sc-tb-stub">Not built yet — {stub}</span>}

          {tab === 'draw' && (
            <>
              {TOOLS.map((t) => (
                <Tool key={t.id} glyph={t.glyph} label={t.label} active={tool === t.id} onClick={() => setTool(t.id)} />
              ))}
              <Divider />
              <Tool glyph="⬚" label="Marquee" active={tool === 'select'} onClick={() => setTool('select')} />
              <Tool glyph="◈" label="Events" active={tool === 'event'} onClick={() => setTool('event')} title="Event mode (V)" />
              <Tool glyph="☀" label="Lights" active={tool === 'light'} onClick={() => setTool('light')} />
              <Divider />
              <Chip title="Right-drag on the map to copy a larger stamp">
                Stamp · {brush.w}×{brush.h}
              </Chip>
              {/* Size applies to a single tile and the eraser; a copied stamp
                  already has a size of its own. */}
              <label className="sc-tb-size" title="Brush size, for single tiles and the eraser">
                Size
                <input
                  className="sc-input sc-mono sc-tb-number"
                  type="number"
                  min={1}
                  max={9}
                  value={brushSize}
                  onChange={(event) => setBrushSize(Number(event.target.value))}
                />
              </label>
              <Chip title="Shift+click draws a line from where painting last stopped; Ctrl+drag locks to one axis">
                ⇧ line · ⌃ axis
              </Chip>
              <Divider />
              <div className="sc-tb-layers">
                {Array.from({ length: LAYER_COUNT }, (_, i) => {
                  const layer = doc?.map.layers[i];
                  return (
                    <button
                      key={i}
                      className="sc-tb-layer"
                      data-active={activeLayer === i}
                      data-hidden={layer ? !layer.visible : false}
                      title={`${layer?.name ?? `Layer ${i + 1}`}${layer ? ` — ${layer.role}` : ''} (${i + 1}) · double-click to hide`}
                      onClick={() => {
                        setActiveLayer(i);
                        // Painting onto a hidden layer looks like nothing happening.
                        if (layer && !layer.visible) setLayerVisible(i, true);
                      }}
                      onDoubleClick={() => layer && setLayerVisible(i, !layer.visible)}
                    >
                      {i + 1}
                    </button>
                  );
                })}
              </div>
            </>
          )}

          {tab === 'map' && (
            <>
              <Tool glyph="＋" label="New map" disabled={!project} onClick={() => openNewMap(0)} />
              <Tool glyph="⧉" label="Duplicate" disabled={activeMapId === null} onClick={() => { if (activeMapId !== null) void duplicateMap(activeMapId); }} />
              <Tool
                glyph="🗑"
                label="Delete"
                danger
                disabled={activeMapId === null}
                onClick={() => {
                  if (activeMapId === null || !doc) return;
                  if (!window.confirm(`Delete map ${activeMapId} — ${doc.map.name}?\n\nIts files are moved to Data/SCMaps/.trash and every connection to it is removed.`)) return;
                  void deleteMap(activeMapId);
                }}
              />
              <Divider />
              <Tool glyph="⚙" label="Properties" disabled={!doc} onClick={() => setDialog('properties')} />
              <Tool glyph="⤢" label="Resize" disabled={!doc} onClick={() => setDialog('resize')} title="Resize or shift the map, with an anchor and a preview" />
              <Tool glyph="☰" label="Metadata" disabled={!doc} onClick={() => setDialog('metadata')} />
              <Tool glyph="⇹" label="Connections" disabled={!doc} onClick={() => setDialog('connections')} />
              <Tool glyph="♒" label="Encounters" disabled={!doc} onClick={() => setDialog('encounters')} />
              <Divider />
              <Chip>{doc?.map.connections.length ?? 0} seams</Chip>
              <Divider />
              <Tool glyph="⌂" label="Open project" disabled={loading} onClick={() => void openProject()} />
              <Tool glyph="⟳" label="Reimport" disabled={loading || !project} onClick={() => void reimport()} title="Re-read Data/*.rxdata into Data/SCMaps" />
            </>
          )}

          {tab === 'events' && (
            <>
              <Tool glyph="◈" label="Event mode" active={tool === 'event'} onClick={() => setTool('event')} title="Click events to inspect them (V)" />
              <Tool glyph="♙" label="Trainers" onClick={() => setDialog('trainers')} />
              <Divider />
              <Chip>{doc?.map.events.length ?? 0} on this map</Chip>
              <div className="sc-tb-events">
                {(doc?.map.events ?? []).map((e) => (
                  <button
                    key={e.id}
                    className="sc-tb-event"
                    onClick={() => { selectEvent(e.id); setTool('event'); }}
                    title={`${e.name || 'untitled'} at ${e.x}, ${e.y}`}
                  >
                    <span className="sc-mono sc-faint">{String(e.id).padStart(3, '0')}</span>
                    {e.name || 'untitled'}
                  </button>
                ))}
              </div>
            </>
          )}

          {tab === 'view' && (
            <>
              <Tool glyph="⊞" label="Grid" active={showGrid} onClick={toggleGrid} />
              <Tool glyph="⧉" label="Neighbours" active={showNeighbours} onClick={toggleNeighbours} />
              <Tool glyph="◈" label="Events" active={showEvents} onClick={toggleEvents} />
              <Tool glyph="♟" label="Graphics" active={showEventGraphics} onClick={toggleEventGraphics} />
              <Tool glyph="#" label="IDs" active={showEventIds} onClick={toggleEventIds} />
              <Tool glyph="●" label="Triggers" active={showEventTriggers} onClick={toggleEventTriggers} />
              <Tool glyph="≈" label="Animate" active={animate} onClick={toggleAnimate} />
              <Divider />
              {CHECKS.map((c) => (
                <Tool key={c.id} glyph={c.glyph} label={c.label} active={checker === c.id} onClick={() => setChecker(c.id)} />
              ))}
            </>
          )}

          {tab === 'lighting' && (
            <>
              <Tool glyph="☀" label="Light tool" active={tool === 'light'} disabled={!doc} onClick={() => setTool('light')} title="Click to place; drag to move" />
              <Tool glyph="＋" label="Add light" disabled={!doc} onClick={() => addLight()} />
              <Tool glyph="◉" label="Preview" active={showLighting} onClick={toggleLighting} />
              <Tool glyph="≈" label="Animate" active={animate} onClick={toggleAnimate} />
              <Divider />
              <Chip title="Preview time of day">
                {String(Math.floor(lightingHour)).padStart(2, '0')}:
                {String(Math.floor((lightingHour % 1) * 60)).padStart(2, '0')}
              </Chip>
              <input
                className="sc-tb-range"
                type="range"
                min={0}
                max={23.9833}
                step={0.0166667}
                value={lightingHour}
                onChange={(event) => setLightingHour(Number(event.target.value))}
              />
              <Tool glyph={lightingClockPlaying ? '❚❚' : '▶'} label={lightingClockPlaying ? 'Pause' : 'Run'} active={lightingClockPlaying} onClick={toggleLightingClock} />
              <input
                className="sc-input sc-mono sc-tb-number"
                type="number"
                min={1}
                max={3600}
                value={lightingClockSpeed}
                title="Clock speed"
                onChange={(event) => setLightingClockSpeed(Number(event.target.value))}
              />
              <Divider />
              <Chip>{doc?.map.lighting.lights.length ?? 0} lights</Chip>
            </>
          )}

          {tab === 'common' && (
            <>
              <Tool glyph="⛓" label="Common events" onClick={() => setDialog('common')} title="Browse and edit Data/CommonEvents.rxdata" />
              <Divider />
              <Chip>Name, trigger and switch; commands are shown read-only</Chip>
            </>
          )}

          {tab === 'scripts' && (
            <>
              <Tool glyph="‹/›" label="Script editor" onClick={() => setDialog('scripts')} title="Browse and edit Data/Scripts Ruby files" />
              <Divider />
              <Chip>Ruby, with search and replace</Chip>
            </>
          )}

          {tab === 'tilesets' && (
            <>
              <Chip>{doc?.map.tilesets.length ?? 0} slots on this map</Chip>
              {(doc?.map.tilesets ?? []).map((slot, i) => (
                <Chip key={i} title={`Slot ${i}`}>slot {i} · #{slot.tilesetId}</Chip>
              ))}
              <Divider />
              <span className="sc-tb-note">Add and remove slots in the Tiles panel.</span>
            </>
          )}
        </div>
      </div>

      {doc && dialog === 'properties' && (
        <MapPropertiesDialog map={doc.map} onClose={() => setDialog(null)} onApply={updateMapProperties} />
      )}
      {doc && dialog === 'metadata' && (
        <MapMetadataDialog map={doc.map} onClose={() => setDialog(null)} onApply={updateMapMetadata} />
      )}
      {doc && dialog === 'resize' && (
        <MapResizeDialog map={doc.map} onClose={() => setDialog(null)} onApply={resizeMap} />
      )}
      {doc && dialog === 'connections' && (
        <ConnectionsDialog
          map={doc.map}
          maps={project?.maps ?? []}
          onClose={() => setDialog(null)}
          onApply={(connections) => void saveConnections(doc.map.id, connections)}
        />
      )}
      {doc && dialog === 'encounters' && (
        <EncounterEditor mapId={doc.map.id} mapName={doc.map.name} onClose={() => setDialog(null)} />
      )}
      {dialog === 'trainers' && <TrainerEditor onClose={() => setDialog(null)} />}
      {dialog === 'scripts' && <ScriptEditor onClose={() => setDialog(null)} />}
      {dialog === 'common' && <CommonEventEditor onClose={() => setDialog(null)} />}
    </>
  );
}
