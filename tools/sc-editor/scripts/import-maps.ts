/**
 * Runs a full project import and writes Data/SCMaps/*.json.
 *
 * Nothing under Data/*.rxdata or PBS/ is touched, so this is safe to re-run.
 * Pass --dry to report without writing.
 */

import { existsSync, mkdirSync, readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import { importProject, type ImportFs } from '../src/core/import/rxdata.ts';
import { decodeLayers } from '../src/core/scmap/format.ts';
import { serialiseMap } from '../src/core/scmap/serialize.ts';
import { SCMAP_FORMAT_VERSION } from '../src/core/scmap/format.ts';

const PROJECT_ROOT = resolve(import.meta.dirname, '../../..');
const OUT_DIR = join(PROJECT_ROOT, 'Data', 'SCMaps');
const dryRun = process.argv.includes('--dry');

const fs: ImportFs = {
  readFile: (path) => new Uint8Array(readFileSync(path)),
  readTextIfExists: (path) => (existsSync(path) ? readFileSync(path, 'utf8') : null),
  listDir: (path) => readdirSync(path),
  join: (...parts) => join(...parts),
};

console.log(`Importing project at ${PROJECT_ROOT}${dryRun ? ' (dry run)' : ''}\n`);
const started = Date.now();
const result = importProject(fs, PROJECT_ROOT);

if (!dryRun) mkdirSync(OUT_DIR, { recursive: true });

// The tileset catalogue is shared by every map, so it is written once.
const catalogue = {
  formatVersion: SCMAP_FORMAT_VERSION,
  tilesets: [...result.tilesets.values()].sort((a, b) => a.id - b.id),
};
const catalogueJson = `${JSON.stringify(catalogue, null, 2)}\n`;
if (!dryRun) writeFileSync(join(OUT_DIR, 'tilesets.json'), catalogueJson, 'utf8');

let totalBytes = 0;
let totalEvents = 0;
let totalTiles = 0;

for (const map of result.maps) {
  const json = serialiseMap(map);
  totalBytes += json.length;
  totalEvents += map.events.length;

  // Confirm the RLE survives a decode, and count non-empty tiles as a sanity
  // signal that we actually read tile data rather than a field of zeroes.
  const layers = decodeLayers(map);
  for (const layer of layers) {
    for (let i = 0; i < layer.length; i++) if (layer[i] !== 0) totalTiles++;
  }
  for (const layer of layers) {
    if (layer.length !== map.width * map.height) {
      throw new Error(`Map ${map.id}: decoded layer size mismatch`);
    }
  }

  if (!dryRun) {
    writeFileSync(join(OUT_DIR, `Map${String(map.id).padStart(3, '0')}.json`), json, 'utf8');
  }
}

const elapsed = Date.now() - started;
console.log(`Maps          ${result.maps.length}`);
console.log(`Tilesets      ${result.tilesets.size}`);
console.log(`Events        ${totalEvents}`);
console.log(`Painted tiles ${totalTiles.toLocaleString()}`);
console.log(`Output        ${(totalBytes / 1024 / 1024).toFixed(2)} MiB across ${result.maps.length} map files`);
console.log(`Catalogue     ${(catalogueJson.length / 1024).toFixed(0)} KiB (tilesets.json)`);
console.log(`Elapsed       ${elapsed} ms`);

if (result.warnings.length > 0) {
  console.log(`\nWarnings (${result.warnings.length}):`);
  for (const w of result.warnings.slice(0, 20)) console.log(`  - ${w}`);
  if (result.warnings.length > 20) console.log(`  ... and ${result.warnings.length - 20} more`);
} else {
  console.log('\nNo warnings.');
}

// Spot-check a couple of maps so the numbers are legible rather than abstract.
for (const id of [2, 7]) {
  const map = result.maps.find((m) => m.id === id);
  if (!map) continue;
  console.log(`\nMap ${id} — ${map.name}`);
  const tsName = result.tilesets.get(map.tilesets[0]?.tilesetId ?? -1)?.name ?? "none";
  console.log(`  ${map.width}x${map.height}, tileset "${tsName}"`);
  console.log(`  layers      ${map.layers.map((l) => l.name).join(', ')}`);
  console.log(`  events      ${map.events.length}`);
  console.log(`  connections ${map.connections.map((c) => `${c.edge}->${c.toMapId}`).join(', ') || 'none'}`);
  console.log(`  encounters  ${map.encounters.map((e) => `${e.type}(${e.slots.length})`).join(', ') || 'none'}`);
  console.log(`  weather     ${map.weather.kind} @${map.weather.chance}%`);
}
