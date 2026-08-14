/**
 * Tile attributes — passability, priority, terrain tag, bush and counter.
 *
 * This is what a tileset registered in the editor was missing. Until now a new
 * tileset came out fully walkable with priority 0 everywhere, and the only way
 * to fix that was to open RPG Maker XP — which rather defeats the point of
 * replacing it.
 *
 * The flags live in three sparse tables on the tileset, and two of them share
 * one: RMXP packs bush (0x40) and counter (0x80) into the passage byte alongside
 * the four direction bits. That is why the modes below edit the same record and
 * take care to preserve the bits they are not responsible for.
 *
 * Editing is direct manipulation on the tiles themselves rather than a property
 * grid: "which tiles block movement" is a question about a picture, and the
 * answer is only legible drawn on top of that picture.
 */

import { useEffect, useMemo, useRef, useState } from 'react';
import {
  AUTOTILE_BASE,
  REGULAR_TILE_BASE,
  TILE_SIZE,
  type SCTileset,
} from '../../core/scmap/format';
import { AUTOTILE_SLOTS, atlasCell, buildTileAtlas, type TileAtlas } from '../../render/atlas';
import { TERRAIN_TAGS, terrainTag } from '../../core/scmap/terrain';
import { useEditor } from '../../state/store';

/** RMXP's passage byte. The low nibble blocks movement, the high bits are flags. */
const BLOCK_DOWN = 0x01;
const BLOCK_LEFT = 0x02;
const BLOCK_RIGHT = 0x04;
const BLOCK_UP = 0x08;
const BLOCK_ALL = 0x0f;
const FLAG_BUSH = 0x40;
const FLAG_COUNTER = 0x80;

const MAX_PRIORITY = 5;

type Mode = 'passage' | 'directions' | 'priority' | 'bush' | 'counter' | 'terrain';

const MODES: Array<{ id: Mode; label: string; hint: string }> = [
  { id: 'passage', label: 'Passage', hint: 'Click a tile to block or open it entirely.' },
  { id: 'directions', label: 'Passage (4-way)', hint: 'Click an edge of a tile to block that direction.' },
  { id: 'priority', label: 'Priority', hint: 'Click to raise, right-click to lower. Above 0 the player walks behind the tile.' },
  { id: 'bush', label: 'Bush', hint: 'The player’s lower half is hidden, as in tall grass.' },
  { id: 'counter', label: 'Counter', hint: 'Events can be talked to across this tile, as over a shop counter.' },
  { id: 'terrain', label: 'Terrain tag', hint: 'Pick a tag below, then click tiles to apply it.' },
];

const CELL = 32;
const COLS = 8;

async function loadBitmap(folder: string, name: string): Promise<ImageBitmap | null> {
  if (!name) return null;
  const loaded = await window.sc.image(folder, name);
  if (!loaded) return null;
  try {
    const copy = new Uint8Array(loaded.bytes.length);
    copy.set(loaded.bytes);
    return await createImageBitmap(new Blob([copy.buffer]));
  } catch {
    return null;
  }
}

export function TilesetAttributes({
  tilesetId,
  onClose,
}: {
  tilesetId: number;
  onClose: () => void;
}): React.JSX.Element {
  const { catalog, updateTileset, log } = useEditor();
  const original = catalog.get(tilesetId);

  const [draft, setDraft] = useState<SCTileset | null>(() => (original ? { ...original } : null));
  const [mode, setMode] = useState<Mode>('passage');
  const [tag, setTag] = useState(1);
  const [atlas, setAtlas] = useState<TileAtlas | null>(null);
  const [dirty, setDirty] = useState(false);
  const canvasRef = useRef<HTMLCanvasElement | null>(null);

  useEffect(() => {
    const handler = (event: KeyboardEvent): void => {
      if (event.key !== 'Escape') return;
      event.preventDefault();
      event.stopImmediatePropagation();
      if (dirty && !window.confirm('Discard unsaved tile attributes?')) return;
      onClose();
    };
    window.addEventListener('keydown', handler, true);
    return () => window.removeEventListener('keydown', handler, true);
  });

  useEffect(() => {
    if (!draft) return;
    let cancelled = false;
    void (async () => {
      const graphic = await loadBitmap('Tilesets', draft.graphic);
      const autotiles = await Promise.all(draft.autotiles.map((n) => loadBitmap('Autotiles', n)));
      if (cancelled) return;
      setAtlas(buildTileAtlas({ tileset: graphic, autotiles }, 16384));
    })();
    return () => { cancelled = true; };
    // Only the graphics matter here; attribute edits must not rebuild the atlas.
  }, [draft?.graphic, draft?.autotiles]);

  /** Tile ids shown, autotiles first — the same order as the paint palette. */
  const entries = useMemo(() => {
    const list: number[] = [];
    if (!draft) return list;
    for (let i = 0; i < AUTOTILE_SLOTS; i++) {
      if (draft.autotiles[i]) list.push(AUTOTILE_BASE * (i + 1));
    }
    if (atlas) {
      for (let id = REGULAR_TILE_BASE; id < atlas.tileCount; id++) list.push(id);
    }
    return list;
  }, [draft, atlas]);

  const rows = Math.ceil(entries.length / COLS);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas || !draft) return;
    const dpr = window.devicePixelRatio || 1;
    const w = COLS * CELL;
    const h = Math.max(1, rows) * CELL;
    canvas.width = Math.round(w * dpr);
    canvas.height = Math.round(h * dpr);
    canvas.style.width = `${w}px`;
    canvas.style.height = `${h}px`;

    const ctx = canvas.getContext('2d');
    if (!ctx) return;
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.imageSmoothingEnabled = false;
    ctx.clearRect(0, 0, w, h);

    entries.forEach((id, index) => {
      const x = (index % COLS) * CELL;
      const y = Math.floor(index / COLS) * CELL;

      if (atlas) {
        const cell = atlasCell(atlas, id, 0);
        ctx.drawImage(
          atlas.canvas,
          (cell % atlas.cols) * TILE_SIZE,
          Math.floor(cell / atlas.cols) * TILE_SIZE,
          TILE_SIZE, TILE_SIZE, x, y, CELL, CELL,
        );
      }

      const passage = draft.passages[id] ?? 0;
      const priority = draft.priorities[id] ?? 0;
      const terrain = draft.terrainTags[id] ?? 0;

      // A dim wash under every overlay, so white marks stay readable on light art.
      const wash = (alpha: number): void => {
        ctx.fillStyle = `rgba(0, 0, 0, ${alpha})`;
        ctx.fillRect(x, y, CELL, CELL);
      };

      if (mode === 'passage') {
        if ((passage & BLOCK_ALL) === BLOCK_ALL) {
          wash(0.45);
          ctx.strokeStyle = '#ff5f6d';
          ctx.lineWidth = 2;
          ctx.beginPath();
          ctx.moveTo(x + 7, y + 7); ctx.lineTo(x + CELL - 7, y + CELL - 7);
          ctx.moveTo(x + CELL - 7, y + 7); ctx.lineTo(x + 7, y + CELL - 7);
          ctx.stroke();
        } else if ((passage & BLOCK_ALL) !== 0) {
          // Partially blocked in 4-way mode; shown so it is not mistaken for open.
          wash(0.25);
          ctx.fillStyle = '#ffb838';
          ctx.fillRect(x + CELL / 2 - 3, y + CELL / 2 - 3, 6, 6);
        }
      } else if (mode === 'directions') {
        wash(0.3);
        const bars: Array<[number, number, number, number, number]> = [
          [BLOCK_UP, x + 4, y + 2, CELL - 8, 4],
          [BLOCK_DOWN, x + 4, y + CELL - 6, CELL - 8, 4],
          [BLOCK_LEFT, x + 2, y + 4, 4, CELL - 8],
          [BLOCK_RIGHT, x + CELL - 6, y + 4, 4, CELL - 8],
        ];
        for (const [bit, bx, by, bw, bh] of bars) {
          ctx.fillStyle = (passage & bit) !== 0 ? '#ff5f6d' : 'rgba(255, 255, 255, 0.22)';
          ctx.fillRect(bx, by, bw, bh);
        }
      } else if (mode === 'priority') {
        if (priority > 0) {
          wash(0.4);
          ctx.fillStyle = '#e2653f';
          ctx.font = 'bold 15px monospace';
          ctx.textAlign = 'center';
          ctx.textBaseline = 'middle';
          ctx.fillText(String(priority), x + CELL / 2, y + CELL / 2);
        }
      } else if (mode === 'bush' || mode === 'counter') {
        const bit = mode === 'bush' ? FLAG_BUSH : FLAG_COUNTER;
        if ((passage & bit) !== 0) {
          wash(0.4);
          ctx.fillStyle = mode === 'bush' ? '#7dff9b' : '#38e8ff';
          ctx.font = 'bold 14px monospace';
          ctx.textAlign = 'center';
          ctx.textBaseline = 'middle';
          ctx.fillText(mode === 'bush' ? 'B' : 'C', x + CELL / 2, y + CELL / 2);
        }
      } else if (mode === 'terrain') {
        if (terrain > 0) {
          wash(0.4);
          ctx.fillStyle = terrainTag(terrain).color;
          ctx.font = 'bold 15px monospace';
          ctx.textAlign = 'center';
          ctx.textBaseline = 'middle';
          ctx.fillText(String(terrain), x + CELL / 2, y + CELL / 2);
        }
      }
    });

    ctx.strokeStyle = 'rgba(190, 205, 230, 0.14)';
    ctx.lineWidth = 1;
    ctx.beginPath();
    for (let c = 0; c <= COLS; c++) { ctx.moveTo(c * CELL + 0.5, 0); ctx.lineTo(c * CELL + 0.5, h); }
    for (let r = 0; r <= rows; r++) { ctx.moveTo(0, r * CELL + 0.5); ctx.lineTo(w, r * CELL + 0.5); }
    ctx.stroke();
  }, [atlas, entries, rows, draft, mode]);

  /** Applies an edit to one tile, writing 0 as "absent" to keep the record sparse. */
  const edit = (
    field: 'passages' | 'priorities' | 'terrainTags',
    id: number,
    value: number,
  ): void => {
    if (!draft) return;
    const next = { ...draft[field] };
    if (value === 0) delete next[id];
    else next[id] = value;
    setDraft({ ...draft, [field]: next });
    setDirty(true);
  };

  const click = (e: React.MouseEvent<HTMLCanvasElement>, secondary: boolean): void => {
    if (!draft) return;
    const bounds = e.currentTarget.getBoundingClientRect();
    const px = e.clientX - bounds.left;
    const py = e.clientY - bounds.top;
    const index = Math.floor(py / CELL) * COLS + Math.floor(px / CELL);
    const id = entries[index];
    if (id === undefined) return;

    const passage = draft.passages[id] ?? 0;
    switch (mode) {
      case 'passage': {
        // Flip the whole low nibble, leaving bush and counter untouched.
        const blocked = (passage & BLOCK_ALL) === BLOCK_ALL;
        edit('passages', id, (passage & ~BLOCK_ALL) | (blocked ? 0 : BLOCK_ALL));
        break;
      }
      case 'directions': {
        // Which edge of the cell was clicked decides the direction.
        const localX = px % CELL;
        const localY = py % CELL;
        const fromEdge = Math.min(localX, CELL - localX, localY, CELL - localY);
        let bit = BLOCK_UP;
        if (fromEdge === localY) bit = BLOCK_UP;
        else if (fromEdge === CELL - localY) bit = BLOCK_DOWN;
        else if (fromEdge === localX) bit = BLOCK_LEFT;
        else bit = BLOCK_RIGHT;
        edit('passages', id, passage ^ bit);
        break;
      }
      case 'priority': {
        const current = draft.priorities[id] ?? 0;
        const next = secondary
          ? (current + MAX_PRIORITY) % (MAX_PRIORITY + 1)
          : (current + 1) % (MAX_PRIORITY + 1);
        edit('priorities', id, next);
        break;
      }
      case 'bush':
        edit('passages', id, passage ^ FLAG_BUSH);
        break;
      case 'counter':
        edit('passages', id, passage ^ FLAG_COUNTER);
        break;
      case 'terrain': {
        const current = draft.terrainTags[id] ?? 0;
        edit('terrainTags', id, current === tag ? 0 : tag);
        break;
      }
    }
  };

  const save = (): void => {
    if (!draft) return;
    void updateTileset(draft);
    setDirty(false);
    log('info', `Tile attributes saved for "${draft.name}".`);
  };

  const hint = MODES.find((entry) => entry.id === mode)?.hint ?? '';

  return (
    <div className="sc-modal-scrim" style={{ zIndex: 72 }} onMouseDown={onClose}>
      <section
        className="sc-modal sc-ta-modal"
        role="dialog"
        aria-modal="true"
        onMouseDown={(e) => e.stopPropagation()}
      >
        <header className="sc-modal-head">
          <h2>
            Tile Attributes — {draft?.name ?? `#${tilesetId}`}
            {dirty && <span className="sc-rb-dirty" title="Unsaved changes" />}
          </h2>
          <button type="button" className="sc-modal-x" onClick={onClose}>×</button>
        </header>

        <div className="sc-ta-modes">
          {MODES.map((entry) => (
            <button
              key={entry.id}
              className="sc-btn"
              data-active={mode === entry.id}
              onClick={() => setMode(entry.id)}
            >
              {entry.label}
            </button>
          ))}
        </div>

        {mode === 'terrain' && (
          <div className="sc-ta-tags">
            {TERRAIN_TAGS.map((entry) => (
              <button
                key={entry.id}
                className="sc-btn sc-ta-tag"
                data-active={tag === entry.id}
                onClick={() => setTag(entry.id)}
                title={entry.effect}
              >
                <span className="sc-ta-swatch" style={{ background: entry.color }} />
                {entry.id} {entry.name}
              </button>
            ))}
          </div>
        )}

        <div className="sc-ta-hint">{hint}</div>

        <div className="sc-ta-grid">
          {!draft ? (
            <div className="sc-empty">Tileset #{tilesetId} is not in the catalogue.</div>
          ) : (
            <canvas
              ref={canvasRef}
              className="sc-palette-canvas"
              onClick={(e) => click(e, false)}
              onContextMenu={(e) => { e.preventDefault(); click(e, true); }}
            />
          )}
        </div>

        <footer className="sc-modal-foot">
          <span className="sc-faint" style={{ flex: 1 }}>
            Writes Data/SCMaps/tilesets.json and Data/Tilesets.rxdata.
          </span>
          <button className="sc-btn" onClick={onClose}>Close</button>
          <button className="sc-btn" data-active disabled={!dirty} onClick={save}>Save</button>
        </footer>
      </section>
    </div>
  );
}
