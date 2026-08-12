import { spawn } from "node:child_process";
import { writeFileSync, mkdirSync, readFileSync, existsSync, readdirSync } from "node:fs";
import { dirname, join, resolve, parse, isAbsolute, relative, sep } from "node:path";
import { app, BrowserWindow, session, ipcMain, dialog, shell } from "electron";
const IPC = {
  projectOpen: "project:open",
  projectPick: "project:pick",
  projectReimport: "project:reimport",
  mapLoad: "map:load",
  mapSave: "map:save",
  tilesetCatalogLoad: "tileset:catalog:load",
  tilesetCatalogSave: "tileset:catalog:save",
  imageLoad: "image:load",
  pbsRead: "pbs:read",
  pbsWrite: "pbs:write",
  scriptList: "script:list",
  scriptRead: "script:read",
  scriptWrite: "script:write",
  scriptSystemRead: "script-system:read",
  scriptSystemWrite: "script-system:write",
  gameLaunch: "game:launch",
  gameStop: "game:stop",
  gameLog: "game:log",
  windowMinimize: "window:minimize",
  windowToggleMaximize: "window:toggle-maximize",
  windowClose: "window:close",
  windowState: "window:state",
  graphicsList: "graphics:list",
  systemNames: "system:names",
  eventExport: "event:export",
  eventImport: "event:import"
};
const RUBY_OBJECT = /* @__PURE__ */ Symbol.for("sc.ruby.object");
const RUBY_SYMBOL = /* @__PURE__ */ Symbol.for("sc.ruby.symbol");
class RSymbol {
  constructor(name) {
    this.name = name;
  }
  name;
  static interned = /* @__PURE__ */ new Map();
  [RUBY_SYMBOL] = true;
  static of(name) {
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
class RObject {
  constructor(className) {
    this.className = className;
  }
  className;
  [RUBY_OBJECT] = true;
  /** ivar names include the leading `@`, matching Marshal's on-wire form. */
  ivars = /* @__PURE__ */ new Map();
  get(name) {
    return this.ivars.get(name.startsWith("@") ? name : `@${name}`) ?? null;
  }
  set(name, value) {
    this.ivars.set(name.startsWith("@") ? name : `@${name}`, value);
  }
  has(name) {
    return this.ivars.has(name.startsWith("@") ? name : `@${name}`);
  }
  /** Convenience accessors that assert the expected primitive shape. */
  int(name, fallback = 0) {
    const v = this.get(name);
    return typeof v === "number" ? v : fallback;
  }
  str(name, fallback = "") {
    const v = this.get(name);
    return v instanceof RString ? v.value : fallback;
  }
  bool(name, fallback = false) {
    const v = this.get(name);
    return typeof v === "boolean" ? v : fallback;
  }
  obj(name) {
    const v = this.get(name);
    return v instanceof RObject ? v : null;
  }
}
class RString {
  bytes;
  /** Set when Marshal wrapped the string in an ivar block declaring encoding. */
  encoding;
  constructor(bytes, encoding) {
    this.bytes = bytes;
    this.encoding = encoding;
  }
  static from(text) {
    return new RString(new TextEncoder().encode(text), "UTF-8");
  }
  get value() {
    return new TextDecoder("utf-8").decode(this.bytes);
  }
  toString() {
    return this.value;
  }
}
class RTable {
  constructor(xsize, ysize = 1, zsize = 1, data) {
    this.xsize = xsize;
    this.ysize = ysize;
    this.zsize = zsize;
    const n = xsize * ysize * zsize;
    this.data = data ?? new Int16Array(n);
    if (this.data.length !== n) {
      throw new Error(`Table size mismatch: expected ${n}, got ${this.data.length}`);
    }
  }
  xsize;
  ysize;
  zsize;
  data;
  /** Number of significant dimensions, as Marshal records it. */
  get dim() {
    if (this.zsize > 1) return 3;
    if (this.ysize > 1) return 2;
    return 1;
  }
  at(x, y = 0, z = 0) {
    return this.data[x + y * this.xsize + z * this.xsize * this.ysize];
  }
  put(x, y, z, value) {
    this.data[x + y * this.xsize + z * this.xsize * this.ysize] = value;
  }
}
class RFloat {
  constructor(value, raw) {
    this.value = value;
    this.raw = raw;
  }
  value;
  raw;
  static of(value) {
    return new RFloat(value);
  }
  valueOf() {
    return this.value;
  }
}
class RBignum {
  constructor(value) {
    this.value = value;
  }
  value;
  valueOf() {
    return Number(this.value);
  }
}
function asNumber(v, fallback = 0) {
  if (typeof v === "number") return v;
  if (v instanceof RFloat) return v.value;
  if (v instanceof RBignum) return Number(v.value);
  return fallback;
}
class RColor {
  constructor(red, green, blue, alpha, className = "Color") {
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.alpha = alpha;
    this.className = className;
  }
  red;
  green;
  blue;
  alpha;
  className;
}
class RUserDef {
  constructor(className, payload) {
    this.className = className;
    this.payload = payload;
  }
  className;
  payload;
}
class RHash {
  entries = [];
  /** Value of `Hash#default`, if the stream used `}` instead of `{`. */
  defaultValue = null;
  get(key) {
    for (const [k, v] of this.entries) if (rubyKeyEqual(k, key)) return v;
    return this.defaultValue;
  }
  set(key, value) {
    for (const e of this.entries) {
      if (rubyKeyEqual(e[0], key)) {
        e[1] = value;
        return;
      }
    }
    this.entries.push([key, value]);
  }
  get size() {
    return this.entries.length;
  }
}
function rubyKeyEqual(a, b) {
  if (a === b) return true;
  if (a instanceof RString && b instanceof RString) return a.value === b.value;
  return false;
}
const subclassOf = /* @__PURE__ */ new WeakMap();
const extraIvars = /* @__PURE__ */ new WeakMap();
function setExtraIvar(target, name, value) {
  let m = extraIvars.get(target);
  if (!m) {
    m = /* @__PURE__ */ new Map();
    extraIvars.set(target, m);
  }
  m.set(name, value);
}
class MarshalError extends Error {
}
class MarshalReader {
  constructor(buf) {
    this.buf = buf;
  }
  buf;
  pos = 0;
  /** Symbol table for `;` symlinks — index order is first-appearance order. */
  symbols = [];
  /** Object table for `@` objlinks. Note: symbols are NOT in this table. */
  objects = [];
  static parse(buf) {
    return new MarshalReader(buf).read();
  }
  read() {
    const major = this.byte();
    const minor = this.byte();
    if (major !== 4) {
      throw new MarshalError(`Unsupported Marshal major version ${major}.${minor}`);
    }
    return this.readValue();
  }
  // ---------------------------------------------------------------- primitives
  byte() {
    if (this.pos >= this.buf.length) throw new MarshalError("Unexpected end of stream");
    return this.buf[this.pos++];
  }
  bytes(n) {
    if (this.pos + n > this.buf.length) {
      throw new MarshalError(`Unexpected end of stream reading ${n} bytes at ${this.pos}`);
    }
    const out = this.buf.subarray(this.pos, this.pos + n);
    this.pos += n;
    return out;
  }
  /**
   * Marshal's packed integer ("long") encoding. The first byte is either the
   * value biased by 5 (for small ints), or a signed count of following
   * little-endian bytes.
   */
  long() {
    const c = this.byte() << 24 >> 24;
    if (c === 0) return 0;
    if (c > 0) {
      if (c > 4) return c - 5;
      let n2 = 0;
      for (let i = 0; i < c; i++) n2 |= this.byte() << 8 * i;
      return n2;
    }
    if (c < -4) return c + 5;
    let n = -1;
    for (let i = 0; i < -c; i++) {
      n = n & ~(255 << 8 * i) | this.byte() << 8 * i;
    }
    return n;
  }
  // ------------------------------------------------------------------- values
  readValue() {
    const tag = String.fromCharCode(this.byte());
    switch (tag) {
      case "0":
        return null;
      case "T":
        return true;
      case "F":
        return false;
      case "i":
        return this.long();
      case "f":
        return this.readFloat();
      case "l":
        return this.readBignum();
      case ":":
        return this.readSymbolDef();
      case ";":
        return this.readSymLink();
      case "@":
        return this.readObjLink();
      case '"':
        return this.readString();
      case "[":
        return this.readArray();
      case "{":
        return this.readHash(false);
      case "}":
        return this.readHash(true);
      case "o":
        return this.readObject();
      case "u":
        return this.readUserDef();
      case "U":
        return this.readUserMarshal();
      case "I":
        return this.readIvarWrapped();
      case "e":
        return this.readExtended();
      case "C":
        return this.readSubclassed();
      default:
        throw new MarshalError(
          `Unhandled Marshal tag '${tag}' (0x${tag.charCodeAt(0).toString(16)}) at ${this.pos - 1}`
        );
    }
  }
  readFloat() {
    const text = new TextDecoder("ascii").decode(this.bytes(this.long()));
    const value = text === "inf" ? Infinity : text === "-inf" ? -Infinity : text === "nan" ? NaN : Number.parseFloat(text);
    const f = new RFloat(value, text);
    this.objects.push(f);
    return f;
  }
  readBignum() {
    const negative = String.fromCharCode(this.byte()) === "-";
    const words = this.long();
    let value = 0n;
    for (let i = 0; i < words; i++) {
      const lo = this.byte();
      const hi = this.byte();
      value |= BigInt(lo | hi << 8) << BigInt(16 * i);
    }
    const b = new RBignum(negative ? -value : value);
    this.objects.push(b);
    return b;
  }
  readSymbolDef() {
    const name = new TextDecoder("utf-8").decode(this.bytes(this.long()));
    const sym = RSymbol.of(name);
    this.symbols.push(sym);
    return sym;
  }
  readSymLink() {
    const idx = this.long();
    const sym = this.symbols[idx];
    if (!sym) throw new MarshalError(`Bad symlink index ${idx}`);
    return sym;
  }
  readObjLink() {
    const idx = this.long();
    if (idx >= this.objects.length) throw new MarshalError(`Bad objlink index ${idx}`);
    return this.objects[idx];
  }
  readString() {
    const s = new RString(new Uint8Array(this.bytes(this.long())));
    this.objects.push(s);
    return s;
  }
  readArray() {
    const n = this.long();
    const arr = [];
    this.objects.push(arr);
    for (let i = 0; i < n; i++) arr.push(this.readValue());
    return arr;
  }
  readHash(withDefault) {
    const n = this.long();
    const h = new RHash();
    this.objects.push(h);
    for (let i = 0; i < n; i++) {
      const k = this.readValue();
      h.entries.push([k, this.readValue()]);
    }
    if (withDefault) h.defaultValue = this.readValue();
    return h;
  }
  readObject() {
    const className = this.readSymbolRef().name;
    const o = new RObject(className);
    this.objects.push(o);
    const n = this.long();
    for (let i = 0; i < n; i++) {
      const name = this.readSymbolRef().name;
      o.ivars.set(name, this.readValue());
    }
    return o;
  }
  /** `u` — class implements `_dump`; payload is opaque bytes. */
  readUserDef() {
    const className = this.readSymbolRef().name;
    const payload = new Uint8Array(this.bytes(this.long()));
    const value = decodeUserDef(className, payload);
    this.objects.push(value);
    return value;
  }
  /** `U` — class implements `marshal_dump`; payload is a normal Marshal value. */
  readUserMarshal() {
    const className = this.readSymbolRef().name;
    const o = new RObject(className);
    this.objects.push(o);
    o.set("@__marshal_dump", this.readValue());
    return o;
  }
  /**
   * `I` — the next value is followed by an ivar block. Usually a String
   * carrying its `:E` encoding flag, but Essentials also ships ivar-bearing
   * Array subclasses (PkmnAnimations.rxdata).
   */
  readIvarWrapped() {
    const inner = this.readValue();
    const n = this.long();
    for (let i = 0; i < n; i++) {
      const name = this.readSymbolRef().name;
      const value = this.readValue();
      if (inner instanceof RString && (name === "E" || name === "encoding")) {
        inner.encoding = name === "E" ? value === true ? "UTF-8" : "US-ASCII" : value instanceof RString ? value.value : void 0;
      } else if (inner instanceof RObject) {
        inner.ivars.set(name, value);
      } else if (inner !== null && typeof inner === "object") {
        setExtraIvar(inner, name, value);
      }
    }
    return inner;
  }
  /** `e` — object extended with a module. We record it but keep the object. */
  readExtended() {
    const module = this.readSymbolRef().name;
    const inner = this.readValue();
    if (inner instanceof RObject) inner.set("@__extended", RString.from(module));
    return inner;
  }
  /** `C` — a builtin (String/Array/Hash) subclassed by a user class. */
  readSubclassed() {
    const className = this.readSymbolRef().name;
    const inner = this.readValue();
    if (inner !== null && typeof inner === "object") subclassOf.set(inner, className);
    return inner;
  }
  /** Symbols in structural positions may be either a definition or a link. */
  readSymbolRef() {
    const tag = String.fromCharCode(this.byte());
    if (tag === ":") return this.readSymbolDef();
    if (tag === ";") return this.readSymLink();
    throw new MarshalError(`Expected symbol, got '${tag}' at ${this.pos - 1}`);
  }
}
function decodeUserDef(className, payload) {
  const dv = new DataView(payload.buffer, payload.byteOffset, payload.byteLength);
  if (className === "Table") {
    const xsize = dv.getInt32(4, true);
    const ysize = dv.getInt32(8, true);
    const zsize = dv.getInt32(12, true);
    const count = dv.getInt32(16, true);
    const data = new Int16Array(count);
    for (let i = 0; i < count; i++) data[i] = dv.getInt16(20 + i * 2, true);
    return new RTable(xsize, ysize, zsize, data);
  }
  if (className === "Color" || className === "Tone") {
    return new RColor(
      dv.getFloat64(0, true),
      dv.getFloat64(8, true),
      dv.getFloat64(16, true),
      dv.getFloat64(24, true),
      className
    );
  }
  return new RUserDef(className, payload);
}
function toBase64(bytes) {
  let s = "";
  const CHUNK = 32768;
  for (let i = 0; i < bytes.length; i += CHUNK) {
    s += String.fromCharCode(...bytes.subarray(i, i + CHUNK));
  }
  return btoa(s);
}
function isCleanUtf8(bytes) {
  try {
    const text = new TextDecoder("utf-8", { fatal: true }).decode(bytes);
    const back = new TextEncoder().encode(text);
    if (back.length !== bytes.length) return false;
    for (let i = 0; i < back.length; i++) if (back[i] !== bytes[i]) return false;
    return true;
  } catch {
    return false;
  }
}
function marshalToJson(value) {
  return new Encoder().encode(value);
}
class Encoder {
  /** Identity -> index, mirroring Marshal's own backreference semantics. */
  seen = /* @__PURE__ */ new Map();
  counter = 0;
  encode(value) {
    if (value === null || value === void 0) return null;
    if (typeof value === "boolean") return value;
    if (typeof value === "number") return value;
    if (value instanceof RSymbol) return { $: "sym", n: value.name };
    const prior = this.seen.get(value);
    if (prior !== void 0) return { $: "ref", i: prior };
    const id = this.counter++;
    this.seen.set(value, id);
    if (value instanceof RFloat) {
      const node = { $: "flt", v: Number.isFinite(value.value) ? value.value : String(value.value) };
      if (value.raw !== void 0) node.raw = value.raw;
      return node;
    }
    if (value instanceof RBignum) return { $: "big", v: value.value.toString() };
    if (value instanceof RString) {
      const node = isCleanUtf8(value.bytes) ? { $: "str", v: value.value } : { $: "bytes", b: toBase64(value.bytes) };
      if (value.encoding) node.e = value.encoding;
      this.attachMeta(value, node);
      return node;
    }
    if (Array.isArray(value)) {
      const node = { $: "arr", v: value.map((v) => this.encode(v)) };
      this.attachMeta(value, node);
      return node;
    }
    if (value instanceof RHash) {
      const node = {
        $: "hash",
        v: value.entries.map(([k, v]) => [this.encode(k), this.encode(v)])
      };
      if (value.defaultValue !== null) node.d = this.encode(value.defaultValue);
      this.attachMeta(value, node);
      return node;
    }
    if (value instanceof RTable) {
      return {
        $: "tbl",
        x: value.xsize,
        y: value.ysize,
        z: value.zsize,
        d: toBase64(new Uint8Array(value.data.buffer, value.data.byteOffset, value.data.byteLength))
      };
    }
    if (value instanceof RColor) {
      return { $: "col", c: value.className, r: value.red, g: value.green, b: value.blue, a: value.alpha };
    }
    if (value instanceof RUserDef) {
      return { $: "udef", c: value.className, p: toBase64(value.payload) };
    }
    if (value instanceof RObject) {
      const iv = [];
      for (const [name, v] of value.ivars) iv.push([name, this.encode(v)]);
      return { $: "obj", c: value.className, iv };
    }
    throw new Error(`marshalToJson: unsupported value ${Object.prototype.toString.call(value)}`);
  }
  attachMeta(value, node) {
    const cls = subclassOf.get(value);
    if (cls !== void 0) node.cls = cls;
    const iv = extraIvars.get(value);
    if (iv && iv.size > 0) {
      node.iv = [...iv].map(([name, v]) => [name, this.encode(v)]);
    }
  }
}
const SCMAP_FORMAT_VERSION = 1;
const TILE_ID_BITS = 16;
const TILE_ID_MASK = 65535;
function packTile(slot, id) {
  return id === 0 ? 0 : (slot & 255) << TILE_ID_BITS | id & TILE_ID_MASK;
}
const LAYER_COUNT = 5;
const DEFAULT_LAYERS = [
  { name: "Ground", role: "ground" },
  { name: "Decor", role: "decor" },
  { name: "Overlay", role: "overlay" },
  { name: "Canopy", role: "canopy" },
  { name: "Sky", role: "sky" }
];
function encodeRow(values) {
  const runs = [];
  let i = 0;
  while (i < values.length) {
    const v = values[i];
    let n = 1;
    while (i + n < values.length && values[i + n] === v) n++;
    const token = v === 0 ? "." : v.toString(36);
    runs.push(n === 1 ? token : `${token}*${n}`);
    i += n;
  }
  return runs.join(" ");
}
function blankLayer(width, height, spec) {
  return {
    name: spec.name,
    role: spec.role,
    visible: true,
    locked: false,
    opacity: 1,
    rows: Array.from({ length: height }, () => width > 0 ? `.*${width}` : "")
  };
}
function encodeLayerRows(flat, width, height) {
  const rows = [];
  for (let y = 0; y < height; y++) {
    rows.push(encodeRow(Array.prototype.slice.call(flat, y * width, (y + 1) * width)));
  }
  return rows;
}
function stripBom(text) {
  return text.charCodeAt(0) === 65279 ? text.slice(1) : text;
}
function splitLines(text) {
  return stripBom(text).split(/\r?\n/);
}
const EDGES = /* @__PURE__ */ new Set(["N", "S", "E", "W"]);
function asEdge(token) {
  const t = token.trim().toUpperCase();
  return EDGES.has(t) ? t : null;
}
function parseMapConnections(text) {
  const lines = splitLines(text);
  const connections = [];
  const header = [];
  let pending = [];
  let seenAnyEntry = false;
  for (const line of lines) {
    const trimmed = line.trim();
    if (trimmed.length === 0) {
      if (!seenAnyEntry) header.push(line);
      continue;
    }
    if (trimmed.startsWith("#")) {
      if (seenAnyEntry || connections.length > 0) pending.push(line);
      else header.push(line);
      continue;
    }
    const parts = trimmed.split(",").map((p) => p.trim());
    if (parts.length < 6) {
      pending = [];
      continue;
    }
    const edgeA = asEdge(parts[1]);
    const edgeB = asEdge(parts[4]);
    const mapA = Number.parseInt(parts[0], 10);
    const mapB = Number.parseInt(parts[3], 10);
    if (edgeA === null || edgeB === null || Number.isNaN(mapA) || Number.isNaN(mapB)) {
      pending = [];
      continue;
    }
    connections.push({
      mapA,
      edgeA,
      offsetA: Number.parseInt(parts[2], 10) || 0,
      mapB,
      edgeB,
      offsetB: Number.parseInt(parts[5], 10) || 0,
      comment: pending
    });
    pending = [];
    seenAnyEntry = true;
  }
  return { connections, header };
}
function parseSectionedPbs(text) {
  const lines = splitLines(text);
  const sections = [];
  const header = [];
  let current = null;
  let pending = [];
  for (const line of lines) {
    const trimmed = line.trim();
    if (trimmed.startsWith("[") && trimmed.includes("]")) {
      const close = trimmed.indexOf("]");
      const key = trimmed.slice(1, close);
      const rest = trimmed.slice(close + 1).trim();
      current = { key, headerComment: rest, fields: [], leading: pending };
      pending = [];
      sections.push(current);
      continue;
    }
    if (trimmed.length === 0 || trimmed.startsWith("#")) {
      if (current === null) header.push(line);
      else pending.push(line);
      continue;
    }
    const eq = trimmed.indexOf("=");
    if (eq === -1 || current === null) {
      pending = [];
      continue;
    }
    const rawValue = trimmed.slice(eq + 1);
    const commentAt = rawValue.search(/\s#/);
    const value = (commentAt === -1 ? rawValue : rawValue.slice(0, commentAt)).trim();
    const comment = commentAt === -1 ? "" : rawValue.slice(commentAt).trim();
    current.fields.push({ key: trimmed.slice(0, eq).trim(), value, comment });
    pending = [];
  }
  return { sections, header };
}
const BOOL_KEYS = {
  Outdoor: "outdoor",
  ShowArea: "showArea",
  BicycleUsable: "bicycleUsable",
  BicycleAlways: "bicycleAlways",
  DarkMap: "darkMap",
  Dark: "dark",
  SafariMap: "safariMap",
  SnapEdges: "snapEdges",
  FlyDestination: "flyDestination"
};
const STRING_KEYS = {
  Name: "name",
  BattleBack: "battleBack",
  LocationSign: "locationSign",
  WildBattleBGM: "wildBattleBGM",
  TrainerBattleBGM: "trainerBattleBGM",
  WildVictoryBGM: "wildVictoryBGM",
  TrainerVictoryBGM: "trainerVictoryBGM",
  WildCaptureME: "wildCaptureME",
  MapWeather: "mapWeather"
};
function numbers(value) {
  return value.split(",").map((p) => Number.parseInt(p.trim(), 10)).filter((n) => !Number.isNaN(n));
}
function metadataFromSection(section) {
  const meta = { extra: {} };
  const assign = meta;
  for (const { key, value } of section.fields) {
    const boolKey = BOOL_KEYS[key];
    if (boolKey) {
      assign[boolKey] = value.toLowerCase() === "true";
      continue;
    }
    const strKey = STRING_KEYS[key];
    if (strKey) {
      assign[strKey] = value;
      continue;
    }
    switch (key) {
      case "HealingSpot": {
        const n = numbers(value);
        if (n.length >= 3) meta.healingSpot = [n[0], n[1], n[2]];
        break;
      }
      case "MapPosition": {
        const n = numbers(value);
        if (n.length >= 3) meta.mapPosition = [n[0], n[1], n[2]];
        break;
      }
      case "MapSize": {
        const comma = value.indexOf(",");
        if (comma !== -1) {
          meta.mapSize = {
            width: Number.parseInt(value.slice(0, comma).trim(), 10) || 1,
            layout: value.slice(comma + 1).trim()
          };
        }
        break;
      }
      case "Dive":
        meta.dive = Number.parseInt(value, 10) || 0;
        break;
      case "Weather": {
        const parts = value.split(",").map((p) => p.trim());
        meta.weatherPBS = [parts[0] ?? "None", Number.parseInt(parts[1] ?? "0", 10) || 0];
        break;
      }
      default:
        meta.extra[key] = value;
    }
  }
  return meta;
}
function parseEncounters(text) {
  const lines = splitLines(text);
  const result = /* @__PURE__ */ new Map();
  let mapId = null;
  let table = null;
  for (const raw of lines) {
    const line = raw.split("#")[0].trimEnd();
    const trimmed = line.trim();
    if (trimmed.length === 0) continue;
    if (trimmed.startsWith("[")) {
      const inner = trimmed.slice(1, trimmed.indexOf("]"));
      mapId = Number.parseInt(inner.split(",")[0].trim(), 10);
      table = null;
      if (!Number.isNaN(mapId) && !result.has(mapId)) result.set(mapId, []);
      continue;
    }
    if (mapId === null) continue;
    if (/^\d/.test(trimmed)) {
      if (table === null) continue;
      const parts2 = trimmed.split(",").map((p) => p.trim());
      if (parts2.length < 3) continue;
      const min = Number.parseInt(parts2[2], 10);
      const max = parts2.length >= 4 ? Number.parseInt(parts2[3], 10) : min;
      const slot = {
        probability: Number.parseInt(parts2[0], 10) || 0,
        species: parts2[1],
        minLevel: Number.isNaN(min) ? 1 : min,
        maxLevel: Number.isNaN(max) ? Number.isNaN(min) ? 1 : min : max
      };
      table.slots.push(slot);
      continue;
    }
    const parts = trimmed.split(",").map((p) => p.trim());
    table = {
      type: parts[0],
      step: parts.length > 1 ? Number.parseInt(parts[1], 10) || 0 : 0,
      slots: []
    };
    result.get(mapId).push(table);
  }
  return result;
}
function importTilesets(data) {
  const out = /* @__PURE__ */ new Map();
  if (!Array.isArray(data)) return out;
  for (const entry of data) {
    if (!(entry instanceof RObject)) continue;
    const id = entry.int("@id");
    const autotileNames = entry.get("@autotile_names");
    const autotiles = Array.isArray(autotileNames) ? autotileNames.map((a) => a instanceof RString ? a.value : "") : [];
    out.set(id, {
      id,
      name: entry.str("@name"),
      graphic: entry.str("@tileset_name"),
      // RMXP always stores 7 slots; normalise short arrays so indexing is safe.
      autotiles: Array.from({ length: 7 }, (_, i) => autotiles[i] ?? ""),
      passages: tableToRecord(entry.get("@passages")),
      priorities: tableToRecord(entry.get("@priorities")),
      terrainTags: tableToRecord(entry.get("@terrain_tags"))
    });
  }
  return out;
}
function tableToRecord(value) {
  if (!(value instanceof RTable)) return {};
  const out = {};
  for (let i = 0; i < value.data.length; i++) {
    if (value.data[i] !== 0) out[i] = value.data[i];
  }
  return out;
}
function importMapInfos(data) {
  const out = /* @__PURE__ */ new Map();
  if (!(data instanceof RHash)) return out;
  for (const [key, value] of data.entries) {
    if (typeof key !== "number" || !(value instanceof RObject)) continue;
    out.set(key, {
      id: key,
      name: value.str("@name"),
      parentId: value.int("@parent_id"),
      order: value.int("@order"),
      expanded: value.bool("@expanded"),
      scrollX: value.int("@scroll_x"),
      scrollY: value.int("@scroll_y")
    });
  }
  return out;
}
function audioFromRmxp(value) {
  if (!(value instanceof RObject)) return null;
  const name = value.str("@name");
  if (name.length === 0) return null;
  return { name, volume: value.int("@volume", 100), pitch: value.int("@pitch", 100) };
}
function connectionsForMap(mapId, parsed) {
  const out = [];
  for (const c of parsed) {
    if (c.mapA === mapId) {
      out.push({
        edge: c.edgeA,
        offset: c.offsetA,
        toMapId: c.mapB,
        toEdge: c.edgeB,
        toOffset: c.offsetB
      });
    }
    if (c.mapB === mapId) {
      out.push({
        edge: c.edgeB,
        offset: c.offsetB,
        toMapId: c.mapA,
        toEdge: c.edgeA,
        toOffset: c.offsetA
      });
    }
  }
  return out;
}
function layersFromTable(table, width, height) {
  const layers = [];
  for (let z = 0; z < LAYER_COUNT; z++) {
    const spec = DEFAULT_LAYERS[z];
    if (table === null || z >= table.zsize) {
      layers.push(blankLayer(width, height, spec));
      continue;
    }
    const flat = new Int32Array(width * height);
    for (let y = 0; y < height; y++) {
      for (let x = 0; x < width; x++) {
        const id = table.at(x, y, z);
        flat[y * width + x] = packTile(0, id);
      }
    }
    layers.push({
      ...blankLayer(width, height, spec),
      rows: encodeLayerRows(flat, width, height)
    });
  }
  return layers;
}
function eventsFromRmxp(value) {
  if (!(value instanceof RHash)) return [];
  const out = [];
  for (const [key, event] of value.entries) {
    if (!(event instanceof RObject)) continue;
    out.push({
      id: typeof key === "number" ? key : event.int("@id"),
      name: event.str("@name"),
      x: event.int("@x"),
      y: event.int("@y"),
      // Verbatim command tree. This is what makes export lossless.
      raw: marshalToJson(event)
    });
  }
  out.sort((a, b) => a.id - b.id);
  return out;
}
const DEFAULT_WEATHER = { kind: "None", power: 0, chance: 100 };
function weatherFromMetadata(meta) {
  if (!meta.weatherPBS) return { ...DEFAULT_WEATHER };
  const [kind, chance] = meta.weatherPBS;
  return {
    kind: kind || "None",
    // PBS stores only kind and chance; power starts mid-scale so the map looks
    // the same in-editor as in-game until the author tunes it.
    power: 5,
    chance: chance || 100
  };
}
function importProject(fs, root) {
  const warnings = [];
  const dataDir = fs.join(root, "Data");
  const pbsDir = fs.join(root, "PBS");
  const tilesets = importTilesets(MarshalReader.parse(fs.readFile(fs.join(dataDir, "Tilesets.rxdata"))));
  const mapInfos = importMapInfos(MarshalReader.parse(fs.readFile(fs.join(dataDir, "MapInfos.rxdata"))));
  const connectionsText = fs.readTextIfExists(fs.join(pbsDir, "map_connections.txt"));
  const parsedConnections = connectionsText ? parseMapConnections(connectionsText).connections : [];
  if (!connectionsText) warnings.push("PBS/map_connections.txt not found; no connections imported.");
  const metadataText = fs.readTextIfExists(fs.join(pbsDir, "map_metadata.txt"));
  const metadataByMap = /* @__PURE__ */ new Map();
  if (metadataText) {
    for (const section of parseSectionedPbs(metadataText).sections) {
      const id = Number.parseInt(section.key, 10);
      if (!Number.isNaN(id)) metadataByMap.set(id, metadataFromSection(section));
    }
  } else {
    warnings.push("PBS/map_metadata.txt not found; metadata will be empty.");
  }
  const encountersText = fs.readTextIfExists(fs.join(pbsDir, "encounters.txt"));
  const encountersByMap = encountersText ? parseEncounters(encountersText) : /* @__PURE__ */ new Map();
  const mapFiles = fs.listDir(dataDir).filter((f) => /^Map\d+\.rxdata$/.test(f)).sort();
  const maps = [];
  for (const file of mapFiles) {
    const id = Number.parseInt(file.slice(3, -7), 10);
    let parsed;
    try {
      parsed = MarshalReader.parse(fs.readFile(fs.join(dataDir, file)));
    } catch (err) {
      warnings.push(`${file}: failed to parse (${err.message}); skipped.`);
      continue;
    }
    if (!(parsed instanceof RObject)) {
      warnings.push(`${file}: unexpected root type; skipped.`);
      continue;
    }
    const width = parsed.int("@width");
    const height = parsed.int("@height");
    const tilesetId = parsed.int("@tileset_id");
    const tileData = parsed.get("@data");
    const info = mapInfos.get(id);
    const metadata = metadataByMap.get(id) ?? { extra: {} };
    const tilesetRef = tilesets.get(tilesetId);
    if (!tilesetRef) {
      warnings.push(`${file}: references unknown tileset #${tilesetId}.`);
    }
    if (!(tileData instanceof RTable)) {
      warnings.push(`${file}: @data is not a Table; imported as empty.`);
    } else if (tileData.xsize !== width || tileData.ysize !== height) {
      warnings.push(
        `${file}: @data is ${tileData.xsize}x${tileData.ysize} but header says ${width}x${height}.`
      );
    }
    maps.push({
      formatVersion: SCMAP_FORMAT_VERSION,
      id,
      name: info?.name ?? metadata.name ?? `Map ${id}`,
      parentId: info?.parentId ?? 0,
      order: info?.order ?? id,
      width,
      height,
      // Slot 0 is the map's original RMXP tileset; more can be added in-editor.
      tilesets: [{ tilesetId }],
      layers: layersFromTable(tileData instanceof RTable ? tileData : null, width, height),
      bgm: audioFromRmxp(parsed.get("@bgm")),
      bgs: audioFromRmxp(parsed.get("@bgs")),
      autoplayBgm: parsed.bool("@autoplay_bgm"),
      autoplayBgs: parsed.bool("@autoplay_bgs"),
      connections: connectionsForMap(id, parsedConnections),
      weather: weatherFromMetadata(metadata),
      lighting: {
        // Dark maps already imply lighting in Essentials; pre-enable those so the
        // author sees the same darkness in the editor as in-game.
        enabled: metadata.darkMap === true || metadata.dark === true,
        ambient: metadata.darkMap === true || metadata.dark === true ? 0.72 : 0,
        tintByHour: {},
        lights: []
      },
      encounters: encountersByMap.get(id) ?? [],
      encounterStep: asNumber(parsed.get("@encounter_step"), 30),
      metadata,
      events: eventsFromRmxp(parsed.get("@events")),
      notes: ""
    });
  }
  return { maps, tilesets, mapInfos, warnings };
}
const COMPACT_KEYS = /* @__PURE__ */ new Set(["raw", "passages", "priorities", "terrainTags"]);
function serialiseMap(map) {
  return `${render(map, 0, null)}
`;
}
function render(value, indent, key) {
  if (key !== null && COMPACT_KEYS.has(key)) return JSON.stringify(value);
  if (value === null || typeof value !== "object") return JSON.stringify(value) ?? "null";
  const pad = "  ".repeat(indent + 1);
  const closePad = "  ".repeat(indent);
  if (Array.isArray(value)) {
    if (value.length === 0) return "[]";
    if (value.every((v) => typeof v === "number")) return JSON.stringify(value);
    const items = value.map((v) => `${pad}${render(v, indent + 1, null)}`);
    return `[
${items.join(",\n")}
${closePad}]`;
  }
  const entries = Object.entries(value).filter(
    ([, v]) => v !== void 0
  );
  if (entries.length === 0) return "{}";
  const rendered = entries.map(
    ([k, v]) => `${pad}${JSON.stringify(k)}: ${render(v, indent + 1, k)}`
  );
  return `{
${rendered.join(",\n")}
${closePad}}`;
}
const isDev = !app.isPackaged;
const DEV_URL = process.env.VITE_DEV_SERVER_URL ?? "http://localhost:5173";
app.setName("Shattered Crowns Editor");
for (const stream of [process.stdout, process.stderr]) {
  stream.on("error", (error) => {
    if (error.code !== "EPIPE") process.exitCode = 1;
  });
}
if (process.platform === "linux") {
  app.commandLine.appendSwitch("ozone-platform-hint", "auto");
  app.commandLine.appendSwitch("enable-features", "WaylandWindowDecorations");
}
let win = null;
let projectRoot = null;
let gameProcess = null;
function resolveInProject(relPath) {
  if (projectRoot === null) throw new Error("No project is open");
  if (isAbsolute(relPath)) throw new Error(`Expected a relative path, got ${relPath}`);
  const full = resolve(projectRoot, relPath);
  const rel = relative(projectRoot, full);
  if (rel.startsWith("..") || rel.length > 0 && isAbsolute(rel)) {
    throw new Error(`Path escapes the project root: ${relPath}`);
  }
  return full;
}
const nodeFs = {
  readFile: (path) => new Uint8Array(readFileSync(path)),
  readTextIfExists: (path) => existsSync(path) ? readFileSync(path, "utf8") : null,
  listDir: (path) => readdirSync(path),
  join: (...parts) => join(...parts)
};
function scMapsDir(root) {
  return join(root, "Data", "SCMaps");
}
function readMapTree(root) {
  const dir = scMapsDir(root);
  const warnings = [];
  if (!existsSync(dir)) return { maps: [], warnings: ["Project has not been imported yet."] };
  const maps = [];
  for (const file of readdirSync(dir).sort()) {
    if (!/^Map\d+\.json$/.test(file)) continue;
    try {
      const map = JSON.parse(readFileSync(join(dir, file), "utf8"));
      if (map.formatVersion > SCMAP_FORMAT_VERSION) {
        warnings.push(`${file} was written by a newer editor (v${map.formatVersion}); skipped.`);
        continue;
      }
      maps.push({
        id: map.id,
        name: map.name,
        parentId: map.parentId,
        order: map.order,
        width: map.width,
        height: map.height,
        connectedTo: (map.connections ?? []).map((c) => c.toMapId)
      });
    } catch (err) {
      warnings.push(`${file}: ${err.message}`);
    }
  }
  return { maps, warnings };
}
function summarise(root) {
  const { maps, warnings } = readMapTree(root);
  let title = "Shattered Crowns";
  const iniPath = join(root, "Game.ini");
  if (existsSync(iniPath)) {
    const match = /^Title\s*=\s*(.+)$/m.exec(readFileSync(iniPath, "latin1"));
    if (match) title = match[1].trim();
  }
  return { root, title, imported: existsSync(scMapsDir(root)), maps, warnings };
}
function looksLikeProject(dir) {
  return existsSync(join(dir, "Data", "MapInfos.rxdata")) && existsSync(join(dir, "Graphics"));
}
function findProjectAbove(start) {
  if (!start) return null;
  let current = resolve(start);
  if (!existsSync(current)) current = dirname(current);
  for (; ; ) {
    if (looksLikeProject(current)) return current;
    const parent = dirname(current);
    if (parent === current || current === parse(current).root) return null;
    current = parent;
  }
}
function registerHandlers() {
  ipcMain.handle(IPC.projectOpen, (_e, root) => {
    const target = root === "" || root === "." ? projectRoot : root;
    if (target === null) throw new Error("No bundled project was found to open.");
    if (!looksLikeProject(target)) {
      throw new Error(`${target} does not look like an Essentials project (no Data/MapInfos.rxdata).`);
    }
    projectRoot = target;
    return summarise(target);
  });
  ipcMain.handle(IPC.projectPick, async () => {
    const result = await dialog.showOpenDialog({
      title: "Open project",
      properties: ["openDirectory"]
    });
    if (result.canceled || result.filePaths.length === 0) return null;
    const root = result.filePaths[0];
    if (!looksLikeProject(root)) {
      throw new Error(`${root} does not look like an Essentials project.`);
    }
    projectRoot = root;
    return summarise(root);
  });
  ipcMain.handle(IPC.projectReimport, () => {
    if (projectRoot === null) throw new Error("No project is open");
    const result = importProject(nodeFs, projectRoot);
    const dir = scMapsDir(projectRoot);
    mkdirSync(dir, { recursive: true });
    for (const map of result.maps) {
      writeFileSync(join(dir, `Map${String(map.id).padStart(3, "0")}.json`), serialiseMap(map), "utf8");
    }
    writeFileSync(
      join(dir, "tilesets.json"),
      `${JSON.stringify(
        {
          formatVersion: SCMAP_FORMAT_VERSION,
          tilesets: [...result.tilesets.values()].sort((a, b) => a.id - b.id)
        },
        null,
        2
      )}
`,
      "utf8"
    );
    const summary = summarise(projectRoot);
    summary.warnings.push(...result.warnings);
    return summary;
  });
  ipcMain.handle(IPC.mapLoad, (_e, id) => {
    const path = resolveInProject(join("Data", "SCMaps", `Map${String(id).padStart(3, "0")}.json`));
    return JSON.parse(readFileSync(path, "utf8"));
  });
  ipcMain.handle(IPC.mapSave, (_e, map) => {
    if (typeof map?.id !== "number") throw new Error("Refusing to save a map with no id");
    const path = resolveInProject(join("Data", "SCMaps", `Map${String(map.id).padStart(3, "0")}.json`));
    mkdirSync(dirname(path), { recursive: true });
    writeFileSync(path, serialiseMap(map), "utf8");
  });
  ipcMain.handle(IPC.tilesetCatalogLoad, () => {
    const path = resolveInProject(join("Data", "SCMaps", "tilesets.json"));
    return JSON.parse(readFileSync(path, "utf8"));
  });
  ipcMain.handle(IPC.tilesetCatalogSave, (_e, catalog) => {
    const path = resolveInProject(join("Data", "SCMaps", "tilesets.json"));
    writeFileSync(path, `${JSON.stringify(catalog, null, 2)}
`, "utf8");
  });
  ipcMain.handle(IPC.imageLoad, (_e, folder, name) => {
    if (name.length === 0) return null;
    const dir = resolveInProject(join("Graphics", folder));
    if (!existsSync(dir)) return null;
    const candidates = [".png", ".PNG", ".jpg", ".jpeg", ".bmp", ""];
    for (const ext of candidates) {
      const full = join(dir, name + ext);
      if (existsSync(full)) {
        return { relPath: join("Graphics", folder, name + ext), bytes: new Uint8Array(readFileSync(full)) };
      }
    }
    const target = name.toLowerCase();
    for (const entry of readdirSync(dir)) {
      const base = entry.replace(/\.[^.]+$/, "").toLowerCase();
      if (base === target) {
        return { relPath: join("Graphics", folder, entry), bytes: new Uint8Array(readFileSync(join(dir, entry))) };
      }
    }
    return null;
  });
  ipcMain.handle(IPC.graphicsList, (_e, folder) => {
    const dir = resolveInProject(join("Graphics", folder));
    if (!existsSync(dir)) return [];
    return readdirSync(dir).filter((f) => /\.(png|jpg|jpeg|bmp)$/i.test(f)).map((f) => f.replace(/\.[^.]+$/, "")).sort((a, b) => a.localeCompare(b));
  });
  ipcMain.handle(IPC.systemNames, () => {
    const path = resolveInProject(join("Data", "System.rxdata"));
    if (!existsSync(path)) return { switches: [], variables: [], database: {} };
    const parsed = MarshalReader.parse(new Uint8Array(readFileSync(path)));
    const names = (value) => Array.isArray(value) ? value.map((v) => v instanceof RString ? v.value : "") : [];
    if (!(parsed instanceof RObject)) return { switches: [], variables: [], database: {} };
    const namedDatabase = (file) => {
      const dbPath = resolveInProject(join("Data", file));
      if (!existsSync(dbPath)) return [];
      const data = MarshalReader.parse(new Uint8Array(readFileSync(dbPath)));
      if (!Array.isArray(data)) return [];
      return data.map((entry) => entry instanceof RObject && entry.get("@name") instanceof RString ? entry.get("@name").value : "");
    };
    return {
      switches: names(parsed.get("@switches")),
      variables: names(parsed.get("@variables")),
      database: {
        commonEvents: namedDatabase("CommonEvents.rxdata"),
        actors: namedDatabase("Actors.rxdata"),
        items: namedDatabase("Items.rxdata"),
        weapons: namedDatabase("Weapons.rxdata"),
        armor: namedDatabase("Armors.rxdata"),
        skills: namedDatabase("Skills.rxdata"),
        states: namedDatabase("States.rxdata"),
        troops: namedDatabase("Troops.rxdata"),
        animations: namedDatabase("Animations.rxdata"),
        classes: namedDatabase("Classes.rxdata"),
        enemies: namedDatabase("Enemies.rxdata")
      }
    };
  });
  ipcMain.handle(
    IPC.eventExport,
    async (_e, suggestedName, json) => {
      if (projectRoot === null) throw new Error("No project is open");
      const result = await dialog.showSaveDialog({
        title: "Export event",
        defaultPath: join(projectRoot, `${suggestedName}.json`),
        filters: [{ name: "Event JSON", extensions: ["json"] }]
      });
      if (result.canceled || !result.filePath) return false;
      writeFileSync(result.filePath, json, "utf8");
      return true;
    }
  );
  ipcMain.handle(IPC.eventImport, async () => {
    if (projectRoot === null) throw new Error("No project is open");
    const result = await dialog.showOpenDialog({
      title: "Import event",
      defaultPath: projectRoot,
      properties: ["openFile"],
      filters: [{ name: "Event JSON", extensions: ["json"] }]
    });
    if (result.canceled || result.filePaths.length === 0) return null;
    return readFileSync(result.filePaths[0], "utf8");
  });
  ipcMain.handle(IPC.pbsRead, (_e, file) => {
    const path = resolveInProject(join("PBS", file));
    return existsSync(path) ? readFileSync(path, "utf8") : null;
  });
  ipcMain.handle(IPC.pbsWrite, (_e, file, text) => {
    writeFileSync(resolveInProject(join("PBS", file)), text, "utf8");
  });
  ipcMain.handle(IPC.scriptList, () => {
    const root = resolveInProject(join("Data", "Scripts"));
    const out = [];
    const walk = (dir) => {
      for (const entry of readdirSync(dir, { withFileTypes: true })) {
        const full = join(dir, entry.name);
        if (entry.isDirectory()) walk(full);
        else if (entry.name.endsWith(".rb")) out.push(relative(root, full).split(sep).join("/"));
      }
    };
    walk(root);
    return out.sort();
  });
  ipcMain.handle(
    IPC.scriptRead,
    (_e, rel) => readFileSync(resolveInProject(join("Data", "Scripts", rel)), "utf8")
  );
  ipcMain.handle(IPC.scriptWrite, (_e, rel, text) => {
    writeFileSync(resolveInProject(join("Data", "Scripts", rel)), text, "utf8");
  });
  const resolveScriptSystemFile = (rel) => {
    if (!rel.endsWith(".rb") || rel.includes("..") || rel.startsWith("/") || rel.includes("\\")) {
      throw new Error("Invalid Script System path");
    }
    return resolveInProject(join("Plugins", "[SC] Script System", rel));
  };
  ipcMain.handle(IPC.scriptSystemRead, (_e, rel) => {
    const path = resolveScriptSystemFile(rel);
    return existsSync(path) ? readFileSync(path, "utf8") : null;
  });
  ipcMain.handle(IPC.scriptSystemWrite, (_e, rel, text) => {
    const path = resolveScriptSystemFile(rel);
    mkdirSync(dirname(path), { recursive: true });
    writeFileSync(path, text, "utf8");
  });
  ipcMain.handle(IPC.gameLaunch, () => {
    if (projectRoot === null) throw new Error("No project is open");
    if (gameProcess !== null) throw new Error("The game is already running");
    const nativeBin = join(projectRoot, "Game");
    const command = existsSync(nativeBin) ? nativeBin : join(projectRoot, "Game.exe");
    gameProcess = spawn(command, [], { cwd: projectRoot });
    const send = (stream) => (chunk) => {
      win?.webContents.send(IPC.gameLog, {
        stream,
        text: chunk.toString("utf8"),
        at: Date.now()
      });
    };
    gameProcess.stdout?.on("data", send("stdout"));
    gameProcess.stderr?.on("data", send("stderr"));
    gameProcess.on("exit", (code) => {
      win?.webContents.send(IPC.gameLog, {
        stream: "stdout",
        text: `
[game exited with code ${code}]
`,
        at: Date.now()
      });
      gameProcess = null;
    });
  });
  ipcMain.handle(IPC.windowMinimize, () => win?.minimize());
  ipcMain.handle(IPC.windowToggleMaximize, () => {
    if (!win) return false;
    if (win.isMaximized()) win.unmaximize();
    else win.maximize();
    return win.isMaximized();
  });
  ipcMain.handle(IPC.windowClose, () => win?.close());
  ipcMain.handle(IPC.gameStop, () => {
    gameProcess?.kill();
    gameProcess = null;
  });
}
function applyContentSecurityPolicy() {
  const policy = isDev ? [
    "default-src 'self'",
    "img-src 'self' data: blob:",
    "style-src 'self' 'unsafe-inline'",
    "script-src 'self' 'unsafe-inline' 'unsafe-eval'",
    "font-src 'self' data:",
    `connect-src 'self' ws://localhost:* http://localhost:*`
  ] : [
    "default-src 'self'",
    "img-src 'self' data: blob:",
    "style-src 'self' 'unsafe-inline'",
    "script-src 'self'",
    "font-src 'self' data:",
    "connect-src 'self'"
  ];
  session.defaultSession.webRequest.onHeadersReceived((details, callback) => {
    callback({
      responseHeaders: {
        ...details.responseHeaders,
        "Content-Security-Policy": [policy.join("; ")]
      }
    });
  });
}
function forwardRendererConsole(target) {
  if (!isDev) return;
  target.webContents.on("console-message", (event) => {
    const { level, message, lineNumber, sourceId } = event;
    console.log(`[renderer:${level}] ${message} (${sourceId}:${lineNumber})`);
  });
  target.webContents.on("render-process-gone", (_e, details) => {
    console.error(`[renderer] process gone: ${details.reason} (exit ${details.exitCode})`);
  });
  target.webContents.on("preload-error", (_e, preloadPath, error) => {
    console.error(`[preload] ${preloadPath} failed: ${error.message}`);
  });
  target.webContents.on("did-fail-load", (_e, code, description, url) => {
    console.error(`[renderer] failed to load ${url}: ${description} (${code})`);
  });
}
function createWindow() {
  win = new BrowserWindow({
    title: "Shattered Crowns Editor",
    width: 1680,
    height: 980,
    minWidth: 1100,
    minHeight: 700,
    show: false,
    backgroundColor: "#05070d",
    // Frameless so the UI can own the whole surface, including the title bar.
    titleBarStyle: "hidden",
    frame: process.platform !== "linux",
    webPreferences: {
      preload: join(import.meta.dirname, "preload.cjs"),
      contextIsolation: true,
      nodeIntegration: false,
      sandbox: false
    }
  });
  forwardRendererConsole(win);
  const pushWindowState = () => win?.webContents.send(IPC.windowState, { maximized: win.isMaximized() });
  win.on("maximize", pushWindowState);
  win.on("unmaximize", pushWindowState);
  win.once("ready-to-show", () => win?.show());
  if (isDev) win.webContents.openDevTools({ mode: "detach" });
  win.webContents.setWindowOpenHandler(({ url }) => {
    void shell.openExternal(url);
    return { action: "deny" };
  });
  if (isDev) {
    void win.loadURL(DEV_URL);
  } else {
    void win.loadFile(join(import.meta.dirname, "../dist/index.html"));
  }
}
function installCaptureSignal() {
  if (!isDev) return;
  process.on("SIGUSR1", () => {
    void win?.webContents.capturePage().then((image) => {
      const path = "/tmp/forge-capture.png";
      writeFileSync(path, image.toPNG());
      console.log(`[capture] wrote ${path}`);
    }).catch((err) => console.error(`[capture] failed: ${err.message}`));
  });
  console.log(`[capture] SIGUSR1 handler ready (pid ${process.pid})`);
}
void app.whenReady().then(() => {
  applyContentSecurityPolicy();
  installCaptureSignal();
  registerHandlers();
  const candidates = [
    process.cwd(),
    process.env.APPIMAGE ? dirname(process.env.APPIMAGE) : void 0,
    process.env.OWD,
    import.meta.dirname,
    dirname(process.execPath)
  ];
  for (const candidate of candidates) {
    projectRoot = findProjectAbove(candidate);
    if (projectRoot) break;
  }
  createWindow();
  app.on("activate", () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});
app.on("window-all-closed", () => {
  gameProcess?.kill();
  if (process.platform !== "darwin") app.quit();
});
