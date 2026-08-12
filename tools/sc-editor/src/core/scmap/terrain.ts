/**
 * Essentials terrain tags.
 *
 * Terrain tags drive more behaviour than any other tile attribute in this
 * project: wild encounters key off Grass/TallGrass, Surf and Dive off the water
 * tags, and Waterfall/Ice change movement outright. RPG Maker XP shows them as
 * bare numbers 0-7 in a modal dialog, which is why mistagged water is such a
 * common and hard-to-spot bug — hence naming and colouring them on the map.
 *
 * Ids follow `GameData::TerrainTag` in Data/Scripts/010_Data. Ids beyond the
 * built-in set are rendered generically rather than guessed at, because plugins
 * are free to define their own.
 */

export interface TerrainTagInfo {
  id: number;
  name: string;
  /** Overlay colour, chosen so water reads blue, hazards warm, grass green. */
  color: string;
  /** Short note on what the tag actually changes, shown in the legend. */
  effect: string;
}

export const TERRAIN_TAGS: readonly TerrainTagInfo[] = [
  { id: 0, name: 'None', color: '#5d6b86', effect: 'No special behaviour' },
  { id: 1, name: 'Ledge', color: '#ffb838', effect: 'Jumped down, one way' },
  { id: 2, name: 'Grass', color: '#7dff9b', effect: 'Wild encounters' },
  { id: 3, name: 'Sand', color: '#e8d9a0', effect: 'Leaves footprints' },
  { id: 4, name: 'Rock', color: '#a89b8c', effect: 'Rock Smash surface' },
  { id: 5, name: 'DeepWater', color: '#2a6bd6', effect: 'Surf, drowning depth' },
  { id: 6, name: 'StillWater', color: '#4f9bea', effect: 'Surf, no current' },
  { id: 7, name: 'Water', color: '#38b6ff', effect: 'Surf, encounters' },
  { id: 8, name: 'Waterfall', color: '#7ce0ff', effect: 'Waterfall climb' },
  { id: 9, name: 'WaterfallCrest', color: '#b6f0ff', effect: 'Top of a waterfall' },
  { id: 10, name: 'TallGrass', color: '#2fd46a', effect: 'Encounters, Cut' },
  { id: 11, name: 'UnderwaterGrass', color: '#1f9c78', effect: 'Underwater encounters' },
  { id: 12, name: 'Ice', color: '#c9f2ff', effect: 'Slippery movement' },
  { id: 13, name: 'Neutral', color: '#8fa0bd', effect: 'Explicitly no behaviour' },
  { id: 14, name: 'SootGrass', color: '#9c8b5e', effect: 'Soot collection' },
  { id: 15, name: 'Bridge', color: '#d0a36b', effect: 'Passable over water' },
  { id: 16, name: 'Puddle', color: '#6fc4d6', effect: 'Splash effect' },
  { id: 17, name: 'NoEncounters', color: '#6b7d9c', effect: 'Suppresses encounters' },
];

const BY_ID = new Map(TERRAIN_TAGS.map((t) => [t.id, t]));

export function terrainTag(id: number): TerrainTagInfo {
  return (
    BY_ID.get(id) ?? {
      id,
      name: `Tag ${id}`,
      color: '#9d6bff',
      effect: 'Defined by a plugin',
    }
  );
}
