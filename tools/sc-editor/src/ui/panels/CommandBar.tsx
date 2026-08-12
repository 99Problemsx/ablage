/**
 * Bottom command bar, in the shape of a city-builder's build menu.
 *
 * Why this rather than a dense strip of text buttons: the editor's actions fall
 * into a handful of categories you switch between constantly (which layer am I
 * painting, which tool, which overlay). A city-builder solves exactly this with
 * a category rail plus a tray of large, colour-coded cards, and it works because
 * colour and size make the *current* choice unmissable from across the screen.
 *
 * The five map layers get saturated colours for the same reason zoning does:
 * they are the thing you switch most, and "am I on Canopy or Overlay?" should be
 * answerable without reading.
 */

import { useState } from 'react';
import { LAYER_COUNT } from '../../core/scmap/format';
import { useEditor, type CheckerMode, type Tool } from '../../state/store';

type Category = 'layers' | 'tools' | 'view' | 'check';

const CATEGORIES: Array<{ id: Category; glyph: string; label: string }> = [
  { id: 'layers', glyph: '▤', label: 'Layers' },
  { id: 'tools', glyph: '✎', label: 'Tools' },
  { id: 'view', glyph: '◎', label: 'View' },
  { id: 'check', glyph: '⚑', label: 'Checkers' },
];

/** One colour per layer, dark→light with depth, echoing the zoning metaphor. */
const LAYER_STYLE: Array<{ color: string; glyph: string }> = [
  { color: '#3fbf5f', glyph: '▓' }, // Ground
  { color: '#2fb6a8', glyph: '▒' }, // Decor
  { color: '#3d8ce0', glyph: '░' }, // Overlay
  { color: '#e0a42f', glyph: '▲' }, // Canopy
  { color: '#9d6bff', glyph: '☁' }, // Sky
];

const TOOL_CARDS: Array<{ id: Tool; glyph: string; label: string; key: string; color: string }> = [
  { id: 'pencil', glyph: '✏', label: 'Pencil', key: 'B', color: '#38e8ff' },
  { id: 'rect', glyph: '▭', label: 'Rectangle', key: 'R', color: '#38e8ff' },
  { id: 'fill', glyph: '◆', label: 'Fill', key: 'F', color: '#38e8ff' },
  { id: 'erase', glyph: '⌫', label: 'Erase', key: 'E', color: '#ff4d64' },
  { id: 'eyedropper', glyph: '⊙', label: 'Pick', key: 'I', color: '#7dff9b' },
  { id: 'select', glyph: '⬚', label: 'Select', key: 'S', color: '#9d6bff' },
  { id: 'event', glyph: '◈', label: 'Events', key: 'V', color: '#7dff9b' },
];

const CHECK_CARDS: Array<{ id: CheckerMode; glyph: string; label: string; key: string; color: string }> = [
  { id: 'priority', glyph: '⇕', label: 'Priority', key: 'P', color: '#ff8a4d' },
  { id: 'passage', glyph: '⊘', label: 'Passage', key: 'O', color: '#ff4d64' },
  { id: 'terrain', glyph: '⛰', label: 'Terrain', key: 'T', color: '#38b6ff' },
];

interface CardProps {
  active: boolean;
  color: string;
  glyph: string;
  label: string;
  sub?: string;
  badge?: string;
  onClick: () => void;
  title?: string;
}

function Card({ active, color, glyph, label, sub, badge, onClick, title }: CardProps): React.JSX.Element {
  return (
    <button
      className="sc-card"
      data-active={active}
      onClick={onClick}
      title={title ?? label}
      // The accent drives border, glow and glyph colour together, so a card reads
      // as one object rather than a box with a coloured icon in it.
      style={{ ['--card' as string]: color }}
    >
      <span className="sc-card-face">
        <span className="sc-card-glyph">{glyph}</span>
        {badge !== undefined && <span className="sc-card-badge">{badge}</span>}
      </span>
      <span className="sc-card-label">{label}</span>
      {sub && <span className="sc-card-sub">{sub}</span>}
    </button>
  );
}

export function CommandBar(): React.JSX.Element {
  const {
    tool, setTool, activeLayer, setActiveLayer, docs, activeMapId,
    setLayerVisible, showGrid, toggleGrid, showNeighbours, toggleNeighbours,
    showEvents, toggleEvents, animate, toggleAnimate, checker, setChecker,
  } = useEditor();

  const [category, setCategory] = useState<Category>('layers');
  const [open, setOpen] = useState(true);
  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;

  const painted = (index: number): number => {
    const buf = doc?.layerData[index];
    if (!buf) return 0;
    let n = 0;
    for (let i = 0; i < buf.length; i++) if (buf[i] !== 0) n++;
    return n;
  };

  return (
    <div className="sc-cmdbar">
      {open && (
        <div className="sc-tray">
          {category === 'layers' &&
            Array.from({ length: LAYER_COUNT }, (_, i) => {
              const layer = doc?.map.layers[i];
              const style = LAYER_STYLE[i];
              return (
                <Card
                  key={i}
                  active={activeLayer === i}
                  color={style.color}
                  glyph={style.glyph}
                  label={layer?.name ?? `Layer ${i + 1}`}
                  sub={doc ? `${painted(i)} tiles` : undefined}
                  badge={String(i + 1)}
                  title={`${layer?.name ?? ''} — ${layer?.role ?? ''} (${i + 1})`}
                  onClick={() => {
                    setActiveLayer(i);
                    // Painting onto a hidden layer looks like nothing happening,
                    // so selecting one makes it visible.
                    if (layer && !layer.visible) setLayerVisible(i, true);
                  }}
                />
              );
            })}

          {category === 'tools' &&
            TOOL_CARDS.map((t) => (
              <Card
                key={t.id}
                active={tool === t.id}
                color={t.color}
                glyph={t.glyph}
                label={t.label}
                badge={t.key}
                onClick={() => setTool(t.id)}
                title={`${t.label} (${t.key})`}
              />
            ))}

          {category === 'view' && (
            <>
              <Card active={showGrid} color="#8fa0bd" glyph="⊞" label="Grid" badge="G" onClick={toggleGrid} />
              <Card
                active={showNeighbours}
                color="#9d6bff"
                glyph="⧉"
                label="Neighbours"
                badge="N"
                onClick={toggleNeighbours}
                title="Show connected maps translucently (N)"
              />
              <Card active={showEvents} color="#7dff9b" glyph="◈" label="Events" onClick={toggleEvents} />
              <Card
                active={animate}
                color="#38b6ff"
                glyph="≈"
                label="Animate"
                onClick={toggleAnimate}
                title="Animate autotiles as they move in game"
              />
            </>
          )}

          {category === 'check' &&
            CHECK_CARDS.map((c) => (
              <Card
                key={c.id}
                active={checker === c.id}
                color={c.color}
                glyph={c.glyph}
                label={c.label}
                badge={c.key}
                onClick={() => setChecker(c.id)}
              />
            ))}
        </div>
      )}

      <div className="sc-catbar">
        {CATEGORIES.map((c) => (
          <button
            key={c.id}
            className="sc-cat"
            data-active={open && category === c.id}
            onClick={() => {
              // Tapping the open category collapses the tray, reclaiming the map.
              if (category === c.id && open) setOpen(false);
              else {
                setCategory(c.id);
                setOpen(true);
              }
            }}
            title={c.label}
          >
            <span className="sc-cat-glyph">{c.glyph}</span>
            <span className="sc-cat-label">{c.label}</span>
          </button>
        ))}
      </div>
    </div>
  );
}
