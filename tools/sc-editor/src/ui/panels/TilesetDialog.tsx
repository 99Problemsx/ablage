/**
 * Registering and editing a tileset.
 *
 * A tileset in RPG Maker XP is a graphic plus up to seven autotiles plus three
 * attribute tables. This dialog owns the first two; the attribute tables are
 * deliberately out of scope and the dialog says so, because editing 4400 tile
 * flags is its own tool and pretending otherwise would ship a half-answer that
 * looks complete.
 *
 * Both graphics pickers list what is already in the project and offer an Import
 * button that copies a file in. Without the import, "add a new tileset" would
 * still require leaving the editor to move a PNG by hand, which is most of the
 * chore this is supposed to remove.
 */

import { useEffect, useRef, useState } from 'react';
import { AUTOTILE_SLOTS } from '../../core/export/tilesets';
import type { SCTileset } from '../../core/scmap/format';
import type { NewTilesetRequest } from '../../../electron/ipc';

function useEscape(onClose: () => void): void {
  useEffect(() => {
    const handler = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') { event.preventDefault(); event.stopImmediatePropagation(); onClose(); }
    };
    window.addEventListener('keydown', handler, true);
    return () => window.removeEventListener('keydown', handler, true);
  }, [onClose]);
}

/** Draws a graphic scaled to fit, so a 512x8000 tileset is still recognisable. */
function GraphicPreview({ folder, name, height }: { folder: 'Tilesets' | 'Autotiles'; name: string; height: number }): React.JSX.Element {
  const canvasRef = useRef<HTMLCanvasElement | null>(null);
  const [missing, setMissing] = useState(false);

  useEffect(() => {
    let cancelled = false;
    const canvas = canvasRef.current;
    if (!canvas) return;
    const context = canvas.getContext('2d');
    if (!context) return;
    context.clearRect(0, 0, canvas.width, canvas.height);
    if (!name) { setMissing(false); return; }

    void (async () => {
      const loaded = await window.sc.image(folder, name);
      if (cancelled) return;
      if (!loaded) { setMissing(true); return; }
      setMissing(false);
      try {
        const copy = new Uint8Array(loaded.bytes.length);
        copy.set(loaded.bytes);
        const bitmap = await createImageBitmap(new Blob([copy.buffer]));
        if (cancelled) return;
        const scale = Math.min(canvas.width / bitmap.width, canvas.height / bitmap.height, 1);
        const w = Math.max(1, Math.round(bitmap.width * scale));
        const h = Math.max(1, Math.round(bitmap.height * scale));
        context.imageSmoothingEnabled = false;
        context.clearRect(0, 0, canvas.width, canvas.height);
        context.drawImage(bitmap, 0, 0, w, h);
        bitmap.close();
      } catch {
        setMissing(true);
      }
    })();
    return () => { cancelled = true; };
  }, [folder, name]);

  return (
    <div className="sc-tsd-preview" style={{ height }}>
      <canvas ref={canvasRef} width={220} height={height} />
      {missing && <span className="sc-tsd-missing">not found</span>}
      {!name && <span className="sc-faint">none</span>}
    </div>
  );
}

/** A graphic chooser: everything in the folder, plus an import route. */
function GraphicField({
  folder, value, onChange, onImported, label,
}: {
  folder: 'Tilesets' | 'Autotiles';
  value: string;
  onChange: (name: string) => void;
  onImported: () => void;
  label: string;
}): React.JSX.Element {
  const [names, setNames] = useState<string[]>([]);
  const [error, setError] = useState('');

  const refresh = (): void => {
    void window.sc.graphicsList(folder).then(setNames);
  };
  useEffect(refresh, [folder]);

  return (
    <label className="sc-field">
      {label}
      <div className="sc-tsd-row">
        <select className="sc-select" value={value} onChange={(e) => onChange(e.target.value)}>
          <option value="">(none)</option>
          {/* A graphic recorded in the catalogue but missing from disk must stay
              selectable, or opening this dialog would silently clear it. */}
          {value && !names.includes(value) && <option value={value}>{value} — missing</option>}
          {names.map((name) => <option key={name} value={name}>{name}</option>)}
        </select>
        <button
          className="sc-btn"
          title={`Copy an image into Graphics/${folder}`}
          onClick={() => {
            setError('');
            void window.sc.graphicsImport(folder)
              .then((imported) => {
                if (!imported) return;
                refresh();
                onChange(imported);
                onImported();
              })
              .catch((err: Error) => setError(err.message));
          }}
        >
          Import…
        </button>
      </div>
      {error && <div className="sc-event-warning" data-severity="error">{error}</div>}
    </label>
  );
}

export function TilesetDialog({
  tileset, onClose, onCreate, onSave,
}: {
  /** The tileset being edited, or null to register a new one. */
  tileset: SCTileset | null;
  onClose: () => void;
  onCreate: (request: NewTilesetRequest) => void;
  onSave: (tileset: SCTileset) => void;
}): React.JSX.Element {
  useEscape(onClose);
  const [name, setName] = useState(tileset?.name ?? 'New Tileset');
  const [graphic, setGraphic] = useState(tileset?.graphic ?? '');
  const [autotiles, setAutotiles] = useState<string[]>(() =>
    Array.from({ length: AUTOTILE_SLOTS }, (_, i) => tileset?.autotiles[i] ?? ''),
  );
  const [nonce, setNonce] = useState(0);

  const setAutotile = (index: number, value: string): void =>
    setAutotiles(autotiles.map((current, i) => (i === index ? value : current)));

  const apply = (): void => {
    const trimmed = name.trim();
    if (trimmed.length === 0 || graphic.length === 0) return;
    if (tileset) onSave({ ...tileset, name: trimmed, graphic, autotiles });
    else onCreate({ name: trimmed, graphic, autotiles });
    onClose();
  };

  return (
    <div className="sc-modal-scrim" style={{ zIndex: 70 }} onMouseDown={onClose}>
      <section className="sc-modal sc-map-dialog" role="dialog" aria-modal="true" onMouseDown={(e) => e.stopPropagation()}>
        <header className="sc-modal-head">
          <h2>{tileset ? `Tileset #${tileset.id} — ${tileset.name}` : 'New Tileset'}</h2>
          <button type="button" className="sc-modal-x" onClick={onClose}>×</button>
        </header>

        <div className="sc-map-dialog-body">
          <div className="sc-map-form-grid">
            <label className="sc-field sc-map-span">
              Name
              <input className="sc-input" autoFocus value={name} onChange={(e) => setName(e.target.value)} />
            </label>
          </div>

          <fieldset className="sc-fs">
            <legend>Tileset graphic</legend>
            <GraphicField
              folder="Tilesets"
              label="Graphics/Tilesets"
              value={graphic}
              onChange={setGraphic}
              onImported={() => setNonce((n) => n + 1)}
            />
            <GraphicPreview key={`g${nonce}`} folder="Tilesets" name={graphic} height={150} />
          </fieldset>

          <fieldset className="sc-fs">
            <legend>Autotiles</legend>
            <div className="sc-tsd-autotiles">
              {autotiles.map((autotile, index) => (
                <div key={index} className="sc-tsd-autotile">
                  <GraphicField
                    folder="Autotiles"
                    label={`Slot ${index + 1}`}
                    value={autotile}
                    onChange={(value) => setAutotile(index, value)}
                    onImported={() => setNonce((n) => n + 1)}
                  />
                  <GraphicPreview key={`a${index}-${nonce}`} folder="Autotiles" name={autotile} height={56} />
                </div>
              ))}
            </div>
          </fieldset>

          <div className="sc-map-resize-warning">
            {tileset
              ? 'Passability, priority and terrain tags are not edited here; they stay as they are. Set them in RPG Maker XP.'
              : 'Writes Data/SCMaps/tilesets.json and Data/Tilesets.rxdata, so the game and RPG Maker XP both see the new tileset. Every tile starts passable with priority 0 and terrain tag 0 — set those in RPG Maker XP.'}
          </div>
        </div>

        <footer className="sc-modal-foot">
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onClose}>Cancel</button>
          <button
            className="sc-btn"
            data-active
            disabled={name.trim().length === 0 || graphic.length === 0}
            title={graphic.length === 0 ? 'Pick a tileset graphic first' : undefined}
            onClick={apply}
          >
            {tileset ? 'Save' : 'Create'}
          </button>
        </footer>
      </section>
    </div>
  );
}
