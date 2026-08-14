/**
 * Checks the assumptions the Extra Map Layers plugin makes about SCMap JSON.
 *
 * The plugin reads Canopy and Sky straight out of the map file with string
 * scanning rather than a full JSON parse, because the events block dwarfs
 * everything else and parsing it at map load would be a visible stall. That
 * trade buys speed with assumptions, and this script is where those assumptions
 * are checked against all 71 real maps:
 *
 *   - `"layers"` occurs before any event text, so the first match is the real one
 *   - the block contains exactly five `"rows"` arrays, in layer order
 *   - tile rows never contain a quote or bracket, so scanning for quoted spans
 *     cannot run past the end of a row
 *
 * The functions below are a line-for-line port of the Ruby in
 * `Plugins/[SC] Extra Map Layers/[001] SCMap_ExtraLayers.rb`. Their output is
 * compared against `decodeLayers`, the decoder the editor itself renders from,
 * so a divergence means the plugin would draw something different from what the
 * author sees on screen.
 *
 * What this does NOT do is execute the Ruby. It validates the algorithm and the
 * file-format assumptions, not the plugin's syntax or its behaviour inside RGSS.
 */

import { spawnSync } from 'node:child_process';
import { mkdirSync, readdirSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join, resolve } from 'node:path';
import {
  decodeLayers,
  encodeLayerRows,
  packTile,
  unpackTile,
  type SCMap,
} from '../src/core/scmap/format.ts';
import { serialiseMap } from '../src/core/scmap/serialize.ts';

const PROJECT_ROOT = resolve(import.meta.dirname, '../../..');
const SCMAPS_DIR = join(PROJECT_ROOT, 'Data', 'SCMaps');

const BASE_LAYER_COUNT = 3;
const EXTRA_LAYER_COUNT = 2;

/** Mirrors the foreign-tileset encoding in the plugin; the two must agree. */
const FOREIGN_BASE = 10000;
const FOREIGN_STRIDE = 10000;
const MAX_FOREIGN_SLOTS = 2;

// --------------------------------------------------- port of the Ruby routines

function bracketSection(text: string, key: string): string | null {
  const match = text.indexOf(`"${key}"`);
  if (match === -1) return null;
  let index = text.indexOf(':', match + key.length + 2);
  if (index === -1) return null;
  index += 1;
  while (index < text.length && text.charCodeAt(index) <= 32) index += 1;
  const opening = text.charCodeAt(index);
  if (opening !== 91 && opening !== 123) return null;
  const closing = opening === 91 ? 93 : 125;
  const start = index;
  let depth = 0;
  let inString = false;
  let escaped = false;
  while (index < text.length) {
    const byte = text.charCodeAt(index);
    if (inString) {
      if (escaped) escaped = false;
      else if (byte === 92) escaped = true;
      else if (byte === 34) inString = false;
    } else if (byte === 34) inString = true;
    else if (byte === opening) depth += 1;
    else if (byte === closing) {
      depth -= 1;
      if (depth === 0) return text.slice(start, index + 1);
    }
    index += 1;
  }
  return null;
}

function rowLists(section: string): string[][] {
  const lists: string[][] = [];
  let index = 0;
  for (;;) {
    const found = section.indexOf('"rows"', index);
    if (found === -1) break;
    const open = section.indexOf('[', found);
    if (open === -1) break;
    const close = section.indexOf(']', open);
    if (close === -1) break;
    const body = section.slice(open + 1, close);
    lists.push([...body.matchAll(/"([^"]*)"/g)].map((m) => m[1]));
    index = close + 1;
  }
  return lists;
}

function decodeRowRuby(row: string | undefined, width: number): number[] {
  const out = new Array<number>(width).fill(0);
  if (row === undefined || row.length === 0) return out;
  let x = 0;
  for (const run of row.split(' ')) {
    if (x >= width) break;
    if (run.length === 0) continue;
    const star = run.indexOf('*');
    const token = star === -1 ? run : run.slice(0, star);
    const count = star === -1 ? 1 : Number.parseInt(run.slice(star + 1), 10);
    const value = token === '.' ? 0 : Number.parseInt(token, 36);
    for (let k = 0; k < count; k++) {
      if (x >= width) break;
      out[x] = value;
      x += 1;
    }
  }
  return out;
}

// ------------------------------------------------------------------ the checks

let fail = 0;
const problems: string[] = [];
let mapsWithContent = 0;
let canopyTiles = 0;
let skyTiles = 0;
let foreignSlot = 0;

const files = readdirSync(SCMAPS_DIR)
  .filter((f) => /^Map\d+\.json$/.test(f))
  .sort();

for (const file of files) {
  const text = readFileSync(join(SCMAPS_DIR, file), 'utf8');
  const map = JSON.parse(text) as SCMap;
  const reference = decodeLayers(map);

  const section = bracketSection(text, 'layers');
  if (section === null) {
    fail++;
    problems.push(`${file}: the layers block was not found.`);
    continue;
  }
  const lists = rowLists(section);
  if (lists.length !== BASE_LAYER_COUNT + EXTRA_LAYER_COUNT) {
    fail++;
    problems.push(`${file}: found ${lists.length} row arrays, expected 5.`);
    continue;
  }
  // The exact assertion: what bracket matching carved out must be the layers
  // array itself, no more and no less. A slip that ran into the events block, or
  // stopped early inside a row, fails here rather than in game.
  if (JSON.stringify(JSON.parse(section)) !== JSON.stringify(map.layers)) {
    fail++;
    problems.push(`${file}: the extracted block is not exactly the layers array.`);
    continue;
  }

  for (let index = 0; index < EXTRA_LAYER_COUNT; index++) {
    const layer = BASE_LAYER_COUNT + index;
    const rows = lists[layer];
    if (rows.length !== map.height) {
      fail++;
      problems.push(`${file}: layer ${layer} has ${rows.length} rows, expected ${map.height}.`);
      break;
    }
    for (let y = 0; y < map.height; y++) {
      const decoded = decodeRowRuby(rows[y], map.width);
      for (let x = 0; x < map.width; x++) {
        const expected = reference[layer][y * map.width + x];
        if (decoded[x] !== expected) {
          fail++;
          problems.push(
            `${file}: layer ${layer} tile ${x},${y} decoded as ${decoded[x]}, editor renders ${expected}.`,
          );
          y = map.height;
          break;
        }
        if (expected === 0) continue;
        const { slot } = unpackTile(expected);
        // Anything past the encodable slots is what the game genuinely cannot
        // draw; the rest is re-encoded into the high band and drawn normally.
        if (slot > MAX_FOREIGN_SLOTS || slot >= map.tilesets.length) foreignSlot++;
        else if (layer === 3) canopyTiles++;
        else skyTiles++;
      }
    }
  }
  if (
    reference[3].some((value) => value !== 0) ||
    reference[4].some((value) => value !== 0)
  ) {
    mapsWithContent++;
  }
}

console.log(
  `\nExtra layers: ${files.length - fail} of ${files.length} maps decode identically to the editor.`,
);
console.log(
  `  ${mapsWithContent} map(s) use Canopy or Sky — ${canopyTiles} canopy and ${skyTiles} sky tiles the game will draw.`,
);
if (foreignSlot > 0) {
  console.log(
    `  ${foreignSlot} tile(s) sit past the ${MAX_FOREIGN_SLOTS} encodable extra tilesets and are skipped in game.`,
  );
}
if (problems.length) {
  console.log('\nProblems:');
  for (const problem of problems.slice(0, 10)) console.log(`  ${problem}`);
  if (problems.length > 10) console.log(`  ... and ${problems.length - 10} more`);
}

// -------------------------------------------------------------- synthetic case

/**
 * No map uses Canopy or Sky yet — they were unusable until now — so the real
 * files exercise only the empty path. This paints a map that does use them and
 * runs the same extraction over the serialised result, which is the only way to
 * cover autotile ids, long runs and second-tileset tiles before the first
 * author does it for real.
 */
const sample = JSON.parse(readFileSync(join(SCMAPS_DIR, files[0]), 'utf8')) as SCMap;
const { width, height } = sample;
const canopy = new Int32Array(width * height);
const sky = new Int32Array(width * height);
for (let y = 0; y < height; y++) {
  for (let x = 0; x < width; x++) {
    // A spread of the cases the decoder has to survive: empty runs, an autotile
    // id below 384, a high tileset id, and a tile on a second tileset slot.
    if ((x + y) % 7 === 0) canopy[y * width + x] = packTile(0, 48 + ((x * y) % 47));
    else if (x % 11 === 3) canopy[y * width + x] = packTile(0, 384 + ((x + y) % 600));
    if (y % 5 === 0 && x % 3 === 0) sky[y * width + x] = packTile(0, 384 + (x % 128));
    // Tiles from a second tileset, which the game must re-encode and draw.
    if (x % 9 === 4) canopy[y * width + x] = packTile(1, 384 + (y % 200));
    if (x === width - 1 && y === 0) sky[y * width + x] = packTile(1, 400);
    // And one from a slot too far, which it must skip rather than mis-draw.
    if (x === 0 && y === height - 1) sky[y * width + x] = packTile(5, 400);
  }
}
const painted: SCMap = {
  ...sample,
  // A distinct id so the fixture keeps the untouched original alongside it.
  id: 999,
  tilesets: [sample.tilesets[0] ?? { tilesetId: 1 }, { tilesetId: 2 }],
  layers: sample.layers.map((layer, index) => {
    if (index === 3) return { ...layer, rows: encodeLayerRows(canopy, width, height) };
    if (index === 4) return { ...layer, rows: encodeLayerRows(sky, width, height) };
    return layer;
  }),
};

const paintedText = serialiseMap(painted);
const paintedSection = bracketSection(paintedText, 'layers');
const syntheticProblems: string[] = [];
if (paintedSection === null) {
  syntheticProblems.push('the layers block was not found');
} else {
  const lists = rowLists(paintedSection);
  if (lists.length !== 5) syntheticProblems.push(`found ${lists.length} row arrays, expected 5`);
  else {
    for (const [layer, source] of [[3, canopy], [4, sky]] as const) {
      for (let y = 0; y < height && syntheticProblems.length === 0; y++) {
        const decoded = decodeRowRuby(lists[layer][y], width);
        for (let x = 0; x < width; x++) {
          // The plugin masks off the slot bits and skips anything not on slot 0,
          // which is what the game can actually draw.
          const packed = source[y * width + x];
          const { slot, id } = unpackTile(packed);
          const drawn = slot === 0 ? id : 0;
          const rubyDrawn = (decoded[x] >> 16) & 0xff ? 0 : decoded[x] & 0xffff;
          if (rubyDrawn !== drawn) {
            syntheticProblems.push(`layer ${layer} tile ${x},${y}: got ${rubyDrawn}, expected ${drawn}`);
            break;
          }
        }
      }
    }
  }
}

if (syntheticProblems.length === 0) {
  console.log(
    `  Synthetic map with Canopy and Sky content (${width}x${height}) decodes correctly, including a second-slot tile that the game must skip.`,
  );
} else {
  fail++;
  console.log(`\nSynthetic case: ${syntheticProblems.slice(0, 5).join('; ')}`);
}

// ---------------------------------------------------- running the real plugin

/**
 * Everything above checks a TypeScript port of the plugin. This runs the plugin
 * itself.
 *
 * The Ruby needs nothing from RGSS but `Table`, so with a stub it can be
 * executed against a fixture and compared with what the editor renders. Ruby is
 * not installed here, so it goes through a container; when neither is available
 * the check reports that it was skipped rather than quietly passing.
 */
const fixtureDir = join(tmpdir(), 'sc-extra-layers-fixture');
const mapsDir = join(fixtureDir, 'Data', 'SCMaps');
rmSync(fixtureDir, { recursive: true, force: true });
mkdirSync(mapsDir, { recursive: true });

interface Expectation {
  width: number;
  height: number;
  base: number[][];
  canopy: number[];
  sky: number[];
}

const expectations: Record<string, Expectation> = {};

/**
 * What the plugin should put in the Table.
 *
 * Slot 0 keeps its plain tile id; a tile from another tileset is re-encoded into
 * the high band the renderer decodes (slot 1 at 10000+, slot 2 at 20000+). This
 * mirrors `encode_foreign` in the Ruby, so the two have to agree.
 */
function drawable(layer: Int32Array, slotCount: number): number[] {
  return [...layer].map((packed) => {
    const { slot, id } = unpackTile(packed);
    if (packed === 0) return 0;
    if (slot === 0) return id;
    if (slot > MAX_FOREIGN_SLOTS || slot >= slotCount || id >= FOREIGN_STRIDE) return 0;
    return FOREIGN_BASE + (slot - 1) * FOREIGN_STRIDE + id;
  });
}

function addFixture(map: SCMap, text: string): void {
  writeFileSync(join(mapsDir, `Map${String(map.id).padStart(3, '0')}.json`), text, 'utf8');
  const layers = decodeLayers(map);
  const slots = map.tilesets.length;
  expectations[String(map.id)] = {
    width: map.width,
    height: map.height,
    // The base layers come from .rxdata, which only ever holds slot 0.
    base: [0, 1, 2].map((z) => [...layers[z]].map((packed) => {
      const { slot, id } = unpackTile(packed);
      return slot === 0 ? id : 0;
    })),
    canopy: drawable(layers[3], slots),
    sky: drawable(layers[4], slots),
  };
}

// A few real maps, plus the painted one — the real files are all empty on the
// extra layers, so on their own they would only prove the plugin does nothing.
for (const file of files.slice(0, 5)) {
  const text = readFileSync(join(SCMAPS_DIR, file), 'utf8');
  addFixture(JSON.parse(text) as SCMap, text);
}
addFixture(painted, paintedText);
writeFileSync(join(fixtureDir, 'expected.json'), JSON.stringify(expectations), 'utf8');

const harness = join(import.meta.dirname, 'verify-extra-layers.rb');
let ran = false;
for (const attempt of [
  { cmd: 'ruby', args: [harness, fixtureDir] },
  {
    cmd: 'podman',
    args: [
      'run', '--rm',
      '-v', `${PROJECT_ROOT}:/work:ro,z`,
      '-v', `${fixtureDir}:/fixture:ro,z`,
      'docker.io/library/ruby:3.2-alpine',
      'ruby', '/work/tools/sc-editor/scripts/verify-extra-layers.rb', '/fixture',
    ],
  },
]) {
  const result = spawnSync(attempt.cmd, attempt.args, { encoding: 'utf8' });
  if (result.error) continue;
  ran = true;
  process.stdout.write(result.stdout);
  if (result.status !== 0) {
    fail++;
    process.stdout.write(result.stderr);
  }
  break;
}
if (!ran) {
  console.log('\nRuby plugin: SKIPPED — neither ruby nor podman is available to run it.');
}

process.exit(fail === 0 ? 0 : 1);
