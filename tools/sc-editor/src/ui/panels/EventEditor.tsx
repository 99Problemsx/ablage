/**
 * Event inspector: pages, conditions, trigger, and the command list.
 *
 * Read-oriented by design for now. Editing an RPG Maker command tree safely
 * means reproducing ~100 parameter dialogs; showing the whole event accurately —
 * including the plugin script calls that make up most of this project's logic —
 * is worth far more than half-working editing of a few command types.
 * Page flags and conditions, which are safe to model, are editable.
 */

import { useMemo } from 'react';
import {
  MOVE_TYPES,
  TRIGGERS,
  decodeEvent,
  makeDeref,
  pageNode,
  setIvar,
  type EventPage,
} from '../../core/events/model';
import { formatCommands, type CommandKind } from '../../core/events/commands';
import { useEditor } from '../../state/store';

const KIND_COLOR: Record<CommandKind, string> = {
  message: 'var(--sc-text)',
  flow: 'var(--sc-cyan)',
  data: 'var(--sc-violet)',
  movement: 'var(--sc-lime)',
  audio: 'var(--sc-amber)',
  screen: '#7cc4ff',
  script: 'var(--sc-magenta)',
  comment: 'var(--sc-text-faint)',
  battle: '#ff8a6b',
  other: 'var(--sc-text-dim)',
  blank: 'var(--sc-text-faint)',
};

function conditionSummary(page: EventPage): string[] {
  const c = page.condition;
  const out: string[] = [];
  if (c.switch1Valid) out.push(`Switch ${c.switch1Id} is ON`);
  if (c.switch2Valid) out.push(`Switch ${c.switch2Id} is ON`);
  if (c.variableValid) out.push(`Variable ${c.variableId} ≥ ${c.variableValue}`);
  if (c.selfSwitchValid) out.push(`Self switch ${c.selfSwitchCh} is ON`);
  return out;
}

export function EventEditor(): React.JSX.Element {
  const {
    docs, activeMapId, selectedEventId, selectedPage, setSelectedPage,
    markEventDirty, selectEvent,
  } = useEditor();

  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;
  const event = doc?.map.events.find((e) => e.id === selectedEventId);

  const decoded = useMemo(() => (event ? decodeEvent(event.raw) : null), [event]);
  const deref = useMemo(() => (event ? makeDeref(event.raw as never) : undefined), [event]);

  const page = decoded?.pages[Math.min(selectedPage, decoded.pages.length - 1)];
  const lines = useMemo(
    () => (page ? formatCommands(page.commands, deref) : []),
    [page, deref],
  );

  if (!doc) return <div className="sc-empty">No map open.</div>;

  if (!decoded || !event) {
    return (
      <div className="sc-empty">
        No event selected.
        <br />
        <span className="sc-faint">
          Pick the Events tool (V) and click an event, or double-click one on the map.
        </span>
        {doc.map.events.length > 0 && (
          <div className="sc-event-quick">
            {doc.map.events.slice(0, 24).map((e) => (
              <button key={e.id} className="sc-btn" onClick={() => selectEvent(e.id)}>
                {e.id}. {e.name || 'untitled'}
              </button>
            ))}
          </div>
        )}
      </div>
    );
  }

  const pageIndex = Math.min(selectedPage, decoded.pages.length - 1);

  /** Page flags are safe to edit: they are plain booleans on the page object. */
  const toggleFlag = (name: string, current: boolean): void => {
    const node = pageNode(event.raw, pageIndex);
    if (setIvar(node, name, !current)) markEventDirty();
  };

  return (
    <div className="sc-event">
      <div className="sc-event-head">
        <span className="sc-badge" data-tone="cyan">
          #{decoded.id}
        </span>
        <strong className="sc-truncate">{decoded.name || 'untitled'}</strong>
        <span className="sc-badge sc-mono">
          {decoded.x}, {decoded.y}
        </span>
        <span style={{ flex: 1 }} />
        <span className="sc-faint">
          {decoded.pages.length} page{decoded.pages.length === 1 ? '' : 's'}
        </span>
      </div>

      <div className="sc-event-pages">
        {decoded.pages.map((p, i) => (
          <button
            key={i}
            className="sc-btn"
            data-active={i === pageIndex}
            onClick={() => setSelectedPage(i)}
            title={conditionSummary(p).join(' · ') || 'No conditions'}
          >
            {i + 1}
            {conditionSummary(p).length > 0 && <span className="sc-page-dot" />}
          </button>
        ))}
      </div>

      {page && (
        <div className="sc-event-body">
          <aside className="sc-event-meta">
            <div className="sc-meta-block">
              <h4>Conditions</h4>
              {conditionSummary(page).length === 0 ? (
                <span className="sc-faint">Always active</span>
              ) : (
                conditionSummary(page).map((c) => (
                  <div key={c} className="sc-meta-row">
                    {c}
                  </div>
                ))
              )}
            </div>

            <div className="sc-meta-block">
              <h4>Trigger</h4>
              <div className="sc-meta-row">{TRIGGERS[page.trigger] ?? page.trigger}</div>
            </div>

            <div className="sc-meta-block">
              <h4>Graphic</h4>
              <div className="sc-meta-row">
                {page.graphic.characterName ||
                  (page.graphic.tileId > 0 ? `Tile ${page.graphic.tileId}` : 'None')}
              </div>
            </div>

            <div className="sc-meta-block">
              <h4>Movement</h4>
              <div className="sc-meta-row">
                {MOVE_TYPES[page.moveType] ?? page.moveType} · speed {page.moveSpeed} · freq{' '}
                {page.moveFrequency}
              </div>
            </div>

            <div className="sc-meta-block">
              <h4>Options</h4>
              {(
                [
                  ['walk_anime', 'Walking anim', page.walkAnime],
                  ['step_anime', 'Stepping anim', page.stepAnime],
                  ['direction_fix', 'Direction fix', page.directionFix],
                  ['through', 'Through', page.through],
                  ['always_on_top', 'Always on top', page.alwaysOnTop],
                ] as const
              ).map(([key, label, value]) => (
                <label key={key} className="sc-meta-check">
                  <input
                    className="sc-checkbox"
                    type="checkbox"
                    checked={value}
                    onChange={() => toggleFlag(key, value)}
                  />
                  {label}
                </label>
              ))}
            </div>
          </aside>

          <div className="sc-event-commands">
            {lines.length === 0 ? (
              <div className="sc-empty">This page has no commands.</div>
            ) : (
              lines.map((line) => (
                <div
                  key={line.index}
                  className="sc-cmd"
                  style={{ paddingLeft: 10 + line.indent * 16 }}
                  data-kind={line.kind}
                >
                  <span className="sc-cmd-code sc-mono">{line.code}</span>
                  <span className="sc-cmd-text" style={{ color: KIND_COLOR[line.kind] }}>
                    {line.text || ' '}
                  </span>
                </div>
              ))
            )}
          </div>
        </div>
      )}
    </div>
  );
}
