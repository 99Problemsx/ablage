/**
 * Map tree. Mirrors RPG Maker's parent/child hierarchy from MapInfos, with a
 * filter box, and highlights maps connected to the current selection so the
 * canvas overlay and the tree agree about what "neighbour" means.
 *
 * It is also where maps are created, renamed, reparented and deleted. Those live
 * here rather than only in the ribbon because the tree is where the author is
 * already looking when they think about the shape of the project — and because a
 * reparent is a statement about two rows, which a drag expresses and a form does
 * not.
 */

import { useEffect, useMemo, useRef, useState } from 'react';
import { buildMapTree, flattenTree, useEditor, type MapTreeItem } from '../../state/store';
import type { MapTreeChange } from '../../../electron/ipc';
import { NewMapDialog } from './MapDialogs';

/** Where a right-click opened the row menu. */
interface MenuState {
  x: number;
  y: number;
  id: number;
}

export function MapTree(): React.JSX.Element {
  const {
    project, activeMapId, selectMap, docs, catalog,
    createMap, duplicateMap, deleteMap, applyTreeChanges,
    newMapParentId, openNewMap, closeNewMap, log,
  } = useEditor();
  const [filter, setFilter] = useState('');
  const [menu, setMenu] = useState<MenuState | null>(null);
  const [renaming, setRenaming] = useState<number | null>(null);
  const [dragId, setDragId] = useState<number | null>(null);
  const [dropTarget, setDropTarget] = useState<number | null>(null);

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

  // ------------------------------------------------------------------ actions

  /** Siblings of `id`, in the order the tree draws them. */
  const siblingsOf = (id: number): MapTreeItem[] => {
    const node = flat.find((item) => item.id === id);
    if (!node) return [];
    return flat
      .filter((item) => item.parentId === node.parentId)
      .sort((a, b) => a.order - b.order || a.id - b.id);
  };

  /**
   * Swaps a map with the sibling above or below it.
   *
   * Orders are rewritten as a dense 0..n-1 sequence rather than swapping the two
   * values, because imported projects have duplicate and missing orders — a bare
   * swap on `order: 0, 0, 0` moves nothing.
   */
  const nudge = (id: number, direction: -1 | 1): void => {
    const siblings = siblingsOf(id);
    const index = siblings.findIndex((item) => item.id === id);
    const target = index + direction;
    if (index === -1 || target < 0 || target >= siblings.length) return;
    const reordered = [...siblings];
    [reordered[index], reordered[target]] = [reordered[target], reordered[index]];
    void applyTreeChanges(reordered.map((item, i) => ({ id: item.id, order: i })));
  };

  const reparent = (id: number, parentId: number): void => {
    if (id === parentId) return;
    const node = flat.find((item) => item.id === id);
    if (!node || node.parentId === parentId) return;
    const newSiblings = flat.filter((item) => item.parentId === parentId && item.id !== id);
    const order = newSiblings.reduce((max, item) => Math.max(max, item.order), -1) + 1;
    void applyTreeChanges([{ id, parentId, order }]);
  };

  const remove = (id: number): void => {
    const node = flat.find((item) => item.id === id);
    const children = flat.filter((item) => item.parentId === id).length;
    const doc = docs.get(id);
    const lines = [
      `Delete map ${id} — ${node?.name ?? 'untitled'}?`,
      '',
      'Data/SCMaps/MapNNN.json and Data/MapNNN.rxdata are moved to Data/SCMaps/.trash, and every connection to this map is removed.',
    ];
    if (children > 0) lines.push(`${children} child map(s) will move up to this map's parent.`);
    if (doc?.dirty) lines.push('This map has unsaved changes, which will be lost.');
    if (!window.confirm(lines.join('\n'))) return;
    void deleteMap(id);
  };

  const commitRename = (id: number, name: string): void => {
    setRenaming(null);
    const node = flat.find((item) => item.id === id);
    const trimmed = name.trim();
    if (!node || trimmed.length === 0 || trimmed === node.name) return;
    void applyTreeChanges([{ id, name: trimmed } satisfies MapTreeChange]);
  };

  // Close the row menu on any outside interaction.
  useEffect(() => {
    if (!menu) return;
    const close = (): void => setMenu(null);
    window.addEventListener('mousedown', close);
    window.addEventListener('keydown', close);
    return () => {
      window.removeEventListener('mousedown', close);
      window.removeEventListener('keydown', close);
    };
  }, [menu]);

  const menuNode = menu ? flat.find((item) => item.id === menu.id) : undefined;

  return (
    <div className="sc-panel sc-stack sc-fill">
      <div className="sc-panel-header">
        <span>Maps</span>
        <span className="sc-badge">{flat.length}</span>
        <span style={{ flex: 1 }} />
        <button
          className="sc-panel-action"
          title="New map at the top level"
          disabled={!project}
          onClick={() => openNewMap(0)}
        >
          ＋
        </button>
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
      <div
        className="sc-panel-body"
        // Dropping into the empty space below the tree means "no parent", which
        // is otherwise unreachable for a map nested several levels deep.
        onDragOver={(e) => {
          if (dragId !== null) {
            e.preventDefault();
            setDropTarget(0);
          }
        }}
        onDrop={(e) => {
          e.preventDefault();
          if (dragId !== null) reparent(dragId, 0);
          setDragId(null);
          setDropTarget(null);
        }}
        data-droproot={dropTarget === 0}
      >
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
                data-dropinto={dropTarget === item.id && dragId !== item.id}
                data-dragging={dragId === item.id}
                // Filtering flattens the tree, so a drag would land on a parent
                // the author cannot see. Disable it until the filter is cleared.
                draggable={renaming !== item.id && needle.length === 0}
                onDragStart={() => setDragId(item.id)}
                onDragEnd={() => {
                  setDragId(null);
                  setDropTarget(null);
                }}
                onDragOver={(e) => {
                  if (dragId === null || dragId === item.id) return;
                  e.preventDefault();
                  e.stopPropagation();
                  setDropTarget(item.id);
                }}
                onDrop={(e) => {
                  e.preventDefault();
                  e.stopPropagation();
                  if (dragId !== null) reparent(dragId, item.id);
                  setDragId(null);
                  setDropTarget(null);
                }}
                onClick={() => void selectMap(item.id)}
                onDoubleClick={() => setRenaming(item.id)}
                onContextMenu={(e) => {
                  e.preventDefault();
                  void selectMap(item.id);
                  setMenu({ x: e.clientX, y: e.clientY, id: item.id });
                }}
                title={`Map ${item.id} — ${item.width}×${item.height}`}
              >
                <span className="sc-mono sc-faint" style={{ fontSize: 10, minWidth: 24 }}>
                  {String(item.id).padStart(3, '0')}
                </span>
                {renaming === item.id ? (
                  <RenameInput
                    initial={item.name}
                    onCommit={(name) => commitRename(item.id, name)}
                    onCancel={() => setRenaming(null)}
                  />
                ) : (
                  <span className="sc-truncate" style={{ flex: 1 }}>
                    {item.name || <span className="sc-faint">untitled</span>}
                  </span>
                )}
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

      {menu && menuNode && (
        <div
          className="sc-menu"
          style={{ left: menu.x + 2, top: menu.y + 2 }}
          onMouseDown={(e) => e.stopPropagation()}
          onContextMenu={(e) => e.preventDefault()}
        >
          <div className="sc-menu-head sc-truncate">
            {String(menuNode.id).padStart(3, '0')} · {menuNode.name || 'untitled'}
          </div>
          <button className="sc-menu-item" onClick={() => { setMenu(null); openNewMap(0); }}>
            New map…
          </button>
          <button className="sc-menu-item" onClick={() => { setMenu(null); openNewMap(menuNode.id); }}>
            New child map…
          </button>
          <button className="sc-menu-item" onClick={() => { setMenu(null); void duplicateMap(menuNode.id); }}>
            Duplicate
          </button>
          <div className="sc-menu-sep" />
          <button className="sc-menu-item" onClick={() => { setMenu(null); setRenaming(menuNode.id); }}>
            Rename <span className="sc-menu-key">Double-click</span>
          </button>
          <button className="sc-menu-item" onClick={() => { setMenu(null); nudge(menuNode.id, -1); }}>
            Move up
          </button>
          <button className="sc-menu-item" onClick={() => { setMenu(null); nudge(menuNode.id, 1); }}>
            Move down
          </button>
          <button
            className="sc-menu-item"
            disabled={menuNode.parentId === 0}
            onClick={() => { setMenu(null); reparent(menuNode.id, 0); }}
          >
            Move to top level
          </button>
          <div className="sc-menu-sep" />
          <button className="sc-menu-item" onClick={() => { setMenu(null); remove(menuNode.id); }}>
            Delete… <span className="sc-menu-key">to .trash</span>
          </button>
        </div>
      )}

      {newMapParentId !== null && (
        <NewMapDialog
          maps={flat}
          tilesets={[...catalog.values()].sort((a, b) => a.id - b.id)}
          defaultParentId={newMapParentId}
          onClose={closeNewMap}
          onCreate={(request) => {
            if (catalog.size === 0) log('warn', 'No tileset catalogue loaded; the new map may reference a tileset that does not exist.');
            void createMap(request);
          }}
        />
      )}
    </div>
  );
}

/** Inline rename field. Commits on Enter or blur, reverts on Escape. */
function RenameInput({ initial, onCommit, onCancel }: { initial: string; onCommit: (name: string) => void; onCancel: () => void }): React.JSX.Element {
  const [value, setValue] = useState(initial);
  const cancelled = useRef(false);
  return (
    <input
      className="sc-input sc-rename"
      autoFocus
      value={value}
      spellCheck={false}
      onChange={(e) => setValue(e.target.value)}
      onClick={(e) => e.stopPropagation()}
      onDoubleClick={(e) => e.stopPropagation()}
      onBlur={() => { if (!cancelled.current) onCommit(value); }}
      onKeyDown={(e) => {
        e.stopPropagation();
        if (e.key === 'Enter') onCommit(value);
        else if (e.key === 'Escape') {
          cancelled.current = true;
          onCancel();
        }
      }}
    />
  );
}
