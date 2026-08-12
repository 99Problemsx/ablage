/**
 * Ruby object model for the subset of Marshal used by RPG Maker XP.
 *
 * We keep decoded values as plain-ish JS wrappers rather than mapping straight
 * to POJOs, because writing .rxdata back out requires preserving class names,
 * ivar order and object identity (Marshal uses backreferences for both symbols
 * and objects, and RMXP relies on shared Table/Color instances in places).
 */

export const RUBY_OBJECT = Symbol.for('sc.ruby.object');
export const RUBY_SYMBOL = Symbol.for('sc.ruby.symbol');

/** A Ruby Symbol. Interned so `===` works and symlink emission can dedupe. */
export class RSymbol {
  private static interned = new Map<string, RSymbol>();
  readonly [RUBY_SYMBOL] = true;

  private constructor(readonly name: string) {}

  static of(name: string): RSymbol {
    let s = RSymbol.interned.get(name);
    if (!s) {
      s = new RSymbol(name);
      RSymbol.interned.set(name, s);
    }
    return s;
  }

  toString() {
    return `:${this.name}`;
  }
}

/**
 * A generic Ruby object (`o:` in Marshal). `className` is the fully qualified
 * Ruby constant, e.g. `RPG::Map`. Instance variables keep insertion order.
 */
export class RObject {
  readonly [RUBY_OBJECT] = true;
  /** ivar names include the leading `@`, matching Marshal's on-wire form. */
  readonly ivars = new Map<string, RValue>();

  constructor(readonly className: string) {}

  get(name: string): RValue {
    return this.ivars.get(name.startsWith('@') ? name : `@${name}`) ?? null;
  }

  set(name: string, value: RValue): void {
    this.ivars.set(name.startsWith('@') ? name : `@${name}`, value);
  }

  has(name: string): boolean {
    return this.ivars.has(name.startsWith('@') ? name : `@${name}`);
  }

  /** Convenience accessors that assert the expected primitive shape. */
  int(name: string, fallback = 0): number {
    const v = this.get(name);
    return typeof v === 'number' ? v : fallback;
  }

  str(name: string, fallback = ''): string {
    const v = this.get(name);
    return v instanceof RString ? v.value : fallback;
  }

  bool(name: string, fallback = false): boolean {
    const v = this.get(name);
    return typeof v === 'boolean' ? v : fallback;
  }

  obj(name: string): RObject | null {
    const v = this.get(name);
    return v instanceof RObject ? v : null;
  }
}

/**
 * A Ruby String. RMXP writes them as raw bytes; encoding is usually implied by
 * the game (UTF-8 for Essentials) but may carry an `:E`/`:encoding` ivar.
 */
export class RString {
  readonly bytes: Uint8Array;
  /** Set when Marshal wrapped the string in an ivar block declaring encoding. */
  encoding?: string;

  constructor(bytes: Uint8Array, encoding?: string) {
    this.bytes = bytes;
    this.encoding = encoding;
  }

  static from(text: string): RString {
    return new RString(new TextEncoder().encode(text), 'UTF-8');
  }

  get value(): string {
    // RMXP data is effectively UTF-8 in Essentials projects; lone invalid bytes
    // decode to U+FFFD rather than throwing, which is what we want for display.
    return new TextDecoder('utf-8').decode(this.bytes);
  }

  toString() {
    return this.value;
  }
}

/**
 * RGSS `Table`: a 1-3 dimensional array of signed 16-bit ints, serialised via
 * `_dump`/`_load` as a raw byte blob. Map tile data is a Table(w, h, 3).
 */
export class RTable {
  readonly data: Int16Array;

  constructor(
    readonly xsize: number,
    readonly ysize: number = 1,
    readonly zsize: number = 1,
    data?: Int16Array,
  ) {
    const n = xsize * ysize * zsize;
    this.data = data ?? new Int16Array(n);
    if (this.data.length !== n) {
      throw new Error(`Table size mismatch: expected ${n}, got ${this.data.length}`);
    }
  }

  /** Number of significant dimensions, as Marshal records it. */
  get dim(): number {
    if (this.zsize > 1) return 3;
    if (this.ysize > 1) return 2;
    return 1;
  }

  at(x: number, y = 0, z = 0): number {
    return this.data[x + y * this.xsize + z * this.xsize * this.ysize];
  }

  put(x: number, y: number, z: number, value: number): void {
    this.data[x + y * this.xsize + z * this.xsize * this.ysize] = value;
  }
}

/**
 * A Ruby Float.
 *
 * We cannot represent this as a bare JS number: `98.0` and `98` are the same
 * value in JS but different Marshal tags in Ruby, so a bare number would make
 * every integral float round-trip incorrectly. `raw` keeps Ruby's own decimal
 * text, because Ruby and JS disagree on formatting at the edges (Ruby writes
 * `1.0e+20`, JS writes `100000000000000000000`).
 */
export class RFloat {
  constructor(
    readonly value: number,
    readonly raw?: string,
  ) {}

  static of(value: number): RFloat {
    return new RFloat(value);
  }

  valueOf() {
    return this.value;
  }
}

/** A Ruby Bignum — outside Fixnum range, so it needs its own tag on write. */
export class RBignum {
  constructor(readonly value: bigint) {}

  valueOf() {
    return Number(this.value);
  }
}

/** Coerce any Marshal numeric to a JS number, for callers that just want math. */
export function asNumber(v: RValue, fallback = 0): number {
  if (typeof v === 'number') return v;
  if (v instanceof RFloat) return v.value;
  if (v instanceof RBignum) return Number(v.value);
  return fallback;
}

/** RGSS `Color` / `Tone`: four doubles dumped raw. */
export class RColor {
  constructor(
    readonly red: number,
    readonly green: number,
    readonly blue: number,
    readonly alpha: number,
    /** `Color` and `Tone` share a layout; remember which one we read. */
    readonly className: 'Color' | 'Tone' = 'Color',
  ) {}
}

/**
 * Any user-defined class we do not model explicitly. Keeping the raw payload
 * means we can round-trip unknown data (e.g. plugin-added classes) untouched.
 */
export class RUserDef {
  constructor(
    readonly className: string,
    readonly payload: Uint8Array,
  ) {}
}

/** A Ruby Hash. Keys are RValues, so we cannot use a plain object. */
export class RHash {
  readonly entries: Array<[RValue, RValue]> = [];
  /** Value of `Hash#default`, if the stream used `}` instead of `{`. */
  defaultValue: RValue = null;

  get(key: RValue): RValue {
    for (const [k, v] of this.entries) if (rubyKeyEqual(k, key)) return v;
    return this.defaultValue;
  }

  set(key: RValue, value: RValue): void {
    for (const e of this.entries) {
      if (rubyKeyEqual(e[0], key)) {
        e[1] = value;
        return;
      }
    }
    this.entries.push([key, value]);
  }

  get size(): number {
    return this.entries.length;
  }
}

/** Structural equality for the key types RMXP actually uses (ints, symbols). */
function rubyKeyEqual(a: RValue, b: RValue): boolean {
  if (a === b) return true;
  if (a instanceof RString && b instanceof RString) return a.value === b.value;
  return false;
}

/**
 * Side tables for metadata that Marshal can attach to a *builtin* container.
 *
 * Ruby lets an Array/Hash/String be both subclassed (`C` tag, e.g. Essentials'
 * `PBAnimations < Array`) and carry instance variables (`I` tag). Neither fits
 * on a plain JS array, and wrapping arrays in a class would infect every
 * consumer, so the metadata lives beside the value instead.
 */
export const subclassOf = new WeakMap<object, string>();
export const extraIvars = new WeakMap<object, Map<string, RValue>>();

export function setExtraIvar(target: object, name: string, value: RValue): void {
  let m = extraIvars.get(target);
  if (!m) {
    m = new Map();
    extraIvars.set(target, m);
  }
  m.set(name, value);
}

export type RValue =
  | null
  | boolean
  | number
  | RFloat
  | RBignum
  | RSymbol
  | RString
  | RObject
  | RTable
  | RColor
  | RUserDef
  | RHash
  | RValue[];
