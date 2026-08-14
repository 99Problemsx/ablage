import { useEffect, useMemo, useState } from 'react';
import type {
  Edge,
  SCAudioRef,
  SCConnection,
  SCMap,
  SCMapMetadata,
  SCTileset,
  WeatherKind,
} from '../../core/scmap/format';
import { oppositeEdge, validateConnections } from '../../core/scmap/connections';
import type { MapTreeNode, NewMapRequest } from '../../../electron/ipc';

function useEscape(onClose: () => void): void {
  useEffect(() => {
    const handler = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') { event.preventDefault(); event.stopImmediatePropagation(); onClose(); }
    };
    window.addEventListener('keydown', handler, true);
    return () => window.removeEventListener('keydown', handler, true);
  }, [onClose]);
}

function Shell({ title, onClose, onApply, applyLabel = 'Apply', applyDisabled, children }: { title: string; onClose: () => void; onApply: () => void; applyLabel?: string; applyDisabled?: boolean; children: React.ReactNode }): React.JSX.Element {
  useEscape(onClose);
  return <div className="sc-modal-scrim" style={{ zIndex: 70 }} onMouseDown={onClose}>
    <section className="sc-modal sc-map-dialog" role="dialog" aria-modal="true" onMouseDown={(e) => e.stopPropagation()}>
      <header className="sc-modal-head"><h2>{title}</h2><button type="button" className="sc-modal-x" onClick={onClose}>×</button></header>
      <div className="sc-map-dialog-body">{children}</div>
      <footer className="sc-modal-foot"><span style={{ flex: 1 }} /><button className="sc-btn" onClick={onClose}>Cancel</button><button className="sc-btn" data-active disabled={applyDisabled} onClick={onApply}>{applyLabel}</button></footer>
    </section>
  </div>;
}

const WEATHER: WeatherKind[] = ['None', 'Rain', 'HeavyRain', 'Storm', 'Snow', 'Blizzard', 'Sandstorm', 'Fog', 'Sun', 'Ash', 'Cloudy'];
const emptyAudio = (): SCAudioRef => ({ name: '', volume: 100, pitch: 100 });

// ------------------------------------------------------------------- new map

/**
 * New-map dialog.
 *
 * The size defaults to 20x15 — one screen in Essentials — because a new map that
 * is exactly one screenful is the one size an author can immediately judge, and
 * resizing later is lossless as long as it only grows.
 */
export function NewMapDialog({ maps, tilesets, defaultParentId, onClose, onCreate }: { maps: MapTreeNode[]; tilesets: SCTileset[]; defaultParentId: number; onClose: () => void; onCreate: (request: NewMapRequest) => void }): React.JSX.Element {
  const [value, setValue] = useState<NewMapRequest>(() => ({
    name: 'New Map',
    width: 20,
    height: 15,
    tilesetId: tilesets[0]?.id ?? 1,
    parentId: defaultParentId,
  }));
  const size = (key: 'width' | 'height') => (event: React.ChangeEvent<HTMLInputElement>): void =>
    setValue({ ...value, [key]: Math.max(1, Math.min(500, Number(event.target.value) || 1)) });

  return <Shell title="New Map" applyLabel="Create" applyDisabled={value.name.trim().length === 0} onClose={onClose} onApply={() => { onCreate({ ...value, name: value.name.trim() }); onClose(); }}>
    <div className="sc-map-form-grid">
      <label className="sc-field sc-map-span">Name<input className="sc-input" autoFocus value={value.name} onChange={(e) => setValue({ ...value, name: e.target.value })} /></label>
      <label className="sc-field">Width<input className="sc-input sc-mono" type="number" min={1} max={500} value={value.width} onChange={size('width')} /></label>
      <label className="sc-field">Height<input className="sc-input sc-mono" type="number" min={1} max={500} value={value.height} onChange={size('height')} /></label>
      <label className="sc-field">Tileset<select className="sc-select" value={value.tilesetId} onChange={(e) => setValue({ ...value, tilesetId: Number(e.target.value) })}>{tilesets.map((tileset) => <option key={tileset.id} value={tileset.id}>#{tileset.id} — {tileset.name}</option>)}</select></label>
      <label className="sc-field">Parent<select className="sc-select" value={value.parentId} onChange={(e) => setValue({ ...value, parentId: Number(e.target.value) })}><option value={0}>(top level)</option>{maps.map((node) => <option key={node.id} value={node.id}>{String(node.id).padStart(3, '0')} — {node.name}</option>)}</select></label>
    </div>
    <div className="sc-map-resize-warning">Creates Data/SCMaps/MapNNN.json and Data/MapNNN.rxdata, and adds the map to MapInfos.rxdata so the game and RPG Maker XP both see it.</div>
  </Shell>;
}

// --------------------------------------------------------------- connections

const EDGES: Edge[] = ['N', 'S', 'E', 'W'];

/**
 * Connection editor.
 *
 * `toEdge` is derived rather than editable: the PBS compiler hard-raises on any
 * pair that is not opposite edges, so offering the choice would only let the
 * author author a build failure. Offsets stay free-form, since a deliberate
 * misalignment is a legitimate map design.
 */
export function ConnectionsDialog({ map, maps, onClose, onApply }: { map: SCMap; maps: MapTreeNode[]; onClose: () => void; onApply: (connections: SCConnection[]) => void }): React.JSX.Element {
  const [rows, setRows] = useState<SCConnection[]>(() => map.connections.map((connection) => ({ ...connection })));

  const dims = useMemo(() => new Map(maps.map((node) => [node.id, { width: node.width, height: node.height }])), [maps]);
  const issues = useMemo(
    () => validateConnections(rows, { width: map.width, height: map.height }, (id) => dims.get(id) ?? null),
    [rows, map.width, map.height, dims],
  );

  const patch = (index: number, change: Partial<SCConnection>): void =>
    setRows(rows.map((row, i) => (i === index ? { ...row, ...change } : row)));

  const neighbours = maps.filter((node) => node.id !== map.id);
  const add = (): void => setRows([...rows, {
    edge: 'N', offset: 0,
    toMapId: neighbours[0]?.id ?? map.id,
    toEdge: 'S', toOffset: 0,
  }]);

  return <Shell title={`Connections — ${map.name}`} onClose={onClose} onApply={() => { onApply(rows); onClose(); }}>
    {rows.length === 0 && <div className="sc-empty">This map has no connections. Add one to join it to a neighbour.</div>}
    {rows.map((row, index) => {
      const rowIssues = issues.filter((issue) => issue.connection === row);
      return <div className="sc-conn-row" key={index}>
        <div className="sc-conn-fields">
          <label className="sc-field">Edge<select className="sc-select" value={row.edge} onChange={(e) => { const edge = e.target.value as Edge; patch(index, { edge, toEdge: oppositeEdge(edge) }); }}>{EDGES.map((edge) => <option key={edge} value={edge}>{edge}</option>)}</select></label>
          <label className="sc-field">Offset<input className="sc-input sc-mono" type="number" value={row.offset} onChange={(e) => patch(index, { offset: Math.round(Number(e.target.value) || 0) })} /></label>
          <label className="sc-field sc-conn-target">Neighbour<select className="sc-select" value={row.toMapId} onChange={(e) => patch(index, { toMapId: Number(e.target.value) })}>{neighbours.map((node) => <option key={node.id} value={node.id}>{String(node.id).padStart(3, '0')} — {node.name}</option>)}</select></label>
          <label className="sc-field">Their edge<input className="sc-input sc-mono" value={row.toEdge} readOnly tabIndex={-1} title="Always the opposite edge; the PBS compiler rejects anything else." /></label>
          <label className="sc-field">Their offset<input className="sc-input sc-mono" type="number" value={row.toOffset} onChange={(e) => patch(index, { toOffset: Math.round(Number(e.target.value) || 0) })} /></label>
          <button className="sc-btn sc-conn-remove" title="Remove this connection" onClick={() => setRows(rows.filter((_, i) => i !== index))}>×</button>
        </div>
        {rowIssues.map((issue, i) => <div key={i} className="sc-event-warning" data-severity={issue.severity}>{issue.message}</div>)}
      </div>;
    })}
    <div className="sc-conn-actions"><button className="sc-btn" onClick={add} disabled={neighbours.length === 0}>＋ Add connection</button></div>
    <div className="sc-map-resize-warning">Applying rewrites PBS/map_connections.txt and updates both maps, so the neighbour learns about the seam too.</div>
  </Shell>;
}

export function MapPropertiesDialog({ map, onClose, onApply }: { map: SCMap; onClose: () => void; onApply: (value: Pick<SCMap, 'name' | 'width' | 'height' | 'autoplayBgm' | 'autoplayBgs' | 'bgm' | 'bgs' | 'encounterStep' | 'weather'>) => void }): React.JSX.Element {
  const [value, setValue] = useState(() => ({
    name: map.name, width: map.width, height: map.height,
    autoplayBgm: map.autoplayBgm, autoplayBgs: map.autoplayBgs,
    bgm: map.bgm ? { ...map.bgm } : null, bgs: map.bgs ? { ...map.bgs } : null,
    encounterStep: map.encounterStep, weather: { ...map.weather },
  }));
  const audio = (kind: 'bgm' | 'bgs', patch: Partial<SCAudioRef>): void => setValue({ ...value, [kind]: { ...(value[kind] ?? emptyAudio()), ...patch } });
  return <Shell title={`Map Properties — ${map.name}`} onClose={onClose} onApply={() => { onApply(value); onClose(); }}>
    <div className="sc-map-form-grid">
      <label className="sc-field sc-map-span">Name<input className="sc-input" autoFocus value={value.name} onChange={(e) => setValue({ ...value, name: e.target.value })} /></label>
      {/* Size is not edited here. It used to be, and it anchored top-left, dropped
          whatever fell outside and could not be undone. Resize / Shift on the Map
          tab does the same job with an anchor, a preview and one undo step. */}
      <div className="sc-field">Size<span className="sc-mono sc-faint">{value.width}×{value.height} — change under Map → Resize</span></div>
      <label className="sc-field">Encounter steps<input className="sc-input sc-mono" type="number" min={0} value={value.encounterStep} onChange={(e) => setValue({ ...value, encounterStep: Math.max(0, Number(e.target.value)) })} /></label>
    </div>
    <fieldset className="sc-fs"><legend>Audio</legend>
      <AudioRow label="BGM" enabled={value.autoplayBgm} value={value.bgm} onEnabled={(enabled) => setValue({ ...value, autoplayBgm: enabled })} onChange={(patch) => audio('bgm', patch)} />
      <AudioRow label="BGS" enabled={value.autoplayBgs} value={value.bgs} onEnabled={(enabled) => setValue({ ...value, autoplayBgs: enabled })} onChange={(patch) => audio('bgs', patch)} />
    </fieldset>
    <fieldset className="sc-fs"><legend>Default Weather</legend><div className="sc-map-form-grid">
      <label className="sc-field">Type<select className="sc-select" value={value.weather.kind} onChange={(e) => setValue({ ...value, weather: { ...value.weather, kind: e.target.value as WeatherKind } })}>{WEATHER.map((kind) => <option key={kind}>{kind}</option>)}</select></label>
      <label className="sc-field">Power<input className="sc-input sc-mono" type="number" min={0} max={9} value={value.weather.power} onChange={(e) => setValue({ ...value, weather: { ...value.weather, power: Math.max(0, Math.min(9, Number(e.target.value))) } })} /></label>
      <label className="sc-field">Chance %<input className="sc-input sc-mono" type="number" min={0} max={100} value={value.weather.chance} onChange={(e) => setValue({ ...value, weather: { ...value.weather, chance: Math.max(0, Math.min(100, Number(e.target.value))) } })} /></label>
    </div></fieldset>
  </Shell>;
}

function AudioRow({ label, enabled, value, onEnabled, onChange }: { label: string; enabled: boolean; value: SCAudioRef | null; onEnabled: (value: boolean) => void; onChange: (patch: Partial<SCAudioRef>) => void }): React.JSX.Element {
  const audio = value ?? emptyAudio();
  return <div className="sc-map-audio-row"><label className="sc-toggle-row"><input className="sc-checkbox" type="checkbox" checked={enabled} onChange={(e) => onEnabled(e.target.checked)} />{label}</label><input className="sc-input" placeholder="Audio filename" value={audio.name} onChange={(e) => onChange({ name: e.target.value })} /><input className="sc-input sc-mono" title="Volume" type="number" min={0} max={100} value={audio.volume} onChange={(e) => onChange({ volume: Number(e.target.value) })} /><input className="sc-input sc-mono" title="Pitch" type="number" min={50} max={150} value={audio.pitch} onChange={(e) => onChange({ pitch: Number(e.target.value) })} /></div>;
}

const FLAGS: Array<[keyof SCMapMetadata, string]> = [
  ['outdoor', 'Outdoor'], ['showArea', 'Show area name'], ['bicycleUsable', 'Bicycle usable'],
  ['bicycleAlways', 'Always bicycle'], ['dark', 'Dark map'], ['safariMap', 'Safari map'],
  ['snapEdges', 'Snap map edges'], ['darkMap', 'Dark cave'], ['flyDestination', 'Fly destination'],
];

export function MapMetadataDialog({ map, onClose, onApply }: { map: SCMap; onClose: () => void; onApply: (metadata: SCMapMetadata, notes: string) => void }): React.JSX.Element {
  const [metadata, setMetadata] = useState<SCMapMetadata>(() => ({ ...map.metadata, extra: { ...map.metadata.extra } }));
  const [notes, setNotes] = useState(map.notes);
  const [extra, setExtra] = useState(JSON.stringify(map.metadata.extra ?? {}, null, 2));
  const [error, setError] = useState('');
  const apply = (): void => {
    try {
      const parsed = JSON.parse(extra) as Record<string, string>;
      if (!parsed || Array.isArray(parsed) || typeof parsed !== 'object') throw new Error('Extra metadata must be an object.');
      onApply({ ...metadata, extra: parsed }, notes); onClose();
    } catch (reason) { setError((reason as Error).message); }
  };
  const text = (key: keyof SCMapMetadata, label: string): React.JSX.Element => <label className="sc-field">{label}<input className="sc-input" value={(metadata[key] as string | undefined) ?? ''} onChange={(e) => setMetadata({ ...metadata, [key]: e.target.value || undefined })} /></label>;
  return <Shell title={`Map Metadata — ${map.name}`} onClose={onClose} onApply={apply}>
    <div className="sc-map-flags">{FLAGS.map(([key, label]) => <label className="sc-toggle-row" key={key}><input className="sc-checkbox" type="checkbox" checked={Boolean(metadata[key])} onChange={(e) => setMetadata({ ...metadata, [key]: e.target.checked })} />{label}</label>)}</div>
    <div className="sc-map-form-grid">
      {text('name', 'PBS Name')}{text('battleBack', 'Battleback')}{text('locationSign', 'Location sign')}
      {text('wildBattleBGM', 'Wild battle BGM')}{text('trainerBattleBGM', 'Trainer battle BGM')}
      {text('wildVictoryBGM', 'Wild victory BGM')}{text('trainerVictoryBGM', 'Trainer victory BGM')}
      {text('wildCaptureME', 'Wild capture ME')}{text('mapWeather', 'Map weather')}
      <label className="sc-field">Dive map ID<input className="sc-input sc-mono" type="number" min={0} value={metadata.dive ?? 0} onChange={(e) => setMetadata({ ...metadata, dive: Number(e.target.value) || undefined })} /></label>
    </div>
    <label className="sc-field">Author notes<textarea className="sc-input sc-map-notes" value={notes} onChange={(e) => setNotes(e.target.value)} /></label>
    <label className="sc-field">Unknown/additional PBS metadata (JSON)<textarea className="sc-input sc-map-extra sc-mono" value={extra} onChange={(e) => { setExtra(e.target.value); setError(''); }} /></label>
    {error && <div className="sc-event-warning">{error}</div>}
  </Shell>;
}
