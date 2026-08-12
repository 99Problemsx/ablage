import { useEffect, useState } from 'react';
import type { SCAudioRef, SCMap, SCMapMetadata, WeatherKind } from '../../core/scmap/format';

function useEscape(onClose: () => void): void {
  useEffect(() => {
    const handler = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') { event.preventDefault(); event.stopImmediatePropagation(); onClose(); }
    };
    window.addEventListener('keydown', handler, true);
    return () => window.removeEventListener('keydown', handler, true);
  }, [onClose]);
}

function Shell({ title, onClose, onApply, children }: { title: string; onClose: () => void; onApply: () => void; children: React.ReactNode }): React.JSX.Element {
  useEscape(onClose);
  return <div className="sc-modal-scrim" style={{ zIndex: 70 }} onMouseDown={onClose}>
    <section className="sc-modal sc-map-dialog" role="dialog" aria-modal="true" onMouseDown={(e) => e.stopPropagation()}>
      <header className="sc-modal-head"><h2>{title}</h2><button type="button" className="sc-modal-x" onClick={onClose}>×</button></header>
      <div className="sc-map-dialog-body">{children}</div>
      <footer className="sc-modal-foot"><span style={{ flex: 1 }} /><button className="sc-btn" onClick={onClose}>Cancel</button><button className="sc-btn" data-active onClick={onApply}>Apply</button></footer>
    </section>
  </div>;
}

const WEATHER: WeatherKind[] = ['None', 'Rain', 'HeavyRain', 'Storm', 'Snow', 'Blizzard', 'Sandstorm', 'Fog', 'Sun', 'Ash', 'Cloudy'];
const emptyAudio = (): SCAudioRef => ({ name: '', volume: 100, pitch: 100 });

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
      <label className="sc-field">Width<input className="sc-input sc-mono" type="number" min={1} max={500} value={value.width} onChange={(e) => setValue({ ...value, width: Number(e.target.value) })} /></label>
      <label className="sc-field">Height<input className="sc-input sc-mono" type="number" min={1} max={500} value={value.height} onChange={(e) => setValue({ ...value, height: Number(e.target.value) })} /></label>
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
    <div className="sc-map-resize-warning">Resizing preserves the top-left map area. Tiles outside a reduced size are discarded when you apply.</div>
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
