/**
 * Switch/Variable picker — RPG Maker XP's own "Select Switch"/"Select Variable"
 * window. A bare number field tells the author nothing; RMXP always resolves
 * ids to names in a searchable list instead, and that is the whole reason a
 * project bothers naming its 500+ switches in the first place.
 */

import { useEffect, useMemo, useRef, useState } from 'react';

interface Props {
  kind: 'switch' | 'variable';
  names: string[];
  value: number;
  onCancel: () => void;
  onConfirm: (id: number) => void;
}

export function SwitchVariablePicker({ kind, names, value, onCancel, onConfirm }: Props): React.JSX.Element {
  const [filter, setFilter] = useState('');
  const [selected, setSelected] = useState(value);
  const listRef = useRef<HTMLDivElement | null>(null);
  const searchRef = useRef<HTMLInputElement | null>(null);

  const title = kind === 'switch' ? 'Select Switch' : 'Select Variable';

  const items = useMemo(() => {
    const count = Math.max(names.length, value + 1, 1);
    const all = Array.from({ length: count }, (_, id) => ({ id, name: names[id] ?? '' }));
    const needle = filter.trim().toLowerCase();
    if (!needle) return all;
    return all.filter(
      (it) => it.name.toLowerCase().includes(needle) || String(it.id).includes(needle),
    );
  }, [names, filter, value]);

  useEffect(() => {
    searchRef.current?.focus();
  }, []);

  // Keep the selected row in view when arrow-keying through a long list.
  useEffect(() => {
    const row = listRef.current?.querySelector<HTMLElement>('[data-row-selected="true"]');
    row?.scrollIntoView({ block: 'nearest' });
  }, [selected]);

  useEffect(() => {
    const onKey = (e: KeyboardEvent): void => {
      if (e.key === 'Escape') {
        onCancel();
        return;
      }
      if (e.key === 'Enter') {
        onConfirm(selected);
        return;
      }
      if (e.key === 'ArrowDown' || e.key === 'ArrowUp') {
        e.preventDefault();
        const idx = items.findIndex((it) => it.id === selected);
        const next = e.key === 'ArrowDown' ? Math.min(items.length - 1, idx + 1) : Math.max(0, idx - 1);
        if (items[next]) setSelected(items[next].id);
      }
    };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [items, selected, onCancel, onConfirm]);

  return (
    <div className="sc-modal-scrim" onMouseDown={onCancel} style={{ zIndex: 55 }}>
      <div className="sc-modal sc-svp" onMouseDown={(e) => e.stopPropagation()} role="dialog">
        <header className="sc-modal-head">
          <h2>{title}</h2>
          <button className="sc-modal-x" onClick={onCancel} aria-label="Close">
            ×
          </button>
        </header>

        <div className="sc-svp-search">
          <input
            ref={searchRef}
            className="sc-input"
            placeholder="Filter by name or number…"
            value={filter}
            onChange={(e) => setFilter(e.target.value)}
            spellCheck={false}
          />
        </div>

        <div className="sc-svp-list" ref={listRef}>
          {items.length === 0 ? (
            <div className="sc-empty">Nothing matches "{filter}".</div>
          ) : (
            items.map((it) => (
              <div
                key={it.id}
                className="sc-svp-row"
                data-row-selected={it.id === selected}
                onClick={() => setSelected(it.id)}
                onDoubleClick={() => onConfirm(it.id)}
              >
                <span className="sc-mono sc-svp-id">{String(it.id).padStart(4, '0')}</span>
                <span className={it.name ? '' : 'sc-faint'}>{it.name || '(unnamed)'}</span>
              </div>
            ))
          )}
        </div>

        <footer className="sc-modal-foot">
          <span className="sc-faint">Double-click an entry, or select it and press Enter.</span>
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onCancel}>
            Cancel
          </button>
          <button className="sc-btn" data-active onClick={() => onConfirm(selected)}>
            OK
          </button>
        </footer>
      </div>
    </div>
  );
}
