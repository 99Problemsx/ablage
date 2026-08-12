/**
 * Builds a GPU-ready tile atlas for one tileset, including animated autotiles.
 *
 * Layout (cell index -> 32x32 slot, row-major over `cols` columns):
 *   cells    0..383   reserved, left blank. Keeps `cell === tileId` true for
 *                     regular tiles, which is what makes the renderer's mapping
 *                     a single multiply instead of a lookup table.
 *   cells  384..N     the tileset graphic's tiles, in source order.
 *   cells  N..end     the animation region: `frameCount` consecutive blocks of
 *                     336 cells (the 7 autotile slots x 48 variants), one block
 *                     per animation frame.
 *
 * The animation region is why autotile cells are addressed as
 * `animBase + (tileId - 48) + frame * AUTOTILE_REGION`: the shader can advance a
 * frame by adding a constant, so animating water costs one uniform change rather
 * than rebuilding every instance buffer.
 *
 * The expansion below is a port of
 * `Data/Scripts/006_Map renderer/{003_AutotileExpander,004_TileDrawingHelper}.rb`.
 * It must match the game exactly, or the editor shows seams that do not exist
 * in-game (or hides ones that do).
 */

import {
  AUTOTILE_BASE,
  REGULAR_TILE_BASE,
  TILE_SIZE,
  isAutotile,
  packTile,
  unpackTile,
} from '../core/scmap/format';

export { AUTOTILE_BASE } from '../core/scmap/format';

/** Tiles per row of an RMXP tileset graphic, fixed by its 256px width. */
export const TILES_PER_ROW = 8;
/** Variants generated per autotile. */
export const TILES_PER_AUTOTILE = 48;
/** Autotile slots a tileset may define. */
export const AUTOTILE_SLOTS = 7;
/** Cells occupied by one animation frame's worth of autotile variants. */
export const AUTOTILE_REGION = TILES_PER_AUTOTILE * AUTOTILE_SLOTS; // 336

/** Source width of one animation frame of a standard quadrant autotile. */
const AUTOTILE_FRAME_WIDTH = TILE_SIZE * 3;

/**
 * Which 16x16 chunk of the autotile source fills each quadrant of each variant.
 *
 * Indexed `[id >> 3][id & 7]`, then four 1-based chunk indices in
 * top-left, top-right, bottom-left, bottom-right order. Chunk `c` maps to source
 * `(((c - 1) % 6) * 16, floor((c - 1) / 6) * 16)`.
 *
 * Verbatim from TileDrawingHelper::AUTOTILE_PATTERNS.
 */
export const AUTOTILE_PATTERNS: ReadonlyArray<ReadonlyArray<readonly number[]>> = [
  [
    [27, 28, 33, 34], [5, 28, 33, 34], [27, 6, 33, 34], [5, 6, 33, 34],
    [27, 28, 33, 12], [5, 28, 33, 12], [27, 6, 33, 12], [5, 6, 33, 12],
  ],
  [
    [27, 28, 11, 34], [5, 28, 11, 34], [27, 6, 11, 34], [5, 6, 11, 34],
    [27, 28, 11, 12], [5, 28, 11, 12], [27, 6, 11, 12], [5, 6, 11, 12],
  ],
  [
    [25, 26, 31, 32], [25, 6, 31, 32], [25, 26, 31, 12], [25, 6, 31, 12],
    [15, 16, 21, 22], [15, 16, 21, 12], [15, 16, 11, 22], [15, 16, 11, 12],
  ],
  [
    [29, 30, 35, 36], [29, 30, 11, 36], [5, 30, 35, 36], [5, 30, 11, 36],
    [39, 40, 45, 46], [5, 40, 45, 46], [39, 6, 45, 46], [5, 6, 45, 46],
  ],
  [
    [25, 30, 31, 36], [15, 16, 45, 46], [13, 14, 19, 20], [13, 14, 19, 12],
    [17, 18, 23, 24], [17, 18, 11, 24], [41, 42, 47, 48], [5, 42, 47, 48],
  ],
  [
    [37, 38, 43, 44], [37, 6, 43, 44], [13, 18, 19, 24], [13, 14, 43, 44],
    [37, 42, 43, 48], [17, 18, 47, 48], [13, 18, 43, 48], [1, 2, 7, 8],
  ],
];

/**
 * Maps an 8-bit neighbour mask to the autotile variant that fits it.
 *
 * Bit order matches `TileDrawingHelper.tableNeighbors`:
 * N=0x01 NE=0x02 E=0x04 SE=0x08 S=0x10 SW=0x20 W=0x40 NW=0x80, each set when
 * that neighbour holds the *same* tile id.
 */
export const NEIGHBORS_TO_AUTOTILE_INDEX: readonly number[] = [
  46, 44, 46, 44, 43, 41, 43, 40, 46, 44, 46, 44, 43, 41, 43, 40,
  42, 32, 42, 32, 35, 19, 35, 18, 42, 32, 42, 32, 34, 17, 34, 16,
  46, 44, 46, 44, 43, 41, 43, 40, 46, 44, 46, 44, 43, 41, 43, 40,
  42, 32, 42, 32, 35, 19, 35, 18, 42, 32, 42, 32, 34, 17, 34, 16,
  45, 39, 45, 39, 33, 31, 33, 29, 45, 39, 45, 39, 33, 31, 33, 29,
  37, 27, 37, 27, 23, 15, 23, 13, 37, 27, 37, 27, 22, 11, 22, 9,
  45, 39, 45, 39, 33, 31, 33, 29, 45, 39, 45, 39, 33, 31, 33, 29,
  36, 26, 36, 26, 21, 7, 21, 5, 36, 26, 36, 26, 20, 3, 20, 1,
  46, 44, 46, 44, 43, 41, 43, 40, 46, 44, 46, 44, 43, 41, 43, 40,
  42, 32, 42, 32, 35, 19, 35, 18, 42, 32, 42, 32, 34, 17, 34, 16,
  46, 44, 46, 44, 43, 41, 43, 40, 46, 44, 46, 44, 43, 41, 43, 40,
  42, 32, 42, 32, 35, 19, 35, 18, 42, 32, 42, 32, 34, 17, 34, 16,
  45, 38, 45, 38, 33, 30, 33, 28, 45, 38, 45, 38, 33, 30, 33, 28,
  37, 25, 37, 25, 23, 14, 23, 12, 37, 25, 37, 25, 22, 10, 22, 8,
  45, 38, 45, 38, 33, 30, 33, 28, 45, 38, 45, 38, 33, 30, 33, 28,
  36, 24, 36, 24, 21, 6, 21, 4, 36, 24, 36, 24, 20, 2, 20, 0,
];

/** Source images for one tileset: the main graphic plus up to 7 autotiles. */
export interface TilesetImages {
  tileset: ImageBitmap | null;
  /** Index 0..6; `null` where the slot is unused. */
  autotiles: Array<ImageBitmap | null>;
}

export interface TileAtlas {
  canvas: OffscreenCanvas;
  width: number;
  height: number;
  /** Tiles per atlas row. 8 unless the tileset had to be folded to fit. */
  cols: number;
  /** First cell of the animation region. */
  animBase: number;
  /** Animation frames baked. Always at least 1. */
  frameCount: number;
  /** Cell count of the static region, i.e. one past the last regular tile. */
  tileCount: number;
  /** Total cells including every animation frame. */
  cellCount: number;
}

/**
 * How an autotile graphic is laid out.
 *
 * RMXP supports two shapes and they are distinguished purely by height:
 *  - 32px tall: a *single-tile* autotile. There is nothing to composite; all 48
 *    variants are the same tile, and the width is the frame count. Essentials
 *    short-circuits these (`return bitmap if bitmap.height == SOURCE_TILE_HEIGHT`).
 *    Missing this case renders them as transparent holes.
 *  - 128 or 192px tall: the usual quadrant autotile, 96px per frame.
 */
function describeAutotile(source: ImageBitmap): {
  singleTile: boolean;
  frameWidth: number;
  frames: number;
  expanded: boolean;
} {
  if (source.height === TILE_SIZE) {
    return {
      singleTile: true,
      frameWidth: TILE_SIZE,
      frames: Math.max(1, Math.floor(source.width / TILE_SIZE)),
      expanded: false,
    };
  }
  return {
    singleTile: false,
    frameWidth: AUTOTILE_FRAME_WIDTH,
    frames: Math.max(1, Math.floor(source.width / AUTOTILE_FRAME_WIDTH)),
    expanded: source.height === TILE_SIZE * 6,
  };
}

/** Frames an autotile graphic animates over; 1 when it is static. */
export function autotileFrameCount(source: ImageBitmap | null): number {
  return source ? describeAutotile(source).frames : 1;
}

/** Cell index for a tile id at a given animation frame. */
export function atlasCell(atlas: TileAtlas, tileId: number, frame = 0): number {
  if (tileId < AUTOTILE_BASE || tileId >= REGULAR_TILE_BASE) return tileId;
  const f = atlas.frameCount > 0 ? frame % atlas.frameCount : 0;
  return atlas.animBase + f * AUTOTILE_REGION + (tileId - AUTOTILE_BASE);
}

/**
 * Picks how many tile columns the atlas should use.
 *
 * RMXP tileset graphics are 256px wide and arbitrarily tall, so the natural atlas
 * is the same shape. That breaks on real projects: this one ships a 256x152000
 * tileset, and even a 256x16064 one exceeds the common 16384 MAX_TEXTURE_SIZE.
 * `texImage2D` then fails with INVALID_VALUE and nothing renders at all. So fold
 * into more columns when the stacked layout does not fit. Columns stay a multiple
 * of 8 so each source row lands contiguously and the blit stays cheap.
 */
export function chooseAtlasColumns(cellCount: number, maxTextureSize: number): number {
  const maxRows = Math.floor(maxTextureSize / TILE_SIZE);
  let cols = TILES_PER_ROW;
  while (Math.ceil(cellCount / cols) > maxRows && cols * 2 * TILE_SIZE <= maxTextureSize) {
    cols *= 2;
  }
  return cols;
}

/** Composites one autotile's 48 variants for one animation frame. */
function expandAutotileFrame(
  ctx: OffscreenCanvasRenderingContext2D,
  source: ImageBitmap,
  cellOf: (variant: number) => number,
  cols: number,
  frame: number,
): void {
  const info = describeAutotile(source);
  const half = TILE_SIZE / 2;
  // Slots animate at different rates (8 frames for water, 5 for a fountain), so
  // wrap rather than running off the end of the shorter graphic.
  const sourceFrame = frame % info.frames;
  const frameX = sourceFrame * info.frameWidth;

  for (let variant = 0; variant < TILES_PER_AUTOTILE; variant++) {
    const cell = cellOf(variant);
    const destX = (cell % cols) * TILE_SIZE;
    const destY = Math.floor(cell / cols) * TILE_SIZE;

    if (info.singleTile) {
      // Every variant is the same 32x32 tile; only the frame varies.
      ctx.drawImage(source, frameX, 0, TILE_SIZE, TILE_SIZE, destX, destY, TILE_SIZE, TILE_SIZE);
      continue;
    }

    // In the expanded (192px) format these four variants are whole tiles taken
    // from rows 4 and 5 rather than being built from quadrants.
    if (info.expanded && (variant === 1 || variant === 2 || variant === 4 || variant === 8)) {
      const srcX = variant === 2 || variant === 4 ? TILE_SIZE : 0;
      const srcY = variant === 1 || variant === 2 ? TILE_SIZE * 4 : TILE_SIZE * 5;
      ctx.drawImage(
        source, frameX + srcX, srcY, TILE_SIZE, TILE_SIZE,
        destX, destY, TILE_SIZE, TILE_SIZE,
      );
      continue;
    }

    const pattern = AUTOTILE_PATTERNS[variant >> 3][variant & 7];
    for (let i = 0; i < 4; i++) {
      const chunk = pattern[i] - 1;
      ctx.drawImage(
        source,
        frameX + (chunk % 6) * half,
        Math.floor(chunk / 6) * half,
        half,
        half,
        destX + (i % 2) * half,
        destY + Math.floor(i / 2) * half,
        half,
        half,
      );
    }
  }
}

export function buildTileAtlas(
  images: TilesetImages,
  maxTextureSize = 8192,
): TileAtlas | null {
  const tilesetRows = images.tileset ? Math.ceil(images.tileset.height / TILE_SIZE) : 0;
  const tileCount = REGULAR_TILE_BASE + tilesetRows * TILES_PER_ROW;

  // Bake as many frames as the slowest-cycling autotile needs; slots with fewer
  // frames repeat within that period.
  let frameCount = 1;
  for (const source of images.autotiles) {
    frameCount = Math.max(frameCount, autotileFrameCount(source));
  }

  const animBase = tileCount;
  const cellCount = animBase + frameCount * AUTOTILE_REGION;
  if (cellCount === 0) return null;

  const cols = chooseAtlasColumns(cellCount, maxTextureSize);
  const width = cols * TILE_SIZE;
  const height = Math.ceil(cellCount / cols) * TILE_SIZE;
  if (width > maxTextureSize || height > maxTextureSize) {
    // Genuinely unrepresentable. Say so rather than uploading and drawing nothing.
    console.error(
      `[atlas] needs ${width}x${height} but MAX_TEXTURE_SIZE is ${maxTextureSize}`,
    );
    return null;
  }

  const canvas = new OffscreenCanvas(width, height);
  const ctx = canvas.getContext('2d', { alpha: true });
  if (!ctx) return null;
  // Nearest-neighbour: these are pixel-art tiles, and smoothing would bleed
  // neighbouring cells into each other at the atlas seams.
  ctx.imageSmoothingEnabled = false;

  for (let frame = 0; frame < frameCount; frame++) {
    const frameBase = animBase + frame * AUTOTILE_REGION;
    for (let slot = 0; slot < AUTOTILE_SLOTS; slot++) {
      const source = images.autotiles[slot];
      if (!source) continue;
      const slotBase = frameBase + slot * TILES_PER_AUTOTILE;
      expandAutotileFrame(ctx, source, (variant) => slotBase + variant, cols, frame);
    }
  }

  if (images.tileset) {
    const firstRegularRow = REGULAR_TILE_BASE / TILES_PER_ROW;
    if (cols === TILES_PER_ROW) {
      // Fast path: atlas has the same shape as the source, so one blit does it.
      ctx.drawImage(images.tileset, 0, firstRegularRow * TILE_SIZE);
    } else {
      // Folded layout: move whole 256px source rows into place. `cols` being a
      // multiple of 8 guarantees each source row lands contiguously.
      const stripWidth = TILES_PER_ROW * TILE_SIZE;
      for (let row = 0; row < tilesetRows; row++) {
        const firstTile = REGULAR_TILE_BASE + row * TILES_PER_ROW;
        ctx.drawImage(
          images.tileset,
          0, row * TILE_SIZE, stripWidth, TILE_SIZE,
          (firstTile % cols) * TILE_SIZE,
          Math.floor(firstTile / cols) * TILE_SIZE,
          stripWidth, TILE_SIZE,
        );
      }
    }
  }

  return { canvas, width, height, cols, animBase, frameCount, tileCount, cellCount };
}

/**
 * Chooses the autotile variant for a tile, from which of its eight neighbours
 * hold the same tile id. Mirrors `TileDrawingHelper.tableNeighbors`, including
 * its edge behaviour: out-of-bounds neighbours clamp to the edge tile, so no
 * shoreline appears along the map border.
 */
export function autotileVariant(
  tiles: ArrayLike<number>,
  width: number,
  height: number,
  x: number,
  y: number,
): number {
  const at = (px: number, py: number): number => {
    const cx = px < 0 ? 0 : px >= width ? width - 1 : px;
    const cy = py < 0 ? 0 : py >= height ? height - 1 : py;
    return tiles[cy * width + cx];
  };

  /**
   * Imported RMXP maps already contain the resolved variant (base + 0..47),
   * whereas tiles painted by this editor use base + 46 and are resolved only
   * for display. Both representations describe the same connected material.
   * Comparing the packed values verbatim therefore tears water into individual
   * shoreline cells. Keep the tileset and autotile slot, but discard the
   * stored shape variant for neighbour comparisons.
   */
  const identity = (packed: number): number => {
    if (!packed) return 0;
    const { slot, id } = unpackTile(packed);
    if (!isAutotile(id)) return packed;
    return packTile(slot, Math.floor(id / AUTOTILE_BASE) * AUTOTILE_BASE);
  };

  const self = identity(at(x, y));
  let mask = 0;
  if (identity(at(x, y - 1)) === self) mask |= 0x01; // N
  if (identity(at(x + 1, y - 1)) === self) mask |= 0x02; // NE
  if (identity(at(x + 1, y)) === self) mask |= 0x04; // E
  if (identity(at(x + 1, y + 1)) === self) mask |= 0x08; // SE
  if (identity(at(x, y + 1)) === self) mask |= 0x10; // S
  if (identity(at(x - 1, y + 1)) === self) mask |= 0x20; // SW
  if (identity(at(x - 1, y)) === self) mask |= 0x40; // W
  if (identity(at(x - 1, y - 1)) === self) mask |= 0x80; // NW
  return NEIGHBORS_TO_AUTOTILE_INDEX[mask];
}
