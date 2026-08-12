/**
 * Legend for the active tile-attribute overlay.
 *
 * A coloured overlay with no key is just decoration — the whole value of the
 * terrain checker is knowing that *this* shade of blue means DeepWater and not
 * StillWater. Only tags actually present on the map are listed, so the legend
 * stays short instead of enumerating all 18.
 */

import { useMemo } from 'react';
import { unpackTile } from '../../core/scmap/format';
import { terrainTag } from '../../core/scmap/terrain';
import { useEditor } from '../../state/store';

export function CheckerLegend(): React.JSX.Element | null {
  const { checker, docs, activeMapId, catalog } = useEditor();
  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;

  /** Terrain tags in use on this map, with a count each. */
  const tagsInUse = useMemo(() => {
    if (checker !== 'terrain' || !doc) return [];
    const counts = new Map<number, number>();
    for (let i = 0; i < doc.map.width * doc.map.height; i++) {
      let packed = 0;
      for (let l = doc.layerData.length - 1; l >= 0; l--) {
        const v = doc.layerData[l][i];
        if (v !== 0) {
          packed = v;
          break;
        }
      }
      if (packed === 0) continue;
      const { slot, id } = unpackTile(packed);
      const tilesetId = doc.map.tilesets[slot]?.tilesetId;
      const tileset = tilesetId === undefined ? undefined : catalog.get(tilesetId);
      const tag = tileset?.terrainTags[id] ?? 0;
      if (tag !== 0) counts.set(tag, (counts.get(tag) ?? 0) + 1);
    }
    return [...counts.entries()]
      .sort((a, b) => b[1] - a[1])
      .map(([id, count]) => ({ ...terrainTag(id), count }));
  }, [checker, doc, catalog]);

  if (checker === 'none' || !doc) return null;

  return (
    <div className="sc-legend">
      {checker === 'priority' && (
        <>
          <span className="sc-legend-title">Priority</span>
          <span className="sc-faint">how far above the player a tile draws</span>
          {[1, 2, 3, 4, 5].map((p) => (
            <span key={p} className="sc-legend-item">
              <i style={{ background: `hsl(${210 - p * 34}, 90%, 55%)` }} />
              {p}
            </span>
          ))}
        </>
      )}

      {checker === 'passage' && (
        <>
          <span className="sc-legend-title">Passage</span>
          <span className="sc-legend-item">
            <i style={{ background: 'rgba(255, 77, 100, 0.6)' }} />
            blocked all sides
          </span>
          <span className="sc-legend-item">
            <i style={{ background: 'rgba(255, 120, 90, 0.9)' }} />
            bar marks a blocked side
          </span>
        </>
      )}

      {checker === 'terrain' && (
        <>
          <span className="sc-legend-title">Terrain</span>
          {tagsInUse.length === 0 ? (
            <span className="sc-faint">No tagged tiles on this map.</span>
          ) : (
            tagsInUse.map((t) => (
              <span key={t.id} className="sc-legend-item" title={t.effect}>
                <i style={{ background: t.color }} />
                {t.name}
                <b className="sc-mono">{t.count}</b>
              </span>
            ))
          )}
        </>
      )}
    </div>
  );
}
