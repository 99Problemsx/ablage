/**
 * Resize and shift a map.
 *
 * The old resize lived in Map Properties: it anchored top-left, silently dropped
 * anything outside the new bounds, and could not be undone. All three were
 * wrong. Growing a map southwards is the common case and needed the content
 * moved; dropping a corner of a town with no warning is unrecoverable; and a
 * destructive edit with no undo is one misclick away from an evening's work.
 *
 * The preview is the important part. Numbers alone do not answer "will my town
 * still be on the map", and the anchor pad only makes sense once you can see
 * what it does.
 */

import { useEffect, useMemo, useState } from 'react';
import type { SCMap } from '../../core/scmap/format';

type AnchorX = 'left' | 'center' | 'right';
type AnchorY = 'top' | 'middle' | 'bottom';

export interface ResizeRequest {
  width: number;
  height: number;
  shiftX: number;
  shiftY: number;
  wrap: boolean;
}

/** Shift implied by an anchor, i.e. where the old content sits in the new canvas. */
function anchorShift(anchor: AnchorX | AnchorY, oldSize: number, newSize: number): number {
  if (anchor === 'left' || anchor === 'top') return 0;
  if (anchor === 'right' || anchor === 'bottom') return newSize - oldSize;
  return Math.floor((newSize - oldSize) / 2);
}

export function MapResizeDialog({
  map,
  onClose,
  onApply,
}: {
  map: SCMap;
  onClose: () => void;
  onApply: (request: ResizeRequest) => void;
}): React.JSX.Element {
  const [width, setWidth] = useState(map.width);
  const [height, setHeight] = useState(map.height);
  const [anchorX, setAnchorX] = useState<AnchorX>('left');
  const [anchorY, setAnchorY] = useState<AnchorY>('top');
  const [wrap, setWrap] = useState(true);
  /** Set once the author edits a shift field, so the anchor stops overriding it. */
  const [manual, setManual] = useState(false);
  const [shiftX, setShiftX] = useState(0);
  const [shiftY, setShiftY] = useState(0);

  useEffect(() => {
    const handler = (event: KeyboardEvent): void => {
      if (event.key !== 'Escape') return;
      event.preventDefault();
      event.stopImmediatePropagation();
      onClose();
    };
    window.addEventListener('keydown', handler, true);
    return () => window.removeEventListener('keydown', handler, true);
  }, [onClose]);

  const clamp = (value: number): number => Math.max(1, Math.min(500, Math.round(value) || 1));

  const effective = useMemo(() => {
    if (manual) return { x: shiftX, y: shiftY };
    return {
      x: anchorShift(anchorX, map.width, width),
      y: anchorShift(anchorY, map.height, height),
    };
  }, [manual, shiftX, shiftY, anchorX, anchorY, map.width, map.height, width, height]);

  // How much of the old map ends up outside the new bounds, when not wrapping.
  const lost = useMemo(() => {
    if (wrap) return 0;
    const visibleW = Math.min(map.width, width - effective.x) - Math.max(0, -effective.x);
    const visibleH = Math.min(map.height, height - effective.y) - Math.max(0, -effective.y);
    const kept = Math.max(0, visibleW) * Math.max(0, visibleH);
    return map.width * map.height - kept;
  }, [wrap, map.width, map.height, width, height, effective]);

  // Preview scaled so both canvases fit a fixed box.
  const scale = Math.min(220 / Math.max(map.width, width), 150 / Math.max(map.height, height));
  const box = (w: number, h: number): { w: number; h: number } => ({ w: w * scale, h: h * scale });
  const newBox = box(width, height);
  const oldBox = box(map.width, map.height);

  return (
    <div className="sc-modal-scrim" style={{ zIndex: 70 }} onMouseDown={onClose}>
      <section
        className="sc-modal sc-map-dialog"
        role="dialog"
        aria-modal="true"
        onMouseDown={(e) => e.stopPropagation()}
      >
        <header className="sc-modal-head">
          <h2>Resize / Shift — {map.name}</h2>
          <button type="button" className="sc-modal-x" onClick={onClose}>×</button>
        </header>

        <div className="sc-map-dialog-body">
          <div className="sc-map-form-grid">
            <label className="sc-field">
              Width
              <input
                className="sc-input sc-mono"
                type="number"
                min={1}
                max={500}
                value={width}
                onChange={(e) => setWidth(clamp(Number(e.target.value)))}
              />
            </label>
            <label className="sc-field">
              Height
              <input
                className="sc-input sc-mono"
                type="number"
                min={1}
                max={500}
                value={height}
                onChange={(e) => setHeight(clamp(Number(e.target.value)))}
              />
            </label>
            <div className="sc-field">
              Currently
              <span className="sc-mono sc-faint">{map.width}×{map.height}</span>
            </div>
          </div>

          <fieldset className="sc-fs">
            <legend>Anchor</legend>
            <div className="sc-resize-row">
              <div className="sc-anchor-pad">
                {(['top', 'middle', 'bottom'] as AnchorY[]).map((ay) =>
                  (['left', 'center', 'right'] as AnchorX[]).map((ax) => (
                    <button
                      key={`${ay}-${ax}`}
                      className="sc-anchor-cell"
                      data-active={!manual && anchorX === ax && anchorY === ay}
                      title={`Anchor ${ay} ${ax}`}
                      onClick={() => {
                        setAnchorX(ax);
                        setAnchorY(ay);
                        setManual(false);
                      }}
                    />
                  )),
                )}
              </div>

              <div className="sc-resize-preview">
                <svg width={newBox.w + 2} height={newBox.h + 2}>
                  <rect
                    x={1} y={1} width={newBox.w} height={newBox.h}
                    fill="rgba(190, 205, 230, 0.06)"
                    stroke="var(--sc-edge-strong)"
                  />
                  <rect
                    x={1 + effective.x * scale}
                    y={1 + effective.y * scale}
                    width={oldBox.w}
                    height={oldBox.h}
                    fill="rgba(226, 101, 63, 0.28)"
                    stroke="var(--sc-accent)"
                  />
                </svg>
                <span className="sc-faint">Orange is your current content.</span>
              </div>

              <div className="sc-resize-shift">
                <label className="sc-field">
                  Shift X
                  <input
                    className="sc-input sc-mono"
                    type="number"
                    value={effective.x}
                    onChange={(e) => {
                      setManual(true);
                      setShiftX(Math.round(Number(e.target.value) || 0));
                      setShiftY(effective.y);
                    }}
                  />
                </label>
                <label className="sc-field">
                  Shift Y
                  <input
                    className="sc-input sc-mono"
                    type="number"
                    value={effective.y}
                    onChange={(e) => {
                      setManual(true);
                      setShiftY(Math.round(Number(e.target.value) || 0));
                      setShiftX(effective.x);
                    }}
                  />
                </label>
                <label className="sc-toggle-row">
                  <input
                    className="sc-checkbox"
                    type="checkbox"
                    checked={wrap}
                    onChange={(e) => setWrap(e.target.checked)}
                  />
                  Wrap around edges
                </label>
              </div>
            </div>
          </fieldset>

          <div className="sc-map-resize-warning">
            {wrap
              ? 'Wrap is on: content pushed past an edge reappears on the opposite side, so nothing is lost.'
              : lost > 0
                ? `Wrap is off: ${lost} tile position(s) of the current map fall outside the new bounds and their tiles will be dropped. Events and lights are moved inside instead of being deleted.`
                : 'Wrap is off, but everything still fits inside the new bounds.'}
            {' '}This is a single undo step — Ctrl+Z restores the old size and content.
          </div>
        </div>

        <footer className="sc-modal-foot">
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onClose}>Cancel</button>
          <button
            className="sc-btn"
            data-active
            onClick={() => {
              onApply({ width, height, shiftX: effective.x, shiftY: effective.y, wrap });
              onClose();
            }}
          >
            Resize
          </button>
        </footer>
      </section>
    </div>
  );
}
