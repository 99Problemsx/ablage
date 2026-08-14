/**
 * Common events — the shared command lists in Data/CommonEvents.rxdata.
 *
 * Scope worth stating plainly: the four properties an author actually changes
 * (name, trigger, switch, and which events exist) are editable here, and the
 * command list is shown but not edited. Command editing lives in the map event
 * dialog and is nearly a thousand lines of palette, parameter forms and block
 * handling; wiring a second entry point into it is its own job, and shipping a
 * half-working copy would be worse than being clear about the line.
 *
 * The commands are rendered with the same `formatCommands` the event editor
 * uses, so switch and variable names resolve and an `if` block reads as an `if`
 * block rather than as code 111.
 */

import { useEffect, useMemo, useState } from 'react';
import { formatCommands } from '../../core/events/commands';
import { decodeCommands, ivar, makeDeref } from '../../core/events/model';
import {
  COMMON_EVENT_TRIGGERS,
  blankCommonEvent,
  nextCommonEventId,
  type SCCommonEvent,
} from '../../core/events/commonEvents';
import { useEditor } from '../../state/store';
import type { JValue } from '../../core/marshal/json';

export function CommonEventEditor({ onClose }: { onClose: () => void }): React.JSX.Element {
  const { switchNames, log } = useEditor();
  const [events, setEvents] = useState<SCCommonEvent[] | null>(null);
  const [selectedId, setSelectedId] = useState<number | null>(null);
  const [dirty, setDirty] = useState(false);
  const [filter, setFilter] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    void window.sc.commonEvents
      .load()
      .then((loaded) => {
        setEvents(loaded);
        setSelectedId(loaded[0]?.id ?? null);
      })
      .catch((err: Error) => setError(err.message));
  }, []);

  const requestClose = (): void => {
    if (dirty && !window.confirm('Discard unsaved changes to the common events?')) return;
    onClose();
  };

  useEffect(() => {
    const handler = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') {
        event.preventDefault();
        event.stopImmediatePropagation();
        requestClose();
      }
    };
    window.addEventListener('keydown', handler, true);
    return () => window.removeEventListener('keydown', handler, true);
  });

  const selected = events?.find((entry) => entry.id === selectedId) ?? null;

  const patch = (change: Partial<SCCommonEvent>): void => {
    if (!events || selectedId === null) return;
    setEvents(events.map((entry) => (entry.id === selectedId ? { ...entry, ...change } : entry)));
    setDirty(true);
  };

  const addEvent = (): void => {
    if (!events) return;
    const id = nextCommonEventId(events.map((entry) => entry.id));
    const created = blankCommonEvent(id, `Common Event ${id}`);
    setEvents([...events, created].sort((a, b) => a.id - b.id));
    setSelectedId(id);
    setDirty(true);
  };

  const save = (): void => {
    if (!events) return;
    void window.sc.commonEvents
      .save(events)
      .then(() => {
        setDirty(false);
        log('info', `Saved ${events.length} common event(s).`);
      })
      .catch((err: Error) => setError(err.message));
  };

  // The commands, decoded the same way the map event editor decodes a page.
  const lines = useMemo(() => {
    if (!selected) return [];
    const raw = selected.raw as JValue;
    return formatCommands(decodeCommands(ivar(raw, 'list')), makeDeref(raw));
  }, [selected]);

  const needle = filter.trim().toLowerCase();
  const visible = (events ?? []).filter(
    (entry) =>
      needle.length === 0 ||
      entry.name.toLowerCase().includes(needle) ||
      String(entry.id).includes(needle),
  );

  const switchLabel = (id: number): string => switchNames[id] ?? '';

  return (
    <div className="sc-modal-scrim" style={{ zIndex: 70 }} onMouseDown={requestClose}>
      <section
        className="sc-modal sc-ce-modal"
        role="dialog"
        aria-modal="true"
        onMouseDown={(e) => e.stopPropagation()}
      >
        <header className="sc-modal-head">
          <h2>Common Events{dirty && <span className="sc-rb-dirty" title="Unsaved changes" />}</h2>
          <button type="button" className="sc-modal-x" onClick={requestClose}>×</button>
        </header>

        <div className="sc-ce-body">
          <div className="sc-ce-list">
            <div className="sc-tree-filter">
              <input
                className="sc-input"
                placeholder="Filter…"
                value={filter}
                onChange={(e) => setFilter(e.target.value)}
                spellCheck={false}
              />
            </div>
            <div className="sc-ce-scroll">
              {events === null ? (
                <div className="sc-empty">Loading…</div>
              ) : visible.length === 0 ? (
                <div className="sc-empty">Nothing matches.</div>
              ) : (
                visible.map((entry) => (
                  <div
                    key={entry.id}
                    className="sc-row"
                    data-selected={entry.id === selectedId}
                    onClick={() => setSelectedId(entry.id)}
                    title={`${entry.commandCount} command(s)`}
                  >
                    <span className="sc-mono sc-faint" style={{ fontSize: 10, minWidth: 22 }}>
                      {String(entry.id).padStart(3, '0')}
                    </span>
                    <span className="sc-truncate" style={{ flex: 1 }}>
                      {entry.name || <span className="sc-faint">untitled</span>}
                    </span>
                    {entry.trigger > 0 && (
                      <span className="sc-badge" data-tone="cyan">
                        {COMMON_EVENT_TRIGGERS[entry.trigger]}
                      </span>
                    )}
                  </div>
                ))
              )}
            </div>
            <div className="sc-ce-listfoot">
              <button className="sc-btn" onClick={addEvent} disabled={events === null}>
                ＋ New
              </button>
            </div>
          </div>

          <div className="sc-ce-detail">
            {!selected ? (
              <div className="sc-empty">Select a common event.</div>
            ) : (
              <>
                <div className="sc-map-form-grid">
                  <label className="sc-field sc-map-span">
                    Name
                    <input
                      className="sc-input"
                      value={selected.name}
                      onChange={(e) => patch({ name: e.target.value })}
                    />
                  </label>
                  <label className="sc-field">
                    Trigger
                    <select
                      className="sc-select"
                      value={selected.trigger}
                      onChange={(e) => patch({ trigger: Number(e.target.value) })}
                    >
                      {COMMON_EVENT_TRIGGERS.map((label, value) => (
                        <option key={label} value={value}>{label}</option>
                      ))}
                    </select>
                  </label>
                  <label className="sc-field">
                    Switch
                    <input
                      className="sc-input sc-mono"
                      type="number"
                      min={1}
                      value={selected.switchId}
                      // Only meaningful for Autorun and Parallel; the engine
                      // ignores it otherwise, and greying it out makes that plain.
                      disabled={selected.trigger === 0}
                      onChange={(e) => patch({ switchId: Math.max(1, Number(e.target.value) || 1) })}
                    />
                  </label>
                  <div className="sc-field sc-ce-switchname">
                    <span className="sc-faint">
                      {selected.trigger === 0
                        ? 'No switch — this event only runs when something calls it.'
                        : switchLabel(selected.switchId) || 'unnamed switch'}
                    </span>
                  </div>
                </div>

                <div className="sc-ce-commands">
                  <div className="sc-panel-header">
                    <span>Commands</span>
                    <span className="sc-badge sc-mono">{selected.commandCount}</span>
                    <span style={{ flex: 1 }} />
                    <span className="sc-faint" style={{ textTransform: 'none', letterSpacing: 0 }}>
                      read-only here
                    </span>
                  </div>
                  <div className="sc-ce-scroll">
                    {lines.length === 0 ? (
                      <div className="sc-empty">No commands.</div>
                    ) : (
                      lines.map((line, index) => (
                        <div
                          key={index}
                          className="sc-ce-cmd sc-mono"
                          style={{ paddingLeft: 8 + line.indent * 14 }}
                        >
                          {line.text}
                        </div>
                      ))
                    )}
                  </div>
                </div>
              </>
            )}
          </div>
        </div>

        {error && <div className="sc-event-warning" data-severity="error">{error}</div>}

        <footer className="sc-modal-foot">
          <span className="sc-faint" style={{ flex: 1 }}>
            Writes Data/CommonEvents.rxdata, backing up the original once.
          </span>
          <button className="sc-btn" onClick={requestClose}>Close</button>
          <button className="sc-btn" data-active disabled={!dirty} onClick={save}>Save</button>
        </footer>
      </section>
    </div>
  );
}
