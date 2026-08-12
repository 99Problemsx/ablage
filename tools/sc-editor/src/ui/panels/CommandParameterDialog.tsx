import { useEffect, useState } from 'react';
import type { JNode, JValue } from '../../core/marshal/json';
import { asArray, asStr, ivar, setIvar, strNode } from '../../core/events/model';

const LABELS: Record<number, string[]> = {
  103: ['Variable', 'Digits'], 104: ['Position', 'Window frame'], 105: ['Variable'], 106: ['Frames'],
  117: ['Common event'], 118: ['Label'], 119: ['Label'], 121: ['First switch', 'Last switch', 'Operation'],
  122: ['First variable', 'Last variable', 'Operation', 'Operand type', 'Operand'], 123: ['Self switch', 'Operation'],
  124: ['Operation', 'Seconds'], 125: ['Operation', 'Operand type', 'Amount'], 126: ['Item', 'Operation', 'Operand type', 'Amount'],
  127: ['Weapon', 'Operation', 'Operand type', 'Amount'], 128: ['Armor', 'Operation', 'Operand type', 'Amount'],
  129: ['Actor', 'Operation', 'Initialise'], 131: ['Windowskin'], 132: ['Battle BGM'], 133: ['Battle End ME'],
  134: ['Save access'], 135: ['Menu access'], 136: ['Encounters'], 201: ['Location mode', 'Map', 'X', 'Y', 'Direction', 'Fade'],
  202: ['Event', 'Location mode', 'X/Map', 'Y/X', 'Direction/Y'], 203: ['Direction', 'Distance', 'Speed'],
  204: ['Setting', 'Value', 'Filename'], 205: ['Tone', 'Duration'], 206: ['Opacity', 'Duration'], 207: ['Target', 'Animation'],
  208: ['Transparency'], 222: ['Transition'], 223: ['Tone', 'Duration'], 224: ['Color', 'Duration'],
  225: ['Power', 'Speed', 'Duration'], 231: ['Picture', 'Filename', 'Origin', 'Coordinate mode', 'X', 'Y', 'Zoom X', 'Zoom Y', 'Opacity', 'Blend'],
  232: ['Picture', 'Duration', 'Origin', 'Coordinate mode', 'X', 'Y', 'Zoom X', 'Zoom Y', 'Opacity', 'Blend'],
  233: ['Picture', 'Speed'], 234: ['Picture', 'Tone', 'Duration'], 235: ['Picture'], 241: ['BGM'], 242: ['Seconds'],
  245: ['BGS'], 246: ['Seconds'], 249: ['ME'], 250: ['SE'], 301: ['Troop mode', 'Troop', 'Can escape', 'Continue if lose'],
  302: ['Goods type', 'Goods ID'], 303: ['Actor', 'Max characters'], 311: ['Target mode', 'Actor', 'Operation', 'Operand type', 'Amount', 'Allow knockout'],
  312: ['Target mode', 'Actor', 'Operation', 'Operand type', 'Amount'], 313: ['Target mode', 'Actor', 'Operation', 'State'],
  314: ['Target mode', 'Actor'], 315: ['Target mode', 'Actor', 'Operation', 'Operand type', 'Amount'],
  316: ['Target mode', 'Actor', 'Operation', 'Operand type', 'Amount'], 317: ['Target mode', 'Actor', 'Parameter', 'Operation', 'Operand type', 'Amount'],
  318: ['Target mode', 'Actor', 'Operation', 'Skill'], 319: ['Actor', 'Equipment slot', 'Item'], 320: ['Actor', 'Name'],
  321: ['Actor', 'Class'], 322: ['Actor', 'Character graphic', 'Character hue', 'Battler graphic', 'Battler hue'],
  331: ['Enemy', 'Operation', 'Operand type', 'Amount', 'Allow knockout'], 332: ['Enemy', 'Operation', 'Operand type', 'Amount'],
  333: ['Enemy', 'Operation', 'State'], 334: ['Enemy'], 335: ['Enemy'], 336: ['Enemy', 'Transform into'],
  337: ['Enemy', 'Animation', 'All targets'], 338: ['Enemy', 'Operation', 'Operand type', 'Amount'], 339: ['Battler type', 'Battler', 'Action type', 'Action', 'Target'],
};

const OPTIONS: Record<string, string[]> = {
  '104:0': ['Top', 'Middle', 'Bottom'], '104:1': ['Show window', 'Transparent'],
  '121:2': ['ON', 'OFF'], '123:1': ['ON', 'OFF'], '124:0': ['Start', 'Stop'],
  '134:0': ['Disable', 'Enable'], '135:0': ['Disable', 'Enable'], '136:0': ['Disable', 'Enable'],
  '208:0': ['Transparent', 'Normal'], '201:4': ['Retain', 'Down', 'Left', 'Right', 'Up'], '201:5': ['Fade', 'No fade'],
  '122:2': ['Set', 'Add', 'Subtract', 'Multiply', 'Divide', 'Modulo'], '122:3': ['Constant', 'Variable', 'Random'],
  '125:0': ['Increase', 'Decrease'], '126:1': ['Increase', 'Decrease'], '127:1': ['Increase', 'Decrease'], '128:1': ['Increase', 'Decrease'],
  '129:1': ['Add', 'Remove'], '301:0': ['Direct designation', 'Variable designation'], '313:2': ['Add', 'Remove'],
};

const NAMED: Record<string, string> = {
  '103:0': 'variables', '105:0': 'variables', '117:0': 'commonEvents', '121:0': 'switches', '121:1': 'switches',
  '122:0': 'variables', '122:1': 'variables', '126:0': 'items', '127:0': 'weapons', '128:0': 'armor', '129:0': 'actors',
  '207:1': 'animations', '301:1': 'troops', '303:0': 'actors', '311:1': 'actors', '312:1': 'actors', '313:1': 'actors',
  '313:3': 'states', '314:1': 'actors', '315:1': 'actors', '316:1': 'actors', '317:1': 'actors', '318:1': 'actors',
  '318:3': 'skills', '319:0': 'actors', '320:0': 'actors', '321:0': 'actors', '321:1': 'classes', '322:0': 'actors',
  '333:2': 'states', '336:1': 'enemies', '337:1': 'animations',
};

function Modal({ title, onClose, children }: { title: string; onClose: () => void; children: React.ReactNode }): React.JSX.Element {
  useEffect(() => { const key = (e: KeyboardEvent): void => { if (e.key === 'Escape') onClose(); }; window.addEventListener('keydown', key, true); return () => window.removeEventListener('keydown', key, true); }, [onClose]);
  return <div className="sc-modal-scrim" style={{ zIndex: 85 }} onMouseDown={onClose}><section className="sc-modal sc-command-param" role="dialog" aria-modal="true" onMouseDown={(e) => e.stopPropagation()}><header className="sc-modal-head"><h2>{title}</h2><button className="sc-modal-x" onClick={onClose}>×</button></header>{children}</section></div>;
}

export function CommandParameterDialog({ code, title, value, names, onCancel, onConfirm }: { code: number; title: string; value: JValue[]; names: Record<string, string[]>; onCancel: () => void; onConfirm: (value: JValue[]) => void }): React.JSX.Element {
  const [params, setParams] = useState<JValue[]>(() => structuredClone(value));
  const update = (index: number, next: JValue): void => setParams(params.map((v, i) => i === index ? next : v));
  return <Modal title={title} onClose={onCancel}><div className="sc-command-param-body">{params.length === 0 ? <div className="sc-faint">This command has no parameters.</div> : params.map((param, index) => <ParameterField key={index} code={code} index={index} label={LABELS[code]?.[index] ?? `Parameter ${index + 1}`} value={param} names={names} onChange={(next) => update(index, next)} />)}</div><footer className="sc-modal-foot"><span className="sc-faint">RPG Maker XP event command {code}</span><span style={{ flex: 1 }} /><button className="sc-btn" onClick={onCancel}>Cancel</button><button className="sc-btn" data-active onClick={() => onConfirm(params)}>OK</button></footer></Modal>;
}

function ParameterField({ code, index, label, value, names, onChange }: { code: number; index: number; label: string; value: JValue; names: Record<string, string[]>; onChange: (value: JValue) => void }): React.JSX.Element {
  const choices = OPTIONS[`${code}:${index}`];
  if (typeof value === 'boolean') return <label className="sc-toggle-row"><input type="checkbox" checked={value} onChange={(e) => onChange(e.target.checked)} />{label}</label>;
  if (typeof value === 'number') {
    const group = NAMED[`${code}:${index}`]; const named = group ? names[group] ?? [] : [];
    return <label className="sc-field">{label}{choices ? <select className="sc-select" value={value} onChange={(e) => onChange(Number(e.target.value))}>{choices.map((choice, i) => <option value={i} key={choice}>{choice}</option>)}</select> : named.length ? <select className="sc-select" value={value} onChange={(e) => onChange(Number(e.target.value))}>{value >= named.length && <option value={value}>{String(value).padStart(4, '0')} · (missing)</option>}{named.map((name, id) => name || id === value ? <option value={id} key={id}>{String(id).padStart(4, '0')} · {name || '(unnamed)'}</option> : null)}</select> : <input className="sc-input sc-mono" type="number" value={value} onChange={(e) => onChange(Number(e.target.value))} />}</label>;
  }
  if (value && typeof value === 'object' && !Array.isArray(value)) {
    const node = value as JNode;
    if (node.$ === 'str') return <label className="sc-field">{label}<input className="sc-input" value={asStr(node)} onChange={(e) => onChange(strNode(e.target.value))} /></label>;
    if (node.$ === 'obj' && node.c === 'RPG::AudioFile') {
      const audio = structuredClone(node); return <fieldset className="sc-fs"><legend>{label}</legend><div className="sc-command-audio"><input className="sc-input" placeholder="Filename" value={asStr(ivar(node, 'name'))} onChange={(e) => { setIvar(audio, 'name', strNode(e.target.value)); onChange(audio); }} /><input className="sc-input" title="Volume" type="number" min={0} max={100} value={Number(ivar(node, 'volume') ?? 100)} onChange={(e) => { setIvar(audio, 'volume', Number(e.target.value)); onChange(audio); }} /><input className="sc-input" title="Pitch" type="number" min={50} max={150} value={Number(ivar(node, 'pitch') ?? 100)} onChange={(e) => { setIvar(audio, 'pitch', Number(e.target.value)); onChange(audio); }} /></div></fieldset>;
    }
    if (node.$ === 'col') return <fieldset className="sc-fs"><legend>{label}</legend><div className="sc-command-color">{['r', 'g', 'b', 'a'].map((key) => <label className="sc-field" key={key}>{key.toUpperCase()}<input className="sc-input" type="number" value={Number(node[key] ?? 0)} onChange={(e) => onChange({ ...node, [key]: Number(e.target.value) })} /></label>)}</div></fieldset>;
    if (node.$ === 'arr') return <label className="sc-field">{label}<input className="sc-input sc-mono" value={asArray(node).map((v) => typeof v === 'number' ? v : asStr(v)).join(', ')} readOnly /></label>;
  }
  return <label className="sc-field">{label}<textarea className="sc-input sc-mono" value={JSON.stringify(value)} onChange={(e) => { try { onChange(JSON.parse(e.target.value) as JValue); } catch { /* keep last valid value */ } }} /></label>;
}
