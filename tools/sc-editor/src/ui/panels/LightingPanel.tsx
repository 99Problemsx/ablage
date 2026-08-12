import { useState } from 'react';
import { unpackTile, type SCLight, type WeatherKind } from '../../core/scmap/format';
import { useEditor } from '../../state/store';

const clamp = (value: number, min: number, max: number): number => Math.min(max, Math.max(min, value));
let lightClipboard: SCLight[] = [];
const PRESETS: Record<NonNullable<SCLight['preset']>, Partial<SCLight>> = {
  torch: { type: 'circle', radius: 2.8, color: '#ff9b45', intensity: 1.15, flicker: 0.32, pulse: 0.1, animationSpeed: 1.3 },
  candle: { type: 'circle', radius: 1.5, color: '#ffd18a', intensity: 0.75, flicker: 0.2, pulse: 0.08, animationSpeed: 0.8 },
  neon: { type: 'rect', width: 2.5, height: 0.45, radius: 2, color: '#43e8ff', intensity: 1.25, flicker: 0.04, pulse: 0.02, animationSpeed: 1 },
  window: { type: 'rect', width: 2, height: 1.2, radius: 2, color: '#ffdba3', intensity: 0.8, flicker: 0, pulse: 0, animationSpeed: 1 },
  crystal: { type: 'circle', radius: 3.2, color: '#a578ff', intensity: 1.15, flicker: 0.06, pulse: 0.18, animationSpeed: 0.55 },
  streetlamp: { type: 'cone', radius: 4.5, angle: 90, spread: 75, color: '#ffe0a0', intensity: 1.05, flicker: 0.02, pulse: 0, animationSpeed: 1 },
};
const WEATHER: WeatherKind[] = ['None', 'Rain', 'HeavyRain', 'Storm', 'Snow', 'Blizzard', 'Sandstorm', 'Fog', 'Sun', 'Ash', 'Cloudy'];

function NumberField({ label, value, min, max, step = 1, onChange }: { label: string; value: number; min: number; max: number; step?: number; onChange: (value: number) => void }): React.JSX.Element {
  return <label className="sc-light-field"><span>{label}</span><input className="sc-input sc-mono" type="number" value={value} min={min} max={max} step={step} onChange={(e) => onChange(clamp(Number(e.target.value), min, max))} /></label>;
}

export function LightingPanel(): React.JSX.Element {
  const { activeMapId, docs, catalog, switchNames, selectedLightId, selectedLightIds, selectLight, updateLighting, updateLight, removeLight, addLight, showLighting, toggleLighting, lightingHour, setLightingHour, lightingClockPlaying, toggleLightingClock, lightingClockSpeed, setLightingClockSpeed, animate, lightPlacementPreview, setLightPlacementPreview } = useEditor();
  const [terrainTag, setTerrainTag] = useState(1);
  const [autoSpacing, setAutoSpacing] = useState(3);
  const [autoMax, setAutoMax] = useState(100);
  const [autoPreset, setAutoPreset] = useState<keyof typeof PRESETS>('torch');
  const [autoGroup, setAutoGroup] = useState('auto_lights');
  const [showValidation, setShowValidation] = useState(false);
  const doc = activeMapId === null ? undefined : docs.get(activeMapId);
  if (!doc) return <section className="sc-panel"><div className="sc-panel-title">Lighting</div><div className="sc-empty">Open a map.</div></section>;
  const lighting = doc.map.lighting;
  const light = lighting.lights.find((item) => item.id === selectedLightId);
  const patch = (value: Partial<SCLight>): void => { if (light) updateLight(light.id, value); };
  const estimatedPixels = lighting.lights.filter((item) => item.enabled !== false).reduce((sum, item) => sum + Math.PI * Math.pow(item.radius * 32, 2), 0);
  const previewHour = Math.floor(lightingHour);
  const previewMinute = Math.floor((lightingHour - previewHour) * 60);
  const diagnostics: string[] = [];
  const ids = new Set<string>(); const groups = new Map<string, number>();
  for (const item of lighting.lights) {
    if (ids.has(item.id)) diagnostics.push(`Duplicate id: ${item.id}`); ids.add(item.id);
    if (item.eventId && !doc.map.events.some((event) => event.id === item.eventId)) diagnostics.push(`${item.id}: missing event #${item.eventId}`);
    if (item.switchId && item.switchId >= switchNames.length) diagnostics.push(`${item.id}: switch #${item.switchId} is outside System.rxdata`);
    if (item.radius > 20) diagnostics.push(`${item.id}: very large radius (${item.radius})`);
    if (item.activeHours && item.activeHours[0] === item.activeHours[1]) diagnostics.push(`${item.id}: schedule is active for one hour only`);
    if (item.group) groups.set(item.group, (groups.get(item.group) ?? 0) + 1);
  }
  for (const [group, count] of groups) if (count === 1) diagnostics.push(`Group “${group}” contains only one light`);
  if (estimatedPixels > 1_500_000) diagnostics.push('Estimated glow cost is high for one map');
  const applyGroup = (value: Partial<SCLight>): void => {
    if (!light?.group) return;
    updateLighting({ lights: lighting.lights.map((item) => item.group === light.group ? { ...item, ...value, id: item.id } : item) });
  };

  return <section className="sc-panel sc-light-panel">
    <div className="sc-panel-title">Dynamic Lighting <button className="sc-btn sc-light-toggle" data-active={showLighting} onClick={toggleLighting}>{showLighting ? 'Preview on' : 'Preview off'}</button></div>
    <div className="sc-light-scroll">
      <label className="sc-check"><input type="checkbox" checked={lighting.enabled} onChange={(e) => updateLighting({ enabled: e.target.checked })} /> Enable on this map</label>
      <label className="sc-light-range"><span>Ambient darkness <b>{Math.round(lighting.ambient * 100)}%</b></span><input type="range" min={0} max={1} step={0.01} value={lighting.ambient} onChange={(e) => updateLighting({ ambient: Number(e.target.value) })} /></label>
      <label className="sc-light-range"><span>Game clock <b>{String(previewHour).padStart(2, '0')}:{String(previewMinute).padStart(2, '0')}</b></span><input type="range" min={0} max={23.9833} step={0.0166667} value={lightingHour} onChange={(e) => setLightingHour(Number(e.target.value))} /></label>
      <div className="sc-light-grid"><button className="sc-btn" data-active={lightingClockPlaying} onClick={toggleLightingClock}>{lightingClockPlaying ? 'Pause clock' : 'Run clock'}</button><label className="sc-light-field"><span>Speed</span><input className="sc-input sc-mono" type="number" min={1} max={3600} value={lightingClockSpeed} onChange={(e) => setLightingClockSpeed(Number(e.target.value))} /></label></div>
      <div className="sc-faint">{animate ? 'Animations run like in game.' : 'Animations paused in View.'}</div>
      <div className="sc-faint">Drag a light to move it. Drag its cyan handle to resize; Shift-drag turns a cone.</div>
      <div className="sc-light-perf" data-tone={estimatedPixels > 1_500_000 ? 'warn' : 'ok'}><b>{lighting.lights.filter((item) => item.enabled !== false).length}</b> active · ~{Math.round(estimatedPixels / 1000)}k glow pixels</div>
      <button className="sc-btn" data-active={showValidation} onClick={() => setShowValidation((value) => !value)}>Validate lighting ({diagnostics.length})</button>
      {showValidation && <div className="sc-light-validation">{diagnostics.length === 0 ? <span>✓ No lighting problems found.</span> : diagnostics.map((message) => <div key={message}>⚠ {message}</div>)}</div>}
      <div className="sc-light-presets">{(Object.keys(PRESETS) as Array<keyof typeof PRESETS>).map((preset) => <button className="sc-btn" key={preset} onClick={() => { const id = addLight(); if (id) updateLight(id, { ...PRESETS[preset], preset }); }}>{preset}</button>)}</div>
      <div className="sc-light-list">
        {lighting.lights.map((item) => <button key={item.id} className="sc-light-row" data-active={selectedLightIds.includes(item.id)} onClick={(event) => selectLight(item.id, event.shiftKey || event.ctrlKey || event.metaKey)}><i style={{ background: item.color }} /> <span>{item.id}</span><small>{item.x},{item.y}</small></button>)}
        {selectedLightIds.length > 1 && <div className="sc-light-grid"><button className="sc-btn" onClick={() => { lightClipboard = lighting.lights.filter((item) => selectedLightIds.includes(item.id)).map((item) => ({ ...item })); }}>Copy {selectedLightIds.length}</button><button className="sc-btn sc-danger" onClick={() => { updateLighting({ lights: lighting.lights.filter((item) => !selectedLightIds.includes(item.id)) }); selectLight(null); }}>Delete {selectedLightIds.length}</button></div>}
        <button className="sc-btn" onClick={() => addLight()}>＋ Add light</button>
      </div>
      {light && <div className="sc-light-editor">
        <label className="sc-check"><input type="checkbox" checked={light.enabled ?? true} onChange={(e) => patch({ enabled: e.target.checked })} /> This light is enabled</label>
        <label className="sc-light-field"><span>Name</span><input className="sc-input" value={light.id} onChange={(e) => patch({ id: e.target.value.replace(/[^a-zA-Z0-9_-]/g, '_') })} /></label>
        <label className="sc-light-field"><span>Group</span><input className="sc-input" value={light.group ?? ''} placeholder="e.g. town_lamps" onChange={(e) => patch({ group: e.target.value || undefined })} /></label>
        <label className="sc-light-field"><span>Follow event</span><select className="sc-select" value={light.eventId ?? 0} onChange={(e) => patch({ eventId: Number(e.target.value) || undefined })}><option value={0}>None</option>{doc.map.events.map((event) => <option value={event.id} key={event.id}>#{event.id} {event.name}</option>)}</select></label>
        <label className="sc-light-field"><span>Shape</span><select className="sc-select" value={light.type ?? 'circle'} onChange={(e) => patch({ type: e.target.value as SCLight['type'] })}><option value="circle">Circle</option><option value="rect">Rectangle</option><option value="cone">Cone</option></select></label>
        <label className="sc-light-field"><span>Layer</span><select className="sc-select" value={light.layer ?? 'character'} onChange={(e) => patch({ layer: e.target.value as SCLight['layer'] })}><option value="ground">Ground</option><option value="character">Character</option><option value="overhead">Overhead</option></select></label>
        <label className="sc-light-field"><span>Blend</span><select className="sc-select" value={light.blend ?? 'additive'} onChange={(e) => patch({ blend: e.target.value as SCLight['blend'] })}><option value="additive">Additive</option><option value="multiply">Multiply</option><option value="subtractive">Subtractive</option></select></label>
        <label className="sc-check"><input type="checkbox" checked={light.occlude ?? true} onChange={(e) => patch({ occlude: e.target.checked })} /> Occluded by roofs and trees</label>
        <label className="sc-light-field"><span>Color</span><input type="color" value={light.color} onChange={(e) => patch({ color: e.target.value })} /></label>
        <div className="sc-light-grid"><NumberField label="X" value={light.x} min={0} max={doc.map.width - 1} onChange={(x) => patch({ x })} /><NumberField label="Y" value={light.y} min={0} max={doc.map.height - 1} onChange={(y) => patch({ y })} /></div>
        {(light.type ?? 'circle') === 'rect' ? <div className="sc-light-grid"><NumberField label="Width" value={light.width ?? 2} min={0.1} max={50} step={0.1} onChange={(width) => patch({ width })} /><NumberField label="Height" value={light.height ?? 1} min={0.1} max={50} step={0.1} onChange={(height) => patch({ height })} /></div> : <NumberField label="Radius (tiles)" value={light.radius} min={0.1} max={50} step={0.1} onChange={(radius) => patch({ radius })} />}
        {(light.type ?? 'circle') === 'cone' && <div className="sc-light-grid"><NumberField label="Angle" value={light.angle ?? 0} min={0} max={359} onChange={(angle) => patch({ angle })} /><NumberField label="Spread" value={light.spread ?? 60} min={5} max={180} onChange={(spread) => patch({ spread })} /></div>}
        <NumberField label="Intensity" value={light.intensity} min={0} max={2} step={0.05} onChange={(intensity) => patch({ intensity })} />
        <NumberField label="Flicker" value={light.flicker} min={0} max={1} step={0.05} onChange={(flicker) => patch({ flicker })} />
        <NumberField label="Pulse" value={light.pulse ?? 0} min={0} max={1} step={0.05} onChange={(pulse) => patch({ pulse })} />
        <NumberField label="Speed" value={light.animationSpeed ?? 1} min={0.05} max={10} step={0.05} onChange={(animationSpeed) => patch({ animationSpeed })} />
        <label className="sc-check"><input type="checkbox" checked={Boolean(light.activeHours)} onChange={(e) => patch({ activeHours: e.target.checked ? [18, 6] : undefined })} /> Use hourly schedule</label>
        {light.activeHours && <div className="sc-light-grid"><NumberField label="On hour" value={light.activeHours[0]} min={0} max={23} onChange={(v) => patch({ activeHours: [v, light.activeHours![1]] })} /><NumberField label="Off hour" value={light.activeHours[1]} min={0} max={23} onChange={(v) => patch({ activeHours: [light.activeHours![0], v] })} /></div>}
        <NumberField label="Switch (0 = none)" value={light.switchId ?? 0} min={0} max={9999} onChange={(switchId) => patch({ switchId: switchId || undefined })} />
        <label className="sc-light-field"><span>Weather</span><select className="sc-select" value={light.activeWeather?.[0] ?? '*'} onChange={(e) => patch({ activeWeather: e.target.value === '*' ? undefined : [e.target.value as WeatherKind] })}><option value="*">Every weather</option>{WEATHER.map((kind) => <option key={kind}>{kind}</option>)}</select></label>
        {light.group && <button className="sc-btn" onClick={() => applyGroup({ color: light.color, intensity: light.intensity, activeHours: light.activeHours, switchId: light.switchId, activeWeather: light.activeWeather })}>Apply settings to group “{light.group}”</button>}
        <div className="sc-light-grid"><button className="sc-btn" onClick={() => { lightClipboard = lighting.lights.filter((item) => item.id === light.id || (light.group && item.group === light.group)).map((item) => ({ ...item })); }}>Copy {light.group ? 'group' : 'light'}</button><button className="sc-btn" disabled={lightClipboard.length === 0} onClick={() => { for (const source of lightClipboard) { const id = addLight(Math.min(doc.map.width - 1, source.x + 1), source.y); if (id) updateLight(id, { ...source, id }); } }}>Paste</button></div>
        <div className="sc-light-grid"><button className="sc-btn" onClick={() => { const id = addLight(Math.min(doc.map.width - 1, light.x + 1), light.y); if (id) updateLight(id, { ...light, id }); }}>Duplicate</button><button className="sc-btn sc-danger" onClick={() => removeLight(light.id)}>Delete light</button></div>
      </div>}
      <div className="sc-light-editor"><strong>Terrain auto-placement</strong>
        <div className="sc-light-grid"><NumberField label="Terrain tag" value={terrainTag} min={1} max={99} onChange={setTerrainTag} /><NumberField label="Min spacing" value={autoSpacing} min={1} max={20} onChange={setAutoSpacing} /></div>
        <div className="sc-light-grid"><NumberField label="Maximum" value={autoMax} min={1} max={500} onChange={setAutoMax} /><label className="sc-light-field"><span>Preset</span><select className="sc-select" value={autoPreset} onChange={(e) => setAutoPreset(e.target.value as keyof typeof PRESETS)}>{Object.keys(PRESETS).map((preset) => <option key={preset}>{preset}</option>)}</select></label></div>
        <label className="sc-light-field"><span>Group</span><input className="sc-input" value={autoGroup} onChange={(e) => setAutoGroup(e.target.value)} /></label>
        <button className="sc-btn" onClick={() => { const occupied: Array<[number, number]> = []; const additions: SCLight[] = []; for (let y = 0; y < doc.map.height && additions.length < autoMax; y++) for (let x = 0; x < doc.map.width && additions.length < autoMax; x++) { let packed = 0; for (let z = doc.layerData.length - 1; z >= 0; z--) { packed = doc.layerData[z][y * doc.map.width + x]; if (packed) break; } if (!packed) continue; const tile = unpackTile(packed); const tileset = catalog.get(doc.map.tilesets[tile.slot]?.tilesetId); if ((tileset?.terrainTags[tile.id] ?? 0) !== terrainTag || occupied.some(([ox, oy]) => Math.abs(ox - x) + Math.abs(oy - y) < autoSpacing)) continue; occupied.push([x, y]); additions.push({ id: `terrain_${terrainTag}_${x}_${y}`, enabled: true, x, y, radius: 2.5, color: '#ffd27a', intensity: 0.9, flicker: 0.12, group: autoGroup || `terrain_${terrainTag}`, ...PRESETS[autoPreset], preset: autoPreset }); } setLightPlacementPreview(additions.filter((candidate) => !lighting.lights.some((item) => item.id === candidate.id))); }}>Preview placement</button>
        {lightPlacementPreview.length > 0 && <div className="sc-light-grid"><button className="sc-btn" data-active onClick={() => { updateLighting({ enabled: true, lights: [...lighting.lights, ...lightPlacementPreview] }); setLightPlacementPreview([]); }}>Apply {lightPlacementPreview.length}</button><button className="sc-btn" onClick={() => setLightPlacementPreview([])}>Cancel</button></div>}
      </div>
      <div className="sc-light-editor">
        <strong>Hourly map tint</strong>
        <div className="sc-faint">Interpolates smoothly between authored hours.</div>
        <label className="sc-light-field"><span>{String(previewHour).padStart(2, '0')}:00 key</span><input type="color" value={lighting.tintByHour[previewHour] ?? '#ffffff'} onChange={(e) => updateLighting({ tintByHour: { ...lighting.tintByHour, [previewHour]: e.target.value } })} /></label>
        <button className="sc-btn" disabled={!lighting.tintByHour[previewHour]} onClick={() => { const next = { ...lighting.tintByHour }; delete next[previewHour]; updateLighting({ tintByHour: next }); }}>Remove key at this hour</button>
      </div>
    </div>
  </section>;
}
