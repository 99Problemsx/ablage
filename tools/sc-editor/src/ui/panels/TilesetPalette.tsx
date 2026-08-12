/**
 * Tileset palette — every tileset the map uses, stacked vertically.
 *
 * Layout is deliberately a scrolling stack of `name → full tile grid` sections
 * rather than tabs. With several tilesets on one map, tabs hide exactly the thing
 * you are trying to compare, and picking a tile becomes "remember which tab the
 * roof tiles were on". A single scroll surface keeps everything findable.
 *
 * Each section renders from the same atlas the map canvas uses, so autotiles
 * preview as assembled tiles rather than raw quadrant source art.
 */

import { useEffect, useMemo, useRef, useState } from 'react';
import {
  AUTOTILE_BASE,
  REGULAR_TILE_BASE,
  TILE_SIZE,
  packTile,
  unpackTile,
  type SCTileset,
} from '../../core/scmap/format';
import { AUTOTILE_SLOTS, atlasCell, buildTileAtlas, type TileAtlas } from '../../render/atlas';
import { singleBrush, useEditor } from '../../state/store';

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

interface SectionProps {
  slot: number;
  tileset: SCTileset;
  selected: { slot: number; id: number };
  onPick: (slot: number, id: number) => void;
  onRemove: (slot: number) => void;
  removable: boolean;
}

function TilesetSection({
  slot,
  tileset,
  selected,
  onPick,
  onRemove,
  removable,
}: SectionProps): React.JSX.Element {
  const canvasRef = useRef<HTMLCanvasElement | null>(null);
  const [atlas, setAtlas] = useState<TileAtlas | null>(null);
  const [collapsed, setCollapsed] = useState(false);
  const [missing, setMissing] = useState(false);

  useEffect(() => {
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
  }, [tileset]);

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
    if (!canvas || collapsed) return;
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
      ctx.fillStyle = 'rgba(56, 232, 255, 0.85)';
      ctx.fillRect(x + 1, y + 1, 5, 5);
    }

    if (selected.slot === slot) {
      const index = entries.indexOf(selected.id);
      if (index >= 0) {
        const x = (index % PALETTE_COLS) * PALETTE_TILE;
        const y = Math.floor(index / PALETTE_COLS) * PALETTE_TILE;
        ctx.strokeStyle = 'rgba(56, 232, 255, 0.35)';
        ctx.lineWidth = 4;
        ctx.strokeRect(x + 1, y + 1, PALETTE_TILE - 2, PALETTE_TILE - 2);
        ctx.strokeStyle = '#38e8ff';
        ctx.lineWidth = 2;
        ctx.strokeRect(x + 1, y + 1, PALETTE_TILE - 2, PALETTE_TILE - 2);
      }
    }
  }, [atlas, entries, rows, selected, slot, collapsed, tileset]);

  const handleClick = (e: React.MouseEvent<HTMLCanvasElement>): void => {
    const rect = e.currentTarget.getBoundingClientRect();
    const cx = Math.floor((e.clientX - rect.left) / PALETTE_TILE);
    const cy = Math.floor((e.clientY - rect.top) / PALETTE_TILE);
    const id = entries[cy * PALETTE_COLS + cx];
    if (id !== undefined) onPick(slot, id);
  };

  return (
    <section className="sc-ts-section" data-active={selected.slot === slot}>
      <header className="sc-ts-head" onClick={() => setCollapsed((v) => !v)}>
        <span className="sc-ts-caret">{collapsed ? '▸' : '▾'}</span>
        <span className="sc-mono sc-faint" style={{ fontSize: 10 }}>
          {slot}
        </span>
        <span className="sc-ts-name sc-truncate" title={`Graphics/Tilesets/${tileset.graphic}`}>
          {tileset.name}
        </span>
        {missing && (
          <span className="sc-badge" data-tone="red" title={`Missing ${tileset.graphic}`}>
            missing
          </span>
        )}
        <span className="sc-badge sc-mono">{entries.length}</span>
        {removable && (
          <button
            className="sc-btn sc-icon-btn"
            data-tone="danger"
            title="Remove this tileset from the map"
            onClick={(e) => {
              e.stopPropagation();
              onRemove(slot);
            }}
          >
            ×
          </button>
        )}
      </header>
      {!collapsed && (
        <div className="sc-ts-grid">
          <canvas className="sc-palette-canvas" ref={canvasRef} onClick={handleClick} />
        </div>
      )}
    </section>
  );
}

export function TilesetPalette(): React.JSX.Element {
  const { docs, activeMapId, catalog, brush, setBrush, addTileset, removeTileset } = useEditor();
  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;
  const [adding, setAdding] = useState(false);

  const slots = doc?.map.tilesets ?? [];
  // Only a 1x1 brush corresponds to a palette entry; a copied region highlights nothing.
  const selected = brush.w === 1 && brush.h === 1 ? unpackTile(brush.tiles[0]) : { slot: -1, id: -1 };
  const used = new Set(slots.map((s) => s.tilesetId));
  const available = [...catalog.values()]
    .filter((t) => !used.has(t.id))
    .sort((a, b) => a.name.localeCompare(b.name));

  return (
    <div className="sc-panel sc-stack sc-fill">
      <div className="sc-panel-header">
        <span>Tilesets</span>
        <span style={{ flex: 1 }} />
        <span className="sc-badge">{slots.length}</span>
        <button
          className="sc-btn sc-icon-btn"
          title="Add a tileset to this map"
          disabled={!doc || available.length === 0}
          onClick={() => setAdding((v) => !v)}
          data-active={adding}
        >
          +
        </button>
      </div>

      {adding && (
        <div className="sc-ts-add">
          <select
            className="sc-select"
            defaultValue=""
            onChange={(e) => {
              const id = Number(e.target.value);
              if (Number.isFinite(id) && id > 0) {
                addTileset(id);
                setAdding(false);
              }
            }}
          >
            <option value="" disabled>
              Choose a tileset…
            </option>
            {available.map((t) => (
              <option key={t.id} value={t.id}>
                {t.name}
              </option>
            ))}
          </select>
        </div>
      )}

      <div className="sc-panel-body">
        {!doc ? (
          <div className="sc-empty">Open a map to see its tilesets.</div>
        ) : slots.length === 0 ? (
          <div className="sc-empty">This map has no tilesets.</div>
        ) : (
          slots.map((slot, i) => {
            const tileset = catalog.get(slot.tilesetId);
            if (!tileset) {
              return (
                <div key={`missing-${i}`} className="sc-empty">
                  Slot {i}: tileset #{slot.tilesetId} is not in the catalogue.
                </div>
              );
            }
            return (
              <TilesetSection
                key={`${slot.tilesetId}-${i}`}
                slot={i}
                tileset={tileset}
                selected={selected}
                onPick={(s, id) => setBrush(singleBrush(packTile(s, id)))}
                onRemove={removeTileset}
                // Slot 0 is the map's original tileset and holds the bulk of its
                // tiles; removing it would blank almost everything.
                removable={i > 0}
              />
            );
          })
        )}
      </div>
    </div>
  );
}
