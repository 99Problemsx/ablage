import { asArray, asInt, asStr, commandCode, ivar, setIvar, strNode } from './model';
import type { JNode, JValue } from '../marshal/json';

function arr(v: JValue[]): JNode { return { $: 'arr', v }; }

export function eventCommand(code: number, indent: number, params: JValue[] = []): JNode {
  return {
    $: 'obj', c: 'RPG::EventCommand',
    iv: [['@code', code], ['@indent', indent], ['@parameters', arr(params)]],
  };
}

const TEXT_CONTINUATION: Record<number, number> = { 101: 401, 108: 408, 355: 655 };

export function readTextBlock(commands: JValue[], at: number): string {
  const head = commandCode(commands[at]);
  const continuation = TEXT_CONTINUATION[head];
  const lines = [asStr(asArray(ivar(commands[at], 'parameters'))[0])];
  for (let i = at + 1; continuation && commandCode(commands[i]) === continuation; i++) {
    lines.push(asStr(asArray(ivar(commands[i], 'parameters'))[0]));
  }
  return lines.join('\n');
}

export function buildTextBlock(code: number, indent: number, text: string): JNode[] {
  const lines = text.replace(/\r\n?/g, '\n').split('\n');
  const continuation = TEXT_CONTINUATION[code];
  return lines.map((line, index) => {
    // RMXP message boxes contain four lines. Longer input becomes consecutive
    // Show Text blocks instead of an invalid, unbounded 401 continuation chain.
    const startsBlock = index === 0 || (code === 101 && index % 4 === 0);
    return eventCommand(startsBlock ? code : continuation, indent, [strNode(line)]);
  });
}

export interface ChoiceBlockValue {
  choices: string[];
  cancel: number;
}

export function readChoiceBlock(commands: JValue[], at: number): ChoiceBlockValue {
  const params = asArray(ivar(commands[at], 'parameters'));
  return {
    choices: asArray(params[0]).map((choice) => asStr(choice)),
    cancel: asInt(params[1]),
  };
}

/**
 * Rewrites the choice headers while preserving the command bodies of choices
 * which still exist. Removing a choice deliberately removes its branch body.
 */
export function replaceChoiceBlock(commands: JValue[], at: number, indent: number, value: ChoiceBlockValue): number {
  const end = structuredBlockEnd(commands, at);
  const existing = commands.slice(at + 1, end);
  const bodies = new Map<number, JValue[]>();
  let cancelBody: JValue[] = [];
  let i = 0;
  while (i < existing.length) {
    const header = existing[i];
    const code = commandCode(header);
    if (code !== 402 && code !== 403) { i++; continue; }
    const next: JValue[] = [];
    i++;
    while (i < existing.length && ![402, 403, 404].includes(commandCode(existing[i]))) next.push(existing[i++]);
    if (code === 402) bodies.set(asInt(asArray(ivar(header, 'parameters'))[0]), next);
    else cancelBody = next;
  }

  const block: JValue[] = [eventCommand(102, indent, [arr(value.choices.map(strNode)), value.cancel])];
  value.choices.forEach((choice, index) => {
    block.push(eventCommand(402, indent, [index, strNode(choice)]));
    block.push(...(bodies.get(index) ?? [eventCommand(0, indent + 1)]));
  });
  if (value.cancel === value.choices.length + 1) {
    block.push(eventCommand(403, indent));
    block.push(...(cancelBody.length > 0 ? cancelBody : [eventCommand(0, indent + 1)]));
  }
  block.push(eventCommand(404, indent));
  commands.splice(at, end - at + 1, ...block);
  return block.length;
}

export function buildChoiceBlock(indent: number, value: ChoiceBlockValue): JNode[] {
  const commands: JValue[] = [eventCommand(102, indent), eventCommand(404, indent)];
  replaceChoiceBlock(commands, 0, indent, value);
  return commands as JNode[];
}

/** Finds a nested branch/choice/loop terminator at the same indent. */
export function structuredBlockEnd(commands: JValue[], start: number): number {
  const head = commandCode(commands[start]);
  const endCode = head === 102 ? 404 : head === 111 ? 412 : head === 112 ? 413 : -1;
  if (endCode === -1) return start;
  const indent = asInt(ivar(commands[start], 'indent'));
  for (let i = start + 1; i < commands.length; i++) {
    if (commandCode(commands[i]) === endCode && asInt(ivar(commands[i], 'indent')) === indent) return i;
  }
  return start;
}

export interface ConditionalValue {
  type: 'switch' | 'variable' | 'selfSwitch' | 'script';
  id: number;
  operator: number;
  operandType: number;
  operand: number;
  selfSwitch: string;
  selfSwitchOn: boolean;
  script: string;
  elseBranch: boolean;
}

export function readConditional(commands: JValue[], at: number): ConditionalValue {
  const p = asArray(ivar(commands[at], 'parameters'));
  const kind = asInt(p[0]);
  const end = structuredBlockEnd(commands, at);
  return {
    type: kind === 1 ? 'variable' : kind === 2 ? 'selfSwitch' : kind === 12 ? 'script' : 'switch',
    id: asInt(p[1], 1), operator: kind === 0 ? asInt(p[2]) : asInt(p[4]), operandType: asInt(p[2]), operand: asInt(p[3]),
    selfSwitch: asStr(p[1], 'A'), selfSwitchOn: asInt(p[2]) === 0,
    script: asStr(p[1]),
    elseBranch: commands.slice(at + 1, end).some((command) => commandCode(command) === 411),
  };
}

export function conditionalParams(value: ConditionalValue): JValue[] {
  if (value.type === 'variable') return [1, value.id, value.operandType, value.operand, value.operator];
  if (value.type === 'selfSwitch') return [2, strNode(value.selfSwitch), value.selfSwitchOn ? 0 : 1];
  if (value.type === 'script') return [12, strNode(value.script)];
  return [0, value.id, value.operator === 0 ? 0 : 1];
}

export function buildConditionalBlock(indent: number, value: ConditionalValue): JNode[] {
  const block = [eventCommand(111, indent, conditionalParams(value)), eventCommand(0, indent + 1)];
  if (value.elseBranch) block.push(eventCommand(411, indent), eventCommand(0, indent + 1));
  block.push(eventCommand(412, indent));
  return block;
}

export function updateConditionalBlock(commands: JValue[], at: number, value: ConditionalValue): void {
  const end = structuredBlockEnd(commands, at);
  const indent = asInt(ivar(commands[at], 'indent'));
  setIvar(commands[at], 'parameters', arr(conditionalParams(value)));
  const elseAt = commands.findIndex((command, index) => index > at && index < end && commandCode(command) === 411 && asInt(ivar(command, 'indent')) === indent);
  if (value.elseBranch && elseAt === -1) commands.splice(end, 0, eventCommand(411, indent), eventCommand(0, indent + 1));
  if (!value.elseBranch && elseAt !== -1) commands.splice(elseAt, end - elseAt);
}
