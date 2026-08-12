/**
 * Edit Event — a modal dialog, not a docked panel.
 *
 * Editing an event means reading conditions, graphic, movement, trigger and a
 * command list at the same time. A strip along the bottom of the window cannot
 * show that without scrolling, which is why RPG Maker itself uses a full dialog
 * and why the docked version of this was unusable.
 *
 * Layout mirrors RMXP so the muscle memory transfers: page tabs across the top,
 * properties down the left, the command list filling the right.
 *
 * Editing scope: page flags, trigger, movement and the event name are written
 * straight into the stored Marshal tree, so unmodelled fields survive.
 *
 * Commands themselves are edited generically rather than through ~100
 * per-command-type dialogs: selecting a line exposes its `code`/`indent`/
 * `parameters` as plain JSON (the same shape `marshalToJson` produces, so
 * object references and nested structures round-trip losslessly), and Insert
 * / Delete operate on the underlying command array directly. This covers every
 * command type on day one instead of the handful a bespoke dialog would.
 */

import { useEffect, useMemo, useState } from 'react';
import {
  MOVE_TYPES,
  TRIGGERS,
  commandListArray,
  commandBlockEnd,
  commandBlockStart,
  commandCode,
  decodeEvent,
  asArray,
  ivar,
  makeDeref,
  pageNode,
  setIvar,
  strNode,
} from '../../core/events/model';
import { formatCommands, type CommandKind } from '../../core/events/commands';
import { buildCommandNode, COMMAND_PAGES, type PaletteEntry } from '../../core/events/palette';
import { CommandParameterDialog } from './CommandParameterDialog';
import { buildMoveRoute, buildSetMoveRouteBlock, decodeMoveRoute } from '../../core/events/moveRoute';
import {
  buildChoiceBlock,
  buildConditionalBlock,
  buildTextBlock,
  readChoiceBlock,
  readConditional,
  readTextBlock,
  replaceChoiceBlock,
  updateConditionalBlock,
} from '../../core/events/compoundCommands';
import type { JNode, JValue } from '../../core/marshal/json';
import { useEditor } from '../../state/store';
import { GraphicPicker, type GraphicValue } from './GraphicPicker';
import { InsertCommandMenu } from './InsertCommandMenu';
import { MoveRouteDialog } from './MoveRouteDialog';
import { EventSprite } from './EventSprite';
import { SwitchVariablePicker } from './SwitchVariablePicker';
import { WeatherEffectsDialog } from './WeatherEffectsDialog';
import { ChoiceCommandDialog, ConditionalCommandDialog, TextCommandDialog } from './BasicCommandDialogs';

const KIND_COLOR: Record<CommandKind, string> = {
  message: '#e6edf9',
  flow: '#38e8ff',
  data: '#9d6bff',
  movement: '#7dff9b',
  audio: '#ffb838',
  screen: '#7cc4ff',
  script: '#ff4fd8',
  comment: '#5d6b86',
  battle: '#ff8a6b',
  other: '#97a5bf',
  blank: '#5d6b86',
};

const SPEEDS = ['', '1: Slowest', '2: Slower', '3: Slow', '4: Fast', '5: Faster', '6: Fastest'];
const FREQS = ['', '1: Lowest', '2: Lower', '3: Low', '4: High', '5: Higher', '6: Highest'];

export function EventDialog(): React.JSX.Element | null {
  const {
    docs, activeMapId, selectedEventId, selectEvent, selectedPage, setSelectedPage,
    markEventDirty, saveActive, switchNames, variableNames, databaseNames, loadSystemNames,
  } = useEditor();

  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;
  const event = doc?.map.events.find((e) => e.id === selectedEventId);

  /** Bumped after every in-place write so the decoded view refreshes. */
  const [rev, setRev] = useState(0);
  const [pickingGraphic, setPickingGraphic] = useState(false);
  /** Index into the page's raw command array, or null when nothing is selected. */
  const [selectedCmd, setSelectedCmd] = useState<number | null>(null);
  /** Which condition field the Select Switch/Variable dialog is editing, if open. */
  const [picking, setPicking] = useState<
    { field: 'switch1_id' | 'switch2_id' | 'variable_id'; kind: 'switch' | 'variable' } | null
  >(null);
  /** The insertion target captured when the modal command palette is opened. */
  const [insertMenu, setInsertMenu] = useState<
    { at: number; indent: number } | null
  >(null);
  const [moveRouteEditor, setMoveRouteEditor] = useState<
    | { mode: 'insert'; at: number; indent: number }
    | { mode: 'command'; at: number; indent: number }
    | { mode: 'autonomous' }
    | null
  >(null);
  const [weatherEditor, setWeatherEditor] = useState<
    { mode: 'insert' | 'command'; at: number; indent: number } | null
  >(null);
  const [textEditor, setTextEditor] = useState<{ mode: 'insert' | 'command'; at: number; indent: number; code: 101 | 108 | 355 } | null>(null);
  const [choiceEditor, setChoiceEditor] = useState<{ mode: 'insert' | 'command'; at: number; indent: number } | null>(null);
  const [conditionalEditor, setConditionalEditor] = useState<{ mode: 'insert' | 'command'; at: number; indent: number } | null>(null);
  const [parameterEditor, setParameterEditor] = useState<{ mode: 'insert' | 'command'; at: number; indent: number; code: number; title: string; params: JValue[]; entry?: PaletteEntry } | null>(null);
  const [rawText, setRawText] = useState('');
  const [rawError, setRawError] = useState('');
  const [busy, setBusy] = useState(false);
  const decoded = useMemo(() => (event ? decodeEvent(event.raw) : null), [event, rev]);
  const deref = useMemo(() => (event ? makeDeref(event.raw as never) : undefined), [event]);

  useEffect(() => {
    const onKey = (e: KeyboardEvent): void => {
      // A nested picker owns Escape while it is open, so closing it does not
      // also close the event dialog underneath.
      if (e.key === 'Escape' && !pickingGraphic && picking === null && insertMenu === null && moveRouteEditor === null && weatherEditor === null && textEditor === null && choiceEditor === null && conditionalEditor === null && parameterEditor === null) selectEvent(null);
    };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [selectEvent, pickingGraphic, picking, insertMenu, moveRouteEditor, weatherEditor, textEditor, choiceEditor, conditionalEditor, parameterEditor]);

  // Names load once per project (App bootstrap already calls this), but a
  // project opened via "Open Project" instead of auto-load would not have
  // them yet — fetch lazily so the dialog is never stuck showing bare numbers.
  useEffect(() => {
    if (switchNames.length === 0 && variableNames.length === 0) void loadSystemNames();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  // A command index from one page means nothing on another, and switching
  // events entirely must not leave a stale raw-edit buffer lying around.
  useEffect(() => {
    setSelectedCmd(null);
    setRawText('');
    setRawError('');
    setPicking(null);
  }, [event?.id, selectedPage]);

  if (!event || !decoded || !doc) return null;

  const pageIndex = Math.min(selectedPage, Math.max(0, decoded.pages.length - 1));
  const page = decoded.pages[pageIndex];
  const node = pageNode(event.raw, pageIndex);

  /** Writes one page field through the raw tree and refreshes. */
  const write = (name: string, value: unknown): void => {
    if (setIvar(node, name, value as never)) {
      markEventDirty();
      setRev((r) => r + 1);
    }
  };

  const writeCondition = (name: string, value: unknown): void => {
    if (setIvar(ivar(node, 'condition'), name, value as never)) {
      markEventDirty();
      setRev((r) => r + 1);
    }
  };

  const lines = page ? formatCommands(page.commands, deref) : [];
  const c = page?.condition;
  const commandArray = commandListArray(node);

  const selectCmd = (index: number): void => {
    setSelectedCmd(index);
    setRawError('');
    const cmd = commandArray?.[index];
    const code = ivar(cmd, 'code');
    const indent = ivar(cmd, 'indent');
    const parameters = ivar(cmd, 'parameters');
    setRawText(
      JSON.stringify(
        { code: code ?? 0, indent: indent ?? 0, parameters: parameters ?? { $: 'arr', v: [] } },
        null,
        2,
      ),
    );
  };

  /** Opens the modal command palette targeting a list index. */
  const openInsertMenu = (at: number, indent: number): void => {
    setInsertMenu({ at, indent });
  };

  /** Opens the menu from the toolbar button, aimed below the selection. */
  const openInsertMenuFromButton = (): void => {
    if (!commandArray) return;
    const at = selectedCmd === null
      ? Math.max(0, commandArray.length - 1)
      : commandBlockEnd(commandArray, selectedCmd) + 1;
    const prevIndent = selectedCmd === null ? undefined : ivar(commandArray[selectedCmd], 'indent');
    openInsertMenu(at, typeof prevIndent === 'number' ? prevIndent : 0);
  };

  const insertFromPalette = (entry: PaletteEntry): void => {
    if (!commandArray || !insertMenu) return;
    const { at, indent } = insertMenu;
    if (entry.code === 209) {
      setInsertMenu(null);
      setMoveRouteEditor({ mode: 'insert', at, indent });
      return;
    }
    if (entry.code === 236) {
      setInsertMenu(null);
      setWeatherEditor({ mode: 'insert', at, indent });
      return;
    }
    if (entry.code === 101 || entry.code === 108 || entry.code === 355) {
      setInsertMenu(null);
      setTextEditor({ mode: 'insert', at, indent, code: entry.code });
      return;
    }
    if (entry.code === 102) {
      setInsertMenu(null);
      setChoiceEditor({ mode: 'insert', at, indent });
      return;
    }
    if (entry.code === 111) {
      setInsertMenu(null);
      setConditionalEditor({ mode: 'insert', at, indent });
      return;
    }
    const defaults = entry.params({ currentMapId: doc.map.id });
    if (defaults.length > 0) {
      setInsertMenu(null);
      setParameterEditor({ mode: 'insert', at, indent, code: entry.code, title: entry.label, params: defaults, entry });
      return;
    }
    commandArray.splice(at, 0, buildCommandNode(entry, indent, { currentMapId: doc.map.id }));
    markEventDirty();
    setRev((r) => r + 1);
    selectCmd(at);
    setInsertMenu(null);
  };

  const deleteSelected = (): void => {
    if (!commandArray || selectedCmd === null) return;
    const start = commandBlockStart(commandArray, selectedCmd);
    const end = commandBlockEnd(commandArray, start);
    commandArray.splice(start, end - start + 1);
    markEventDirty();
    setRev((r) => r + 1);
    setSelectedCmd(null);
    setRawText('');
  };

  const editSelected = (): void => {
    if (!commandArray || selectedCmd === null) return;
    if (commandCode(commandArray[selectedCmd]) === 209) {
      const indent = ivar(commandArray[selectedCmd], 'indent');
      setMoveRouteEditor({ mode: 'command', at: selectedCmd, indent: typeof indent === 'number' ? indent : 0 });
    } else if (commandCode(commandArray[selectedCmd]) === 236) {
      const indent = ivar(commandArray[selectedCmd], 'indent');
      setWeatherEditor({ mode: 'command', at: selectedCmd, indent: typeof indent === 'number' ? indent : 0 });
    } else if ([101, 108, 355].includes(commandCode(commandArray[selectedCmd]))) {
      const code = commandCode(commandArray[selectedCmd]) as 101 | 108 | 355;
      const indent = ivar(commandArray[selectedCmd], 'indent');
      setTextEditor({ mode: 'command', at: selectedCmd, indent: typeof indent === 'number' ? indent : 0, code });
    } else if (commandCode(commandArray[selectedCmd]) === 102) {
      const indent = ivar(commandArray[selectedCmd], 'indent');
      setChoiceEditor({ mode: 'command', at: selectedCmd, indent: typeof indent === 'number' ? indent : 0 });
    } else if (commandCode(commandArray[selectedCmd]) === 111) {
      const indent = ivar(commandArray[selectedCmd], 'indent');
      setConditionalEditor({ mode: 'command', at: selectedCmd, indent: typeof indent === 'number' ? indent : 0 });
    } else {
      const code = commandCode(commandArray[selectedCmd]);
      if ([0, 402, 403, 404, 411, 412, 413, 509, 655].includes(code)) return;
      const indent = ivar(commandArray[selectedCmd], 'indent');
      const params = asArray(ivar(commandArray[selectedCmd], 'parameters'));
      const title = COMMAND_PAGES.flatMap((page) => page.entries).find((entry) => entry.code === code)?.label ?? `Command ${code}`;
      setParameterEditor({ mode: 'command', at: selectedCmd, indent: typeof indent === 'number' ? indent : 0, code, title, params });
    }
  };

  const applyRaw = (): void => {
    if (!commandArray || selectedCmd === null) return;
    let parsed: unknown;
    try {
      parsed = JSON.parse(rawText);
    } catch (err) {
      setRawError(`Invalid JSON: ${(err as Error).message}`);
      return;
    }
    const p = parsed as { code?: unknown; indent?: unknown; parameters?: unknown };
    if (typeof p.code !== 'number' || typeof p.indent !== 'number' || !p.parameters) {
      setRawError('Expected an object with numeric "code", numeric "indent", and "parameters".');
      return;
    }
    const originalCode = commandCode(commandArray[selectedCmd]);
    if (commandBlockEnd(commandArray, selectedCmd) > selectedCmd && p.code !== originalCode) {
      setRawError('A compound command cannot change its code without also rebuilding its continuation rows.');
      return;
    }
    const cmdNode = commandArray[selectedCmd];
    setIvar(cmdNode, 'code', p.code);
    setIvar(cmdNode, 'indent', p.indent);
    setIvar(cmdNode, 'parameters', p.parameters as JValue);
    markEventDirty();
    setRawError('');
    setRev((r) => r + 1);
  };

  /**
   * Exports the whole event — every page, condition and command — as the same
   * JSON shape `marshalToJson` produces. It is a plain object tree (object
   * references included), so it diffs cleanly in git and round-trips exactly
   * back through `jsonToMarshal` on import.
   */
  const exportEvent = async (): Promise<void> => {
    setBusy(true);
    try {
      const json = JSON.stringify(event.raw, null, 2);
      const safeName = (decoded.name || `event_${decoded.id}`).replace(/[^\w.-]+/g, '_');
      const ok = await window.sc.event.export(`Map${doc.map.id}_${safeName}`, json);
      if (ok) useEditor.getState().log('info', `Exported "${decoded.name}".`);
    } catch (err) {
      useEditor.getState().log('error', `Export failed: ${(err as Error).message}`);
    } finally {
      setBusy(false);
    }
  };

  /**
   * Imports a previously exported event tree, replacing this event's data
   * wholesale. Writing into `event.raw`'s own `iv` array (rather than
   * reassigning `event.raw`) is what makes the replacement visible: `event` is
   * the same object every other part of the editor is holding a reference to.
   */
  const importEvent = async (): Promise<void> => {
    setBusy(true);
    try {
      const text = await window.sc.event.import();
      if (text === null) return;
      const parsed = JSON.parse(text) as JValue;
      if (!parsed || typeof parsed !== 'object' || Array.isArray(parsed) || (parsed as JNode).$ !== 'obj') {
        useEditor.getState().log('error', 'That file is not a valid exported event.');
        return;
      }
      const target = event.raw as JNode;
      target.iv = (parsed as JNode).iv;
      // The id and position stay put — importing a template should not move
      // or renumber the event you dropped it onto.
      setIvar(target, 'id', decoded.id);
      setIvar(target, 'x', decoded.x);
      setIvar(target, 'y', decoded.y);
      markEventDirty();
      setRev((r) => r + 1);
      setSelectedCmd(null);
    } catch (err) {
      useEditor.getState().log('error', `Import failed: ${(err as Error).message}`);
    } finally {
      setBusy(false);
    }
  };

  return (
    <div className="sc-modal-scrim" onMouseDown={() => selectEvent(null)}>
      <div
        className="sc-modal sc-evd"
        onMouseDown={(e) => e.stopPropagation()}
        role="dialog"
        aria-label="Edit event"
      >
        <header className="sc-modal-head">
          <h2>
            Edit Event <span className="sc-faint sc-mono">ID:{String(decoded.id).padStart(3, '0')}</span>
          </h2>
          <span style={{ flex: 1 }} />
          <button
            className="sc-btn"
            onClick={() => void exportEvent()}
            disabled={busy}
            title="Save this event's full data as a JSON file"
          >
            Export JSON
          </button>
          <button
            className="sc-btn"
            onClick={() => void importEvent()}
            disabled={busy}
            title="Replace this event's pages and commands from a JSON file"
          >
            Import JSON
          </button>
          <button
            type="button"
            className="sc-modal-x"
            onPointerDown={(e) => e.stopPropagation()}
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              selectEvent(null);
            }}
            aria-label="Close"
          >
            ×
          </button>
        </header>

        <div className="sc-evd-name">
          <label>Name</label>
          <input
            className="sc-input"
            value={decoded.name}
            onChange={(e) => {
              const name = e.target.value;
              if (setIvar(event.raw as never, 'name', strNode(name))) {
                event.name = name;
                markEventDirty();
                setRev((r) => r + 1);
              }
            }}
          />
          <span className="sc-badge sc-mono">
            {decoded.x}, {decoded.y}
          </span>
        </div>

        <div className="sc-evd-pages">
          {decoded.pages.map((_, i) => (
            <button
              key={i}
              className="sc-evd-page"
              data-active={i === pageIndex}
              onClick={() => setSelectedPage(i)}
            >
              Page {i + 1}
            </button>
          ))}
        </div>

        {page && c && (
          <div className="sc-evd-body">
            {/* ------------------------------------------------- properties */}
            <div className="sc-evd-left">
              <fieldset className="sc-fs">
                <legend>Conditions</legend>
                <div className="sc-cond">
                  <input
                    className="sc-checkbox"
                    type="checkbox"
                    checked={c.switch1Valid}
                    onChange={(e) => writeCondition('switch1_valid', e.target.checked)}
                  />
                  <span>Switch</span>
                  <button
                    type="button"
                    className="sc-cond-pick"
                    onClick={() => setPicking({ field: 'switch1_id', kind: 'switch' })}
                  >
                    <span className="sc-mono sc-cyan-dim">{String(c.switch1Id).padStart(4, '0')}</span>
                    <span className="sc-truncate">
                      {switchNames[c.switch1Id] || <span className="sc-faint">(unnamed)</span>}
                    </span>
                  </button>
                  <span className="sc-faint">is ON</span>
                </div>
                <div className="sc-cond">
                  <input
                    className="sc-checkbox"
                    type="checkbox"
                    checked={c.switch2Valid}
                    onChange={(e) => writeCondition('switch2_valid', e.target.checked)}
                  />
                  <span>Switch</span>
                  <button
                    type="button"
                    className="sc-cond-pick"
                    onClick={() => setPicking({ field: 'switch2_id', kind: 'switch' })}
                  >
                    <span className="sc-mono sc-cyan-dim">{String(c.switch2Id).padStart(4, '0')}</span>
                    <span className="sc-truncate">
                      {switchNames[c.switch2Id] || <span className="sc-faint">(unnamed)</span>}
                    </span>
                  </button>
                  <span className="sc-faint">is ON</span>
                </div>
                <div className="sc-cond">
                  <input
                    className="sc-checkbox"
                    type="checkbox"
                    checked={c.variableValid}
                    onChange={(e) => writeCondition('variable_valid', e.target.checked)}
                  />
                  <span>Variable</span>
                  <button
                    type="button"
                    className="sc-cond-pick"
                    onClick={() => setPicking({ field: 'variable_id', kind: 'variable' })}
                  >
                    <span className="sc-mono sc-cyan-dim">{String(c.variableId).padStart(4, '0')}</span>
                    <span className="sc-truncate">
                      {variableNames[c.variableId] || <span className="sc-faint">(unnamed)</span>}
                    </span>
                  </button>
                  <span className="sc-faint">≥</span>
                  <input
                    className="sc-input sc-mono sc-narrow"
                    type="number"
                    value={c.variableValue}
                    disabled={!c.variableValid}
                    onChange={(e) => writeCondition('variable_value', Number(e.target.value))}
                  />
                </div>
                <div className="sc-cond">
                  <input
                    className="sc-checkbox"
                    type="checkbox"
                    checked={c.selfSwitchValid}
                    onChange={(e) => writeCondition('self_switch_valid', e.target.checked)}
                  />
                  <span>Self Switch</span>
                  <select
                    className="sc-select sc-narrow"
                    value={c.selfSwitchCh}
                    disabled={!c.selfSwitchValid}
                    onChange={(e) => writeCondition('self_switch_ch', strNode(e.target.value))}
                  >
                    {['A', 'B', 'C', 'D'].map((ch) => (
                      <option key={ch}>{ch}</option>
                    ))}
                  </select>
                  <span className="sc-faint">is ON</span>
                </div>
              </fieldset>

              <div className="sc-evd-split">
                <fieldset className="sc-fs">
                  <legend>Graphic</legend>
                  <button
                    type="button"
                    className="sc-evd-graphic-btn sc-evd-graphic-preview"
                    onClick={() => setPickingGraphic(true)}
                    title="Click to choose a character graphic"
                  >
                    <EventSprite
                      characterName={page.graphic.characterName}
                      direction={page.graphic.direction}
                      pattern={page.graphic.pattern}
                      hue={page.graphic.characterHue}
                    />
                    {page.graphic.characterName ? (
                      <span className="sc-truncate">{page.graphic.characterName}</span>
                    ) : page.graphic.tileId > 0 ? (
                      <span className="sc-truncate">Tile {page.graphic.tileId}</span>
                    ) : (
                      <span className="sc-faint">(none) — click to set</span>
                    )}
                  </button>
                </fieldset>

                <fieldset className="sc-fs">
                  <legend>Autonomous Movement</legend>
                  <label className="sc-field">
                    Type
                    <select
                      className="sc-select"
                      value={page.moveType}
                      onChange={(e) => write('move_type', Number(e.target.value))}
                    >
                      {MOVE_TYPES.map((m, i) => (
                        <option key={m} value={i}>
                          {m}
                        </option>
                      ))}
                    </select>
                  </label>
                  {page.moveType === 3 && (
                    <button className="sc-btn" data-active onClick={() => setMoveRouteEditor({ mode: 'autonomous' })}>
                      Edit Custom Route…
                    </button>
                  )}
                  <label className="sc-field">
                    Speed
                    <select
                      className="sc-select"
                      value={page.moveSpeed}
                      onChange={(e) => write('move_speed', Number(e.target.value))}
                    >
                      {SPEEDS.map((s, i) => i > 0 && <option key={s} value={i}>{s}</option>)}
                    </select>
                  </label>
                  <label className="sc-field">
                    Freq
                    <select
                      className="sc-select"
                      value={page.moveFrequency}
                      onChange={(e) => write('move_frequency', Number(e.target.value))}
                    >
                      {FREQS.map((s, i) => i > 0 && <option key={s} value={i}>{s}</option>)}
                    </select>
                  </label>
                </fieldset>
              </div>

              <div className="sc-evd-split">
                <fieldset className="sc-fs">
                  <legend>Options</legend>
                  {(
                    [
                      ['walk_anime', 'Move Animation', page.walkAnime],
                      ['step_anime', 'Stop Animation', page.stepAnime],
                      ['direction_fix', 'Direction Fix', page.directionFix],
                      ['through', 'Through', page.through],
                      ['always_on_top', 'Always on Top', page.alwaysOnTop],
                    ] as const
                  ).map(([key, label, value]) => (
                    <label key={key} className="sc-toggle-row">
                      <input
                        className="sc-checkbox"
                        type="checkbox"
                        checked={value}
                        onChange={() => write(key, !value)}
                      />
                      {label}
                    </label>
                  ))}
                </fieldset>

                <fieldset className="sc-fs">
                  <legend>Trigger</legend>
                  {TRIGGERS.map((t, i) => (
                    <label key={t} className="sc-toggle-row">
                      <input
                        type="radio"
                        name="sc-trigger"
                        checked={page.trigger === i}
                        onChange={() => write('trigger', i)}
                      />
                      {t}
                    </label>
                  ))}
                </fieldset>
              </div>
            </div>

            {/* ---------------------------------------------- command list */}
            <div className="sc-evd-right">
              <div className="sc-evd-listhead sc-spread">
                <span>List of Event Commands</span>
                <span className="sc-evd-cmdactions">
                  <button className="sc-btn" onClick={openInsertMenuFromButton}>
                    + Insert
                  </button>
                  <button className="sc-btn" onClick={editSelected} disabled={selectedCmd === null || [0, 402, 403, 404, 411, 412, 413, 509, 655].includes(commandCode(commandArray?.[selectedCmd]))}>
                    Edit
                  </button>
                  <button className="sc-btn" data-tone="danger" onClick={deleteSelected} disabled={selectedCmd === null}>
                    Delete
                  </button>
                </span>
              </div>
              <div className="sc-evd-list">
                {lines.map((line) =>
                  line.text.split('\n').map((part, i) => {
                    // A code-0 row is RPG Maker XP's empty `@>` slot. Clicking it
                    // opens the command menu straight away — that is how you add
                    // a command in RMXP, and it is the primary path here too.
                    const isEmptySlot = line.code === 0 && i === 0;
                    return (
                      <div
                        key={`${line.index}-${i}`}
                        className="sc-evd-cmd"
                        data-selected={line.index === selectedCmd}
                        data-empty={isEmptySlot}
                        style={{ paddingLeft: 8 + line.indent * 14 }}
                        onClick={() => {
                          selectCmd(line.index);
                          if (isEmptySlot) {
                            openInsertMenu(line.index, line.indent);
                          }
                        }}
                        onDoubleClick={() => {
                          if (line.code === 209) {
                            setMoveRouteEditor({ mode: 'command', at: line.index, indent: line.indent });
                          } else if (line.code === 236) {
                            setWeatherEditor({ mode: 'command', at: line.index, indent: line.indent });
                          } else if (line.code === 101 || line.code === 108 || line.code === 355) {
                            setTextEditor({ mode: 'command', at: line.index, indent: line.indent, code: line.code });
                          } else if (line.code === 102) {
                            setChoiceEditor({ mode: 'command', at: line.index, indent: line.indent });
                          } else if (line.code === 111) {
                            setConditionalEditor({ mode: 'command', at: line.index, indent: line.indent });
                          } else if (!isEmptySlot) {
                            const command = commandArray?.[line.index];
                            if (command) {
                              const title = COMMAND_PAGES.flatMap((page) => page.entries).find((entry) => entry.code === line.code)?.label ?? `Command ${line.code}`;
                              setParameterEditor({ mode: 'command', at: line.index, indent: line.indent, code: line.code, title, params: asArray(ivar(command, 'parameters')) });
                            }
                          }
                        }}
                        title={
                          isEmptySlot
                            ? 'Click to insert a command here'
                            : 'Click to select · double-click to insert below'
                        }
                      >
                        <span className="sc-evd-at">@&gt;</span>
                        <span style={{ color: KIND_COLOR[line.kind] }}>
                          {i > 0 ? `    : ${part}` : part || ''}
                        </span>
                      </div>
                    );
                  }),
                )}
              </div>

              {selectedCmd !== null && commandCode(commandArray?.[selectedCmd]) !== 209 && ![402, 403, 404, 411, 412, 413].includes(commandCode(commandArray?.[selectedCmd])) && (
                <div className="sc-evd-raw">
                  <div className="sc-evd-listhead">
                    Selected command <span className="sc-mono sc-faint">#{selectedCmd}</span> — raw
                    code / indent / parameters (JSON)
                  </div>
                  <textarea
                    className="sc-evd-rawbox sc-mono"
                    value={rawText}
                    spellCheck={false}
                    onChange={(e) => {
                      setRawText(e.target.value);
                      setRawError('');
                    }}
                  />
                  <div className="sc-spread" style={{ marginTop: 6 }}>
                    <span className="sc-faint" style={{ fontSize: 11, color: rawError ? 'var(--sc-red)' : undefined }}>
                      {rawError || 'Edits apply immediately to the command tree on Apply.'}
                    </span>
                    <button className="sc-btn" data-active onClick={applyRaw}>
                      Apply
                    </button>
                  </div>
                </div>
              )}
            </div>
          </div>
        )}

        <footer className="sc-modal-foot">
          <span className="sc-faint">
            {doc.dirty ? 'Unsaved changes' : 'Saved'}
            {busy ? ' · working…' : ''}
          </span>
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={() => selectEvent(null)}>
            Close
          </button>
          <button
            className="sc-btn"
            data-active
            onClick={() => {
              void saveActive();
              selectEvent(null);
            }}
          >
            OK
          </button>
        </footer>
      </div>

      {pickingGraphic && page && (
        <GraphicPicker
          value={{
            characterName: page.graphic.characterName,
            direction: page.graphic.direction,
            pattern: page.graphic.pattern,
            hue: page.graphic.characterHue,
            opacity: page.graphic.opacity,
            blendType: page.graphic.blendType,
          }}
          onCancel={() => setPickingGraphic(false)}
          onConfirm={(v: GraphicValue) => {
            const graphicNode = ivar(node, 'graphic');
            setIvar(graphicNode, 'character_name', strNode(v.characterName));
            setIvar(graphicNode, 'direction', v.direction);
            setIvar(graphicNode, 'pattern', v.pattern);
            setIvar(graphicNode, 'character_hue', v.hue);
            setIvar(graphicNode, 'opacity', v.opacity);
            setIvar(graphicNode, 'blend_type', v.blendType);
            // Picking a graphic file always means "use the character sheet",
            // never a tileset tile — RMXP itself enforces this exclusivity.
            setIvar(graphicNode, 'tile_id', 0);
            markEventDirty();
            setRev((r) => r + 1);
            setPickingGraphic(false);
          }}
        />
      )}

      {insertMenu && (
        <InsertCommandMenu onPick={insertFromPalette} onClose={() => setInsertMenu(null)} />
      )}

      {moveRouteEditor && (() => {
        const autonomous = moveRouteEditor.mode === 'autonomous';
        const command = moveRouteEditor.mode === 'command' ? commandArray?.[moveRouteEditor.at] : undefined;
        const parameters = command ? (ivar(command, 'parameters') as JNode | undefined) : undefined;
        const values = parameters?.$ === 'arr' ? parameters.v as JValue[] : [];
        const routeNode = autonomous ? ivar(node, 'move_route') : values[1];
        const target = typeof values[0] === 'number' ? values[0] : 0;
        const end = moveRouteEditor.mode === 'command' && commandArray
          ? commandBlockEnd(commandArray, moveRouteEditor.at)
          : -1;
        const waits = moveRouteEditor.mode === 'command' && commandArray
          ? commandCode(commandArray[end]) === 210
          : false;
        return (
          <MoveRouteDialog
            value={decodeMoveRoute(routeNode, deref)}
            target={autonomous ? undefined : target}
            wait={waits}
            eventTargets={doc.map.events.map((candidate) => ({ id: candidate.id, name: candidate.name }))}
            onCancel={() => setMoveRouteEditor(null)}
            onConfirm={(route, nextTarget, wait) => {
              if (autonomous) {
                setIvar(node, 'move_route', buildMoveRoute(route));
              } else if (commandArray) {
                const at = moveRouteEditor.at;
                let remove = 0;
                if (moveRouteEditor.mode === 'command') {
                  const blockEnd = commandBlockEnd(commandArray, at);
                  remove = blockEnd - at + 1;
                }
                const block = buildSetMoveRouteBlock(nextTarget, route, moveRouteEditor.indent, wait);
                commandArray.splice(at, remove, ...block);
                selectCmd(at);
              }
              markEventDirty();
              setRev((revision) => revision + 1);
              setMoveRouteEditor(null);
            }}
          />
        );
      })()}

      {weatherEditor && (() => {
        const command = weatherEditor.mode === 'command' ? commandArray?.[weatherEditor.at] : undefined;
        const parameters = ivar(command, 'parameters');
        const values = parameters && typeof parameters === 'object' && !Array.isArray(parameters) && parameters.$ === 'arr'
          ? parameters.v as JValue[]
          : [];
        return (
          <WeatherEffectsDialog
            value={{
              type: typeof values[0] === 'number' ? values[0] : 0,
              power: typeof values[1] === 'number' ? values[1] : 1,
              duration: typeof values[2] === 'number' ? values[2] : 20,
            }}
            onCancel={() => setWeatherEditor(null)}
            onConfirm={(weather) => {
              if (!commandArray) return;
              const node: JNode = {
                $: 'obj',
                c: 'RPG::EventCommand',
                iv: [
                  ['@code', 236],
                  ['@indent', weatherEditor.indent],
                  ['@parameters', { $: 'arr', v: [weather.type, weather.power, weather.duration] }],
                ],
              };
              commandArray.splice(weatherEditor.at, weatherEditor.mode === 'command' ? 1 : 0, node);
              markEventDirty();
              setRev((revision) => revision + 1);
              selectCmd(weatherEditor.at);
              setWeatherEditor(null);
            }}
          />
        );
      })()}

      {textEditor && commandArray && (
        <TextCommandDialog
          title={textEditor.code === 101 ? 'Show Text' : textEditor.code === 108 ? 'Comment' : 'Script'}
          value={textEditor.mode === 'command' ? readTextBlock(commandArray, textEditor.at) : ''}
          rows={textEditor.code === 101 ? 6 : 10}
          onCancel={() => setTextEditor(null)}
          onConfirm={(text) => {
            const block = buildTextBlock(textEditor.code, textEditor.indent, text);
            const remove = textEditor.mode === 'command' ? commandBlockEnd(commandArray, textEditor.at) - textEditor.at + 1 : 0;
            commandArray.splice(textEditor.at, remove, ...block);
            markEventDirty();
            setRev((revision) => revision + 1);
            selectCmd(textEditor.at);
            setTextEditor(null);
          }}
        />
      )}

      {choiceEditor && commandArray && (
        <ChoiceCommandDialog
          value={choiceEditor.mode === 'command' ? readChoiceBlock(commandArray, choiceEditor.at) : { choices: ['Yes', 'No'], cancel: 0 }}
          onCancel={() => setChoiceEditor(null)}
          onConfirm={(choice) => {
            if (choiceEditor.mode === 'command') {
              replaceChoiceBlock(commandArray, choiceEditor.at, choiceEditor.indent, choice);
            } else {
              commandArray.splice(choiceEditor.at, 0, ...buildChoiceBlock(choiceEditor.indent, choice));
            }
            markEventDirty();
            setRev((revision) => revision + 1);
            selectCmd(choiceEditor.at);
            setChoiceEditor(null);
          }}
        />
      )}

      {conditionalEditor && commandArray && (
        <ConditionalCommandDialog
          value={conditionalEditor.mode === 'command' ? readConditional(commandArray, conditionalEditor.at) : {
            type: 'switch', id: 1, operator: 0, operandType: 0, operand: 0,
            selfSwitch: 'A', selfSwitchOn: true, script: '', elseBranch: false,
          }}
          switchNames={switchNames}
          variableNames={variableNames}
          onCancel={() => setConditionalEditor(null)}
          onConfirm={(condition) => {
            if (conditionalEditor.mode === 'command') {
              updateConditionalBlock(commandArray, conditionalEditor.at, condition);
            } else {
              commandArray.splice(conditionalEditor.at, 0, ...buildConditionalBlock(conditionalEditor.indent, condition));
            }
            markEventDirty();
            setRev((revision) => revision + 1);
            selectCmd(conditionalEditor.at);
            setConditionalEditor(null);
          }}
        />
      )}

      {parameterEditor && commandArray && (
        <CommandParameterDialog
          code={parameterEditor.code}
          title={parameterEditor.title}
          value={parameterEditor.params}
          names={{ ...databaseNames, switches: switchNames, variables: variableNames }}
          onCancel={() => setParameterEditor(null)}
          onConfirm={(params) => {
            if (parameterEditor.mode === 'insert' && parameterEditor.entry) {
              const node = buildCommandNode(parameterEditor.entry, parameterEditor.indent, { currentMapId: doc.map.id });
              setIvar(node, 'parameters', { $: 'arr', v: params });
              commandArray.splice(parameterEditor.at, 0, node);
            } else {
              setIvar(commandArray[parameterEditor.at], 'parameters', { $: 'arr', v: params });
            }
            markEventDirty();
            setRev((revision) => revision + 1);
            selectCmd(parameterEditor.at);
            setParameterEditor(null);
          }}
        />
      )}

      {picking && (
        <SwitchVariablePicker
          kind={picking.kind}
          names={picking.kind === 'switch' ? switchNames : variableNames}
          value={
            picking.field === 'switch1_id'
              ? c!.switch1Id
              : picking.field === 'switch2_id'
                ? c!.switch2Id
                : c!.variableId
          }
          onCancel={() => setPicking(null)}
          onConfirm={(id) => {
            writeCondition(picking.field, id);
            // Choosing a switch means you intend to use it, so tick the
            // condition too rather than making that a second, separate step.
            writeCondition(picking.field.replace('_id', '_valid'), true);
            setPicking(null);
          }}
        />
      )}
    </div>
  );
}
