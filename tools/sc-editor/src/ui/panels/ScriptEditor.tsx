import { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import * as monaco from 'monaco-editor';

type ScriptDoc = { text: string; savedText: string };

monaco.editor.defineTheme('sc-ruby', {
  base: 'vs-dark',
  inherit: true,
  rules: [
    { token: 'comment', foreground: '60758A', fontStyle: 'italic' },
    { token: 'keyword', foreground: '57D7FF' },
    { token: 'string', foreground: 'B8E986' },
    { token: 'number', foreground: 'FFB86C' },
  ],
  colors: {
    'editor.background': '#080D18',
    'editor.foreground': '#C8D8E8',
    'editorLineNumber.foreground': '#40536A',
    'editorLineNumber.activeForeground': '#38E8FF',
    'editorCursor.foreground': '#38E8FF',
    'editor.selectionBackground': '#17566F88',
    'editor.lineHighlightBackground': '#101A2A',
    'editorIndentGuide.background1': '#18273A',
    'editorIndentGuide.activeBackground1': '#365069',
  },
});

function basename(path: string): string {
  return path.slice(path.lastIndexOf('/') + 1);
}

function folder(path: string): string {
  const index = path.lastIndexOf('/');
  return index < 0 ? 'Root' : path.slice(0, index);
}

export function ScriptEditor({ onClose }: { onClose: () => void }): React.JSX.Element {
  const host = useRef<HTMLDivElement>(null);
  const editor = useRef<monaco.editor.IStandaloneCodeEditor | null>(null);
  const changeSubscription = useRef<monaco.IDisposable | null>(null);
  const docs = useRef(new Map<string, ScriptDoc>());
  const activeRef = useRef<string | null>(null);
  const [files, setFiles] = useState<string[]>([]);
  const [active, setActive] = useState<string | null>(null);
  const [filter, setFilter] = useState('');
  const [dirtyFiles, setDirtyFiles] = useState<Set<string>>(new Set());
  const [loading, setLoading] = useState(true);
  const [status, setStatus] = useState('Loading scripts…');

  const updateDirty = useCallback((path: string, text: string): void => {
    const doc = docs.current.get(path);
    if (!doc) return;
    doc.text = text;
    setDirtyFiles((previous) => {
      const next = new Set(previous);
      if (doc.text === doc.savedText) next.delete(path);
      else next.add(path);
      return next;
    });
  }, []);

  useEffect(() => {
    if (!host.current) return;
    const instance = monaco.editor.create(host.current, {
      value: '', language: 'ruby', theme: 'sc-ruby', automaticLayout: true,
      fontFamily: 'JetBrains Mono, Cascadia Code, monospace', fontSize: 13,
      lineHeight: 20, minimap: { enabled: true }, smoothScrolling: true,
      scrollBeyondLastLine: false, renderWhitespace: 'selection',
      bracketPairColorization: { enabled: true }, guides: { bracketPairs: true },
      padding: { top: 10, bottom: 10 }, tabSize: 2, insertSpaces: true,
    });
    editor.current = instance;
    instance.addCommand(monaco.KeyMod.CtrlCmd | monaco.KeyCode.KeyS, () => {
      const path = activeRef.current;
      if (!path) return;
      const text = instance.getValue();
      void window.sc.scripts.write(path, text).then(() => {
        const doc = docs.current.get(path);
        if (doc) doc.savedText = text;
        updateDirty(path, text);
        setStatus(`Saved ${path}`);
      }).catch((error: Error) => setStatus(error.message));
    });
    return () => { changeSubscription.current?.dispose(); instance.dispose(); };
  }, [updateDirty]);

  const openFile = useCallback(async (path: string): Promise<void> => {
    if (path === activeRef.current) return;
    setStatus(`Opening ${path}…`);
    try {
      let doc = docs.current.get(path);
      if (!doc) {
        const text = await window.sc.scripts.read(path);
        doc = { text, savedText: text };
        docs.current.set(path, doc);
      }
      changeSubscription.current?.dispose();
      activeRef.current = path;
      setActive(path);
      editor.current?.setValue(doc.text);
      changeSubscription.current = editor.current?.onDidChangeModelContent(() => {
        const current = activeRef.current;
        if (current && editor.current) updateDirty(current, editor.current.getValue());
      }) ?? null;
      editor.current?.setScrollPosition({ scrollTop: 0, scrollLeft: 0 });
      editor.current?.focus();
      setStatus(path);
    } catch (error) {
      setStatus((error as Error).message);
    }
  }, [updateDirty]);

  useEffect(() => {
    void window.sc.scripts.list().then((list) => {
      setFiles(list);
      setLoading(false);
      setStatus(`${list.length} Ruby scripts`);
      if (list.length) void openFile(list[0]);
    }).catch((error: Error) => { setLoading(false); setStatus(error.message); });
  }, [openFile]);

  const save = useCallback(async (): Promise<void> => {
    const path = activeRef.current;
    if (!path || !editor.current) return;
    const text = editor.current.getValue();
    try {
      await window.sc.scripts.write(path, text);
      const doc = docs.current.get(path);
      if (doc) doc.savedText = text;
      updateDirty(path, text);
      setStatus(`Saved ${path}`);
    } catch (error) { setStatus((error as Error).message); }
  }, [updateDirty]);

  const requestClose = useCallback((): void => {
    if (dirtyFiles.size && !window.confirm(`${dirtyFiles.size} script(s) have unsaved changes. Close anyway?`)) return;
    onClose();
  }, [dirtyFiles, onClose]);

  useEffect(() => {
    const key = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') { event.preventDefault(); requestClose(); }
      if ((event.ctrlKey || event.metaKey) && event.key.toLowerCase() === 's') {
        event.preventDefault(); event.stopPropagation(); void save();
      }
    };
    window.addEventListener('keydown', key, true);
    return () => window.removeEventListener('keydown', key, true);
  }, [requestClose, save]);

  const visible = useMemo(() => {
    const query = filter.trim().toLowerCase();
    return query ? files.filter((file) => file.toLowerCase().includes(query)) : files;
  }, [files, filter]);

  return (
    <div className="sc-modal-scrim sc-script-scrim" onMouseDown={requestClose}>
      <section className="sc-modal sc-script-dialog" role="dialog" aria-modal="true" onMouseDown={(e) => e.stopPropagation()}>
        <header className="sc-modal-head">
          <h2>Ruby Script Editor</h2>
          <span className="sc-script-path">Data/Scripts/{active ?? ''}{active && dirtyFiles.has(active) ? '  •' : ''}</span>
          <button className="sc-modal-x" onClick={requestClose}>×</button>
        </header>
        <div className="sc-script-layout">
          <aside className="sc-script-sidebar">
            <input className="sc-input" value={filter} onChange={(e) => setFilter(e.target.value)} placeholder="Filter scripts…" autoFocus />
            <div className="sc-script-count">{visible.length} of {files.length}</div>
            <div className="sc-script-files">
              {visible.map((file) => (
                <button key={file} data-active={file === active} onClick={() => void openFile(file)} title={file}>
                  <span className="sc-script-file-name">{dirtyFiles.has(file) && <i>●</i>}{basename(file)}</span>
                  <span>{folder(file)}</span>
                </button>
              ))}
              {!loading && !visible.length && <p className="sc-faint">No matching scripts.</p>}
            </div>
          </aside>
          <main className="sc-script-editor" ref={host} />
        </div>
        <footer className="sc-modal-foot">
          <span className="sc-faint">{status}</span><span style={{ flex: 1 }} />
          <span className="sc-faint">Ctrl+F search · Ctrl+H replace · Ctrl+S save</span>
          <button className="sc-btn" onClick={requestClose}>Close</button>
          <button className="sc-btn" data-active disabled={!active || !dirtyFiles.has(active)} onClick={() => void save()}>Save</button>
        </footer>
      </section>
    </div>
  );
}
