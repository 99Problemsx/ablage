/**
 * Debug console. Editor diagnostics and the game's own stdout/stderr in one
 * stream, because when a map change crashes the game you want both side by side.
 *
 * Game output arrives in arbitrary chunks, not lines, so it is buffered and split
 * on newlines before display — otherwise a single Ruby backtrace shows up as one
 * unreadable blob.
 */

import { useEffect, useLayoutEffect, useRef, useState } from 'react';
import { useEditor, type ConsoleLine } from '../../state/store';

const LEVEL_TONE: Record<ConsoleLine['level'], string> = {
  info: 'var(--sc-text-dim)',
  warn: 'var(--sc-amber)',
  error: 'var(--sc-red)',
  game: 'var(--sc-lime)',
};

export function ConsolePanel({ embedded = false }: { embedded?: boolean } = {}): React.JSX.Element {
  const { console: lines, log, clearConsole } = useEditor();
  const bodyRef = useRef<HTMLDivElement | null>(null);
  const [filter, setFilter] = useState<'all' | 'problems' | 'game'>('all');
  const [follow, setFollow] = useState(true);

  // Subscribe to game output once, and split partial chunks into whole lines.
  useEffect(() => {
    // Defensive: the panel is useful for reading editor logs even if the game
    // bridge is unavailable, so a missing API must not take the panel down.
    if (!window.sc?.game?.onLog) return;
    let pending = '';
    const unsubscribe = window.sc.game.onLog((line) => {
      pending += line.text;
      const parts = pending.split('\n');
      // The final element is either empty or an incomplete line; keep it buffered.
      pending = parts.pop() ?? '';
      for (const part of parts) {
        if (part.trim().length > 0) log(line.stream === 'stderr' ? 'error' : 'game', part);
      }
    });
    return unsubscribe;
  }, [log]);

  const visible = lines.filter((l) => {
    if (filter === 'problems') return l.level === 'warn' || l.level === 'error';
    if (filter === 'game') return l.level === 'game' || l.level === 'error';
    return true;
  });

  // Autoscroll only while the user is already at the bottom, so scrolling back to
  // read an error is not fought by incoming output.
  useLayoutEffect(() => {
    const body = bodyRef.current;
    if (body && follow) body.scrollTop = body.scrollHeight;
  }, [visible.length, follow]);

  const problems = lines.filter((l) => l.level === 'warn' || l.level === 'error').length;

  return (
    <div className={embedded ? "sc-stack sc-fill" : "sc-panel sc-stack sc-fill"}>
      <div className="sc-panel-header">
        {!embedded && <span>Console</span>}
        {problems > 0 && (
          <span className="sc-badge" data-tone="red">
            {problems}
          </span>
        )}
        <span style={{ flex: 1 }} />
        {(['all', 'problems', 'game'] as const).map((f) => (
          <button
            key={f}
            className="sc-btn"
            data-active={filter === f}
            onClick={() => setFilter(f)}
          >
            {f}
          </button>
        ))}
        <button
          className="sc-btn"
          data-active={follow}
          onClick={() => setFollow((v) => !v)}
          title="Follow new output"
        >
          follow
        </button>
        <button className="sc-btn" data-tone="danger" onClick={clearConsole}>
          clear
        </button>
      </div>
      <div
        className="sc-panel-body sc-console-body"
        ref={bodyRef}
        onScroll={(e) => {
          const el = e.currentTarget;
          // 24px of slack, so a near-bottom position still counts as following.
          const atBottom = el.scrollHeight - el.scrollTop - el.clientHeight < 24;
          if (atBottom !== follow) setFollow(atBottom);
        }}
      >
        {visible.length === 0 ? (
          <div className="sc-empty">Nothing logged yet.</div>
        ) : (
          visible.map((line) => (
            <div key={line.id} className="sc-console-line">
              <span className="sc-console-time">
                {new Date(line.at).toLocaleTimeString([], { hour12: false })}
              </span>
              <span className="sc-console-level" style={{ color: LEVEL_TONE[line.level] }}>
                {line.level}
              </span>
              <span className="sc-console-text" style={{ color: LEVEL_TONE[line.level] }}>
                {line.text}
              </span>
            </div>
          ))
        )}
      </div>
    </div>
  );
}
