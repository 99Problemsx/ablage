/**
 * Right-click menu on the map canvas.
 *
 * A right-click that turns into a drag copies a region into the brush; a
 * right-click that stays put opens this. That split is how RPG Maker XP behaves
 * and it means one button covers both "grab that piece of map" and "what can I
 * do here", without a modifier key.
 *
 * Actions are context-sensitive: the event entries only appear when an event
 * actually sits on the clicked tile.
 */

import { useEffect, useRef } from 'react';
import { TERRAIN_TAGS, terrainTag } from '../../core/scmap/terrain';
import { unpackTile } from '../../core/scmap/format';
import { useEditor } from '../../state/store';
import { decodeEvent } from '../../core/events/model';

interface Props {
  /** Position within the canvas, in CSS pixels. */
  x: number;
  y: number;
  tile: { x: number; y: number };
  onClose: () => void;
  undo: () => void;
  redo: () => void;
}

export function ContextMenu({ x, y, tile, onClose, undo, redo }: Props): React.JSX.Element | null {
  const ref = useRef<HTMLDivElement | null>(null);
  const {
    docs, activeMapId, catalog, activeLayer, selectEvent, setTool,
    createEvent, deleteEvent, copyEvent, pasteEvent, eventPreviewPages, setEventPreviewPage,
  } = useEditor();
  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;

  // Dismiss on any outside interaction, including Escape and scrolling away.
  useEffect(() => {
    const onDown = (e: MouseEvent): void => {
      if (ref.current && !ref.current.contains(e.target as Node)) onClose();
    };
    const onKey = (e: KeyboardEvent): void => {
      if (e.key === 'Escape') onClose();
    };
    window.addEventListener('mousedown', onDown);
    window.addEventListener('keydown', onKey);
    return () => {
      window.removeEventListener('mousedown', onDown);
      window.removeEventListener('keydown', onKey);
    };
  }, [onClose]);

  if (!doc) return null;

  const event = [...doc.map.events].reverse().find((candidate) => {
    const match = /(?:^|[, ]+)size\(\s*(\d+)\s*,\s*(\d+)\s*\)/i.exec(candidate.name);
    const w = Math.max(1, Number(match?.[1] ?? 1));
    const h = Math.max(1, Number(match?.[2] ?? 1));
    return tile.x >= candidate.x && tile.x < candidate.x + w && tile.y <= candidate.y && tile.y > candidate.y - h;
  });
  const decoded = event ? decodeEvent(event.raw) : null;
  const previewPage = event ? eventPreviewPages.get(`${doc.map.id}:${event.id}`) ?? 0 : 0;

  const packed = doc.layerData[activeLayer]?.[tile.y * doc.map.width + tile.x] ?? 0;
  const { slot, id } = unpackTile(packed);
  const tileset = catalog.get(doc.map.tilesets[slot]?.tilesetId ?? -1);
  const tag = tileset?.terrainTags[id] ?? 0;
  const priority = tileset?.priorities[id] ?? 0;
  const passage = tileset?.passages[id] ?? 0;

  const run = (fn: () => void) => () => {
    fn();
    onClose();
  };

  return (
    <div
      className="sc-menu"
      ref={ref}
      // Nudged so the menu opens away from the click rather than under the cursor.
      style={{ left: x + 2, top: y + 2 }}
      onContextMenu={(e) => e.preventDefault()}
    >
      <div className="sc-menu-head sc-mono">
        {tile.x}, {tile.y}
      </div>

      {event ? (
        <>
          <button
            className="sc-menu-item"
            onClick={run(() => {
              selectEvent(event.id);
              setTool('event');
            })}
          >
            Open event <span className="sc-faint">{event.name || `#${event.id}`}</span>
          </button>
          <button
            className="sc-menu-item"
            onClick={run(() => copyEvent(event.id))}
          >
            Copy event
          </button>
          <button
            className="sc-menu-item"
            onClick={run(() => deleteEvent(event.id))}
          >
            Delete event <span className="sc-menu-key">Undoable</span>
          </button>
          {(decoded?.pages.length ?? 0) > 1 && <>
            <div className="sc-menu-sep" />
            <div className="sc-menu-head">Map preview graphic</div>
            <div className="sc-menu-pages">
              {decoded?.pages.map((_, index) => <button key={index} className="sc-menu-page" data-active={previewPage === index} onClick={run(() => setEventPreviewPage(event.id, index))}>Page {index + 1}</button>)}
            </div>
          </>}
        </>
      ) : (
        <>
          <button className="sc-menu-item" onClick={run(() => { createEvent(tile.x, tile.y); })}>New event here…</button>
          <button className="sc-menu-item" onClick={run(() => { pasteEvent(tile.x, tile.y); })}>Paste event here</button>
        </>
      )}

      <div className="sc-menu-sep" />

      <button className="sc-menu-item" onClick={run(undo)}>
        Undo <span className="sc-menu-key">Ctrl+Z</span>
      </button>
      <button className="sc-menu-item" onClick={run(redo)}>
        Redo <span className="sc-menu-key">Ctrl+Shift+Z</span>
      </button>

      <div className="sc-menu-sep" />

      {/*
        Tile facts, so the common question "why can't I walk here" is answerable
        without switching overlay modes.
      */}
      <div className="sc-menu-info">
        {packed === 0 ? (
          <span className="sc-faint">Empty on this layer</span>
        ) : (
          <>
            <div>
              <span className="sc-faint">tile</span> slot {slot} · id {id}
            </div>
            <div>
              <span className="sc-faint">priority</span> {priority}
            </div>
            <div>
              <span className="sc-faint">passage</span>{' '}
              {passage === 0
                ? 'open'
                : passage === 0x0f
                  ? 'blocked'
                  : [
                      passage & 8 ? 'up' : '',
                      passage & 1 ? 'down' : '',
                      passage & 2 ? 'left' : '',
                      passage & 4 ? 'right' : '',
                    ]
                      .filter(Boolean)
                      .join(' ')}
            </div>
            <div>
              <span className="sc-faint">terrain</span>{' '}
              <span style={{ color: terrainTag(tag).color }}>
                {terrainTag(tag).name}
              </span>
              {tag !== 0 && TERRAIN_TAGS.some((t) => t.id === tag) && (
                <span className="sc-faint"> — {terrainTag(tag).effect}</span>
              )}
            </div>
          </>
        )}
      </div>
    </div>
  );
}
