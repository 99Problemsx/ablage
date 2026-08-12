import { useEffect, useState } from 'react';
import type { ChoiceBlockValue, ConditionalValue } from '../../core/events/compoundCommands';

function useDialogEscape(onCancel: () => void): void {
  useEffect(() => {
    const onKey = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') {
        event.preventDefault();
        event.stopImmediatePropagation();
        onCancel();
      }
    };
    window.addEventListener('keydown', onKey, true);
    return () => window.removeEventListener('keydown', onKey, true);
  }, [onCancel]);
}

function Shell({ title, onCancel, onConfirm, children }: { title: string; onCancel: () => void; onConfirm: () => void; children: React.ReactNode }): React.JSX.Element {
  useDialogEscape(onCancel);
  return <div className="sc-command-scrim" onMouseDown={(e) => { e.stopPropagation(); if (e.target === e.currentTarget) onCancel(); }}>
    <section className="sc-modal sc-basic-command" role="dialog" aria-modal="true" onMouseDown={(e) => e.stopPropagation()}>
      <header className="sc-modal-head"><h2>{title}</h2><button className="sc-modal-x" onClick={onCancel} aria-label="Close">×</button></header>
      <div className="sc-basic-command-body">{children}</div>
      <footer className="sc-modal-foot"><span style={{ flex: 1 }} /><button className="sc-btn" onClick={onCancel}>Cancel</button><button className="sc-btn" data-active onClick={onConfirm}>OK</button></footer>
    </section>
  </div>;
}

export function TextCommandDialog({ title, value, rows = 7, onCancel, onConfirm }: { title: string; value: string; rows?: number; onCancel: () => void; onConfirm: (value: string) => void }): React.JSX.Element {
  const [text, setText] = useState(value);
  return <Shell title={title} onCancel={onCancel} onConfirm={() => onConfirm(text)}>
    <label className="sc-field">Text
      <textarea className="sc-input sc-basic-text sc-mono" rows={rows} autoFocus value={text} onChange={(e) => setText(e.target.value)} />
    </label>
    <span className="sc-faint">Each line is stored as an RMXP continuation command.</span>
  </Shell>;
}

export function ChoiceCommandDialog({ value, onCancel, onConfirm }: { value: ChoiceBlockValue; onCancel: () => void; onConfirm: (value: ChoiceBlockValue) => void }): React.JSX.Element {
  const [choices, setChoices] = useState(value.choices.length > 0 ? value.choices : ['Yes', 'No']);
  const [cancel, setCancel] = useState(value.cancel);
  const change = (index: number, text: string): void => setChoices(choices.map((choice, i) => i === index ? text : choice));
  return <Shell title="Show Choices" onCancel={onCancel} onConfirm={() => onConfirm({ choices: choices.filter((choice) => choice.length > 0), cancel })}>
    <div className="sc-choice-list">
      {choices.map((choice, index) => <div className="sc-choice-row" key={index}>
        <span className="sc-mono sc-faint">{index + 1}</span>
        <input className="sc-input" autoFocus={index === 0} value={choice} onChange={(e) => change(index, e.target.value)} />
        <button className="sc-btn" data-tone="danger" disabled={choices.length <= 1} onClick={() => { setChoices(choices.filter((_, i) => i !== index)); setCancel(0); }}>×</button>
      </div>)}
      <button className="sc-btn" disabled={choices.length >= 4} onClick={() => setChoices([...choices, `Choice ${choices.length + 1}`])}>+ Add Choice</button>
    </div>
    <label className="sc-field">When Cancel
      <select className="sc-select" value={cancel > choices.length + 1 ? 0 : cancel} onChange={(e) => setCancel(Number(e.target.value))}>
        <option value={0}>Disallow</option>
        {choices.map((choice, index) => <option key={index} value={index + 1}>Choose “{choice || index + 1}”</option>)}
        <option value={choices.length + 1}>Separate Cancel Branch</option>
      </select>
    </label>
  </Shell>;
}

export function ConditionalCommandDialog({ value, switchNames, variableNames, onCancel, onConfirm }: { value: ConditionalValue; switchNames: string[]; variableNames: string[]; onCancel: () => void; onConfirm: (value: ConditionalValue) => void }): React.JSX.Element {
  const [condition, setCondition] = useState(value);
  const patch = (next: Partial<ConditionalValue>): void => setCondition({ ...condition, ...next });
  return <Shell title="Conditional Branch" onCancel={onCancel} onConfirm={() => onConfirm(condition)}>
    <div className="sc-command-kind-tabs">
      {(['switch', 'variable', 'selfSwitch', 'script'] as const).map((type) => <button className="sc-btn" data-active={condition.type === type} key={type} onClick={() => patch({ type })}>{type === 'selfSwitch' ? 'Self Switch' : type[0].toUpperCase() + type.slice(1)}</button>)}
    </div>
    {condition.type === 'switch' && <div className="sc-basic-grid">
      <label className="sc-field">Switch<select className="sc-select" value={condition.id} onChange={(e) => patch({ id: Number(e.target.value) })}>{namedOptions(switchNames, condition.id)}</select></label>
      <label className="sc-field">State<select className="sc-select" value={condition.operator} onChange={(e) => patch({ operator: Number(e.target.value) })}><option value={0}>ON</option><option value={1}>OFF</option></select></label>
    </div>}
    {condition.type === 'variable' && <div className="sc-basic-grid">
      <label className="sc-field">Variable<select className="sc-select" value={condition.id} onChange={(e) => patch({ id: Number(e.target.value) })}>{namedOptions(variableNames, condition.id)}</select></label>
      <label className="sc-field">Comparison<select className="sc-select" value={condition.operator} onChange={(e) => patch({ operator: Number(e.target.value) })}>{['==', '≥', '≤', '>', '<', '≠'].map((label, index) => <option value={index} key={label}>{label}</option>)}</select></label>
      <label className="sc-field">Operand<select className="sc-select" value={condition.operandType} onChange={(e) => patch({ operandType: Number(e.target.value) })}><option value={0}>Constant</option><option value={1}>Variable</option></select></label>
      {condition.operandType === 0 ? <label className="sc-field">Value<input className="sc-input sc-mono" type="number" value={condition.operand} onChange={(e) => patch({ operand: Number(e.target.value) })} /></label> : <label className="sc-field">Variable<select className="sc-select" value={condition.operand} onChange={(e) => patch({ operand: Number(e.target.value) })}>{namedOptions(variableNames, condition.operand)}</select></label>}
    </div>}
    {condition.type === 'selfSwitch' && <div className="sc-basic-grid"><label className="sc-field">Self Switch<select className="sc-select" value={condition.selfSwitch} onChange={(e) => patch({ selfSwitch: e.target.value })}>{['A', 'B', 'C', 'D'].map((ch) => <option key={ch}>{ch}</option>)}</select></label><label className="sc-field">State<select className="sc-select" value={condition.selfSwitchOn ? 0 : 1} onChange={(e) => patch({ selfSwitchOn: Number(e.target.value) === 0 })}><option value={0}>ON</option><option value={1}>OFF</option></select></label></div>}
    {condition.type === 'script' && <label className="sc-field">Ruby expression<textarea className="sc-input sc-basic-text sc-mono" rows={5} value={condition.script} onChange={(e) => patch({ script: e.target.value })} /></label>}
    <label className="sc-toggle-row"><input className="sc-checkbox" type="checkbox" checked={condition.elseBranch} onChange={(e) => patch({ elseBranch: e.target.checked })} />Create Else branch</label>
  </Shell>;
}

function namedOptions(names: string[], selected: number): React.ReactNode {
  const count = Math.max(names.length - 1, selected, 1);
  return Array.from({ length: count }, (_, i) => i + 1).map((id) => <option key={id} value={id}>{String(id).padStart(4, '0')}: {names[id] || '(unnamed)'}</option>);
}
