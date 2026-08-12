import { useEffect, useState } from 'react';
import {
  MOVE_STEP_NAMES,
  asNumber,
  audioParams,
  moveStepSummary,
  newMoveStep,
  setAudioParams,
  setNumberParam,
  setStringParam,
  type MoveRouteValue,
  type MoveStep,
} from '../../core/events/moveRoute';
import { asStr } from '../../core/events/model';

interface Props {
  value: MoveRouteValue;
  target?: number;
  wait?: boolean;
  eventTargets?: Array<{ id: number; name: string }>;
  onCancel: () => void;
  onConfirm: (value: MoveRouteValue, target: number, wait: boolean) => void;
}

const SPEEDS = ['1: Slowest', '2: Slower', '3: Slow', '4: Fast', '5: Faster', '6: Fastest'];
const FREQUENCIES = ['1: Lowest', '2: Lower', '3: Low', '4: High', '5: Higher', '6: Highest'];

export function MoveRouteDialog({ value, target, wait = false, eventTargets = [], onCancel, onConfirm }: Props): React.JSX.Element {
  const [route, setRoute] = useState<MoveRouteValue>(() => ({
    ...value,
    steps: value.steps.map((step) => ({ ...step, params: [...step.params] })),
  }));
  const [routeTarget, setRouteTarget] = useState(target ?? 0);
  const [waitForCompletion, setWaitForCompletion] = useState(wait);
  const [selected, setSelected] = useState<number | null>(value.steps.length > 0 ? 0 : null);

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

  const updateStep = (step: MoveStep): void => {
    if (selected === null) return;
    setRoute((current) => ({
      ...current,
      steps: current.steps.map((candidate, index) => index === selected ? step : candidate),
    }));
  };

  const addStep = (code: number): void => {
    const index = selected === null ? route.steps.length : selected + 1;
    const steps = [...route.steps];
    steps.splice(index, 0, newMoveStep(code));
    setRoute({ ...route, steps });
    setSelected(index);
  };

  const deleteStep = (): void => {
    if (selected === null) return;
    const steps = route.steps.filter((_, index) => index !== selected);
    setRoute({ ...route, steps });
    setSelected(steps.length === 0 ? null : Math.min(selected, steps.length - 1));
  };

  const moveStep = (delta: number): void => {
    if (selected === null) return;
    const next = selected + delta;
    if (next < 0 || next >= route.steps.length) return;
    const steps = [...route.steps];
    [steps[selected], steps[next]] = [steps[next], steps[selected]];
    setRoute({ ...route, steps });
    setSelected(next);
  };

  const step = selected === null ? undefined : route.steps[selected];

  return (
    <div className="sc-command-scrim" onMouseDown={(event) => {
      event.stopPropagation();
      if (event.target === event.currentTarget) onCancel();
    }}>
      <section className="sc-modal sc-moveroute" role="dialog" aria-modal="true" aria-labelledby="sc-moveroute-title" onMouseDown={(e) => e.stopPropagation()}>
        <header className="sc-modal-head">
          <h2 id="sc-moveroute-title">Set Move Route</h2>
          <button className="sc-modal-x" onClick={onCancel} aria-label="Close">×</button>
        </header>

        <div className="sc-moveroute-top">
          {target !== undefined && (
            <label className="sc-field">Target
              <select className="sc-select" value={routeTarget} onChange={(e) => setRouteTarget(Number(e.target.value))}>
                <option value={-1}>Player</option>
                <option value={0}>This Event</option>
                {eventTargets.map((event) => <option key={event.id} value={event.id}>Event {event.id}: {event.name || 'untitled'}</option>)}
              </select>
            </label>
          )}
          <label className="sc-toggle-row"><input className="sc-checkbox" type="checkbox" checked={route.repeat} onChange={(e) => setRoute({ ...route, repeat: e.target.checked })} />Repeat Move</label>
          <label className="sc-toggle-row"><input className="sc-checkbox" type="checkbox" checked={route.skippable} onChange={(e) => setRoute({ ...route, skippable: e.target.checked })} />Skip If Cannot Move</label>
          {target !== undefined && <label className="sc-toggle-row"><input className="sc-checkbox" type="checkbox" checked={waitForCompletion} onChange={(e) => setWaitForCompletion(e.target.checked)} />Wait for Completion</label>}
        </div>

        <div className="sc-moveroute-body">
          <div className="sc-moveroute-sequence">
            <div className="sc-evd-listhead sc-spread"><span>Move Route</span><span>{route.steps.length} steps</span></div>
            <div className="sc-moveroute-list">
              {route.steps.length === 0 && <div className="sc-empty">No movement steps.</div>}
              {route.steps.map((candidate, index) => (
                <button key={index} className="sc-moveroute-row" data-selected={index === selected} onClick={() => setSelected(index)}>
                  <span className="sc-command-code">{String(index + 1).padStart(2, '0')}</span>
                  <span>{moveStepSummary(candidate)}</span>
                </button>
              ))}
            </div>
            <div className="sc-moveroute-actions">
              <button className="sc-btn" onClick={() => moveStep(-1)} disabled={selected === null || selected === 0}>↑</button>
              <button className="sc-btn" onClick={() => moveStep(1)} disabled={selected === null || selected === route.steps.length - 1}>↓</button>
              <button className="sc-btn" onClick={() => {
                if (!step || selected === null) return;
                const steps = [...route.steps];
                steps.splice(selected + 1, 0, { ...step, params: [...step.params] });
                setRoute({ ...route, steps });
                setSelected(selected + 1);
              }} disabled={!step}>Duplicate</button>
              <button className="sc-btn" data-tone="danger" onClick={deleteStep} disabled={selected === null}>Delete</button>
            </div>
            {step && <MoveStepParameters step={step} onChange={updateStep} />}
          </div>

          <div className="sc-moveroute-palette">
            <div className="sc-evd-listhead">Movement Commands</div>
            <div className="sc-moveroute-grid">
              {MOVE_STEP_NAMES.slice(1).map((name, index) => (
                <button key={index + 1} className="sc-command-button" onClick={() => addStep(index + 1)}>
                  {name}<span className="sc-command-code">{index + 1}</span>
                </button>
              ))}
            </div>
          </div>
        </div>

        <footer className="sc-modal-foot">
          <span className="sc-faint">The route and its RMXP continuation commands are saved together.</span>
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onCancel}>Cancel</button>
          <button className="sc-btn" data-active onClick={() => onConfirm(route, routeTarget, waitForCompletion)}>OK</button>
        </footer>
      </section>
    </div>
  );
}

function MoveStepParameters({ step, onChange }: { step: MoveStep; onChange: (step: MoveStep) => void }): React.JSX.Element | null {
  const number = (label: string, index: number, min?: number, max?: number): React.JSX.Element => (
    <label className="sc-field">{label}<input className="sc-input sc-mono" type="number" min={min} max={max} value={asNumber(step.params[index])} onChange={(e) => onChange(setNumberParam(step, index, Number(e.target.value)))} /></label>
  );
  if (step.code === 14) return <div className="sc-moveroute-params">{number('X', 0)}{number('Y', 1)}</div>;
  if (step.code === 15) return <div className="sc-moveroute-params">{number('Frames', 0, 1)}</div>;
  if (step.code === 27 || step.code === 28) return <div className="sc-moveroute-params">{number('Switch ID', 0, 1)}</div>;
  if (step.code === 29 || step.code === 30) {
    const values = step.code === 29 ? SPEEDS : FREQUENCIES;
    return <div className="sc-moveroute-params"><label className="sc-field">Value<select className="sc-select" value={asNumber(step.params[0], 3)} onChange={(e) => onChange(setNumberParam(step, 0, Number(e.target.value)))}>{values.map((label, index) => <option key={label} value={index + 1}>{label}</option>)}</select></label></div>;
  }
  if (step.code === 41) return <div className="sc-moveroute-params"><label className="sc-field">Graphic<input className="sc-input" value={asStr(step.params[0])} onChange={(e) => onChange(setStringParam(step, 0, e.target.value))} /></label>{number('Hue', 1, 0, 360)}</div>;
  if (step.code === 42) return <div className="sc-moveroute-params">{number('Opacity', 0, 0, 255)}</div>;
  if (step.code === 43) return <div className="sc-moveroute-params"><label className="sc-field">Blending<select className="sc-select" value={asNumber(step.params[0])} onChange={(e) => onChange(setNumberParam(step, 0, Number(e.target.value)))}><option value={0}>Normal</option><option value={1}>Add</option><option value={2}>Subtract</option></select></label></div>;
  if (step.code === 44) {
    const audio = audioParams(step);
    return <div className="sc-moveroute-params"><label className="sc-field">SE Name<input className="sc-input" value={audio.name} onChange={(e) => onChange(setAudioParams(step, { ...audio, name: e.target.value }))} /></label>{numberAudio('Volume', audio.volume, (volume) => onChange(setAudioParams(step, { ...audio, volume })))}{numberAudio('Pitch', audio.pitch, (pitch) => onChange(setAudioParams(step, { ...audio, pitch })))}</div>;
  }
  if (step.code === 45) return <div className="sc-moveroute-params sc-moveroute-script"><label className="sc-field">Ruby Script<textarea className="sc-input sc-mono" value={asStr(step.params[0])} onChange={(e) => onChange(setStringParam(step, 0, e.target.value))} /></label></div>;
  return null;
}

function numberAudio(label: string, value: number, onChange: (value: number) => void): React.JSX.Element {
  return <label className="sc-field">{label}<input className="sc-input sc-mono" type="number" min={0} max={150} value={value} onChange={(e) => onChange(Number(e.target.value))} /></label>;
}
