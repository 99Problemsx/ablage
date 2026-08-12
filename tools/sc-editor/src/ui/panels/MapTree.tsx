/**
 * Map tree. Mirrors RPG Maker's parent/child hierarchy from MapInfos, with a
 * filter box, and highlights maps connected to the current selection so the
 * canvas overlay and the tree agree about what "neighbour" means.
 */

import { useMemo, useState } from 'react';
import { buildMapTree, flattenTree, useEditor } from '../../state/store';

export function MapTree(): React.JSX.Element {
  const { project, activeMapId, selectMap, docs } = useEditor();
  const [filter, setFilter] = useState('');

  const flat = useMemo(
    () => flattenTree(buildMapTree(project?.maps ?? [])),
    [project?.maps],
  );

  const connected = useMemo(() => {
    if (activeMapId === null) return new Set<number>();
    const doc = docs.get(activeMapId);
    if (doc) return new Set(doc.map.connections.map((c) => c.toMapId));
    // Before the map is opened, fall back to the summary the main process built.
    const node = project?.maps.find((m) => m.id === activeMapId);
    return new Set(node?.connectedTo ?? []);
  }, [activeMapId, docs, project?.maps]);

  const needle = filter.trim().toLowerCase();
  const visible = useMemo(() => {
    if (!needle) return flat;
    // While filtering, drop the indentation: a filtered list is not a tree.
    return flat
      .filter(
        (m) => m.name.toLowerCase().includes(needle) || String(m.id).includes(needle),
      )
      .map((m) => ({ ...m, depth: 0 }));
  }, [flat, needle]);

  return (
    <div className="sc-panel sc-stack sc-fill">
      <div className="sc-panel-header">
        <span>Maps</span>
        <span className="sc-badge">{flat.length}</span>
      </div>
      <div className="sc-tree-filter">
        <input
          className="sc-input"
          placeholder="Filter by name or id…"
          value={filter}
          onChange={(e) => setFilter(e.target.value)}
          spellCheck={false}
        />
      </div>
      <div className="sc-panel-body">
        {visible.length === 0 ? (
          <div className="sc-empty">
            {project ? 'No maps match that filter.' : 'No project open.'}
          </div>
        ) : (
          visible.map((item) => {
            const doc = docs.get(item.id);
            return (
              <div
                key={item.id}
                className="sc-row"
                style={{ paddingLeft: 9 + item.depth * 13 }}
                data-selected={item.id === activeMapId}
                data-linked={item.id !== activeMapId && connected.has(item.id)}
                onClick={() => void selectMap(item.id)}
                title={`Map ${item.id} — ${item.width}×${item.height}`}
              >
                <span className="sc-mono sc-faint" style={{ fontSize: 10, minWidth: 24 }}>
                  {String(item.id).padStart(3, '0')}
                </span>
                <span className="sc-truncate" style={{ flex: 1 }}>
                  {item.name || <span className="sc-faint">untitled</span>}
                </span>
                {doc?.dirty && <span className="sc-dot" title="Unsaved changes" />}
                {item.connectedTo.length > 0 && (
                  <span className="sc-badge" title={`${item.connectedTo.length} connections`}>
                    {item.connectedTo.length}
                  </span>
                )}
              </div>
            );
          })
        )}
      </div>
    </div>
  );
}
