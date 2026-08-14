/**
 * The map viewport.
 *
 * Two stacked canvases: a WebGL one for tiles, and a 2D one above it for
 * overlays (grid, events, selection, neighbour labels). Splitting them means
 * overlay changes — which happen on every mouse move — never touch GPU buffers.
 */

import { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { TILE_SIZE, decodeLayers, unpackTile } from '../../core/scmap/format';
import { neighbourPixelOffset } from '../../core/scmap/connections';
import { terrainTag } from '../../core/scmap/terrain';
import { buildTileAtlas, type TilesetImages } from '../../render/atlas';
import { TilemapRenderer, type MapView } from '../../render/tilemap';
import { singleBrush, useEditor } from '../../state/store';
import { CheckerLegend } from './CheckerLegend';
import { ContextMenu } from './ContextMenu';
import { TRIGGERS, decodeEvent, ivar, makeDeref, pageNode, type EventCondition } from '../../core/events/model';
import { decodeMoveRoute, asNumber } from '../../core/events/moveRoute';

function eventFootprint(name: string): { w: number; h: number } {
  const match = /(?:^|[, ]+)size\(\s*(\d+)\s*,\s*(\d+)\s*\)/i.exec(name);
  return { w: Math.max(1, Number(match?.[1] ?? 1)), h: Math.max(1, Number(match?.[2] ?? 1)) };
}

function eventAt<T extends { event: { x: number; y: number; name: string } }>(events: T[], x: number, y: number): T | undefined {
  return [...events].reverse().find(({ event }) => {
    const size = eventFootprint(event.name);
    return x >= event.x && x < event.x + size.w && y <= event.y && y > event.y - size.h;
  });
}

function conditionText(condition: EventCondition): string {
  const parts: string[] = [];
  if (condition.switch1Valid) parts.push(`S${condition.switch1Id}`);
  if (condition.switch2Valid) parts.push(`S${condition.switch2Id}`);
  if (condition.variableValid) parts.push(`V${condition.variableId} ≥ ${condition.variableValue}`);
  if (condition.selfSwitchValid) parts.push(`Self ${condition.selfSwitchCh}`);
  return parts.join(' · ') || 'Always';
}

function tintAtHour(keys: Record<number, string>, hour: number): [number, number, number] {
  const entries = Object.entries(keys).map(([h, color]) => ({ h: Number(h), color })).filter(({ h, color }) => h >= 0 && h <= 23 && /^#[0-9a-f]{6}$/i.test(color)).sort((a, b) => a.h - b.h);
  if (entries.length === 0) return [255, 255, 255];
  if (entries.length === 1) { const n = Number.parseInt(entries[0].color.slice(1), 16); return [(n >> 16) & 255, (n >> 8) & 255, n & 255]; }
  const next = entries.find((entry) => entry.h >= hour) ?? entries[0];
  const nextIndex = entries.indexOf(next);
  const prev = entries[(nextIndex - 1 + entries.length) % entries.length];
  const span = (next.h - prev.h + 24) % 24 || 24;
  const t = ((hour - prev.h + 24) % 24) / span;
  const unpack = (color: string): [number, number, number] => { const n = Number.parseInt(color.slice(1), 16); return [(n >> 16) & 255, (n >> 8) & 255, n & 255]; };
  const a = unpack(prev.color); const b = unpack(next.color);
  return a.map((value, i) => Math.round(value + (b[i] - value) * t)) as [number, number, number];
}

function outdoorNightFactor(hour: number): number {
  // Full night 20:00-05:00, dawn 05:00-07:00, dusk 18:00-20:00.
  if (hour >= 20 || hour < 5) return 1;
  if (hour < 7) return 1 - (hour - 5) / 2;
  if (hour >= 18) return (hour - 18) / 2;
  return 0;
}

function simulatedEventPosition(event: { x: number; y: number; raw: unknown }, pageIndex: number, time: number, width: number, height: number): { x: number; y: number } {
  const node = pageNode(event.raw, pageIndex);
  const route = decodeMoveRoute(ivar(node, 'move_route'), makeDeref(event.raw as never));
  if (route.steps.length === 0) return event;
  const points: Array<{ x: number; y: number }> = [{ x: event.x, y: event.y }];
  let x = event.x; let y = event.y;
  const deltas: Record<number, [number, number]> = { 1: [0, 1], 2: [-1, 0], 3: [1, 0], 4: [0, -1], 5: [-1, 1], 6: [1, 1], 7: [-1, -1], 8: [1, -1] };
  for (const step of route.steps) {
    const delta = deltas[step.code];
    if (delta) { x += delta[0]; y += delta[1]; }
    else if (step.code === 14) { x += asNumber(step.params[0]); y += asNumber(step.params[1]); }
    else continue;
    x = Math.max(0, Math.min(width - 1, x)); y = Math.max(0, Math.min(height - 1, y)); points.push({ x, y });
  }
  if (points.length < 2) return event;
  const progress = (time * 2.5) % (route.repeat ? points.length : Math.max(1, points.length - 1));
  const index = Math.min(points.length - 1, Math.floor(progress)); const next = route.repeat ? (index + 1) % points.length : Math.min(points.length - 1, index + 1); const t = progress - Math.floor(progress);
  return { x: points[index].x + (points[next].x - points[index].x) * t, y: points[index].y + (points[next].y - points[index].y) * t };
}

/** Decodes a project graphic into an ImageBitmap, or null when absent. */
async function loadBitmap(folder: string, name: string): Promise<ImageBitmap | null> {
  if (!name) return null;
  const loaded = await window.sc.image(folder, name);
  if (!loaded) return null;
  try {
    // `bytes` arrives as a Uint8Array over IPC. Copy into a fresh ArrayBuffer:
    // the IPC-provided view may be backed by a non-transferable buffer.
    const copy = new Uint8Array(loaded.bytes.length);
    copy.set(loaded.bytes);
    return await createImageBitmap(new Blob([copy.buffer]));
  } catch {
    return null;
  }
}

export function MapCanvas(): React.JSX.Element {
  const glRef = useRef<HTMLCanvasElement | null>(null);
  const overlayRef = useRef<HTMLCanvasElement | null>(null);
  const wrapRef = useRef<HTMLDivElement | null>(null);
  const rendererRef = useRef<TilemapRenderer | null>(null);

  const {
    docs, activeMapId, catalog, zoom, setZoom, showGrid, showNeighbours,
    showEvents, activeLayer, brush, brushSize, tool, paint, log, setBrush, project,
    animate, checker, selectEvent, selectedEventId, selectedPage, copyRegion, undo, redo,
    showEventGraphics, showEventIds, showEventTriggers, eventPreviewPages, moveEvent,
    showLighting, lightingHour, selectedLightId, selectedLightIds, selectLight, addLight, updateLight, updateLighting, lightPlacementPreview,
    dimInactiveLayers,
  } = useEditor();

  const doc = activeMapId !== null ? docs.get(activeMapId) : undefined;

  const [camera, setCamera] = useState({ x: -64, y: -64 });
  const [hover, setHover] = useState<{ x: number; y: number } | null>(null);
  const [size, setSize] = useState({ w: 800, h: 600 });
  /** Bumped when a tileset finishes uploading, to trigger a redraw. */
  const [texturesReady, setTexturesReady] = useState(0);
  const [eventSheets, setEventSheets] = useState<Map<string, ImageBitmap>>(new Map());
  const [missingEventSheets, setMissingEventSheets] = useState<Set<string>>(new Set());
  const [eventDrag, setEventDrag] = useState<{ id: number; x: number; y: number } | null>(null);
  const [lightDrag, setLightDrag] = useState<{ id: string; x: number; y: number } | null>(null);
  const [lightHandle, setLightHandle] = useState<{ id: string; mode: 'radius' | 'angle' | 'spread'; value: number } | null>(null);
  /** Current autotile animation frame. */
  const [animFrame, setAnimFrame] = useState(0);
  const [lightTime, setLightTime] = useState(0);
  /** Live rectangle while right-dragging to copy a region. */
  const [copyRect, setCopyRect] = useState<{ x: number; y: number; w: number; h: number } | null>(
    null,
  );
  const [menu, setMenu] = useState<{ x: number; y: number; tile: { x: number; y: number } } | null>(
    null,
  );

  const eventPreviews = useMemo(() => {
    if (!doc) return [];
    return doc.map.events.map((event) => {
      const decoded = decodeEvent(event.raw);
      const pageIndex = event.id === selectedEventId
        ? Math.min(selectedPage, Math.max(0, (decoded?.pages.length ?? 1) - 1))
        : Math.min(eventPreviewPages.get(`${doc.map.id}:${event.id}`) ?? 0, Math.max(0, (decoded?.pages.length ?? 1) - 1));
      return { event, pageIndex, page: decoded?.pages[pageIndex], graphic: decoded?.pages[pageIndex]?.graphic };
    });
  }, [doc, selectedEventId, selectedPage, eventPreviewPages]);

  useEffect(() => {
    const names = [...new Set(eventPreviews.map(({ graphic }) => graphic?.characterName).filter((name): name is string => Boolean(name)))];
    const missing = names.filter((name) => !eventSheets.has(name) && !missingEventSheets.has(name));
    if (missing.length === 0) return;
    let cancelled = false;
    void (async () => {
      const loaded = await Promise.all(missing.map(async (name) => [name, await loadBitmap('Characters', name)] as const));
      if (cancelled) return;
      setEventSheets((current) => {
        const next = new Map(current);
        for (const [name, bitmap] of loaded) if (bitmap) next.set(name, bitmap);
        return next;
      });
      setMissingEventSheets((current) => {
        const next = new Set(current);
        for (const [name, bitmap] of loaded) if (!bitmap) next.add(name);
        return next;
      });
    })();
    return () => { cancelled = true; };
  }, [eventPreviews, eventSheets, missingEventSheets]);


  // ------------------------------------------------------------- neighbour docs

  /**
   * Neighbour maps are loaded on demand so the overlay works without the author
   * opening each one. They stay in the same doc cache, so selecting one is instant.
   */
  useEffect(() => {
    if (!doc || !showNeighbours) return;
    const missing = doc.map.connections
      .map((c) => c.toMapId)
      .filter((id) => !docs.has(id));
    if (missing.length === 0) return;

    let cancelled = false;
    void (async () => {
      for (const id of [...new Set(missing)]) {
        if (cancelled) return;
        // selectMap would steal focus; load straight into the cache instead.
        try {
          const map = await window.sc.map.load(id);
          if (cancelled) return;
          const next = new Map(useEditor.getState().docs);
          if (next.has(id)) continue;
          next.set(id, { map, layerData: decodeLayers(map), revision: 1, dirty: false });
          useEditor.setState({ docs: next });
        } catch {
          // A dangling connection is reported by the validator, not here.
        }
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [doc, docs, showNeighbours]);

  // --------------------------------------------------------------- gl lifecycle

  useEffect(() => {
    const canvas = glRef.current;
    if (!canvas) return;
    try {
      rendererRef.current = new TilemapRenderer(canvas);
    } catch (err) {
      // Read the action off the store rather than closing over it: keeping this
      // effect's dependency list empty is what guarantees the GL context is
      // created exactly once, for the lifetime of the mounted canvas.
      useEditor.getState().log('error', `Renderer init failed: ${(err as Error).message}`);
      return;
    }
    const renderer = rendererRef.current;
    return () => {
      renderer?.dispose();
      rendererRef.current = null;
    };
  }, []);

  // Upload atlases for every tileset the visible maps need.
  useEffect(() => {
    const renderer = rendererRef.current;
    if (!renderer || !doc) return;

    const needed = new Set<number>();
    for (const slot of doc.map.tilesets) needed.add(slot.tilesetId);
    for (const conn of doc.map.connections) {
      const other = docs.get(conn.toMapId);
      for (const slot of other?.map.tilesets ?? []) needed.add(slot.tilesetId);
    }

    let cancelled = false;
    void (async () => {
      for (const id of needed) {
        if (cancelled) return;
        if (renderer.hasTileset(id)) continue;
        const tileset = catalog.get(id);
        if (!tileset) {
          log('warn', `Tileset #${id} is not in the catalogue.`);
          continue;
        }
        const images: TilesetImages = {
          tileset: await loadBitmap('Tilesets', tileset.graphic),
          autotiles: await Promise.all(
            tileset.autotiles.map((name) => loadBitmap('Autotiles', name)),
          ),
        };
        if (cancelled) return;
        if (!images.tileset) {
          log('warn', `Missing graphic Graphics/Tilesets/${tileset.graphic} for "${tileset.name}".`);
        }
        const atlas = buildTileAtlas(images, renderer.maxTextureSize);
        if (!atlas) {
          log('error', `Tileset "${tileset.name}" is too large to render on this GPU.`);
          continue;
        }
        renderer.setTileset(id, atlas);
        setTexturesReady((n) => n + 1);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [doc, docs, catalog, log]);

  // --------------------------------------------------------------- animation

  /**
   * Advances autotile frames so water and fountains move as they do in game.
   *
   * Driven by an interval rather than requestAnimationFrame: the frame rate is a
   * fixed ~5fps (RGSS cycles autotiles far slower than the display), so rAF would
   * wake up 12x more often than needed just to discard most ticks.
   */
  useEffect(() => {
    const renderer = rendererRef.current;
    if (!renderer || !animate) return;
    const frames = renderer.animationFrames;
    // Nothing on screen animates, so do not run a timer at all.
    if (frames <= 1) return;
    const timer = window.setInterval(() => {
      setAnimFrame((f) => (f + 1) % frames);
    }, 200);
    return () => window.clearInterval(timer);
  }, [animate, texturesReady]);

  useEffect(() => {
    if (!animate || !showLighting || !doc?.map.lighting.enabled) return;
    const start = performance.now();
    // 30fps is visually fluid for flicker/pulse and avoids re-rendering the
    // entire React viewport at monitor refresh rates up to 240Hz.
    const timer = window.setInterval(() => setLightTime((performance.now() - start) / 1000), 1000 / 30);
    return () => window.clearInterval(timer);
  }, [animate, showLighting, doc?.map.id, doc?.map.lighting.enabled]);

  // ------------------------------------------------------------------ resizing

  useEffect(() => {
    const wrap = wrapRef.current;
    if (!wrap) return;
    const observer = new ResizeObserver(([entry]) => {
      const { width, height } = entry.contentRect;
      setSize({ w: Math.max(1, width), h: Math.max(1, height) });
    });
    observer.observe(wrap);
    return () => observer.disconnect();
  }, []);

  // -------------------------------------------------------------- view assembly

  /** The selected map plus its neighbours, positioned in world pixels. */
  const views = useMemo<MapView[]>(() => {
    if (!doc) return [];
    const self: MapView = {
      id: doc.map.id,
      width: doc.map.width,
      height: doc.map.height,
      tilesetIds: doc.map.tilesets.map((t) => t.tilesetId),
      layers: doc.layerData.map((tiles, i) => ({
        tiles,
        // Dimming only applies to the map being edited, never to neighbours —
        // those are already faded, and fading them twice makes them vanish.
        opacity:
          (doc.map.layers[i]?.opacity ?? 1) *
          // Enough to separate the active layer, not so much that the layers
          // below stop being usable as a reference for what you are drawing.
          (dimInactiveLayers && i !== activeLayer ? 0.5 : 1),
        visible: doc.map.layers[i]?.visible ?? true,
      })),
      originX: 0,
      originY: 0,
      alpha: 1,
      tint: [1, 1, 1, 0],
    };

    if (!showNeighbours) return [self];

    const neighbours: MapView[] = [];
    const seen = new Set<number>();
    for (const conn of doc.map.connections) {
      if (seen.has(conn.toMapId)) continue;
      const other = docs.get(conn.toMapId);
      if (!other) continue;
      seen.add(conn.toMapId);

      const offset = neighbourPixelOffset(
        conn,
        { width: doc.map.width, height: doc.map.height },
        { width: other.map.width, height: other.map.height },
      );
      neighbours.push({
        id: other.map.id,
        width: other.map.width,
        height: other.map.height,
        tilesetIds: other.map.tilesets.map((t) => t.tilesetId),
        layers: other.layerData.map((tiles, i) => ({
          tiles,
          opacity: other.map.layers[i]?.opacity ?? 1,
          visible: other.map.layers[i]?.visible ?? true,
        })),
        originX: offset.x,
        originY: offset.y,
        // Half-transparent and pushed toward violet, so a neighbour can never be
        // mistaken for the map you are editing.
        alpha: 0.42,
        tint: [0.62, 0.55, 1.0, 0.85],
      });
    }
    // Neighbours first: the selected map must composite on top.
    return [...neighbours, self];
  }, [doc, docs, showNeighbours, dimInactiveLayers, activeLayer]);

  const revisions = useMemo(() => {
    const map = new Map<number, number>();
    for (const view of views) map.set(view.id, docs.get(view.id)?.revision ?? 0);
    return map;
  }, [views, docs]);

  // ---------------------------------------------------------------- gl drawing

  useEffect(() => {
    const renderer = rendererRef.current;
    if (!renderer) return;
    const dpr = window.devicePixelRatio || 1;
    renderer.frame = animate ? animFrame : 0;
    renderer.resize(size.w, size.h, dpr);
    // Uniforms are in CSS pixels; the DPR scale is absorbed by the viewport.
    renderer.render(
      views,
      { scrollX: camera.x, scrollY: camera.y, zoom: zoom * dpr },
      revisions,
      size.w * dpr,
      size.h * dpr,
    );
  }, [views, revisions, camera, zoom, size, texturesReady, animFrame, animate]);

  // ----------------------------------------------------------- overlay drawing

  useEffect(() => {
    const canvas = overlayRef.current;
    if (!canvas || !doc) return;
    const dpr = window.devicePixelRatio || 1;
    canvas.width = Math.round(size.w * dpr);
    canvas.height = Math.round(size.h * dpr);
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.clearRect(0, 0, size.w, size.h);

    const toScreen = (wx: number, wy: number): [number, number] => [
      (wx - camera.x) * zoom,
      (wy - camera.y) * zoom,
    ];
    const mapW = doc.map.width * TILE_SIZE;
    const mapH = doc.map.height * TILE_SIZE;
    const outdoor = doc.map.metadata.outdoor === true;
    const inherentlyDark = doc.map.metadata.dark === true || doc.map.metadata.darkMap === true;
    const timeDarkness = outdoorNightFactor(lightingHour);
    const lightingPreviewEnabled = showLighting && (doc.map.lighting.enabled || outdoor || inherentlyDark);
    const previewDarkness = inherentlyDark
      ? Math.max(0.72, doc.map.lighting.ambient)
      : outdoor
        ? (doc.map.lighting.enabled ? doc.map.lighting.ambient : 0.72) * timeDarkness
        : doc.map.lighting.ambient;
    const previewEventPosition = (eventId: number): { x: number; y: number } | undefined => {
      const preview = eventPreviews.find(({ event }) => event.id === eventId);
      return preview ? simulatedEventPosition(preview.event, preview.pageIndex, animate ? lightTime : 0, doc.map.width, doc.map.height) : undefined;
    };

    // Runtime-like darkness mask and animated light contribution. Keeping this
    // in the overlay makes edits instant and uses the exact authored tile units.
    if (lightingPreviewEnabled) {
      const activeAt = (range?: [number, number]): boolean => !range || (range[0] <= range[1] ? lightingHour >= range[0] && lightingHour <= range[1] : lightingHour >= range[0] || lightingHour <= range[1]);
      const [mx, my] = toScreen(0, 0);
      ctx.save();
      ctx.fillStyle = `rgba(3,6,16,${Math.max(0, Math.min(1, previewDarkness))})`;
      ctx.fillRect(mx, my, mapW * zoom, mapH * zoom);
      const tint = tintAtHour(doc.map.lighting.tintByHour, lightingHour);
      if (tint[0] !== 255 || tint[1] !== 255 || tint[2] !== 255) {
        const tintStrength = Math.max(255 - tint[0], 255 - tint[1], 255 - tint[2]) / 255;
        ctx.fillStyle = `rgba(${tint[0]},${tint[1]},${tint[2]},${Math.min(0.38, tintStrength * 0.45)})`;
        ctx.fillRect(mx, my, mapW * zoom, mapH * zoom);
      }
      const layerOrder = { ground: 0, character: 1, overhead: 2 } as const;
      for (const light of [...doc.map.lighting.lights, ...lightPlacementPreview].sort((a, b) => layerOrder[a.layer ?? 'character'] - layerOrder[b.layer ?? 'character'])) {
        if (light.enabled === false) continue;
        if (!activeAt(light.activeHours)) continue;
        const speed = light.animationSpeed ?? 1;
        const wave = Math.sin(lightTime * Math.PI * 2 * speed + light.id.length) * (light.pulse ?? 0);
        const noise = Math.sin(lightTime * 19.17 * speed + light.x * 7.1 + light.y * 3.7) * light.flicker;
        const energy = Math.max(0.05, light.intensity * (1 + wave + noise * 0.45));
        const followed = light.eventId ? previewEventPosition(light.eventId) : undefined;
        const lightX = followed?.x ?? light.x; const lightY = followed?.y ?? light.y;
        const [cx, cy] = toScreen((lightX + 0.5) * TILE_SIZE, (lightY + 0.5) * TILE_SIZE);
        const authoredRadius = lightHandle?.id === light.id && lightHandle.mode === 'radius' ? lightHandle.value : light.radius;
        const radius = Math.max(2, authoredRadius * TILE_SIZE * zoom * Math.max(0.25, 1 + wave + noise * 0.18));
        ctx.save();
        ctx.globalCompositeOperation = 'destination-out';
        if ((light.type ?? 'circle') === 'rect') {
          const w = (light.width ?? 2) * TILE_SIZE * zoom;
          const h = (light.height ?? 1) * TILE_SIZE * zoom;
          ctx.filter = `blur(${Math.max(2, 10 * zoom)}px)`;
          ctx.globalAlpha = Math.min(1, energy);
          ctx.fillStyle = '#fff'; ctx.fillRect(cx - w / 2, cy - h / 2, w, h);
        } else {
          ctx.beginPath();
          if (light.type === 'cone') {
            const angle = (light.angle ?? 0) * Math.PI / 180;
            const spread = (light.spread ?? 60) * Math.PI / 360;
            ctx.moveTo(cx, cy); ctx.arc(cx, cy, radius, angle - spread, angle + spread); ctx.closePath(); ctx.clip();
          }
          const hole = ctx.createRadialGradient(cx, cy, 0, cx, cy, radius);
          hole.addColorStop(0, `rgba(255,255,255,${Math.min(1, energy)})`); hole.addColorStop(0.58, `rgba(255,255,255,${Math.min(0.9, energy * 0.82)})`); hole.addColorStop(1, 'rgba(255,255,255,0)');
          ctx.fillStyle = hole; ctx.fillRect(cx - radius, cy - radius, radius * 2, radius * 2);
        }
        ctx.restore();
        ctx.save();
        ctx.globalCompositeOperation = light.blend === 'multiply' ? 'multiply' : light.blend === 'subtractive' ? 'source-over' : 'lighter';
        ctx.globalAlpha = Math.min(0.42, energy * 0.28);
        const contributionColor = light.blend === 'subtractive' ? '#05070d' : light.color;
        if ((light.type ?? 'circle') === 'rect') {
          const w = (light.width ?? 2) * TILE_SIZE * zoom; const h = (light.height ?? 1) * TILE_SIZE * zoom;
          ctx.shadowBlur = Math.max(4, 14 * zoom); ctx.shadowColor = contributionColor; ctx.fillStyle = contributionColor; ctx.fillRect(cx - w / 2, cy - h / 2, w, h);
        } else {
          if (light.type === 'cone') { const angle = (light.angle ?? 0) * Math.PI / 180; const spread = (light.spread ?? 60) * Math.PI / 360; ctx.beginPath(); ctx.moveTo(cx, cy); ctx.arc(cx, cy, radius, angle - spread, angle + spread); ctx.closePath(); ctx.clip(); }
          const glow = ctx.createRadialGradient(cx, cy, 0, cx, cy, radius); glow.addColorStop(0, contributionColor); glow.addColorStop(1, 'transparent'); ctx.fillStyle = glow; ctx.fillRect(cx - radius, cy - radius, radius * 2, radius * 2);
        }
        ctx.restore();
      }
      ctx.restore();
    }

    // Approximate runtime priority occlusion: roofs/trees with priority > 0
    // re-darken their tile footprint so authored lights visibly pass behind them.
    if (lightingPreviewEnabled && previewDarkness > 0.01) {
      const step = TILE_SIZE * zoom;
      ctx.fillStyle = 'rgba(2,4,10,0.32)';
      const occludingLights = doc.map.lighting.lights.filter((light) => light.enabled !== false && light.occlude !== false && light.layer !== 'overhead');
      for (let y = 0; y < doc.map.height; y++) for (let x = 0; x < doc.map.width; x++) {
        let packed = 0;
        for (let z = doc.layerData.length - 1; z >= 0; z--) { packed = doc.layerData[z][y * doc.map.width + x]; if (packed) break; }
        if (!packed) continue;
        const tile = unpackTile(packed); const tileset = catalog.get(doc.map.tilesets[tile.slot]?.tilesetId);
        if ((tileset?.priorities[tile.id] ?? 0) <= 0) continue;
        const covered = occludingLights.some((light) => {
          const followed = light.eventId ? previewEventPosition(light.eventId) : undefined;
          const lx = followed?.x ?? light.x; const ly = followed?.y ?? light.y;
          if (light.type === 'rect') return Math.abs(x + 0.5 - (lx + 0.5)) <= (light.width ?? 2) / 2 + 0.5 && Math.abs(y + 0.5 - (ly + 0.5)) <= (light.height ?? 1) / 2 + 0.5;
          return Math.hypot(x - lx, y - ly) <= light.radius;
        });
        if (!covered) continue;
        const [sx, sy] = toScreen(x * TILE_SIZE, y * TILE_SIZE); ctx.fillRect(sx, sy, step, step);
      }
    }

    // Neighbour outlines and labels.
    if (showNeighbours) {
      ctx.font = '600 11px Inter, system-ui, sans-serif';
      for (const view of views) {
        if (view.id === doc.map.id) continue;
        const [sx, sy] = toScreen(view.originX, view.originY);
        const w = view.width * TILE_SIZE * zoom;
        const h = view.height * TILE_SIZE * zoom;

        ctx.strokeStyle = 'rgba(157, 107, 255, 0.55)';
        ctx.lineWidth = 1;
        ctx.setLineDash([5, 4]);
        ctx.strokeRect(sx + 0.5, sy + 0.5, w, h);
        ctx.setLineDash([]);

        const name = docs.get(view.id)?.map.name ?? `Map ${view.id}`;
        const label = `${name}  ·  ${view.id}`;
        const textW = ctx.measureText(label).width;
        // Pin the label inside the viewport so it stays readable when the
        // neighbour is mostly off-screen.
        const lx = Math.min(Math.max(sx + 6, 6), size.w - textW - 14);
        const ly = Math.min(Math.max(sy + 18, 18), size.h - 8);
        ctx.fillStyle = 'rgba(10, 14, 24, 0.8)';
        ctx.fillRect(lx - 4, ly - 12, textW + 8, 16);
        ctx.fillStyle = '#9d6bff';
        ctx.fillText(label, lx, ly);
      }
    }

    // Tile grid, only when zoomed in enough for it to mean anything.
    if (showGrid && zoom >= 0.3) {
      const step = TILE_SIZE * zoom;
      const [ox, oy] = toScreen(0, 0);
      // Dark enough to read over pale grass, faint enough not to fight the art.
      ctx.strokeStyle = 'rgba(0, 0, 0, 0.28)';
      ctx.lineWidth = 1;
      ctx.beginPath();
      const startX = Math.max(0, Math.floor((0 - ox) / step));
      const endX = Math.min(doc.map.width, Math.ceil((size.w - ox) / step));
      for (let x = startX; x <= endX; x++) {
        const px = Math.round(ox + x * step) + 0.5;
        ctx.moveTo(px, Math.max(0, oy));
        ctx.lineTo(px, Math.min(size.h, oy + mapH * zoom));
      }
      const startY = Math.max(0, Math.floor((0 - oy) / step));
      const endY = Math.min(doc.map.height, Math.ceil((size.h - oy) / step));
      for (let y = startY; y <= endY; y++) {
        const py = Math.round(oy + y * step) + 0.5;
        ctx.moveTo(Math.max(0, ox), py);
        ctx.lineTo(Math.min(size.w, ox + mapW * zoom), py);
      }
      ctx.stroke();
    }

    // The edited map's own border, drawn bright so it reads as "here".
    const [bx, by] = toScreen(0, 0);
    ctx.strokeStyle = 'rgba(56, 232, 255, 0.75)';
    ctx.lineWidth = 1.5;
    ctx.strokeRect(bx, by, mapW * zoom, mapH * zoom);

    // Events.
    if (showEvents) {
      for (const { event, graphic, page, pageIndex } of [...eventPreviews].sort((a, b) => a.event.y - b.event.y || a.event.id - b.event.id)) {
        const position = eventDrag?.id === event.id ? eventDrag : simulatedEventPosition(event, pageIndex, animate ? lightTime : 0, doc.map.width, doc.map.height);
        const footprint = eventFootprint(event.name);
        const [ex, ey] = toScreen(position.x * TILE_SIZE, position.y * TILE_SIZE);
        const [, footprintTop] = toScreen(0, (position.y - footprint.h + 1) * TILE_SIZE);
        const s = TILE_SIZE * zoom;
        ctx.fillStyle = 'rgba(125, 255, 155, 0.16)';
        ctx.fillRect(ex, footprintTop, s * footprint.w, s * footprint.h);

        const sheet = graphic?.characterName ? eventSheets.get(graphic.characterName) : undefined;
        if (showEventGraphics && sheet && graphic) {
          const frameW = sheet.width / 4;
          const frameH = sheet.height / 4;
          const directions = [2, 4, 6, 8];
          const row = Math.max(0, directions.indexOf(graphic.direction));
          const followsEvent = doc.map.lighting.lights.some((light) => light.enabled !== false && light.eventId === event.id);
          const col = followsEvent && animate ? Math.floor(lightTime * 6) % 4 : Math.max(0, Math.min(3, graphic.pattern));
          const drawW = frameW * zoom;
          const drawH = frameH * zoom;
          ctx.save();
          ctx.imageSmoothingEnabled = false;
          ctx.globalAlpha = Math.max(0, Math.min(1, graphic.opacity / 255));
          if (graphic.characterHue > 0) ctx.filter = `hue-rotate(${graphic.characterHue}deg)`;
          ctx.drawImage(
            sheet,
            col * frameW,
            row * frameH,
            frameW,
            frameH,
            ex + (s - drawW) / 2,
            ey + s - drawH,
            drawW,
            drawH,
          );
          ctx.restore();
        }

        if (showEventGraphics && graphic?.characterName && missingEventSheets.has(graphic.characterName)) {
          ctx.fillStyle = '#ffb838';
          ctx.font = `bold ${Math.max(11, 14 * zoom)}px sans-serif`;
          ctx.fillText('⚠', ex + s * footprint.w - 14, footprintTop + 15);
        }

        const triggerColor = page?.trigger === 3 ? '#ff6b57' : page?.trigger === 4 ? '#b875ff' : 'rgba(125, 255, 155, 0.75)';
        ctx.strokeStyle = showEventTriggers ? triggerColor : 'rgba(125, 255, 155, 0.75)';
        ctx.lineWidth = 1;
        ctx.strokeRect(ex + 0.5, footprintTop + 0.5, s * footprint.w - 1, s * footprint.h - 1);
        if (showEventTriggers && (page?.trigger === 3 || page?.trigger === 4)) {
          ctx.fillStyle = triggerColor;
          ctx.beginPath();
          ctx.arc(ex + 6, footprintTop + 6, 3.5, 0, Math.PI * 2);
          ctx.fill();
        }
        if (event.id === selectedEventId) {
          ctx.strokeStyle = '#38e8ff';
          ctx.lineWidth = 2.5;
          ctx.strokeRect(ex - 1, footprintTop - 1, s * footprint.w + 2, s * footprint.h + 2);
        }
        if (showEventIds && zoom >= 0.5) {
          ctx.fillStyle = '#7dff9b';
          ctx.font = '9px JetBrains Mono, monospace';
          ctx.fillText(String(event.id), ex + 3, footprintTop + 11);
        }
      }
    }

    /*
     * Tile attribute overlays.
     *
     * Priority and passability come from the tileset, not the map, and they are
     * what actually decide whether the player walks through a wall or behind a
     * tree. RPG Maker hides them behind a modal database screen; showing them
     * as a heat overlay on the map is the whole point of a "checker".
     *
     * Attributes apply to the topmost non-empty tile at each cell, which is what
     * the engine consults.
     */
    if (checker !== 'none') {
      const step = TILE_SIZE * zoom;
      ctx.font = `${Math.max(8, Math.min(13, step * 0.42))}px JetBrains Mono, monospace`;
      ctx.textAlign = 'center';
      ctx.textBaseline = 'middle';

      for (let y = 0; y < doc.map.height; y++) {
        for (let x = 0; x < doc.map.width; x++) {
          // Topmost painted tile wins, matching how the engine resolves attributes.
          let packed = 0;
          for (let l = doc.layerData.length - 1; l >= 0; l--) {
            const v = doc.layerData[l][y * doc.map.width + x];
            if (v !== 0) {
              packed = v;
              break;
            }
          }
          if (packed === 0) continue;

          const { slot, id } = unpackTile(packed);
          const tilesetId = doc.map.tilesets[slot]?.tilesetId;
          const tileset = tilesetId === undefined ? undefined : catalog.get(tilesetId);
          if (!tileset) continue;

          const [sx, sy] = toScreen(x * TILE_SIZE, y * TILE_SIZE);
          if (sx > size.w || sy > size.h || sx + step < 0 || sy + step < 0) continue;

          if (checker === 'priority') {
            const priority = tileset.priorities[id] ?? 0;
            if (priority === 0) continue;
            // Warmer means it draws further above the player.
            const hue = 210 - Math.min(5, priority) * 34;
            ctx.fillStyle = `hsla(${hue}, 90%, 55%, 0.34)`;
            ctx.fillRect(sx, sy, step, step);
            if (step >= 18) {
              ctx.fillStyle = '#f2f7ff';
              ctx.fillText(String(priority), sx + step / 2, sy + step / 2);
            }
          } else if (checker === 'passage') {
            // Passage bits: 1=down 2=left 4=right 8=up, set when blocked.
            const passage = tileset.passages[id] ?? 0;
            if (passage === 0) continue;
            if (passage === 0x0f) {
              ctx.fillStyle = 'rgba(255, 77, 100, 0.34)';
              ctx.fillRect(sx, sy, step, step);
            } else {
              // A bar on each blocked side, so direction reads at a glance.
              ctx.fillStyle = 'rgba(255, 120, 90, 0.72)';
              const t = Math.max(2, step * 0.16);
              if (passage & 1) ctx.fillRect(sx, sy + step - t, step, t);
              if (passage & 2) ctx.fillRect(sx, sy, t, step);
              if (passage & 4) ctx.fillRect(sx + step - t, sy, t, step);
              if (passage & 8) ctx.fillRect(sx, sy, step, t);
            }
          } else {
            const tag = tileset.terrainTags[id] ?? 0;
            if (tag === 0) continue;
            const info = terrainTag(tag);
            ctx.fillStyle = info.color;
            ctx.globalAlpha = 0.42;
            ctx.fillRect(sx, sy, step, step);
            ctx.globalAlpha = 1;
            if (step >= 18) {
              ctx.fillStyle = '#06090f';
              ctx.fillText(String(tag), sx + step / 2, sy + step / 2);
            }
          }
        }
      }
      ctx.textAlign = 'start';
      ctx.textBaseline = 'alphabetic';
    }

    if (showLighting) {
      for (const light of [...doc.map.lighting.lights, ...lightPlacementPreview]) {
        if (light.enabled === false) continue;
        const followed = light.eventId ? previewEventPosition(light.eventId) : undefined;
        const position = lightDrag?.id === light.id ? lightDrag : (followed ?? light);
        const [lx, ly] = toScreen((position.x + 0.5) * TILE_SIZE, (position.y + 0.5) * TILE_SIZE);
        ctx.beginPath(); ctx.arc(lx, ly, light.id === selectedLightId ? 7 : 4, 0, Math.PI * 2);
        ctx.fillStyle = light.color; ctx.globalAlpha = lightPlacementPreview.includes(light) ? 0.55 : 1; ctx.fill(); ctx.strokeStyle = selectedLightIds.includes(light.id) ? '#38e8ff' : lightPlacementPreview.includes(light) ? '#ffc45b' : '#fff'; ctx.lineWidth = selectedLightIds.includes(light.id) ? 2 : 1; ctx.stroke(); ctx.globalAlpha = 1;
        if (light.id === selectedLightId) {
          const radius = (lightHandle?.id === light.id && lightHandle.mode === 'radius' ? lightHandle.value : light.radius) * TILE_SIZE * zoom;
          const angle = (lightHandle?.id === light.id && lightHandle.mode === 'angle' ? lightHandle.value : (light.angle ?? 0)) * Math.PI / 180;
          const spreadValue = lightHandle?.id === light.id && lightHandle.mode === 'spread' ? lightHandle.value : (light.spread ?? 60);
          ctx.setLineDash([5, 4]); ctx.strokeStyle = 'rgba(56,232,255,.8)'; ctx.lineWidth = 1; ctx.beginPath();
          if (light.type === 'cone') { const spread = spreadValue * Math.PI / 360; ctx.moveTo(lx, ly); ctx.arc(lx, ly, radius, angle - spread, angle + spread); ctx.closePath(); }
          else ctx.arc(lx, ly, radius, 0, Math.PI * 2);
          ctx.stroke(); ctx.setLineDash([]);
          const hx = lx + Math.cos(light.type === 'cone' ? angle : 0) * radius; const hy = ly + Math.sin(light.type === 'cone' ? angle : 0) * radius;
          ctx.fillStyle = '#38e8ff'; ctx.fillRect(hx - 5, hy - 5, 10, 10);
          if (light.type === 'cone') { const half = spreadValue * Math.PI / 360; for (const edge of [angle - half, angle + half]) { const ex = lx + Math.cos(edge) * radius * 0.82; const ey = ly + Math.sin(edge) * radius * 0.82; ctx.beginPath(); ctx.arc(ex, ey, 5, 0, Math.PI * 2); ctx.fill(); } }
        }
      }
    }

    // Copy rectangle, while right-dragging.
    if (copyRect) {
      const [rx, ry] = toScreen(copyRect.x * TILE_SIZE, copyRect.y * TILE_SIZE);
      const rw = copyRect.w * TILE_SIZE * zoom;
      const rh = copyRect.h * TILE_SIZE * zoom;
      ctx.fillStyle = 'rgba(157, 107, 255, 0.18)';
      ctx.fillRect(rx, ry, rw, rh);
      ctx.strokeStyle = '#9d6bff';
      ctx.lineWidth = 2;
      ctx.strokeRect(rx, ry, rw, rh);
      ctx.fillStyle = '#c8b0ff';
      ctx.font = '600 11px JetBrains Mono, monospace';
      ctx.fillText(`${copyRect.w}x${copyRect.h}`, rx + 4, ry - 5);
    }

    // Brush cursor, sized to the stamp so you can see what will land.
    if (hover && !copyRect) {
      const [hx, hy] = toScreen(hover.x * TILE_SIZE, hover.y * TILE_SIZE);
      const s = TILE_SIZE * zoom;
      const bw = tool === 'erase' ? 1 : brush.w;
      const bh = tool === 'erase' ? 1 : brush.h;
      ctx.strokeStyle = tool === 'erase' ? '#ff4d64' : '#38e8ff';
      ctx.lineWidth = 2;
      ctx.strokeRect(hx + 1, hy + 1, s * bw - 2, s * bh - 2);
    }
  }, [
    doc, docs, views, camera, zoom, size, showGrid, showNeighbours, showEvents,
    hover, tool, checker, catalog, selectedEventId, selectedPage, copyRect, brush,
    eventPreviews, eventSheets, missingEventSheets, eventDrag,
    showEventGraphics, showEventIds, showEventTriggers,
    showLighting, lightingHour, lightTime, selectedLightId, lightDrag, lightHandle, lightPlacementPreview,
  ]);

  // -------------------------------------------------------------- interaction

  const toTile = useCallback(
    (clientX: number, clientY: number): { x: number; y: number } | null => {
      const canvas = overlayRef.current;
      if (!canvas) return null;
      const rect = canvas.getBoundingClientRect();
      const wx = (clientX - rect.left) / zoom + camera.x;
      const wy = (clientY - rect.top) / zoom + camera.y;
      return { x: Math.floor(wx / TILE_SIZE), y: Math.floor(wy / TILE_SIZE) };
    },
    [camera, zoom],
  );

  const painting = useRef(false);
  const panning = useRef<{ x: number; y: number } | null>(null);
  /** Cells accumulated during one drag, flushed as a single undo entry. */
  const stroke = useRef<Array<{ x: number; y: number; value: number }>>([]);
  const lastCell = useRef<{ x: number; y: number } | null>(null);
  /** Right-drag anchor used to copy a region into the brush. */
  const copyAnchor = useRef<{ x: number; y: number } | null>(null);
  /**
   * Last tile committed by a finished stroke. Survives between strokes so
   * Shift+click can draw a line from wherever painting last stopped.
   */
  const lastStrokeEnd = useRef<{ x: number; y: number } | null>(null);
  /** Axis a Ctrl-drag has locked onto, decided by the first tile of movement. */
  const axisLock = useRef<{ from: { x: number; y: number }; axis: 'x' | 'y' | null } | null>(null);

  /**
   * Writes one brush impression at a tile, without stroke bookkeeping.
   *
   * `brushSize` widens a single-tile pick and the eraser into a square, centred
   * on the cursor. It deliberately does not scale a multi-tile stamp: that stamp
   * is a specific set of tiles the author picked, and repeating or stretching it
   * would put tiles down they never chose.
   */
  const stampAt = useCallback(
    (tile: { x: number; y: number }) => {
      const single = brush.w === 1 && brush.h === 1;
      const size = tool === 'erase' || single ? brushSize : 1;
      const offset = Math.floor((size - 1) / 2);

      for (let sy = 0; sy < size; sy++) {
        for (let sx = 0; sx < size; sx++) {
          const ox = tile.x - offset + sx;
          const oy = tile.y - offset + sy;
          if (tool === 'erase') {
            stroke.current.push({ x: ox, y: oy, value: 0 });
            continue;
          }
          for (let dy = 0; dy < brush.h; dy++) {
            for (let dx = 0; dx < brush.w; dx++) {
              stroke.current.push({
                x: ox + dx,
                y: oy + dy,
                value: brush.tiles[dy * brush.w + dx] ?? 0,
              });
            }
          }
        }
      }
    },
    [brush, brushSize, tool],
  );

  /**
   * Stamps along a straight line between two tiles.
   *
   * Bresenham rather than sampling the pointer: a fast drag skips cells, and a
   * line drawn by hand across twenty tiles should not come out dotted.
   */
  const stampLine = useCallback(
    (from: { x: number; y: number }, to: { x: number; y: number }) => {
      let { x, y } = from;
      const dx = Math.abs(to.x - x);
      const dy = -Math.abs(to.y - y);
      const stepX = x < to.x ? 1 : -1;
      const stepY = y < to.y ? 1 : -1;
      let error = dx + dy;
      for (;;) {
        stampAt({ x, y });
        if (x === to.x && y === to.y) break;
        const doubled = 2 * error;
        if (doubled >= dy) { error += dy; x += stepX; }
        if (doubled <= dx) { error += dx; y += stepY; }
      }
      lastCell.current = { ...to };
    },
    [stampAt],
  );

  const applyAt = useCallback(
    (tile: { x: number; y: number }) => {
      if (!doc) return;
      if (tool === 'event') return;
      if (tool === 'eyedropper') {
        const value = doc.layerData[activeLayer]?.[tile.y * doc.map.width + tile.x] ?? 0;
        setBrush(singleBrush(value));
        return;
      }
      // Deduplicate within a stroke so dragging across one cell is one patch.
      const last = lastCell.current;
      if (last && last.x === tile.x && last.y === tile.y) return;
      lastCell.current = { ...tile };
      stampAt(tile);
    },
    [doc, tool, activeLayer, setBrush, stampAt],
  );

  const flushStroke = useCallback(() => {
    lastStrokeEnd.current = lastCell.current ?? lastStrokeEnd.current;
    lastCell.current = null;
    axisLock.current = null;
    if (stroke.current.length === 0) return;
    paint(tool === 'erase' ? 'Erase' : 'Paint', stroke.current);
    stroke.current = [];
  }, [paint, tool]);

  /**
   * Snaps a drag to one axis while Ctrl is held.
   *
   * The axis is chosen by whichever direction moved further first, and releasing
   * Ctrl mid-stroke resumes free painting — so a wall can be started straight and
   * finished by hand without letting go of the button.
   */
  const constrainToAxis = useCallback(
    (tile: { x: number; y: number }, held: boolean): { x: number; y: number } => {
      const lock = axisLock.current;
      if (!held || !lock) {
        axisLock.current = held ? (lock ?? { from: { ...tile }, axis: null }) : null;
        return tile;
      }
      if (!lock.axis) {
        const dx = Math.abs(tile.x - lock.from.x);
        const dy = Math.abs(tile.y - lock.from.y);
        if (dx === 0 && dy === 0) return tile;
        lock.axis = dx >= dy ? 'x' : 'y';
      }
      return lock.axis === 'x'
        ? { x: tile.x, y: lock.from.y }
        : { x: lock.from.x, y: tile.y };
    },
    [],
  );

  const onPointerDown = (e: React.PointerEvent<HTMLCanvasElement>): void => {
    e.currentTarget.setPointerCapture(e.pointerId);
    setMenu(null);

    // Middle button pans. Right button copies a region (or, without a drag,
    // opens the context menu) — matching RPG Maker XP, where right-drag is how
    // you pick up an existing piece of map to stamp elsewhere.
    if (e.button === 1) {
      panning.current = { x: e.clientX, y: e.clientY };
      return;
    }
    if (e.button === 2) {
      const tile = toTile(e.clientX, e.clientY);
      if (tile) {
        copyAnchor.current = tile;
        setCopyRect({ x: tile.x, y: tile.y, w: 1, h: 1 });
      }
      return;
    }
    if (e.button !== 0) return;
    if (tool === 'light' && doc && selectedLightId) {
      const selected = doc.map.lighting.lights.find((light) => light.id === selectedLightId);
      const canvas = overlayRef.current;
      if (selected && canvas) {
        const bounds = canvas.getBoundingClientRect(); const px = e.clientX - bounds.left; const py = e.clientY - bounds.top;
        const followed = selected.eventId ? doc.map.events.find((event) => event.id === selected.eventId) : undefined;
        const cx = (((followed?.x ?? selected.x) + 0.5) * TILE_SIZE - camera.x) * zoom; const cy = (((followed?.y ?? selected.y) + 0.5) * TILE_SIZE - camera.y) * zoom;
        const angle = (selected.type === 'cone' ? selected.angle ?? 0 : 0) * Math.PI / 180; const radius = selected.radius * TILE_SIZE * zoom;
        const hx = cx + Math.cos(angle) * radius; const hy = cy + Math.sin(angle) * radius;
        if (selected.type === 'cone') { const half = (selected.spread ?? 60) * Math.PI / 360; for (const edge of [angle - half, angle + half]) { const ex = cx + Math.cos(edge) * radius * 0.82; const ey = cy + Math.sin(edge) * radius * 0.82; if (Math.hypot(px - ex, py - ey) <= 12) { setLightHandle({ id: selected.id, mode: 'spread', value: selected.spread ?? 60 }); return; } } }
        if (Math.hypot(px - hx, py - hy) <= 14) { setLightHandle({ id: selected.id, mode: selected.type === 'cone' && e.shiftKey ? 'angle' : 'radius', value: selected.type === 'cone' && e.shiftKey ? selected.angle ?? 0 : selected.radius }); return; }
      }
    }
    const tile = toTile(e.clientX, e.clientY);
    if (!tile) return;
    if (tool === 'light') {
      const hit = doc?.map.lighting.lights.find((light) => light.x === tile.x && light.y === tile.y);
      if (hit) { selectLight(hit.id, e.shiftKey || e.ctrlKey || e.metaKey); setLightDrag({ id: hit.id, x: hit.x, y: hit.y }); }
      else addLight(tile.x, tile.y);
      return;
    }
    if (tool === 'event') {
      const hit = eventAt(eventPreviews, tile.x, tile.y);
      if (hit) setEventDrag({ id: hit.event.id, x: hit.event.x, y: hit.event.y });
      else selectEvent(null);
      return;
    }
    painting.current = true;
    // Shift continues from where the last stroke ended, which is how a straight
    // run of cliff or fence gets drawn without dragging pixel by pixel.
    if (e.shiftKey && lastStrokeEnd.current && tool !== 'eyedropper' && tool !== 'fill') {
      stampLine(lastStrokeEnd.current, tile);
    } else {
      applyAt(tile);
    }
    axisLock.current = e.ctrlKey ? { from: { ...tile }, axis: null } : null;
    if (tool === 'eyedropper') painting.current = false;
  };

  const onPointerMove = (e: React.PointerEvent<HTMLCanvasElement>): void => {
    const tile = toTile(e.clientX, e.clientY);
    setHover(tile);

    if (eventDrag && tile) {
      setEventDrag({ ...eventDrag, x: tile.x, y: tile.y });
      return;
    }
    if (lightDrag && tile && doc) {
      setLightDrag({ ...lightDrag, x: Math.max(0, Math.min(doc.map.width - 1, tile.x)), y: Math.max(0, Math.min(doc.map.height - 1, tile.y)) });
      return;
    }
    if (lightHandle && doc) {
      const selected = doc.map.lighting.lights.find((light) => light.id === lightHandle.id); const canvas = overlayRef.current;
      if (selected && canvas) { const bounds = canvas.getBoundingClientRect(); const px = e.clientX - bounds.left; const py = e.clientY - bounds.top; const followed = selected.eventId ? doc.map.events.find((event) => event.id === selected.eventId) : undefined; const cx = (((followed?.x ?? selected.x) + 0.5) * TILE_SIZE - camera.x) * zoom; const cy = (((followed?.y ?? selected.y) + 0.5) * TILE_SIZE - camera.y) * zoom; const pointerAngle = (Math.atan2(py - cy, px - cx) * 180 / Math.PI + 360) % 360; let value = pointerAngle; if (lightHandle.mode === 'radius') value = Math.max(0.1, Math.min(50, Math.hypot(px - cx, py - cy) / (TILE_SIZE * zoom))); else if (lightHandle.mode === 'spread') { let delta = Math.abs(pointerAngle - (selected.angle ?? 0)); if (delta > 180) delta = 360 - delta; value = Math.max(5, Math.min(180, delta * 2)); } setLightHandle({ ...lightHandle, value }); }
      return;
    }

    if (panning.current) {
      const dx = e.clientX - panning.current.x;
      const dy = e.clientY - panning.current.y;
      panning.current = { x: e.clientX, y: e.clientY };
      setCamera((c) => ({ x: c.x - dx / zoom, y: c.y - dy / zoom }));
      return;
    }
    if (copyAnchor.current && tile) {
      const a = copyAnchor.current;
      setCopyRect({
        x: Math.min(a.x, tile.x),
        y: Math.min(a.y, tile.y),
        w: Math.abs(tile.x - a.x) + 1,
        h: Math.abs(tile.y - a.y) + 1,
      });
      return;
    }
    if (painting.current && tile) {
      applyAt(constrainToAxis(tile, e.ctrlKey));
    }
  };

  const onPointerUp = (e: React.PointerEvent<HTMLCanvasElement>): void => {
    e.currentTarget.releasePointerCapture(e.pointerId);
    panning.current = null;

    if (lightHandle) {
      updateLight(lightHandle.id, lightHandle.mode === 'radius' ? { radius: lightHandle.value } : lightHandle.mode === 'spread' ? { spread: lightHandle.value } : { angle: lightHandle.value }); setLightHandle(null); return;
    }

    if (lightDrag) {
      const original = doc?.map.lighting.lights.find((light) => light.id === lightDrag.id);
      if (original && (original.x !== lightDrag.x || original.y !== lightDrag.y)) {
        const dx = lightDrag.x - original.x; const dy = lightDrag.y - original.y;
        const moving = selectedLightIds.includes(lightDrag.id) ? selectedLightIds : [lightDrag.id];
        updateLighting({ lights: doc!.map.lighting.lights.map((light) => moving.includes(light.id) ? { ...light, x: Math.max(0, Math.min(doc!.map.width - 1, light.x + dx)), y: Math.max(0, Math.min(doc!.map.height - 1, light.y + dy)) } : light) });
      }
      setLightDrag(null);
      return;
    }

    if (eventDrag) {
      const original = eventPreviews.find(({ event }) => event.id === eventDrag.id)?.event;
      if (original && (original.x !== eventDrag.x || original.y !== eventDrag.y)) {
        moveEvent(eventDrag.id, eventDrag.x, eventDrag.y);
      } else {
        selectEvent(eventDrag.id);
      }
      setEventDrag(null);
      return;
    }

    if (copyAnchor.current) {
      const rect = copyRect;
      const anchor = copyAnchor.current;
      copyAnchor.current = null;
      setCopyRect(null);
      if (rect && (rect.w > 1 || rect.h > 1)) {
        copyRegion(rect.x, rect.y, rect.w, rect.h);
      } else if (tool === 'event') {
        // In event mode the right button is the only route to the event actions,
        // and there is no tile to sample anyway.
        const canvas = overlayRef.current;
        const bounds = canvas?.getBoundingClientRect();
        setMenu({
          x: e.clientX - (bounds?.left ?? 0),
          y: e.clientY - (bounds?.top ?? 0),
          tile: anchor,
        });
      } else {
        // A right-click that never became a drag samples the tile under it.
        // Same gesture as the drag, just one tile wide — which is what makes it
        // feel like an eyedropper rather than a second, separate tool.
        copyRegion(anchor.x, anchor.y, 1, 1);
      }
      return;
    }

    if (painting.current) {
      painting.current = false;
      flushStroke();
    }
  };

  /** Ctrl/⌘ + wheel zooms about the cursor; plain wheel scrolls. */
  /**
   * Wheel handling is attached natively rather than through React's `onWheel`.
   *
   * React registers wheel listeners as passive, so `preventDefault` inside one
   * is ignored — and without it, Ctrl+wheel zooms the whole Electron window
   * instead of the map. Only a listener registered with `{ passive: false }`
   * may cancel the default.
   */
  useEffect(() => {
    const canvas = overlayRef.current;
    if (!canvas) return;

    const onWheel = (e: WheelEvent): void => {
      e.preventDefault();
      if (e.ctrlKey || e.metaKey) {
        const rect = canvas.getBoundingClientRect();
        const cx = e.clientX - rect.left;
        const cy = e.clientY - rect.top;
        const worldX = cx / zoom + camera.x;
        const worldY = cy / zoom + camera.y;
        const next = Math.min(4, Math.max(0.125, zoom * (e.deltaY < 0 ? 1.15 : 1 / 1.15)));
        setZoom(next);
        // Keep the point under the cursor fixed while zooming.
        setCamera({ x: worldX - cx / next, y: worldY - cy / next });
        return;
      }
      setCamera((c) => ({ x: c.x + e.deltaX / zoom, y: c.y + e.deltaY / zoom }));
    };

    canvas.addEventListener('wheel', onWheel, { passive: false });
    return () => canvas.removeEventListener('wheel', onWheel);
  }, [zoom, camera, setZoom]);

  const brushInfo = useMemo(() => {
    const { slot, id } = unpackTile(brush.tiles[0] ?? 0);
    return { slot, id, w: brush.w, h: brush.h };
  }, [brush]);
  const hoverPreview = hover ? eventAt(eventPreviews, hover.x, hover.y) : undefined;
  const hoverDecoded = hoverPreview ? decodeEvent(hoverPreview.event.raw) : null;

  // The canvases stay mounted even with no map open. Returning early here would
  // unmount them, and because the WebGL context is created in an effect keyed on
  // the canvas ref, it would never be recreated once a map was finally selected —
  // leaving the tile layer permanently blank.
  const placeholder = !project ? (
    <div className="sc-empty">
      No project open.
      <br />
      Use <strong>Open Project</strong> in the title bar.
    </div>
  ) : !doc ? (
    <div className="sc-empty">
      Select a map from the tree to begin.
      <br />
      <span className="sc-faint">
        {project.maps.length} maps · {catalog.size} tilesets loaded
      </span>
    </div>
  ) : null;

  return (
    <div className="sc-canvas-wrap" ref={wrapRef}>
      <canvas className="sc-canvas-gl" ref={glRef} />
      <canvas
        className="sc-canvas-overlay"
        ref={overlayRef}
        onPointerDown={onPointerDown}
        onPointerMove={onPointerMove}
        onPointerUp={onPointerUp}
        onPointerLeave={() => setHover(null)}
        onContextMenu={(e) => e.preventDefault()}
      />
      {placeholder && <div className="sc-canvas-placeholder">{placeholder}</div>}
      {showEvents && hoverPreview && hoverDecoded && !menu && (
        <div
          className="sc-event-tooltip"
          style={{
            left: (hoverPreview.event.x * TILE_SIZE - camera.x) * zoom + 14,
            top: ((hoverPreview.event.y + 1) * TILE_SIZE - camera.y) * zoom + 8,
          }}
        >
          <div><strong>#{hoverPreview.event.id} {hoverPreview.event.name || 'untitled'}</strong></div>
          <div>Page {hoverPreview.pageIndex + 1} · {TRIGGERS[hoverPreview.page?.trigger ?? 0]}</div>
          {hoverPreview.page && <div className="sc-faint">{conditionText(hoverPreview.page.condition)}</div>}
          {hoverPreview.graphic?.characterName && missingEventSheets.has(hoverPreview.graphic.characterName) && <div className="sc-event-warning">⚠ Missing: {hoverPreview.graphic.characterName}</div>}
        </div>
      )}
      <CheckerLegend />
      {menu && (
        <ContextMenu
          x={menu.x}
          y={menu.y}
          tile={menu.tile}
          onClose={() => setMenu(null)}
          undo={undo}
          redo={redo}
        />
      )}
      {doc && (
      <div className="sc-canvas-hud">
        {/* Identity first, as one chip: which map, and how big. The header no
            longer carries a document title, so this is where it lives. */}
        <span className="sc-badge" data-tone="cyan">
          <span className="sc-mono sc-faint">{String(doc.map.id).padStart(3, '0')}</span>
          {' · '}{doc.map.name}{' · '}
          <span className="sc-mono">{doc.map.width}×{doc.map.height}</span>
        </span>
        <span className="sc-badge" data-tone="violet">
          L{activeLayer + 1} {doc.map.layers[activeLayer]?.name}
        </span>
        <span className="sc-badge">
          brush s{brushInfo.slot}:{brushInfo.id}
        </span>
        {hover && (
          <span className="sc-badge sc-mono">
            {hover.x},{hover.y}
          </span>
        )}
        <span className="sc-badge">{Math.round(zoom * 100)}%</span>
        {showLighting && <span className="sc-badge" data-tone="violet">{outdoorNightFactor(lightingHour) > 0.5 ? '☾' : '☀'} {String(Math.floor(lightingHour)).padStart(2, '0')}:{String(Math.floor((lightingHour % 1) * 60)).padStart(2, '0')}</span>}
        {doc.dirty && (
          <span className="sc-badge" data-tone="amber">
            unsaved
          </span>
        )}
      </div>
      )}
    </div>
  );
}
