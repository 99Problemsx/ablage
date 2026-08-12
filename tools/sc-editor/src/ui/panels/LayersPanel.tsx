/**
 * Layer stack. Five layers, listed top-down in draw order so the list matches
 * what the eye sees on the canvas — i.e. Sky first, Ground last.
 *
 * `role` is shown because it is what the runtime uses to decide whether a layer
 * draws above or below the player, and that is not guessable from the name.
 */

import { LAYER_COUNT } from '../../core/scmap/format';
import { useEditor } from '../../state/store';

const ROLE_HINT: Record<string, string> = {
  ground: 'Below everything',
  decor: 'Behind the player',
  overlay: 'Behind the player, above decor',
  canopy: 'Above the player',
  sky: 'Above all, ignores map lighting',
};

export function LayersPanel(): React.JSX.Element {
  const {
    docs, activeMapId, activeLayer, setActiveLayer,
    setLayerVisible, setLayerOpacity, setLayerLocked,
  } = useEditor();
  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;

  // Rendered top-down: the last layer draws on top, so it belongs at the top.
  const order = Array.from({ length: LAYER_COUNT }, (_, i) => LAYER_COUNT - 1 - i);

  return (
    <div className="sc-panel sc-stack">
      <div className="sc-panel-header">
        <span>Layers</span>
        <span style={{ flex: 1 }} />
        <span className="sc-badge" data-tone="violet">
          {LAYER_COUNT}
        </span>
      </div>
      <div className="sc-panel-body">
        {!doc ? (
          <div className="sc-empty">No map open.</div>
        ) : (
          order.map((index) => {
            const layer = doc.map.layers[index];
            if (!layer) return null;
            const painted = countPainted(doc.layerData[index]);
            return (
              <div
                key={index}
                className="sc-layer-row"
                data-selected={index === activeLayer}
                onClick={() => setActiveLayer(index)}
              >
                <div className="sc-spread">
                  <span className="sc-layer-name">
                    <span className="sc-mono sc-faint" style={{ fontSize: 10 }}>
                      {index + 1}
                    </span>
                    {layer.name}
                  </span>
                  <span className="sc-layer-actions">
                    <button
                      className="sc-btn sc-icon-btn"
                      title={layer.visible ? 'Hide layer' : 'Show layer'}
                      onClick={(e) => {
                        e.stopPropagation();
                        setLayerVisible(index, !layer.visible);
                      }}
                    >
                      {layer.visible ? '◉' : '○'}
                    </button>
                    <button
                      className="sc-btn sc-icon-btn"
                      title={layer.locked ? 'Unlock layer' : 'Lock layer'}
                      onClick={(e) => {
                        e.stopPropagation();
                        setLayerLocked(index, !layer.locked);
                      }}
                    >
                      {layer.locked ? '🔒' : '🔓'}
                    </button>
                  </span>
                </div>
                <div className="sc-layer-meta">
                  <span className="sc-faint">{ROLE_HINT[layer.role] ?? layer.role}</span>
                  <span className="sc-badge sc-mono">{painted}</span>
                </div>
                <input
                  className="sc-range"
                  type="range"
                  min={0}
                  max={100}
                  value={Math.round(layer.opacity * 100)}
                  onClick={(e) => e.stopPropagation()}
                  onChange={(e) => setLayerOpacity(index, Number(e.target.value) / 100)}
                  title={`Opacity ${Math.round(layer.opacity * 100)}%`}
                />
              </div>
            );
          })
        )}
      </div>
    </div>
  );
}

function countPainted(buffer: Int32Array | undefined): number {
  if (!buffer) return 0;
  let n = 0;
  for (let i = 0; i < buffer.length; i++) if (buffer[i] !== 0) n++;
  return n;
}
