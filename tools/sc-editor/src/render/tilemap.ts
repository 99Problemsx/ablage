/**
 * WebGL2 tilemap renderer.
 *
 * Drawing strategy: one instanced draw call per (layer, tileset-slot) pair. Each
 * instance is a single tile carrying its grid position and its atlas cell, so a
 * 60x43 map with 5 layers costs at most ~10 draw calls regardless of tile count.
 * Canvas2D was the alternative and loses badly here — the neighbour-map overlay
 * means we may be drawing six maps at once while the user drags.
 *
 * Instance buffers are rebuilt only when tile data changes, not per frame.
 */

import { TILE_SIZE, isAutotile, unpackTile } from '../core/scmap/format';
import {
  AUTOTILE_BASE,
  AUTOTILE_REGION,
  atlasCell,
  autotileVariant,
  type TileAtlas,
} from './atlas';

const VERTEX_SHADER = `#version 300 es
precision highp float;

// Unit quad, expanded to a tile by the instance attributes.
layout(location = 0) in vec2 a_corner;
// xy = tile grid position, z = atlas cell at frame 0, w = per-frame cell stride
// (0 for static tiles, AUTOTILE_REGION for animated autotiles).
layout(location = 1) in vec4 a_instance;

uniform vec2 u_viewportSize;   // canvas size in CSS pixels
uniform vec2 u_origin;         // world-space pixel offset of this map
uniform vec2 u_scroll;         // camera scroll in world pixels
uniform float u_zoom;
uniform vec2 u_atlasSize;      // atlas dimensions in pixels
uniform float u_atlasCols;
uniform float u_frame;         // current animation frame

out vec2 v_uv;

void main() {
  vec2 worldPx = (a_instance.xy + a_corner) * ${TILE_SIZE}.0 + u_origin;
  vec2 screenPx = (worldPx - u_scroll) * u_zoom;

  // Pixel space -> clip space, with y pointing down like every 2D editor.
  vec2 clip = (screenPx / u_viewportSize) * 2.0 - 1.0;
  gl_Position = vec4(clip.x, -clip.y, 0.0, 1.0);

  // Animating costs one uniform, not a rebuilt instance buffer.
  float cell = a_instance.z + (u_frame * a_instance.w);
  vec2 cellXY = vec2(mod(cell, u_atlasCols), floor(cell / u_atlasCols));
  // Half-texel inset stops neighbouring atlas cells bleeding in when the zoom
  // lands on a fractional texel.
  vec2 inset = vec2(0.02) / vec2(${TILE_SIZE}.0);
  vec2 local = mix(inset, vec2(1.0) - inset, a_corner);
  v_uv = (cellXY + local) * ${TILE_SIZE}.0 / u_atlasSize;
}
`;

const FRAGMENT_SHADER = `#version 300 es
precision highp float;

in vec2 v_uv;
uniform sampler2D u_atlas;
uniform float u_opacity;
uniform vec4 u_tint;   // rgb multiplier + strength in .a

out vec4 fragColor;

void main() {
  vec4 c = texture(u_atlas, v_uv);
  if (c.a < 0.004) discard;
  c.rgb = mix(c.rgb, c.rgb * u_tint.rgb, u_tint.a);
  fragColor = vec4(c.rgb, c.a * u_opacity);
}
`;

function compile(gl: WebGL2RenderingContext, type: number, source: string): WebGLShader {
  const shader = gl.createShader(type);
  if (!shader) throw new Error('Failed to allocate shader');
  gl.shaderSource(shader, source);
  gl.compileShader(shader);
  if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
    const log = gl.getShaderInfoLog(shader);
    gl.deleteShader(shader);
    throw new Error(`Shader compile failed: ${log}`);
  }
  return shader;
}

function buildProgram(gl: WebGL2RenderingContext): WebGLProgram {
  const program = gl.createProgram();
  if (!program) throw new Error('Failed to allocate program');
  const vs = compile(gl, gl.VERTEX_SHADER, VERTEX_SHADER);
  const fs = compile(gl, gl.FRAGMENT_SHADER, FRAGMENT_SHADER);
  gl.attachShader(program, vs);
  gl.attachShader(program, fs);
  gl.linkProgram(program);
  // Shaders are no longer needed once linked, regardless of outcome.
  gl.deleteShader(vs);
  gl.deleteShader(fs);
  if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
    const log = gl.getProgramInfoLog(program);
    gl.deleteProgram(program);
    throw new Error(`Program link failed: ${log}`);
  }
  return program;
}

/** A tileset uploaded to the GPU, keyed by catalogue id. */
interface GpuTileset {
  texture: WebGLTexture;
  atlas: TileAtlas;
}

/** One batch of instances: all tiles of one layer that use one tileset slot. */
interface Batch {
  slot: number;
  buffer: WebGLBuffer;
  count: number;
}

export interface LayerView {
  /** Packed tile values, `width * height` of them. */
  tiles: Int32Array;
  opacity: number;
  visible: boolean;
}

export interface MapView {
  id: number;
  width: number;
  height: number;
  /** Slot index -> catalogue tileset id. */
  tilesetIds: number[];
  layers: LayerView[];
  /** World-pixel offset; non-zero for neighbour maps. */
  originX: number;
  originY: number;
  /** Overall multiplier — neighbours render translucent. */
  alpha: number;
  /** rgb tint plus strength, used to push neighbours toward violet. */
  tint: [number, number, number, number];
}

export interface Camera {
  scrollX: number;
  scrollY: number;
  zoom: number;
}

/** Per-map GPU state, cached across frames and invalidated by tile edits. */
interface MapCache {
  revision: number;
  /** Batches per layer index. */
  layers: Batch[][];
}

export class TilemapRenderer {
  private readonly gl: WebGL2RenderingContext;
  private readonly program: WebGLProgram;
  private readonly quadBuffer: WebGLBuffer;
  private readonly vao: WebGLVertexArrayObject;
  private readonly uniforms: Record<string, WebGLUniformLocation | null>;
  private readonly tilesets = new Map<number, GpuTileset>();
  private readonly cache = new Map<number, MapCache>();
  /** Logs per-map batch counts and GL errors. Toggled from the console panel. */
  debug = false;
  /** The GPU's texture limit; atlases must be built to fit inside it. */
  readonly maxTextureSize: number;
  /** Current autotile animation frame. Advanced by the canvas's ticker. */
  frame = 0;

  constructor(canvas: HTMLCanvasElement) {
    const gl = canvas.getContext('webgl2', {
      alpha: true,
      antialias: false,
      premultipliedAlpha: false,
      // Load-bearing. The editor renders on state change, not in a rAF loop, so
      // without this the drawing buffer is cleared after the first composite and
      // the map goes black until the next edit.
      preserveDrawingBuffer: true,
      powerPreference: 'high-performance',
    });
    if (!gl) throw new Error('WebGL2 is not available');
    this.gl = gl;
    this.maxTextureSize = gl.getParameter(gl.MAX_TEXTURE_SIZE) as number;
    this.program = buildProgram(gl);

    this.uniforms = {};
    for (const name of [
      'u_viewportSize', 'u_origin', 'u_scroll', 'u_zoom',
      'u_atlasSize', 'u_atlasCols', 'u_atlas', 'u_opacity', 'u_tint', 'u_frame',
    ]) {
      this.uniforms[name] = gl.getUniformLocation(this.program, name);
    }

    const quad = gl.createBuffer();
    if (!quad) throw new Error('Failed to allocate quad buffer');
    this.quadBuffer = quad;
    gl.bindBuffer(gl.ARRAY_BUFFER, quad);
    // Two triangles as a strip: (0,0) (1,0) (0,1) (1,1).
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array([0, 0, 1, 0, 0, 1, 1, 1]), gl.STATIC_DRAW);

    const vao = gl.createVertexArray();
    if (!vao) throw new Error('Failed to allocate VAO');
    this.vao = vao;

    gl.enable(gl.BLEND);
    gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA, gl.ONE, gl.ONE_MINUS_SRC_ALPHA);
  }

  /** Uploads (or replaces) a tileset atlas. */
  setTileset(tilesetId: number, atlas: TileAtlas): void {
    const gl = this.gl;
    this.tilesets.get(tilesetId)?.texture && gl.deleteTexture(this.tilesets.get(tilesetId)!.texture);

    const texture = gl.createTexture();
    if (!texture) throw new Error('Failed to allocate texture');
    gl.bindTexture(gl.TEXTURE_2D, texture);
    gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, atlas.canvas);
    // NEAREST everywhere: pixel art must stay crisp at any zoom, and CLAMP stops
    // the half-texel inset from sampling the opposite edge.
    gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
    gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
    gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
    gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);

    this.tilesets.set(tilesetId, { texture, atlas });
    // Cached instance data encodes atlas cell indices, so it is now stale.
    this.invalidateAll();
  }

  hasTileset(tilesetId: number): boolean {
    return this.tilesets.has(tilesetId);
  }

  /** Longest animation cycle across uploaded tilesets; 1 means nothing animates. */
  get animationFrames(): number {
    let frames = 1;
    for (const { atlas } of this.tilesets.values()) {
      frames = Math.max(frames, atlas.frameCount);
    }
    return frames;
  }

  invalidate(mapId: number): void {
    const cached = this.cache.get(mapId);
    if (!cached) return;
    for (const layer of cached.layers) {
      for (const batch of layer) this.gl.deleteBuffer(batch.buffer);
    }
    this.cache.delete(mapId);
  }

  invalidateAll(): void {
    for (const id of [...this.cache.keys()]) this.invalidate(id);
  }

  /**
   * Turns a layer's packed tiles into per-slot instance buffers.
   *
   * Autotiles are resolved here rather than in the shader: the variant depends on
   * eight neighbours, which is a scatter/gather the CPU does once per edit and the
   * GPU would redo every frame.
   */
  private buildLayerBatches(map: MapView, layer: LayerView): Batch[] {
    const gl = this.gl;
    const bySlot = new Map<number, number[]>();

    // Autotile resolution needs to compare against same-id neighbours, so it
    // operates on the raw packed values of this layer only.
    for (let y = 0; y < map.height; y++) {
      for (let x = 0; x < map.width; x++) {
        const packed = layer.tiles[y * map.width + x];
        if (packed === 0) continue;
        const { slot, id } = unpackTile(packed);
        const tilesetId = map.tilesetIds[slot];
        if (tilesetId === undefined || !this.tilesets.has(tilesetId)) continue;

        const gpu = this.tilesets.get(tilesetId)!;
        let cell: number;
        let stride: number;
        if (isAutotile(id)) {
          // Snap to the slot's base id, then add the variant that fits.
          const base = Math.floor(id / AUTOTILE_BASE) * AUTOTILE_BASE;
          const variant = autotileVariant(layer.tiles, map.width, map.height, x, y);
          cell = atlasCell(gpu.atlas, base + variant, 0);
          // Only actually-animated autotiles get a non-zero stride, so static
          // ones cost nothing when the frame uniform advances.
          stride = gpu.atlas.frameCount > 1 ? AUTOTILE_REGION : 0;
        } else {
          cell = id;
          stride = 0;
        }

        let list = bySlot.get(slot);
        if (!list) {
          list = [];
          bySlot.set(slot, list);
        }
        list.push(x, y, cell, stride);
      }
    }

    const batches: Batch[] = [];
    for (const [slot, data] of bySlot) {
      const buffer = gl.createBuffer();
      if (!buffer) continue;
      gl.bindBuffer(gl.ARRAY_BUFFER, buffer);
      gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(data), gl.STATIC_DRAW);
      batches.push({ slot, buffer, count: data.length / 4 });
    }
    return batches;
  }

  private cacheFor(map: MapView, revision: number): MapCache {
    const existing = this.cache.get(map.id);
    if (existing && existing.revision === revision) return existing;
    if (existing) this.invalidate(map.id);

    const cache: MapCache = {
      revision,
      layers: map.layers.map((layer) => this.buildLayerBatches(map, layer)),
    };
    this.cache.set(map.id, cache);
    return cache;
  }

  resize(cssWidth: number, cssHeight: number, dpr: number): void {
    const canvas = this.gl.canvas as HTMLCanvasElement;
    const w = Math.max(1, Math.round(cssWidth * dpr));
    const h = Math.max(1, Math.round(cssHeight * dpr));
    if (canvas.width !== w || canvas.height !== h) {
      canvas.width = w;
      canvas.height = h;
    }
    this.gl.viewport(0, 0, w, h);
  }

  /**
   * Draws every map in `maps`, in order. Callers put neighbours first so the
   * selected map composites on top of them.
   *
   * `revisions` supplies a change counter per map id; bump it to force a rebuild.
   */
  render(
    maps: MapView[],
    camera: Camera,
    revisions: Map<number, number>,
    cssWidth: number,
    cssHeight: number,
  ): void {
    const gl = this.gl;
    gl.clearColor(0, 0, 0, 0);
    gl.clear(gl.COLOR_BUFFER_BIT);

    gl.useProgram(this.program);
    gl.bindVertexArray(this.vao);

    // The quad is shared by every batch, so bind it once.
    gl.bindBuffer(gl.ARRAY_BUFFER, this.quadBuffer);
    gl.enableVertexAttribArray(0);
    gl.vertexAttribPointer(0, 2, gl.FLOAT, false, 0, 0);
    gl.vertexAttribDivisor(0, 0);

    gl.uniform2f(this.uniforms.u_viewportSize, cssWidth, cssHeight);
    gl.uniform2f(this.uniforms.u_scroll, camera.scrollX, camera.scrollY);
    gl.uniform1f(this.uniforms.u_zoom, camera.zoom);
    gl.uniform1i(this.uniforms.u_atlas, 0);
    gl.uniform1f(this.uniforms.u_frame, this.frame);
    gl.activeTexture(gl.TEXTURE0);

    for (const map of maps) {
      const cache = this.cacheFor(map, revisions.get(map.id) ?? 0);
      gl.uniform2f(this.uniforms.u_origin, map.originX, map.originY);
      gl.uniform4f(this.uniforms.u_tint, ...map.tint);
      if (this.debug) {
        const batches = cache.layers.reduce((n, l) => n + l.length, 0);
        const instances = cache.layers.reduce(
          (n, l) => n + l.reduce((m, b) => m + b.count, 0),
          0,
        );
        console.log(
          `[tilemap] map ${map.id}: ${batches} batches, ${instances} instances, ` +
            `tilesets=[${map.tilesetIds.join(',')}] uploaded=[${[...this.tilesets.keys()].join(',')}] ` +
            `origin=${map.originX},${map.originY} alpha=${map.alpha}`,
        );
      }

      for (let layerIndex = 0; layerIndex < cache.layers.length; layerIndex++) {
        const layer = map.layers[layerIndex];
        if (!layer?.visible || layer.opacity <= 0) continue;
        gl.uniform1f(this.uniforms.u_opacity, layer.opacity * map.alpha);

        for (const batch of cache.layers[layerIndex]) {
          const tilesetId = map.tilesetIds[batch.slot];
          const gpu = tilesetId === undefined ? undefined : this.tilesets.get(tilesetId);
          if (!gpu) continue;

          gl.bindTexture(gl.TEXTURE_2D, gpu.texture);
          gl.uniform2f(this.uniforms.u_atlasSize, gpu.atlas.width, gpu.atlas.height);
          gl.uniform1f(this.uniforms.u_atlasCols, gpu.atlas.cols);

          gl.bindBuffer(gl.ARRAY_BUFFER, batch.buffer);
          gl.enableVertexAttribArray(1);
          gl.vertexAttribPointer(1, 4, gl.FLOAT, false, 0, 0);
          gl.vertexAttribDivisor(1, 1);

          gl.drawArraysInstanced(gl.TRIANGLE_STRIP, 0, 4, batch.count);
        }
      }
    }

    if (this.debug) {
      const err = gl.getError();
      if (err !== gl.NO_ERROR) console.error(`[tilemap] gl error 0x${err.toString(16)}`);
      console.log(
        `[tilemap] viewport=${cssWidth}x${cssHeight} zoom=${camera.zoom} ` +
          `scroll=${camera.scrollX},${camera.scrollY} maps=${maps.length}`,
      );
    }
    gl.bindVertexArray(null);
  }

  dispose(): void {
    const gl = this.gl;
    this.invalidateAll();
    for (const { texture } of this.tilesets.values()) gl.deleteTexture(texture);
    this.tilesets.clear();
    gl.deleteBuffer(this.quadBuffer);
    gl.deleteVertexArray(this.vao);
    gl.deleteProgram(this.program);
  }
}

/** Pixel size of a map, useful for framing and hit-testing. */
export function mapPixelSize(width: number, height: number): { w: number; h: number } {
  return { w: width * TILE_SIZE, h: height * TILE_SIZE };
}
