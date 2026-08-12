/**
 * Event graphic picker.
 *
 * An RMXP character sheet is a 4x4 grid: rows are facing directions
 * (down/left/right/up) and columns are walk-cycle patterns. Picking a graphic
 * therefore means picking a file *and* a cell, which is why this shows the whole
 * sheet and lets you click a frame rather than offering two numeric spinners.
 */

import { useEffect, useMemo, useRef, useState } from 'react';

/** RMXP character sheets are 4 columns (patterns) x 4 rows (directions). */
const SHEET_COLS = 4;
const SHEET_ROWS = 4;
/** Row index -> RMXP direction value. */
const ROW_DIRECTION = [2, 4, 6, 8];

export interface GraphicValue {
  characterName: string;
  direction: number;
  pattern: number;
  hue: number;
  opacity: number;
  blendType: number;
}

interface Props {
  value: GraphicValue;
  onCancel: () => void;
  onConfirm: (value: GraphicValue) => void;
}

export function GraphicPicker({ value, onCancel, onConfirm }: Props): React.JSX.Element {
  const [names, setNames] = useState<string[]>([]);
  const [filter, setFilter] = useState('');
  const [draft, setDraft] = useState<GraphicValue>(value);
  const [sheet, setSheet] = useState<ImageBitmap | null>(null);
  const canvasRef = useRef<HTMLCanvasElement | null>(null);

  useEffect(() => {
    void window.sc.graphicsList('Characters').then(setNames);
  }, []);

  useEffect(() => {
    const onKey = (e: KeyboardEvent): void => {
      if (e.key === 'Escape') onCancel();
    };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [onCancel]);

  // Load the selected sheet.
  useEffect(() => {
    let cancelled = false;
    if (!draft.characterName) {
      setSheet(null);
      return;
    }
    void (async () => {
      const loaded = await window.sc.image('Characters', draft.characterName);
      if (cancelled || !loaded) {
        if (!cancelled) setSheet(null);
        return;
      }
      const copy = new Uint8Array(loaded.bytes.length);
      copy.set(loaded.bytes);
      try {
        const bmp = await createImageBitmap(new Blob([copy.buffer]));
        if (!cancelled) setSheet(bmp);
      } catch {
        if (!cancelled) setSheet(null);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [draft.characterName]);

  const filtered = useMemo(() => {
    const needle = filter.trim().toLowerCase();
    const list = needle ? names.filter((n) => n.toLowerCase().includes(needle)) : names;
    return ['', ...list];
  }, [names, filter]);

  const frame = sheet
    ? { w: sheet.width / SHEET_COLS, h: sheet.height / SHEET_ROWS }
    : { w: 32, h: 48 };
  /** On-screen scale, capped so tiny sprites are still clickable. */
  const scale = Math.max(1, Math.min(4, Math.floor(320 / (frame.w * SHEET_COLS))));

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const w = frame.w * SHEET_COLS * scale;
    const h = frame.h * SHEET_ROWS * scale;
    const dpr = window.devicePixelRatio || 1;
    canvas.width = Math.round(w * dpr);
    canvas.height = Math.round(h * dpr);
    canvas.style.width = `${w}px`;
    canvas.style.height = `${h}px`;

    const ctx = canvas.getContext('2d');
    if (!ctx) return;
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.imageSmoothingEnabled = false;
    ctx.clearRect(0, 0, w, h);
    if (sheet) ctx.drawImage(sheet, 0, 0, w, h);

    ctx.strokeStyle = 'rgba(140, 180, 240, 0.16)';
    ctx.lineWidth = 1;
    for (let c = 1; c < SHEET_COLS; c++) {
      ctx.beginPath();
      ctx.moveTo(c * frame.w * scale + 0.5, 0);
      ctx.lineTo(c * frame.w * scale + 0.5, h);
      ctx.stroke();
    }
    for (let r = 1; r < SHEET_ROWS; r++) {
      ctx.beginPath();
      ctx.moveTo(0, r * frame.h * scale + 0.5);
      ctx.lineTo(w, r * frame.h * scale + 0.5);
      ctx.stroke();
    }

    const row = ROW_DIRECTION.indexOf(draft.direction);
    if (row >= 0) {
      ctx.strokeStyle = '#38e8ff';
      ctx.lineWidth = 2;
      ctx.strokeRect(
        draft.pattern * frame.w * scale + 1,
        row * frame.h * scale + 1,
        frame.w * scale - 2,
        frame.h * scale - 2,
      );
    }
  }, [sheet, draft.direction, draft.pattern, frame.w, frame.h, scale]);

  const pickCell = (e: React.MouseEvent<HTMLCanvasElement>): void => {
    const rect = e.currentTarget.getBoundingClientRect();
    const col = Math.floor((e.clientX - rect.left) / (frame.w * scale));
    const row = Math.floor((e.clientY - rect.top) / (frame.h * scale));
    if (col < 0 || col >= SHEET_COLS || row < 0 || row >= SHEET_ROWS) return;
    setDraft((d) => ({ ...d, pattern: col, direction: ROW_DIRECTION[row] }));
  };

  return (
    <div className="sc-modal-scrim" onMouseDown={onCancel} style={{ zIndex: 50 }}>
      <div className="sc-modal sc-gp" onMouseDown={(e) => e.stopPropagation()} role="dialog">
        <header className="sc-modal-head">
          <h2>Event graphic</h2>
          <button className="sc-modal-x" onClick={onCancel} aria-label="Close">
            ×
          </button>
        </header>

        <div className="sc-gp-body">
          <div className="sc-gp-list-wrap">
            <div className="sc-faint sc-mono" style={{ fontSize: 11, paddingBottom: 6 }}>
              Graphics/Characters/
            </div>
            <input
              className="sc-input"
              placeholder="Filter…"
              value={filter}
              onChange={(e) => setFilter(e.target.value)}
              spellCheck={false}
            />
            <div className="sc-gp-list">
              {filtered.map((name) => (
                <button
                  key={name || '(none)'}
                  className="sc-gp-item"
                  data-active={draft.characterName === name}
                  onClick={() => setDraft((d) => ({ ...d, characterName: name }))}
                >
                  {name || '(None)'}
                </button>
              ))}
            </div>
          </div>

          <div className="sc-gp-right">
            <div className="sc-gp-sheet">
              {draft.characterName && !sheet ? (
                <div className="sc-empty">
                  Could not load <span className="sc-mono">{draft.characterName}</span>.
                </div>
              ) : draft.characterName ? (
                <canvas ref={canvasRef} onClick={pickCell} className="sc-gp-canvas" />
              ) : (
                <div className="sc-empty">No graphic. The event will be invisible.</div>
              )}
            </div>
            <p className="sc-faint" style={{ fontSize: 11, margin: '8px 0 10px' }}>
              Click a cell to set direction (row) and pattern (column).
            </p>

            <label className="sc-field">
              Hue
              <input
                className="sc-range"
                type="range"
                min={0}
                max={359}
                value={draft.hue}
                onChange={(e) => setDraft((d) => ({ ...d, hue: Number(e.target.value) }))}
              />
              <span className="sc-mono sc-narrow">{draft.hue}</span>
            </label>
            <label className="sc-field">
              Opacity
              <input
                className="sc-range"
                type="range"
                min={0}
                max={255}
                value={draft.opacity}
                onChange={(e) => setDraft((d) => ({ ...d, opacity: Number(e.target.value) }))}
              />
              <span className="sc-mono sc-narrow">{draft.opacity}</span>
            </label>
            <label className="sc-field">
              Blend
              <select
                className="sc-select"
                value={draft.blendType}
                onChange={(e) => setDraft((d) => ({ ...d, blendType: Number(e.target.value) }))}
              >
                <option value={0}>Normal</option>
                <option value={1}>Add</option>
                <option value={2}>Subtract</option>
              </select>
            </label>
          </div>
        </div>

        <footer className="sc-modal-foot">
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onCancel}>
            Cancel
          </button>
          <button className="sc-btn" data-active onClick={() => onConfirm(draft)}>
            OK
          </button>
        </footer>
      </div>
    </div>
  );
}
