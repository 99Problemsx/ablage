/**
 * Tileset palette — every tileset in the project, stacked vertically.
 *
 * The whole catalogue is listed, not just the ones already attached to the open
 * map. Painting is the point of the editor, and "attach this tileset to this map
 * before you may use a tile from it" is bookkeeping the author should never have
 * been asked to do. Clicking any tile in any tileset attaches it silently and
 * puts it on the brush, ready for any of the five layers.
 *
 * A stack rather than tabs: with two dozen tilesets, tabs hide exactly the thing
 * you are comparing, and picking a tile becomes "remember which tab the roof
 * tiles were on". One scroll surface with a filter keeps everything findable.
 *
 * Atlases are built lazily, when a section is first opened. Building all of them
 * up front would decode every tileset graphic in the project on map load, which
 * is seconds of work for art the author may never scroll to.
 */

import { useEffect, useMemo, useRef, useState } from 'react';
import {
  AUTOTILE_BASE,
  REGULAR_TILE_BASE,
  TILE_SIZE,
  unpackTile,
  type SCTileset,
} from '../../core/scmap/format';
import { AUTOTILE_SLOTS, atlasCell, buildTileAtlas, type TileAtlas } from '../../render/atlas';
import { useEditor } from '../../state/store';
import { TilesetDialog } from './TilesetDialog';
import { TilesetAttributes } from './TilesetAttributes';

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

/** On-screen size of one palette tile. */
const PALETTE_TILE = 32;
/** Columns shown in the palette, independent of the atlas's internal layout. */
const PALETTE_COLS = 8;

interface Cell {
  cx: number;
  cy: number;
}

interface SectionProps {
  tileset: SCTileset;
  /** Slot this tileset occupies on the open map, or -1 when not attached yet. */
  slot: number;
  selection: { slot: number; ids: number[]; w: number; h: number };
  open: boolean;
  onToggle: () => void;
  onPick: (tilesetId: number, tiles: number[], w: number, h: number) => void;
  onRemove: (slot: number) => void;
  onEdit: (tilesetId: number) => void;
  onAttributes: (tilesetId: number) => void;
}

function TilesetSection({
  tileset,
  slot,
  selection,
  open,
  onToggle,
  onPick,
  onRemove,
  onEdit,
  onAttributes,
}: SectionProps): React.JSX.Element {
  const canvasRef = useRef<HTMLCanvasElement | null>(null);
  const [atlas, setAtlas] = useState<TileAtlas | null>(null);
  const [missing, setMissing] = useState(false);
  /** In-progress rectangular selection, in palette cells. */
  const [drag, setDrag] = useState<{ from: Cell; to: Cell } | null>(null);

  useEffect(() => {
    // Nothing is decoded until the section is opened; a closed section costs a
    // header and nothing else.
    if (!open) return;
    let cancelled = false;
    void (async () => {
      const tilesetImage = await loadBitmap('Tilesets', tileset.graphic);
      const autotiles = await Promise.all(
        tileset.autotiles.map((n) => loadBitmap('Autotiles', n)),
      );
      if (cancelled) return;
      setMissing(!tilesetImage);
      // 2D canvas has no texture-size limit, but the layout must match what the
      // renderer builds or tile ids would resolve to different cells.
      setAtlas(buildTileAtlas({ tileset: tilesetImage, autotiles }, 16384));
    })();
    return () => {
      cancelled = true;
    };
  }, [tileset, open]);

  /**
   * Which ids to offer. Of an autotile's 48 variants only the fully-surrounded
   * one (base + 46) is worth painting with — the renderer recomputes the correct
   * variant per cell from its neighbours afterwards.
   */
  const entries = useMemo(() => {
    const list: number[] = [];
    for (let i = 0; i < AUTOTILE_SLOTS; i++) {
      if (tileset.autotiles[i]) list.push(AUTOTILE_BASE * (i + 1) + 46);
    }
    if (atlas) {
      for (let id = REGULAR_TILE_BASE; id < atlas.tileCount; id++) list.push(id);
    }
    return list;
  }, [tileset, atlas]);

  const rows = Math.ceil(entries.length / PALETTE_COLS);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas || !open) return;
    const dpr = window.devicePixelRatio || 1;
    const w = PALETTE_COLS * PALETTE_TILE;
    const h = Math.max(1, rows) * PALETTE_TILE;
    canvas.width = Math.round(w * dpr);
    canvas.height = Math.round(h * dpr);
    canvas.style.width = `${w}px`;
    canvas.style.height = `${h}px`;

    const ctx = canvas.getContext('2d');
    if (!ctx) return;
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.imageSmoothingEnabled = false;
    ctx.clearRect(0, 0, w, h);

    if (atlas) {
      for (let i = 0; i < entries.length; i++) {
        const cell = atlasCell(atlas, entries[i], 0);
        ctx.drawImage(
          atlas.canvas,
          (cell % atlas.cols) * TILE_SIZE,
          Math.floor(cell / atlas.cols) * TILE_SIZE,
          TILE_SIZE,
          TILE_SIZE,
          (i % PALETTE_COLS) * PALETTE_TILE,
          Math.floor(i / PALETTE_COLS) * PALETTE_TILE,
          PALETTE_TILE,
          PALETTE_TILE,
        );
      }
    }

    ctx.strokeStyle = 'rgba(140, 180, 240, 0.1)';
    ctx.lineWidth = 1;
    ctx.beginPath();
    for (let c = 0; c <= PALETTE_COLS; c++) {
      ctx.moveTo(c * PALETTE_TILE + 0.5, 0);
      ctx.lineTo(c * PALETTE_TILE + 0.5, h);
    }
    for (let r = 0; r <= rows; r++) {
      ctx.moveTo(0, r * PALETTE_TILE + 0.5);
      ctx.lineTo(w, r * PALETTE_TILE + 0.5);
    }
    ctx.stroke();

    // Mark autotile entries: they behave differently from ordinary tiles, and
    // nothing else on screen would tell you which of these eight are animated.
    const autotileCount = tileset.autotiles.filter(Boolean).length;
    for (let i = 0; i < autotileCount; i++) {
      const x = (i % PALETTE_COLS) * PALETTE_TILE;
      const y = Math.floor(i / PALETTE_COLS) * PALETTE_TILE;
      ctx.fillStyle = 'rgba(226, 101, 63, 0.9)';
      ctx.fillRect(x + 1, y + 1, 5, 5);
    }

    // The committed brush, outlined as the rectangle it is. Anchoring on the
    // first tile and drawing w x h from there matches how the brush was built,
    // so a 2x3 pick reads back as a 2x3 outline rather than six loose cells.
    const outline = (x0: number, y0: number, w0: number, h0: number, colour: string): void => {
      const x = x0 * PALETTE_TILE;
      const y = y0 * PALETTE_TILE;
      const width = w0 * PALETTE_TILE;
      const height = h0 * PALETTE_TILE;
      ctx.strokeStyle = 'rgba(226, 101, 63, 0.35)';
      ctx.lineWidth = 4;
      ctx.strokeRect(x + 1, y + 1, width - 2, height - 2);
      ctx.strokeStyle = colour;
      ctx.lineWidth = 2;
      ctx.strokeRect(x + 1, y + 1, width - 2, height - 2);
    };

    if (drag) {
      const x0 = Math.min(drag.from.cx, drag.to.cx);
      const y0 = Math.min(drag.from.cy, drag.to.cy);
      outline(
        x0,
        y0,
        Math.abs(drag.to.cx - drag.from.cx) + 1,
        Math.abs(drag.to.cy - drag.from.cy) + 1,
        '#ffffff',
      );
    } else if (slot >= 0 && selection.slot === slot && selection.ids.length > 0) {
      const index = entries.indexOf(selection.ids[0]);
      if (index >= 0) {
        outline(index % PALETTE_COLS, Math.floor(index / PALETTE_COLS), selection.w, selection.h, '#e2653f');
      }
    }
  }, [atlas, entries, rows, selection, slot, open, tileset, drag]);

  /** Palette cell under the pointer, clamped to the grid. */
  const cellAt = (e: React.MouseEvent<HTMLCanvasElement>): { cx: number; cy: number } => {
    const bounds = e.currentTarget.getBoundingClientRect();
    return {
      cx: Math.min(PALETTE_COLS - 1, Math.max(0, Math.floor((e.clientX - bounds.left) / PALETTE_TILE))),
      cy: Math.min(Math.max(0, rows - 1), Math.max(0, Math.floor((e.clientY - bounds.top) / PALETTE_TILE))),
    };
  };

  const handleDown = (e: React.MouseEvent<HTMLCanvasElement>): void => {
    if (e.button !== 0) return;
    e.preventDefault();
    const cell = cellAt(e);
    setDrag({ from: cell, to: cell });
  };

  const handleMove = (e: React.MouseEvent<HTMLCanvasElement>): void => {
    if (!drag) return;
    const cell = cellAt(e);
    if (cell.cx === drag.to.cx && cell.cy === drag.to.cy) return;
    setDrag({ from: drag.from, to: cell });
  };

  /**
   * Commits the dragged rectangle as the brush.
   *
   * The palette is eight columns wide and regular tile ids run row-major eight
   * per row, so a rectangle here is the same rectangle in the tileset graphic —
   * which is what makes dragging out a whole house or cliff edge work.
   */
  const handleUp = (): void => {
    if (!drag) return;
    const x0 = Math.min(drag.from.cx, drag.to.cx);
    const x1 = Math.max(drag.from.cx, drag.to.cx);
    const y0 = Math.min(drag.from.cy, drag.to.cy);
    const y1 = Math.max(drag.from.cy, drag.to.cy);
    setDrag(null);

    const tiles: number[] = [];
    for (let y = y0; y <= y1; y++) {
      for (let x = x0; x <= x1; x++) tiles.push(entries[y * PALETTE_COLS + x] ?? 0);
    }
    if (tiles.every((id) => id === 0)) return;
    onPick(tileset.id, tiles, x1 - x0 + 1, y1 - y0 + 1);
  };

  return (
    <section className="sc-ts-section" data-active={slot >= 0 && selection.slot === slot}>
      <header className="sc-ts-head" onClick={onToggle}>
        <span className="sc-ts-caret">{open ? '▾' : '▸'}</span>
        <span className="sc-ts-name sc-truncate" title={`Graphics/Tilesets/${tileset.graphic}`}>
          {tileset.name}
        </span>
        {missing && (
          <span className="sc-badge" data-tone="red" title={`Missing ${tileset.graphic}`}>
            missing
          </span>
        )}
        {/* "In use" is the fact worth showing; which slot number it landed in is
            not something the author ever needs to act on. */}
        {slot >= 0 && (
          <span className="sc-badge" data-tone="cyan" title={`Used by this map (slot ${slot})`}>
            in use
          </span>
        )}
        {open && <span className="sc-badge sc-mono">{entries.length}</span>}
        <button
          className="sc-btn sc-icon-btn"
          title="Passability, priority, terrain tags, bush and counter"
          onClick={(e) => {
            e.stopPropagation();
            onAttributes(tileset.id);
          }}
        >
          ⊘
        </button>
        <button
          className="sc-btn sc-icon-btn"
          title="Edit this tileset's graphic and autotiles"
          onClick={(e) => {
            e.stopPropagation();
            onEdit(tileset.id);
          }}
        >
          ⚙
        </button>
        {slot > 0 && (
          <button
            className="sc-btn sc-icon-btn"
            data-tone="danger"
            title="Detach from this map, clearing tiles that used it"
            onClick={(e) => {
              e.stopPropagation();
              onRemove(slot);
            }}
          >
            ×
          </button>
        )}
      </header>
      {open && (
        <div className="sc-ts-grid">
          <canvas
            className="sc-palette-canvas"
            ref={canvasRef}
            onMouseDown={handleDown}
            onMouseMove={handleMove}
            onMouseUp={handleUp}
            // A drag that ends outside the grid still commits what it covered,
            // rather than silently discarding the selection.
            onMouseLeave={handleUp}
            onDragStart={(e) => e.preventDefault()}
          />
        </div>
      )}
    </section>
  );
}

export function TilesetPalette(): React.JSX.Element {
  const {
    docs, activeMapId, catalog, brush, pickTiles, removeTileset,
    createTileset, updateTileset, activeLayer,
  } = useEditor();
  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;
  /** `'new'` registers a tileset; a number edits that catalogue entry. */
  const [editing, setEditing] = useState<'new' | number | null>(null);
  /** Tileset whose per-tile flags are being edited, or null. */
  const [attributes, setAttributes] = useState<number | null>(null);
  const [filter, setFilter] = useState('');
  const [opened, setOpened] = useState<Set<number>>(new Set());
  const [touched, setTouched] = useState(false);

  const slots = doc?.map.tilesets ?? [];
  const slotOf = useMemo(
    () => new Map(slots.map((entry, index) => [entry.tilesetId, index])),
    [slots],
  );

  /**
   * The brush, in palette terms. A stamp copied off the map has mixed slots and
   * will simply not match any single tileset, which is the correct outcome —
   * there is no one palette rectangle that produced it.
   */
  const selection = useMemo(() => {
    const first = unpackTile(brush.tiles[0] ?? 0);
    return {
      slot: first.slot,
      ids: brush.tiles.map((packed) => unpackTile(packed).id),
      w: brush.w,
      h: brush.h,
    };
  }, [brush]);

  /** Tilesets the map already uses come first, in slot order; then the rest. */
  const ordered = useMemo(() => {
    const all = [...catalog.values()];
    const attached = slots
      .map((entry) => all.find((t) => t.id === entry.tilesetId))
      .filter((t): t is SCTileset => t !== undefined);
    const rest = all
      .filter((t) => !slotOf.has(t.id))
      .sort((a, b) => a.name.localeCompare(b.name));
    return [...attached, ...rest];
  }, [catalog, slots, slotOf]);

  const needle = filter.trim().toLowerCase();
  const visible = needle
    ? ordered.filter(
        (t) => t.name.toLowerCase().includes(needle) || t.graphic.toLowerCase().includes(needle),
      )
    : ordered;

  /**
   * Until the author opens something themselves, the map's own tilesets are the
   * ones showing. Once they do, their choice stands — otherwise switching maps
   * would keep reopening sections they had just closed.
   */
  const isOpen = (id: number): boolean =>
    touched ? opened.has(id) : slotOf.has(id);

  const toggle = (id: number): void => {
    const next = new Set(touched ? opened : slots.map((entry) => entry.tilesetId));
    if (next.has(id)) next.delete(id);
    else next.add(id);
    setOpened(next);
    setTouched(true);
  };

  return (
    <div className="sc-panel sc-stack sc-fill">
      <div className="sc-panel-header">
        <span>Tiles</span>
        <span className="sc-badge">{catalog.size}</span>
        <span style={{ flex: 1 }} />
        <span className="sc-faint" title="Tiles you pick land on this layer">
          L{activeLayer + 1}
        </span>
        <button
          className="sc-btn"
          title="Register a new tileset from a graphic"
          onClick={() => setEditing('new')}
        >
          New…
        </button>
      </div>

      <div className="sc-tree-filter">
        <input
          className="sc-input"
          placeholder="Filter tilesets…"
          value={filter}
          onChange={(e) => setFilter(e.target.value)}
          spellCheck={false}
        />
      </div>

      <div className="sc-panel-body">
        {catalog.size === 0 ? (
          <div className="sc-empty">No tilesets in the project yet.</div>
        ) : visible.length === 0 ? (
          <div className="sc-empty">No tileset matches that filter.</div>
        ) : (
          visible.map((tileset) => (
            <TilesetSection
              key={tileset.id}
              tileset={tileset}
              slot={slotOf.get(tileset.id) ?? -1}
              selection={selection}
              open={isOpen(tileset.id)}
              onToggle={() => toggle(tileset.id)}
              onPick={pickTiles}
              onRemove={removeTileset}
              onEdit={setEditing}
              onAttributes={setAttributes}
            />
          ))
        )}
        {!doc && catalog.size > 0 && (
          <div className="sc-empty">Open a map to paint with these.</div>
        )}

        {/*
          Stated once, at the point it becomes true. RPG::Map holds a single
          @tileset_id, so tiles from the second tileset onward have nowhere to go
          in .rxdata. Painting with them is fine and the editor shows them
          correctly — they just do not reach the game yet.
        */}
        {slots.length > 1 && (
          <div className="sc-ts-caveat">
            <b>{slots.length} tilesets on this map.</b> The editor draws them all;
            the game currently shows only the first. Everything stays saved either way.
          </div>
        )}
      </div>

      {attributes !== null && (
        <TilesetAttributes tilesetId={attributes} onClose={() => setAttributes(null)} />
      )}

      {editing !== null && (
        <TilesetDialog
          tileset={editing === 'new' ? null : catalog.get(editing) ?? null}
          onClose={() => setEditing(null)}
          onCreate={(request) => void createTileset(request)}
          onSave={(tileset) => void updateTileset(tileset)}
        />
      )}
    </div>
  );
}
