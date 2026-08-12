/** RPG Maker XP's modal, three-page "Event Commands" window. */

import { useEffect, useRef, useState } from 'react';
import { COMMAND_PAGES, type PaletteEntry } from '../../core/events/palette';

interface Props {
  onPick: (entry: PaletteEntry) => void;
  onClose: () => void;
}

export function InsertCommandMenu({ onPick, onClose }: Props): React.JSX.Element {
  const [pageIndex, setPageIndex] = useState(0);
  const firstButton = useRef<HTMLButtonElement | null>(null);

  useEffect(() => {
    firstButton.current?.focus();
  }, [pageIndex]);

  useEffect(() => {
    const onKey = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') {
        event.preventDefault();
        event.stopImmediatePropagation();
        onClose();
      }
    };
    window.addEventListener('keydown', onKey, true);
    return () => window.removeEventListener('keydown', onKey, true);
  }, [onClose]);

  const page = COMMAND_PAGES[pageIndex];

  return (
    <div
      className="sc-command-scrim"
      onMouseDown={(event) => {
        event.stopPropagation();
        if (event.target === event.currentTarget) onClose();
      }}
    >
      <section
        className="sc-modal sc-command-dialog"
        role="dialog"
        aria-modal="true"
        aria-labelledby="sc-command-title"
        onMouseDown={(event) => event.stopPropagation()}
      >
        <header className="sc-modal-head">
          <h2 id="sc-command-title">Event Commands</h2>
          <button className="sc-modal-x" onClick={onClose} aria-label="Close">×</button>
        </header>

        <nav className="sc-command-tabs" aria-label="Command pages">
          {COMMAND_PAGES.map((candidate, index) => (
            <button
              key={candidate.name}
              className="sc-command-tab"
              data-active={index === pageIndex}
              aria-selected={index === pageIndex}
              role="tab"
              onClick={() => setPageIndex(index)}
            >
              {candidate.name}
            </button>
          ))}
        </nav>

        <div className="sc-command-grid" role="tabpanel" aria-label={page.name}>
          {page.entries.map((entry, index) => (
            <button
              key={entry.code}
              ref={index === 0 ? firstButton : undefined}
              className="sc-command-button"
              onClick={() => onPick(entry)}
              title={`Event command ${entry.code}`}
            >
              <span>{entry.label}</span>
              <span className="sc-command-code">{entry.code}</span>
            </button>
          ))}
        </div>

        <footer className="sc-modal-foot">
          <span className="sc-faint">Choose a command to insert it.</span>
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onClose}>Cancel</button>
        </footer>
      </section>
    </div>
  );
}
