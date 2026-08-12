import { readFileSync, readdirSync } from 'node:fs';
import { join, resolve } from 'node:path';
import type { SCMap, SCLight } from '../src/core/scmap/format';

const root = resolve(import.meta.dirname, '../../..');
const mapsDir = join(root, 'Data', 'SCMaps');
const failures: string[] = [];
let maps = 0; let lights = 0;

function fail(file: string, message: string): void { failures.push(`${file}: ${message}`); }
function finite(value: number): boolean { return Number.isFinite(value); }
function validateLight(file: string, map: SCMap, light: SCLight, ids: Set<string>): void {
  lights++;
  if (!light.id || ids.has(light.id)) fail(file, `duplicate/empty light id “${light.id}”`);
  ids.add(light.id);
  if (!finite(light.x) || !finite(light.y) || light.x < 0 || light.y < 0 || light.x >= map.width || light.y >= map.height) fail(file, `${light.id}: position outside map`);
  if (!finite(light.radius) || light.radius <= 0 || light.radius > 50) fail(file, `${light.id}: invalid radius`);
  if (!/^#[0-9a-f]{6}$/i.test(light.color)) fail(file, `${light.id}: invalid color`);
  if (!finite(light.intensity) || light.intensity < 0 || light.intensity > 2) fail(file, `${light.id}: invalid intensity`);
  if (!finite(light.flicker) || light.flicker < 0 || light.flicker > 1) fail(file, `${light.id}: invalid flicker`);
  if (light.eventId && !map.events.some((event) => event.id === light.eventId)) fail(file, `${light.id}: missing event ${light.eventId}`);
  if (light.activeHours && (light.activeHours.length !== 2 || light.activeHours.some((hour) => !Number.isInteger(hour) || hour < 0 || hour > 23))) fail(file, `${light.id}: invalid active hours`);
  if (light.type === 'cone' && (light.spread ?? 60) <= 0) fail(file, `${light.id}: invalid cone spread`);
}

for (const file of readdirSync(mapsDir).filter((name) => /^Map\d+\.json$/.test(name)).sort()) {
  let map: SCMap;
  try { map = JSON.parse(readFileSync(join(mapsDir, file), 'utf8')) as SCMap; }
  catch (error) { fail(file, `invalid JSON: ${(error as Error).message}`); continue; }
  maps++;
  if (!map.lighting) { fail(file, 'missing lighting object'); continue; }
  if (!finite(map.lighting.ambient) || map.lighting.ambient < 0 || map.lighting.ambient > 1) fail(file, 'ambient outside 0..1');
  for (const [hour, color] of Object.entries(map.lighting.tintByHour ?? {})) {
    if (!/^([0-9]|1\d|2[0-3])$/.test(hour) || !/^#[0-9a-f]{6}$/i.test(color)) fail(file, `invalid tint key ${hour}:${color}`);
  }
  const ids = new Set<string>();
  for (const light of map.lighting.lights ?? []) validateLight(file, map, light, ids);
}

const core = readFileSync(join(root, 'Plugins', '[SC] Dynamic Lighting System', '[001] GameData.rb'), 'utf8');
const loader = readFileSync(join(root, 'Plugins', '[SC] Dynamic Lighting System', '[007] Prism_Lights.rb'), 'utf8');
for (const [name, source, pattern] of [
  ['save migration', core, /SC_LIGHT_SAVE_VERSION/],
  ['runtime hot reload', loader, /check_hot_reload/],
  ['static-light purge', loader, /start_with\?\("_scmap_"\)/],
] as const) if (!pattern.test(source)) fail('runtime', `missing ${name} guard`);

if (failures.length) {
  console.error(`Lighting verification failed (${failures.length}):\n${failures.join('\n')}`);
  process.exit(1);
}
console.log(`Lighting verification passed: ${maps} maps, ${lights} authored lights.`);
