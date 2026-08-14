/**
 * Verifies the tileset catalogue -> Data/Tilesets.rxdata export.
 *
 * Same bar as the map exporter: restating what the file already says must
 * reproduce it byte for byte. Tilesets.rxdata holds all 25 of this project's
 * tilesets in one array, so a mistake here is not scoped to the tileset being
 * edited — a bad write corrupts every map that draws from any of them.
 *
 * The string encoding question is the specific reason this check exists.
 * Tileset names in this project carry an `:E` UTF-8 ivar; map and MapInfos
 * strings do not. Both exporters would look correct in review, and only one of
 * them can be right about any given file.
 */

import { existsSync, readFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import { RObject, RString, RTable, type RValue } from '../src/core/marshal/types.ts';
import {
  AUTOTILE_SLOTS,
  blankTileset,
  nextTilesetId,
  patchTilesets,
} from '../src/core/export/tilesets.ts';
import { importTilesets } from '../src/core/import/rxdata.ts';
import type { SCTileset } from '../src/core/scmap/format.ts';

const PROJECT_ROOT = resolve(import.meta.dirname, '../../..');
const TILESETS_PATH = join(PROJECT_ROOT, 'Data', 'Tilesets.rxdata');
const CATALOG_PATH = join(PROJECT_ROOT, 'Data', 'SCMaps', 'tilesets.json');

function firstDiff(a: Uint8Array, b: Uint8Array): number {
  const n = Math.min(a.length, b.length);
  for (let i = 0; i < n; i++) if (a[i] !== b[i]) return i;
  return a.length === b.length ? -1 : n;
}

function hexWindow(buf: Uint8Array, at: number, radius = 14): string {
  const start = Math.max(0, at - radius);
  const end = Math.min(buf.length, at + radius);
  return [...buf.subarray(start, end)]
    .map((byte, i) => {
      const hex = byte.toString(16).padStart(2, '0');
      return start + i === at ? `[${hex}]` : hex;
    })
    .join(' ');
}

let fail = 0;
const original = new Uint8Array(readFileSync(TILESETS_PATH));

// ------------------------------------------------- restating the whole file

/**
 * The catalogue is derived from the .rxdata by `importTilesets`, so exporting
 * it back is a closed loop: any field the importer drops or the exporter
 * invents shows up as a byte difference.
 */
const imported = importTilesets(MarshalReader.parse(original));
const restated = patchTilesets(MarshalReader.parse(original), [...imported.values()]);
const rewritten = MarshalWriter.dump(restated);
const diff = firstDiff(original, rewritten);

if (diff === -1) {
  console.log(`\nTilesets: restating all ${imported.size} entries is byte-identical.`);
} else {
  fail++;
  console.log(
    `\nTilesets: restating diverges at byte ${diff} (orig ${original.length}B, ours ${rewritten.length}B)\n` +
      `    orig: ${hexWindow(original, diff)}\n` +
      `    ours: ${hexWindow(rewritten, diff)}`,
  );
}

// ------------------------------------------------------------ a new tileset

const newId = nextTilesetId(imported.keys());
const created = blankTileset(newId, 'Verification Tileset', 'Outside', ['Sea', '', 'Flowers1']);
const grown = patchTilesets(MarshalReader.parse(original), [created]);
const problems: string[] = [];

if (grown.length !== Math.max(original.length > 0 ? imported.size + 1 : 0, newId) + 1) {
  // The array is indexed by id with a nil at 0, so its length is the highest id
  // plus one. Anything else means a gap was mishandled.
  if (grown.length !== newId + 1) problems.push(`array length is ${grown.length}, expected ${newId + 1}`);
}

const reloaded = MarshalReader.parse(MarshalWriter.dump(grown));
if (!Array.isArray(reloaded)) {
  problems.push('the array did not survive a dump/parse cycle');
} else {
  const entry = reloaded[newId];
  if (!(entry instanceof RObject) || entry.className !== 'RPG::Tileset') {
    problems.push('the new entry is not an RPG::Tileset');
  } else {
    if (entry.int('@id') !== newId) problems.push(`@id came back as ${entry.int('@id')}`);
    if (entry.str('@name') !== 'Verification Tileset') problems.push('@name did not round-trip');
    if (entry.str('@tileset_name') !== 'Outside') problems.push('@tileset_name did not round-trip');

    const autotiles = entry.get('@autotile_names');
    if (!Array.isArray(autotiles) || autotiles.length !== AUTOTILE_SLOTS) {
      problems.push(`@autotile_names has ${Array.isArray(autotiles) ? autotiles.length : '?'} entries, expected ${AUTOTILE_SLOTS}`);
    } else if (!(autotiles[0] instanceof RString) || (autotiles[0] as RString).value !== 'Sea') {
      problems.push('autotile slot 1 did not round-trip');
    } else if (!(autotiles[1] instanceof RString) || (autotiles[1] as RString).value !== '') {
      problems.push('an unused autotile slot is not a blank string');
    }

    // RPG Maker XP indexes these tables by tile id and will raise on a nil.
    for (const field of ['@passages', '@priorities', '@terrain_tags']) {
      const table = entry.get(field);
      if (!(table instanceof RTable)) problems.push(`${field} is not a Table`);
      else if (table.data.some((value) => value !== 0)) problems.push(`${field} is not all zero on a new tileset`);
    }
    for (const field of ['@panorama_name', '@fog_name', '@battleback_name']) {
      if (!(entry.get(field) instanceof RString)) problems.push(`${field} is missing`);
    }
    for (const field of ['@panorama_hue', '@fog_hue', '@fog_opacity', '@fog_blend_type', '@fog_zoom', '@fog_sx', '@fog_sy']) {
      if (typeof entry.get(field) !== 'number') problems.push(`${field} is missing`);
    }
  }

  // Existing entries must be untouched by an unrelated addition.
  const untouched = MarshalWriter.dump(reloaded.slice(0, newId) as RValue[]);
  const before = MarshalWriter.dump(MarshalReader.parse(original) as RValue[]);
  if (firstDiff(before, untouched) !== -1) {
    problems.push('adding a tileset changed the existing entries');
  }
}

if (problems.length === 0) {
  console.log(`New tileset: #${newId} writes a complete, well-formed RPG::Tileset and leaves the other ${imported.size} untouched.`);
} else {
  fail++;
  console.log(`New tileset: ${problems.join('; ')}`);
}

// -------------------------------------------------- catalogue agrees with it

if (existsSync(CATALOG_PATH)) {
  const catalog = JSON.parse(readFileSync(CATALOG_PATH, 'utf8')) as { tilesets: SCTileset[] };
  const missing = [...imported.keys()].filter((id) => !catalog.tilesets.some((t) => t.id === id));
  const extra = catalog.tilesets.filter((t) => !imported.has(t.id)).map((t) => t.id);
  if (missing.length === 0 && extra.length === 0) {
    console.log(`Catalogue: ${catalog.tilesets.length} entries, in step with Tilesets.rxdata.`);
  } else {
    fail++;
    console.log(`Catalogue: out of step — missing ${missing.join(', ') || 'none'}, extra ${extra.join(', ') || 'none'}.`);
  }
}

process.exit(fail === 0 ? 0 : 1);
