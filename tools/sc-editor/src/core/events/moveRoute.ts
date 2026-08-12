import { asArray, asBool, asInt, asStr, ivar, strNode, type Deref } from './model';
import type { JNode, JValue } from '../marshal/json';

export interface MoveStep {
  code: number;
  params: JValue[];
}

export interface MoveRouteValue {
  repeat: boolean;
  skippable: boolean;
  steps: MoveStep[];
}

export const MOVE_STEP_NAMES: ReadonlyArray<string> = [
  '', 'Move Down', 'Move Left', 'Move Right', 'Move Up', 'Move Lower Left',
  'Move Lower Right', 'Move Upper Left', 'Move Upper Right', 'Move at Random',
  'Move toward Player', 'Move away from Player', 'Step Forward', 'Step Backward',
  'Jump', 'Wait', 'Turn Down', 'Turn Left', 'Turn Right', 'Turn Up',
  'Turn 90° Right', 'Turn 90° Left', 'Turn 180°', 'Turn 90° Random',
  'Turn at Random', 'Turn toward Player', 'Turn away from Player', 'Switch ON',
  'Switch OFF', 'Change Speed', 'Change Frequency', 'Walk Anime ON',
  'Walk Anime OFF', 'Step Anime ON', 'Step Anime OFF', 'Direction Fix ON',
  'Direction Fix OFF', 'Through ON', 'Through OFF', 'Always on Top ON',
  'Always on Top OFF', 'Change Graphic', 'Change Opacity', 'Change Blending',
  'Play SE', 'Script',
];

const DEFAULT_PARAMS: Record<number, () => JValue[]> = {
  14: () => [0, 0],
  15: () => [15],
  27: () => [1],
  28: () => [1],
  29: () => [3],
  30: () => [3],
  41: () => [strNode(''), 0],
  42: () => [255],
  43: () => [0],
  44: () => [audioFile()],
  45: () => [strNode('')],
};

function arr(v: JValue[]): JNode {
  return { $: 'arr', v };
}

function audioFile(name = '', volume = 80, pitch = 100): JNode {
  return {
    $: 'obj', c: 'RPG::AudioFile',
    iv: [['@name', strNode(name)], ['@volume', volume], ['@pitch', pitch]],
  };
}

export function newMoveStep(code: number): MoveStep {
  return { code, params: DEFAULT_PARAMS[code]?.() ?? [] };
}

export function decodeMoveRoute(raw: JValue | undefined, deref: Deref = (v) => v): MoveRouteValue {
  const route = deref(raw);
  const steps = asArray(ivar(route, 'list'))
    .map((item) => deref(item))
    .filter((item) => asInt(ivar(item, 'code')) !== 0)
    .map((item) => ({
      code: asInt(ivar(item, 'code')),
      params: asArray(ivar(item, 'parameters')).map((p) => deref(p) ?? null),
    }));
  return {
    repeat: asBool(ivar(route, 'repeat')),
    skippable: asBool(ivar(route, 'skippable')),
    steps,
  };
}

export function buildMoveCommand(step: MoveStep): JNode {
  return {
    $: 'obj', c: 'RPG::MoveCommand',
    iv: [['@code', step.code], ['@parameters', arr(step.params)]],
  };
}

export function buildMoveRoute(value: MoveRouteValue): JNode {
  return {
    $: 'obj', c: 'RPG::MoveRoute',
    iv: [
      ['@repeat', value.repeat],
      ['@skippable', value.skippable],
      ['@list', arr([...value.steps.map(buildMoveCommand), buildMoveCommand({ code: 0, params: [] })])],
    ],
  };
}

export function moveStepSummary(step: MoveStep): string {
  const name = MOVE_STEP_NAMES[step.code] ?? `Move code ${step.code}`;
  if (step.code === 14) return `${name}: ${asNumber(step.params[0])}, ${asNumber(step.params[1])}`;
  if ([15, 27, 28, 29, 30, 42].includes(step.code)) return `${name}: ${asNumber(step.params[0])}`;
  if (step.code === 43) return `${name}: ${['Normal', 'Add', 'Subtract'][asNumber(step.params[0])] ?? asNumber(step.params[0])}`;
  if (step.code === 41 || step.code === 45) return `${name}: ${asStr(step.params[0])}`;
  if (step.code === 44) return `${name}: ${asStr(ivar(step.params[0], 'name'), '(none)')}`;
  return name;
}

export function asNumber(value: JValue | undefined, fallback = 0): number {
  return typeof value === 'number' ? value : fallback;
}

export function setStringParam(step: MoveStep, index: number, value: string): MoveStep {
  const params = [...step.params];
  params[index] = strNode(value);
  return { ...step, params };
}

export function setNumberParam(step: MoveStep, index: number, value: number): MoveStep {
  const params = [...step.params];
  params[index] = value;
  return { ...step, params };
}

export function audioParams(step: MoveStep): { name: string; volume: number; pitch: number } {
  const audio = step.params[0];
  return {
    name: asStr(ivar(audio, 'name')),
    volume: asInt(ivar(audio, 'volume'), 80),
    pitch: asInt(ivar(audio, 'pitch'), 100),
  };
}

export function setAudioParams(step: MoveStep, value: { name: string; volume: number; pitch: number }): MoveStep {
  return { ...step, params: [audioFile(value.name, value.volume, value.pitch)] };
}

/** Builds the physical 209 + 509 block RMXP stores for one route. */
export function buildSetMoveRouteBlock(
  target: number,
  route: MoveRouteValue,
  indent: number,
  wait: boolean,
): JNode[] {
  const routeNode = buildMoveRoute(route);
  const head: JNode = {
    $: 'obj', c: 'RPG::EventCommand',
    iv: [['@code', 209], ['@indent', indent], ['@parameters', arr([target, routeNode])]],
  };
  const continuations = route.steps.map((step): JNode => ({
    $: 'obj', c: 'RPG::EventCommand',
    iv: [['@code', 509], ['@indent', indent], ['@parameters', arr([buildMoveCommand(step)])]],
  }));
  const waitNode: JNode[] = wait ? [{
    $: 'obj', c: 'RPG::EventCommand',
    iv: [['@code', 210], ['@indent', indent], ['@parameters', arr([])]],
  }] : [];
  return [head, ...continuations, ...waitNode];
}
