/** Integration checks for event CRUD, movement, clipboard and undo/redo. */
import { strict as assert } from 'node:assert';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { decodeEvent } from '../src/core/events/model.ts';
import { decodeLayers, type SCMap } from '../src/core/scmap/format.ts';
import { useEditor } from '../src/state/store.ts';

const root = resolve(import.meta.dirname, '../../..');
const map = JSON.parse(readFileSync(resolve(root, 'Data/SCMaps/Map002.json'), 'utf8')) as SCMap;
const fixture = JSON.parse(JSON.stringify(map)) as SCMap;
useEditor.setState({
  activeMapId: fixture.id,
  docs: new Map([[fixture.id, { map: fixture, layerData: decodeLayers(fixture), revision: 1, dirty: false }]]),
  selectedEventId: null,
});

const beforeCount = fixture.events.length;
const created = useEditor.getState().createEvent(1, 1);
assert.ok(created);
let events = useEditor.getState().docs.get(fixture.id)!.map.events;
assert.equal(events.length, beforeCount + 1);
assert.deepEqual([decodeEvent(events.find((event) => event.id === created)!.raw)!.x, decodeEvent(events.find((event) => event.id === created)!.raw)!.y], [1, 1]);

useEditor.getState().moveEvent(created!, 3, 4);
events = useEditor.getState().docs.get(fixture.id)!.map.events;
assert.deepEqual([events.find((event) => event.id === created)!.x, events.find((event) => event.id === created)!.y], [3, 4]);
useEditor.getState().undo();
events = useEditor.getState().docs.get(fixture.id)!.map.events;
assert.deepEqual([events.find((event) => event.id === created)!.x, events.find((event) => event.id === created)!.y], [1, 1]);
useEditor.getState().redo();

useEditor.getState().copyEvent(created!);
const pasted = useEditor.getState().pasteEvent(5, 6);
assert.ok(pasted && pasted !== created);
events = useEditor.getState().docs.get(fixture.id)!.map.events;
assert.deepEqual([decodeEvent(events.find((event) => event.id === pasted)!.raw)!.x, decodeEvent(events.find((event) => event.id === pasted)!.raw)!.y], [5, 6]);

useEditor.getState().deleteEvent(pasted!);
assert.equal(useEditor.getState().docs.get(fixture.id)!.map.events.some((event) => event.id === pasted), false);
useEditor.getState().undo();
assert.equal(useEditor.getState().docs.get(fixture.id)!.map.events.some((event) => event.id === pasted), true);

console.log('ok  create valid RPG::Event');
console.log('ok  drag movement with undo/redo');
console.log('ok  copy/paste with fresh identity and coordinates');
console.log('ok  undoable event deletion');
