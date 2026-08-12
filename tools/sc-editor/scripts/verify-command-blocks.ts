/** Regression checks for compound event commands and Move Route synchronisation. */

import { strict as assert } from 'node:assert';
import { commandBlockEnd, commandBlockStart, commandCode, ivar, makeDeref } from '../src/core/events/model.ts';
import {
  buildSetMoveRouteBlock,
  decodeMoveRoute,
  newMoveStep,
  type MoveRouteValue,
} from '../src/core/events/moveRoute.ts';
import { jsonToMarshal, marshalToJson, type JNode, type JValue } from '../src/core/marshal/json.ts';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import {
  buildChoiceBlock,
  buildConditionalBlock,
  buildTextBlock,
  eventCommand as makeEventCommand,
  replaceChoiceBlock,
  updateConditionalBlock,
} from '../src/core/events/compoundCommands.ts';

function eventCommand(code: number): JNode {
  return {
    $: 'obj', c: 'RPG::EventCommand',
    iv: [['@code', code], ['@indent', 0], ['@parameters', { $: 'arr', v: [] }]],
  };
}

const compounds: Array<[number, number]> = [[101, 401], [108, 408], [355, 655], [209, 509]];
for (const [head, continuation] of compounds) {
  const list: JValue[] = [eventCommand(head), eventCommand(continuation), eventCommand(continuation), eventCommand(0)];
  assert.equal(commandBlockEnd(list, 0), 2, `${head} must own its continuation rows`);
  assert.equal(commandBlockEnd(list, 3), 3, 'a plain command is one physical row');
}

const route: MoveRouteValue = {
  repeat: false,
  skippable: true,
  steps: [newMoveStep(1), newMoveStep(14), newMoveStep(15), newMoveStep(41), newMoveStep(44), newMoveStep(45)],
};
const block = buildSetMoveRouteBlock(-1, route, 2, true);
assert.deepEqual(block.map(commandCode), [209, 509, 509, 509, 509, 509, 509, 210]);
assert.equal(commandBlockEnd(block, 0), 7);

const root: JNode = { $: 'arr', v: block };
const bytes = MarshalWriter.dump(jsonToMarshal(root));
const roundTripped = marshalToJson(MarshalReader.parse(bytes));
const commands = (roundTripped as JNode).v as JValue[];
const parameters = ivar(commands[0], 'parameters') as JNode;
const routeNode = (parameters.v as JValue[])[1];
const decoded = decodeMoveRoute(routeNode, makeDeref(roundTripped));

assert.equal(decoded.repeat, route.repeat);
assert.equal(decoded.skippable, route.skippable);
assert.deepEqual(decoded.steps.map((step) => step.code), route.steps.map((step) => step.code));
assert.equal(commands.slice(1, -1).every((node) => commandCode(node) === 509), true);
assert.equal(commandCode(commands.at(-1)), 210);

console.log('ok  compound command boundaries');
console.log('ok  209/509/210 Move Route synchronisation');
console.log('ok  Move Route Marshal round-trip');

const message = buildTextBlock(101, 0, 'one\ntwo\nthree\nfour\nfive');
assert.deepEqual(message.map(commandCode), [101, 401, 401, 401, 101]);

const choices: JValue[] = buildChoiceBlock(0, { choices: ['Yes', 'No'], cancel: 3 });
assert.deepEqual(choices.map(commandCode), [102, 402, 0, 402, 0, 403, 0, 404]);
// Put real content in the first branch; relabelling must not destroy it.
choices.splice(2, 1, makeEventCommand(106, 1, [20]));
replaceChoiceBlock(choices, 0, 0, { choices: ['Accept', 'Decline'], cancel: 0 });
assert.equal(choices.some((command) => commandCode(command) === 106), true);
assert.equal(commandBlockEnd(choices, 0), choices.length - 1);
assert.equal(commandBlockStart(choices, choices.length - 1), 0);

const condition = {
  type: 'switch' as const, id: 1, operator: 0, operandType: 0, operand: 0,
  selfSwitch: 'A', selfSwitchOn: true, script: '', elseBranch: true,
};
const conditional: JValue[] = buildConditionalBlock(0, condition);
assert.deepEqual(conditional.map(commandCode), [111, 0, 411, 0, 412]);
updateConditionalBlock(conditional, 0, { ...condition, elseBranch: false });
assert.deepEqual(conditional.map(commandCode), [111, 0, 412]);
assert.equal(commandBlockEnd(conditional, 0), 2);
assert.equal(commandBlockStart(conditional, 2), 0);

console.log('ok  text continuation and four-line message splitting');
console.log('ok  choice branch generation and content preservation');
console.log('ok  conditional branch generation and Else updates');
