import assert from 'node:assert/strict';
import { packTile } from '../src/core/scmap/format.ts';
import { autotileVariant } from '../src/render/atlas.ts';

const waterBase = 48;

// Real RMXP maps store a different 0..47 shape variant in each cell. They must
// still form one connected water surface when previewed by the editor.
const importedWater = Int32Array.from(
  Array.from({ length: 9 }, (_, variant) => packTile(0, waterBase + variant)),
);
assert.equal(autotileVariant(importedWater, 3, 3, 1, 1), 0, 'mixed stored variants connect');

// A different autotile (e.g. foam/grass) and the same ID from another tileset
// must remain boundaries, otherwise shorelines disappear between materials.
const isolated = new Int32Array(9);
isolated.fill(packTile(0, waterBase + 46));
isolated[1] = packTile(0, waterBase * 2 + 46);
isolated[5] = packTile(1, waterBase + 46);
assert.equal(autotileVariant(isolated, 3, 3, 1, 1), 36, 'foreign slot creates the correct N/E border');

// Match Essentials' clamped map edges: water touching the map boundary should
// continue outwards rather than gaining an artificial outer shoreline.
const one = Int32Array.of(packTile(0, waterBase + 12));
assert.equal(autotileVariant(one, 1, 1, 0, 0), 0, 'map edge clamps to itself');

console.log('Autotile verification passed: imported water variants and shore edges are correct.');
