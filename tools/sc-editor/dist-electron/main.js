import { spawn as se } from "node:child_process";
import { writeFileSync as I, mkdirSync as V, readFileSync as S, existsSync as w, readdirSync as D, renameSync as re } from "node:fs";
import { join as u, dirname as B, parse as Rt, resolve as Lt, isAbsolute as St, relative as zt, sep as Ut } from "node:path";
import { app as O, BrowserWindow as Pt, session as oe, ipcMain as m, dialog as tt, shell as ie } from "electron";
const h = {
  projectOpen: "project:open",
  projectPick: "project:pick",
  projectReimport: "project:reimport",
  mapLoad: "map:load",
  mapSave: "map:save",
  mapCreate: "map:create",
  mapDelete: "map:delete",
  mapDuplicate: "map:duplicate",
  mapTree: "map:tree",
  mapConnections: "map:connections",
  tilesetCatalogLoad: "tileset:catalog:load",
  tilesetCatalogSave: "tileset:catalog:save",
  commonEventsLoad: "common-events:load",
  commonEventsSave: "common-events:save",
  tilesetCreate: "tileset:create",
  tilesetUpdate: "tileset:update",
  graphicsImport: "graphics:import",
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
}, ae = /* @__PURE__ */ Symbol.for("sc.ruby.object"), ce = /* @__PURE__ */ Symbol.for("sc.ruby.symbol");
class M {
  constructor(t) {
    this.name = t;
  }
  name;
  static interned = /* @__PURE__ */ new Map();
  [ce] = !0;
  static of(t) {
    let e = M.interned.get(t);
    return e || (e = new M(t), M.interned.set(t, e)), e;
  }
  toString() {
    return `:${this.name}`;
  }
}
class y {
  constructor(t) {
    this.className = t;
  }
  className;
  [ae] = !0;
  /** ivar names include the leading `@`, matching Marshal's on-wire form. */
  ivars = /* @__PURE__ */ new Map();
  get(t) {
    return this.ivars.get(t.startsWith("@") ? t : `@${t}`) ?? null;
  }
  set(t, e) {
    this.ivars.set(t.startsWith("@") ? t : `@${t}`, e);
  }
  has(t) {
    return this.ivars.has(t.startsWith("@") ? t : `@${t}`);
  }
  /** Convenience accessors that assert the expected primitive shape. */
  int(t, e = 0) {
    const n = this.get(t);
    return typeof n == "number" ? n : e;
  }
  str(t, e = "") {
    const n = this.get(t);
    return n instanceof b ? n.value : e;
  }
  bool(t, e = !1) {
    const n = this.get(t);
    return typeof n == "boolean" ? n : e;
  }
  obj(t) {
    const e = this.get(t);
    return e instanceof y ? e : null;
  }
}
class b {
  bytes;
  /** Set when Marshal wrapped the string in an ivar block declaring encoding. */
  encoding;
  constructor(t, e) {
    this.bytes = t, this.encoding = e;
  }
  static from(t) {
    return new b(new TextEncoder().encode(t), "UTF-8");
  }
  get value() {
    return new TextDecoder("utf-8").decode(this.bytes);
  }
  toString() {
    return this.value;
  }
}
class C {
  constructor(t, e = 1, n = 1, r) {
    this.xsize = t, this.ysize = e, this.zsize = n;
    const o = t * e * n;
    if (this.data = r ?? new Int16Array(o), this.data.length !== o)
      throw new Error(`Table size mismatch: expected ${o}, got ${this.data.length}`);
  }
  xsize;
  ysize;
  zsize;
  data;
  /** Number of significant dimensions, as Marshal records it. */
  get dim() {
    return this.zsize > 1 ? 3 : this.ysize > 1 ? 2 : 1;
  }
  at(t, e = 0, n = 0) {
    return this.data[t + e * this.xsize + n * this.xsize * this.ysize];
  }
  put(t, e, n, r) {
    this.data[t + e * this.xsize + n * this.xsize * this.ysize] = r;
  }
}
class U {
  constructor(t, e) {
    this.value = t, this.raw = e;
  }
  value;
  raw;
  static of(t) {
    return new U(t);
  }
  valueOf() {
    return this.value;
  }
}
class X {
  constructor(t) {
    this.value = t;
  }
  value;
  valueOf() {
    return Number(this.value);
  }
}
function le(s, t = 0) {
  return typeof s == "number" ? s : s instanceof U ? s.value : s instanceof X ? Number(s.value) : t;
}
class st {
  constructor(t, e, n, r, o = "Color") {
    this.red = t, this.green = e, this.blue = n, this.alpha = r, this.className = o;
  }
  red;
  green;
  blue;
  alpha;
  className;
}
class rt {
  constructor(t, e) {
    this.className = t, this.payload = e;
  }
  className;
  payload;
}
class j {
  entries = [];
  /** Value of `Hash#default`, if the stream used `}` instead of `{`. */
  defaultValue = null;
  get(t) {
    for (const [e, n] of this.entries) if (xt(e, t)) return n;
    return this.defaultValue;
  }
  set(t, e) {
    for (const n of this.entries)
      if (xt(n[0], t)) {
        n[1] = e;
        return;
      }
    this.entries.push([t, e]);
  }
  get size() {
    return this.entries.length;
  }
}
function xt(s, t) {
  return s === t ? !0 : s instanceof b && t instanceof b ? s.value === t.value : !1;
}
const ot = /* @__PURE__ */ new WeakMap(), et = /* @__PURE__ */ new WeakMap();
function Ft(s, t, e) {
  let n = et.get(s);
  n || (n = /* @__PURE__ */ new Map(), et.set(s, n)), n.set(t, e);
}
class z extends Error {
}
class T {
  constructor(t) {
    this.buf = t;
  }
  buf;
  pos = 0;
  /** Symbol table for `;` symlinks — index order is first-appearance order. */
  symbols = [];
  /** Object table for `@` objlinks. Note: symbols are NOT in this table. */
  objects = [];
  static parse(t) {
    return new T(t).read();
  }
  read() {
    const t = this.byte(), e = this.byte();
    if (t !== 4)
      throw new z(`Unsupported Marshal major version ${t}.${e}`);
    return this.readValue();
  }
  // ---------------------------------------------------------------- primitives
  byte() {
    if (this.pos >= this.buf.length) throw new z("Unexpected end of stream");
    return this.buf[this.pos++];
  }
  bytes(t) {
    if (this.pos + t > this.buf.length)
      throw new z(`Unexpected end of stream reading ${t} bytes at ${this.pos}`);
    const e = this.buf.subarray(this.pos, this.pos + t);
    return this.pos += t, e;
  }
  /**
   * Marshal's packed integer ("long") encoding. The first byte is either the
   * value biased by 5 (for small ints), or a signed count of following
   * little-endian bytes.
   */
  long() {
    const t = this.byte() << 24 >> 24;
    if (t === 0) return 0;
    if (t > 0) {
      if (t > 4) return t - 5;
      let n = 0;
      for (let r = 0; r < t; r++) n |= this.byte() << 8 * r;
      return n;
    }
    if (t < -4) return t + 5;
    let e = -1;
    for (let n = 0; n < -t; n++)
      e = e & ~(255 << 8 * n) | this.byte() << 8 * n;
    return e;
  }
  // ------------------------------------------------------------------- values
  readValue() {
    const t = String.fromCharCode(this.byte());
    switch (t) {
      case "0":
        return null;
      case "T":
        return !0;
      case "F":
        return !1;
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
        return this.readHash(!1);
      case "}":
        return this.readHash(!0);
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
        throw new z(
          `Unhandled Marshal tag '${t}' (0x${t.charCodeAt(0).toString(16)}) at ${this.pos - 1}`
        );
    }
  }
  readFloat() {
    const t = new TextDecoder("ascii").decode(this.bytes(this.long())), e = t === "inf" ? 1 / 0 : t === "-inf" ? -1 / 0 : t === "nan" ? NaN : Number.parseFloat(t), n = new U(e, t);
    return this.objects.push(n), n;
  }
  readBignum() {
    const t = String.fromCharCode(this.byte()) === "-", e = this.long();
    let n = 0n;
    for (let o = 0; o < e; o++) {
      const i = this.byte(), a = this.byte();
      n |= BigInt(i | a << 8) << BigInt(16 * o);
    }
    const r = new X(t ? -n : n);
    return this.objects.push(r), r;
  }
  readSymbolDef() {
    const t = new TextDecoder("utf-8").decode(this.bytes(this.long())), e = M.of(t);
    return this.symbols.push(e), e;
  }
  readSymLink() {
    const t = this.long(), e = this.symbols[t];
    if (!e) throw new z(`Bad symlink index ${t}`);
    return e;
  }
  readObjLink() {
    const t = this.long();
    if (t >= this.objects.length) throw new z(`Bad objlink index ${t}`);
    return this.objects[t];
  }
  readString() {
    const t = new b(new Uint8Array(this.bytes(this.long())));
    return this.objects.push(t), t;
  }
  readArray() {
    const t = this.long(), e = [];
    this.objects.push(e);
    for (let n = 0; n < t; n++) e.push(this.readValue());
    return e;
  }
  readHash(t) {
    const e = this.long(), n = new j();
    this.objects.push(n);
    for (let r = 0; r < e; r++) {
      const o = this.readValue();
      n.entries.push([o, this.readValue()]);
    }
    return t && (n.defaultValue = this.readValue()), n;
  }
  readObject() {
    const t = this.readSymbolRef().name, e = new y(t);
    this.objects.push(e);
    const n = this.long();
    for (let r = 0; r < n; r++) {
      const o = this.readSymbolRef().name;
      e.ivars.set(o, this.readValue());
    }
    return e;
  }
  /** `u` — class implements `_dump`; payload is opaque bytes. */
  readUserDef() {
    const t = this.readSymbolRef().name, e = new Uint8Array(this.bytes(this.long())), n = ue(t, e);
    return this.objects.push(n), n;
  }
  /** `U` — class implements `marshal_dump`; payload is a normal Marshal value. */
  readUserMarshal() {
    const t = this.readSymbolRef().name, e = new y(t);
    return this.objects.push(e), e.set("@__marshal_dump", this.readValue()), e;
  }
  /**
   * `I` — the next value is followed by an ivar block. Usually a String
   * carrying its `:E` encoding flag, but Essentials also ships ivar-bearing
   * Array subclasses (PkmnAnimations.rxdata).
   */
  readIvarWrapped() {
    const t = this.readValue(), e = this.long();
    for (let n = 0; n < e; n++) {
      const r = this.readSymbolRef().name, o = this.readValue();
      t instanceof b && (r === "E" || r === "encoding") ? t.encoding = r === "E" ? o === !0 ? "UTF-8" : "US-ASCII" : o instanceof b ? o.value : void 0 : t instanceof y ? t.ivars.set(r, o) : t !== null && typeof t == "object" && Ft(t, r, o);
    }
    return t;
  }
  /** `e` — object extended with a module. We record it but keep the object. */
  readExtended() {
    const t = this.readSymbolRef().name, e = this.readValue();
    return e instanceof y && e.set("@__extended", b.from(t)), e;
  }
  /** `C` — a builtin (String/Array/Hash) subclassed by a user class. */
  readSubclassed() {
    const t = this.readSymbolRef().name, e = this.readValue();
    return e !== null && typeof e == "object" && ot.set(e, t), e;
  }
  /** Symbols in structural positions may be either a definition or a link. */
  readSymbolRef() {
    const t = String.fromCharCode(this.byte());
    if (t === ":") return this.readSymbolDef();
    if (t === ";") return this.readSymLink();
    throw new z(`Expected symbol, got '${t}' at ${this.pos - 1}`);
  }
}
function ue(s, t) {
  const e = new DataView(t.buffer, t.byteOffset, t.byteLength);
  if (s === "Table") {
    const n = e.getInt32(4, !0), r = e.getInt32(8, !0), o = e.getInt32(12, !0), i = e.getInt32(16, !0), a = new Int16Array(i);
    for (let c = 0; c < i; c++) a[c] = e.getInt16(20 + c * 2, !0);
    return new C(n, r, o, a);
  }
  return s === "Color" || s === "Tone" ? new st(
    e.getFloat64(0, !0),
    e.getFloat64(8, !0),
    e.getFloat64(16, !0),
    e.getFloat64(24, !0),
    s
  ) : new rt(s, t);
}
class G {
  out = [];
  symbols = /* @__PURE__ */ new Map();
  objects = /* @__PURE__ */ new Map();
  static dump(t) {
    const e = new G();
    return e.out.push(4, 8), e.writeValue(t), new Uint8Array(e.out);
  }
  // ---------------------------------------------------------------- primitives
  byte(t) {
    this.out.push(t & 255);
  }
  tag(t) {
    this.out.push(t.charCodeAt(0));
  }
  raw(t) {
    for (let e = 0; e < t.length; e++) this.out.push(t[e]);
  }
  /** Marshal packed integer encoding; mirrors reader's `long()`. */
  long(t) {
    if (t === 0) return this.byte(0);
    if (t > 0 && t < 123) return this.byte(t + 5);
    if (t < 0 && t > -124) return this.byte(t - 5);
    const e = [];
    let n = t;
    for (let r = 0; r < 4 && (e.push(n & 255), n >>= 8, !(t > 0 && n === 0 || t < 0 && n === -1)); r++)
      ;
    this.byte(t < 0 ? -e.length : e.length);
    for (const r of e) this.byte(r);
  }
  writeBytesWithLength(t) {
    this.long(t.length), this.raw(t);
  }
  // ------------------------------------------------------------------- values
  writeValue(t) {
    if (t == null) return this.tag("0");
    if (t === !0) return this.tag("T");
    if (t === !1) return this.tag("F");
    if (typeof t == "number") {
      if (Number.isInteger(t) && t >= -1073741824 && t < 1073741824)
        return this.tag("i"), this.long(t);
      throw new Error(
        `Cannot encode ${t} as Fixnum; wrap it in RFloat or RBignum to pick a Ruby type`
      );
    }
    if (t instanceof M) return this.writeSymbol(t);
    if (t instanceof U)
      return this.objects.has(t) ? (this.tag("@"), this.long(this.objects.get(t))) : (this.register(t), this.writeFloat(t));
    if (t instanceof X)
      return this.objects.has(t) ? (this.tag("@"), this.long(this.objects.get(t))) : (this.register(t), this.writeBignum(t));
    const e = this.objects.get(t);
    if (e !== void 0)
      return this.tag("@"), this.long(e);
    if (t instanceof b) return this.writeString(t);
    if (Array.isArray(t)) return this.writeArray(t);
    if (t instanceof j) return this.writeHash(t);
    if (t instanceof C) return this.writeTable(t);
    if (t instanceof st) return this.writeColor(t);
    if (t instanceof rt) return this.writeUserDef(t);
    if (t instanceof y) return this.writeObject(t);
    throw new Error(`Cannot marshal value of type ${Object.prototype.toString.call(t)}`);
  }
  register(t) {
    const e = this.objects.size;
    return this.objects.set(t, e), e;
  }
  writeFloat(t) {
    this.tag("f");
    let e = t.raw;
    if (e === void 0) {
      const n = t.value;
      Number.isNaN(n) ? e = "nan" : n === 1 / 0 ? e = "inf" : n === -1 / 0 ? e = "-inf" : e = Number.isInteger(n) ? `${n}.0` : String(n);
    }
    this.writeBytesWithLength(new TextEncoder().encode(e));
  }
  writeBignum(t) {
    this.tag("l");
    const e = t.value < 0n;
    this.tag(e ? "-" : "+");
    let n = e ? -t.value : t.value;
    const r = [];
    for (; n > 0n; )
      r.push(Number(n & 0xffffn)), n >>= 16n;
    r.length === 0 && r.push(0), this.long(r.length);
    for (const o of r)
      this.byte(o & 255), this.byte(o >> 8 & 255);
  }
  writeSymbol(t) {
    const e = this.symbols.get(t.name);
    if (e !== void 0)
      return this.tag(";"), this.long(e);
    this.symbols.set(t.name, this.symbols.size), this.tag(":"), this.writeBytesWithLength(new TextEncoder().encode(t.name));
  }
  /**
   * Emits the `I` (has-ivars) and `C` (subclassed-builtin) prefixes a container
   * may need, registers the objlink, then hands back a closure that writes the
   * trailing ivar block. Ordering is load-bearing: Ruby emits `I C:Klass [ …`
   * and only registers the objlink at the container tag itself, so reader and
   * writer stay index-aligned.
   */
  beginContainer(t, e) {
    e.length > 0 && this.tag("I");
    const n = ot.get(t);
    return n !== void 0 && (this.tag("C"), this.writeSymbol(M.of(n))), this.register(t), () => {
      if (e.length !== 0) {
        this.long(e.length);
        for (const [r, o] of e)
          this.writeSymbol(M.of(r)), this.writeValue(o);
      }
    };
  }
  ivarsFor(t) {
    return [...et.get(t) ?? []];
  }
  writeString(t) {
    const e = this.ivarsFor(t);
    t.encoding === "UTF-8" && !e.some(([r]) => r === "E") && e.unshift(["E", !0]);
    const n = this.beginContainer(t, e);
    this.tag('"'), this.writeBytesWithLength(t.bytes), n();
  }
  writeArray(t) {
    const e = this.beginContainer(t, this.ivarsFor(t));
    this.tag("["), this.long(t.length);
    for (const n of t) this.writeValue(n);
    e();
  }
  writeHash(t) {
    const e = this.beginContainer(t, this.ivarsFor(t)), n = t.defaultValue !== null;
    this.tag(n ? "}" : "{"), this.long(t.entries.length);
    for (const [r, o] of t.entries)
      this.writeValue(r), this.writeValue(o);
    n && this.writeValue(t.defaultValue), e();
  }
  writeObject(t) {
    const e = t.ivars.get("@__marshal_dump");
    if (e !== void 0)
      return this.register(t), this.tag("U"), this.writeSymbol(M.of(t.className)), this.writeValue(e);
    this.register(t), this.tag("o"), this.writeSymbol(M.of(t.className));
    const n = [...t.ivars].filter(([r]) => !r.startsWith("@__"));
    this.long(n.length);
    for (const [r, o] of n)
      this.writeSymbol(M.of(r)), this.writeValue(o);
  }
  writeTable(t) {
    const e = new Uint8Array(20 + t.data.length * 2), n = new DataView(e.buffer);
    n.setInt32(0, t.dim, !0), n.setInt32(4, t.xsize, !0), n.setInt32(8, t.ysize, !0), n.setInt32(12, t.zsize, !0), n.setInt32(16, t.data.length, !0);
    for (let r = 0; r < t.data.length; r++) n.setInt16(20 + r * 2, t.data[r], !0);
    this.register(t), this.emitUserDef("Table", e);
  }
  writeColor(t) {
    const e = new Uint8Array(32), n = new DataView(e.buffer);
    n.setFloat64(0, t.red, !0), n.setFloat64(8, t.green, !0), n.setFloat64(16, t.blue, !0), n.setFloat64(24, t.alpha, !0), this.register(t), this.emitUserDef(t.className, e);
  }
  writeUserDef(t) {
    this.register(t), this.emitUserDef(t.className, t.payload);
  }
  emitUserDef(t, e) {
    this.tag("u"), this.writeSymbol(M.of(t)), this.writeBytesWithLength(e);
  }
}
function lt(s) {
  let t = "";
  for (let n = 0; n < s.length; n += 32768)
    t += String.fromCharCode(...s.subarray(n, n + 32768));
  return btoa(t);
}
function ut(s) {
  const t = atob(s), e = new Uint8Array(t.length);
  for (let n = 0; n < t.length; n++) e[n] = t.charCodeAt(n);
  return e;
}
function fe(s) {
  try {
    const t = new TextDecoder("utf-8", { fatal: !0 }).decode(s), e = new TextEncoder().encode(t);
    if (e.length !== s.length) return !1;
    for (let n = 0; n < e.length; n++) if (e[n] !== s[n]) return !1;
    return !0;
  } catch {
    return !1;
  }
}
function Vt(s) {
  return new de().encode(s);
}
class de {
  /** Identity -> index, mirroring Marshal's own backreference semantics. */
  seen = /* @__PURE__ */ new Map();
  counter = 0;
  encode(t) {
    if (t == null) return null;
    if (typeof t == "boolean" || typeof t == "number") return t;
    if (t instanceof M) return { $: "sym", n: t.name };
    const e = this.seen.get(t);
    if (e !== void 0) return { $: "ref", i: e };
    const n = this.counter++;
    if (this.seen.set(t, n), t instanceof U) {
      const r = { $: "flt", v: Number.isFinite(t.value) ? t.value : String(t.value) };
      return t.raw !== void 0 && (r.raw = t.raw), r;
    }
    if (t instanceof X) return { $: "big", v: t.value.toString() };
    if (t instanceof b) {
      const r = fe(t.bytes) ? { $: "str", v: t.value } : { $: "bytes", b: lt(t.bytes) };
      return t.encoding && (r.e = t.encoding), this.attachMeta(t, r), r;
    }
    if (Array.isArray(t)) {
      const r = { $: "arr", v: t.map((o) => this.encode(o)) };
      return this.attachMeta(t, r), r;
    }
    if (t instanceof j) {
      const r = {
        $: "hash",
        v: t.entries.map(([o, i]) => [this.encode(o), this.encode(i)])
      };
      return t.defaultValue !== null && (r.d = this.encode(t.defaultValue)), this.attachMeta(t, r), r;
    }
    if (t instanceof C)
      return {
        $: "tbl",
        x: t.xsize,
        y: t.ysize,
        z: t.zsize,
        d: lt(new Uint8Array(t.data.buffer, t.data.byteOffset, t.data.byteLength))
      };
    if (t instanceof st)
      return { $: "col", c: t.className, r: t.red, g: t.green, b: t.blue, a: t.alpha };
    if (t instanceof rt)
      return { $: "udef", c: t.className, p: lt(t.payload) };
    if (t instanceof y) {
      const r = [];
      for (const [o, i] of t.ivars) r.push([o, this.encode(i)]);
      return { $: "obj", c: t.className, iv: r };
    }
    throw new Error(`marshalToJson: unsupported value ${Object.prototype.toString.call(t)}`);
  }
  attachMeta(t, e) {
    const n = ot.get(t);
    n !== void 0 && (e.cls = n);
    const r = et.get(t);
    r && r.size > 0 && (e.iv = [...r].map(([o, i]) => [o, this.encode(i)]));
  }
}
function Wt(s) {
  return new he().decode(s);
}
class he {
  byId = /* @__PURE__ */ new Map();
  counter = 0;
  decode(t) {
    if (t === null) return null;
    if (typeof t == "boolean" || typeof t == "number") return t;
    if (Array.isArray(t))
      throw new Error("jsonToMarshal: unexpected bare array");
    const e = t;
    if (e.$ === "sym") return M.of(e.n);
    if (e.$ === "ref") {
      const o = this.byId.get(e.i);
      if (o === void 0) throw new Error(`jsonToMarshal: dangling ref ${e.i}`);
      return o;
    }
    const n = this.counter++, r = (o) => (this.byId.set(n, o), o);
    switch (e.$) {
      case "flt": {
        const o = e.v, i = typeof o == "number" ? o : Number(o);
        return r(new U(i, e.raw));
      }
      case "big":
        return r(new X(BigInt(e.v)));
      case "str": {
        const o = new b(new TextEncoder().encode(e.v), e.e);
        return r(o), this.restoreMeta(e, o), o;
      }
      case "bytes": {
        const o = new b(ut(e.b), e.e);
        return r(o), this.restoreMeta(e, o), o;
      }
      case "arr": {
        const o = [];
        r(o);
        for (const i of e.v) o.push(this.decode(i));
        return this.restoreMeta(e, o), o;
      }
      case "hash": {
        const o = new j();
        r(o);
        for (const [i, a] of e.v)
          o.entries.push([this.decode(i), this.decode(a)]);
        return e.d !== void 0 && (o.defaultValue = this.decode(e.d)), this.restoreMeta(e, o), o;
      }
      case "tbl": {
        const o = ut(e.d), i = new Int16Array(o.length / 2), a = new DataView(o.buffer, o.byteOffset, o.byteLength);
        for (let c = 0; c < i.length; c++) i[c] = a.getInt16(c * 2, !0);
        return r(
          new C(e.x, e.y, e.z, i)
        );
      }
      case "col":
        return r(
          new st(
            e.r,
            e.g,
            e.b,
            e.a,
            e.c
          )
        );
      case "udef":
        return r(new rt(e.c, ut(e.p)));
      case "obj": {
        const o = new y(e.c);
        r(o);
        for (const [i, a] of e.iv)
          o.ivars.set(i, this.decode(a));
        return o;
      }
      default:
        throw new Error(`jsonToMarshal: unknown node type '${e.$}'`);
    }
  }
  restoreMeta(t, e) {
    if (typeof t.cls == "string" && ot.set(e, t.cls), Array.isArray(t.iv))
      for (const [n, r] of t.iv)
        Ft(e, n, this.decode(r));
  }
}
const W = 1, Gt = 16, Jt = 65535;
function pe(s, t) {
  return t === 0 ? 0 : (s & 255) << Gt | t & Jt;
}
function me(s) {
  return { slot: s >>> Gt & 255, id: s & Jt };
}
const ge = 5, Ht = [
  { name: "Ground", role: "ground" },
  { name: "Decor", role: "decor" },
  { name: "Overlay", role: "overlay" },
  { name: "Canopy", role: "canopy" },
  { name: "Sky", role: "sky" }
];
function we(s) {
  const t = [];
  let e = 0;
  for (; e < s.length; ) {
    const n = s[e];
    let r = 1;
    for (; e + r < s.length && s[e + r] === n; ) r++;
    const o = n === 0 ? "." : n.toString(36);
    t.push(r === 1 ? o : `${o}*${r}`), e += r;
  }
  return t.join(" ");
}
function ye(s, t) {
  const e = new Int32Array(t);
  let n = 0;
  if (s.length === 0) return e;
  for (const r of s.split(" ")) {
    if (r.length === 0) continue;
    const o = r.indexOf("*"), i = o === -1 ? r : r.slice(0, o), a = o === -1 ? 1 : Number.parseInt(r.slice(o + 1), 10), c = i === "." ? 0 : Number.parseInt(i, 36);
    for (let l = 0; l < a && n < t; l++) e[n++] = c;
  }
  return e;
}
function mt(s, t, e) {
  return {
    name: e.name,
    role: e.role,
    visible: !0,
    locked: !1,
    opacity: 1,
    rows: Array.from({ length: t }, () => s > 0 ? `.*${s}` : "")
  };
}
function be(s, t, e) {
  const n = [];
  for (let r = 0; r < e; r++)
    n.push(we(Array.prototype.slice.call(s, r * t, (r + 1) * t)));
  return n;
}
function Yt(s) {
  return s.charCodeAt(0) === 65279 ? s.slice(1) : s;
}
function yt(s) {
  return Yt(s).split(/\r?\n/);
}
const Se = /* @__PURE__ */ new Set(["N", "S", "E", "W"]);
function It(s) {
  const t = s.trim().toUpperCase();
  return Se.has(t) ? t : null;
}
function Kt(s) {
  const t = yt(s), e = [], n = [];
  let r = [], o = !1;
  for (const i of t) {
    const a = i.trim();
    if (a.length === 0) {
      o || n.push(i);
      continue;
    }
    if (a.startsWith("#")) {
      o || e.length > 0 ? r.push(i) : n.push(i);
      continue;
    }
    const c = a.split(",").map((A) => A.trim());
    if (c.length < 6) {
      r = [];
      continue;
    }
    const l = It(c[1]), f = It(c[4]), d = Number.parseInt(c[0], 10), N = Number.parseInt(c[3], 10);
    if (l === null || f === null || Number.isNaN(d) || Number.isNaN(N)) {
      r = [];
      continue;
    }
    e.push({
      mapA: d,
      edgeA: l,
      offsetA: Number.parseInt(c[2], 10) || 0,
      mapB: N,
      edgeB: f,
      offsetB: Number.parseInt(c[5], 10) || 0,
      comment: r
    }), r = [], o = !0;
  }
  return { connections: e, header: n };
}
function xe(s, t) {
  const e = [...t];
  for (const n of s) {
    for (const r of n.comment) e.push(r);
    e.push(`${n.mapA},${n.edgeA},${n.offsetA},${n.mapB},${n.edgeB},${n.offsetB}`);
  }
  return `${e.join(`
`)}
`;
}
function Ie(s) {
  const t = yt(s), e = [], n = [];
  let r = null, o = [];
  for (const i of t) {
    const a = i.trim();
    if (a.startsWith("[") && a.includes("]")) {
      const A = a.indexOf("]"), Z = a.slice(1, A), $ = a.slice(A + 1).trim();
      r = { key: Z, headerComment: $, fields: [], leading: o }, o = [], e.push(r);
      continue;
    }
    if (a.length === 0 || a.startsWith("#")) {
      r === null ? n.push(i) : o.push(i);
      continue;
    }
    const c = a.indexOf("=");
    if (c === -1 || r === null) {
      o = [];
      continue;
    }
    const l = a.slice(c + 1), f = l.search(/\s#/), d = (f === -1 ? l : l.slice(0, f)).trim(), N = f === -1 ? "" : l.slice(f).trim();
    r.fields.push({ key: a.slice(0, c).trim(), value: d, comment: N }), o = [];
  }
  return { sections: e, header: n };
}
const $e = {
  Outdoor: "outdoor",
  ShowArea: "showArea",
  BicycleUsable: "bicycleUsable",
  BicycleAlways: "bicycleAlways",
  DarkMap: "darkMap",
  Dark: "dark",
  SafariMap: "safariMap",
  SnapEdges: "snapEdges",
  FlyDestination: "flyDestination"
}, Me = {
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
function $t(s) {
  return s.split(",").map((t) => Number.parseInt(t.trim(), 10)).filter((t) => !Number.isNaN(t));
}
function Ne(s) {
  const t = { extra: {} }, e = t;
  for (const { key: n, value: r } of s.fields) {
    const o = $e[n];
    if (o) {
      e[o] = r.toLowerCase() === "true";
      continue;
    }
    const i = Me[n];
    if (i) {
      e[i] = r;
      continue;
    }
    switch (n) {
      case "HealingSpot": {
        const a = $t(r);
        a.length >= 3 && (t.healingSpot = [a[0], a[1], a[2]]);
        break;
      }
      case "MapPosition": {
        const a = $t(r);
        a.length >= 3 && (t.mapPosition = [a[0], a[1], a[2]]);
        break;
      }
      case "MapSize": {
        const a = r.indexOf(",");
        a !== -1 && (t.mapSize = {
          width: Number.parseInt(r.slice(0, a).trim(), 10) || 1,
          layout: r.slice(a + 1).trim()
        });
        break;
      }
      case "Dive":
        t.dive = Number.parseInt(r, 10) || 0;
        break;
      case "Weather": {
        const a = r.split(",").map((c) => c.trim());
        t.weatherPBS = [a[0] ?? "None", Number.parseInt(a[1] ?? "0", 10) || 0];
        break;
      }
      default:
        t.extra[n] = r;
    }
  }
  return t;
}
function Ee(s) {
  const t = yt(s), e = /* @__PURE__ */ new Map();
  let n = null, r = null;
  for (const o of t) {
    const a = o.split("#")[0].trimEnd().trim();
    if (a.length === 0) continue;
    if (a.startsWith("[")) {
      const l = a.slice(1, a.indexOf("]"));
      n = Number.parseInt(l.split(",")[0].trim(), 10), r = null, !Number.isNaN(n) && !e.has(n) && e.set(n, []);
      continue;
    }
    if (n === null) continue;
    if (/^\d/.test(a)) {
      if (r === null) continue;
      const l = a.split(",").map((A) => A.trim());
      if (l.length < 3) continue;
      const f = Number.parseInt(l[2], 10), d = l.length >= 4 ? Number.parseInt(l[3], 10) : f, N = {
        probability: Number.parseInt(l[0], 10) || 0,
        species: l[1],
        minLevel: Number.isNaN(f) ? 1 : f,
        maxLevel: Number.isNaN(d) ? Number.isNaN(f) ? 1 : f : d
      };
      r.slots.push(N);
      continue;
    }
    const c = a.split(",").map((l) => l.trim());
    r = {
      type: c[0],
      step: c.length > 1 && Number.parseInt(c[1], 10) || 0,
      slots: []
    }, e.get(n).push(r);
  }
  return e;
}
function Te(s) {
  const t = /* @__PURE__ */ new Map();
  if (!Array.isArray(s)) return t;
  for (const e of s) {
    if (!(e instanceof y)) continue;
    const n = e.int("@id"), r = e.get("@autotile_names"), o = Array.isArray(r) ? r.map((i) => i instanceof b ? i.value : "") : [];
    t.set(n, {
      id: n,
      name: e.str("@name"),
      graphic: e.str("@tileset_name"),
      // RMXP always stores 7 slots; normalise short arrays so indexing is safe.
      autotiles: Array.from({ length: 7 }, (i, a) => o[a] ?? ""),
      passages: ft(e.get("@passages")),
      priorities: ft(e.get("@priorities")),
      terrainTags: ft(e.get("@terrain_tags"))
    });
  }
  return t;
}
function ft(s) {
  if (!(s instanceof C)) return {};
  const t = {};
  for (let e = 0; e < s.data.length; e++)
    s.data[e] !== 0 && (t[e] = s.data[e]);
  return t;
}
function Ae(s) {
  const t = /* @__PURE__ */ new Map();
  if (!(s instanceof j)) return t;
  for (const [e, n] of s.entries)
    typeof e != "number" || !(n instanceof y) || t.set(e, {
      id: e,
      name: n.str("@name"),
      parentId: n.int("@parent_id"),
      order: n.int("@order"),
      expanded: n.bool("@expanded"),
      scrollX: n.int("@scroll_x"),
      scrollY: n.int("@scroll_y")
    });
  return t;
}
function Mt(s) {
  if (!(s instanceof y)) return null;
  const t = s.str("@name");
  return t.length === 0 ? null : { name: t, volume: s.int("@volume", 100), pitch: s.int("@pitch", 100) };
}
function Xt(s, t) {
  const e = [];
  for (const n of t)
    n.mapA === s && e.push({
      edge: n.edgeA,
      offset: n.offsetA,
      toMapId: n.mapB,
      toEdge: n.edgeB,
      toOffset: n.offsetB
    }), n.mapB === s && e.push({
      edge: n.edgeB,
      offset: n.offsetB,
      toMapId: n.mapA,
      toEdge: n.edgeA,
      toOffset: n.offsetA
    });
  return e;
}
function _e(s, t, e) {
  const n = [];
  for (let r = 0; r < ge; r++) {
    const o = Ht[r];
    if (s === null || r >= s.zsize) {
      n.push(mt(t, e, o));
      continue;
    }
    const i = new Int32Array(t * e);
    for (let a = 0; a < e; a++)
      for (let c = 0; c < t; c++) {
        const l = s.at(c, a, r);
        i[a * t + c] = pe(0, l);
      }
    n.push({
      ...mt(t, e, o),
      rows: be(i, t, e)
    });
  }
  return n;
}
function Ce(s) {
  if (!(s instanceof j)) return [];
  const t = [];
  for (const [e, n] of s.entries)
    n instanceof y && t.push({
      id: typeof e == "number" ? e : n.int("@id"),
      name: n.str("@name"),
      x: n.int("@x"),
      y: n.int("@y"),
      // Verbatim command tree. This is what makes export lossless.
      raw: Vt(n)
    });
  return t.sort((e, n) => e.id - n.id), t;
}
const je = { kind: "None", power: 0, chance: 100 };
function ve(s) {
  if (!s.weatherPBS) return { ...je };
  const [t, e] = s.weatherPBS;
  return {
    kind: t || "None",
    // PBS stores only kind and chance; power starts mid-scale so the map looks
    // the same in-editor as in-game until the author tunes it.
    power: 5,
    chance: e || 100
  };
}
function ke(s, t) {
  const e = [], n = s.join(t, "Data"), r = s.join(t, "PBS"), o = Te(T.parse(s.readFile(s.join(n, "Tilesets.rxdata")))), i = Ae(T.parse(s.readFile(s.join(n, "MapInfos.rxdata")))), a = s.readTextIfExists(s.join(r, "map_connections.txt")), c = a ? Kt(a).connections : [];
  a || e.push("PBS/map_connections.txt not found; no connections imported.");
  const l = s.readTextIfExists(s.join(r, "map_metadata.txt")), f = /* @__PURE__ */ new Map();
  if (l)
    for (const $ of Ie(l).sections) {
      const _ = Number.parseInt($.key, 10);
      Number.isNaN(_) || f.set(_, Ne($));
    }
  else
    e.push("PBS/map_metadata.txt not found; metadata will be empty.");
  const d = s.readTextIfExists(s.join(r, "encounters.txt")), N = d ? Ee(d) : /* @__PURE__ */ new Map(), A = s.listDir(n).filter(($) => /^Map\d+\.rxdata$/.test($)).sort(), Z = [];
  for (const $ of A) {
    const _ = Number.parseInt($.slice(3, -7), 10);
    let E;
    try {
      E = T.parse(s.readFile(s.join(n, $)));
    } catch (ne) {
      e.push(`${$}: failed to parse (${ne.message}); skipped.`);
      continue;
    }
    if (!(E instanceof y)) {
      e.push(`${$}: unexpected root type; skipped.`);
      continue;
    }
    const Q = E.int("@width"), q = E.int("@height"), at = E.int("@tileset_id"), R = E.get("@data"), ct = i.get(_), L = f.get(_) ?? { extra: {} };
    o.get(at) || e.push(`${$}: references unknown tileset #${at}.`), R instanceof C ? (R.xsize !== Q || R.ysize !== q) && e.push(
      `${$}: @data is ${R.xsize}x${R.ysize} but header says ${Q}x${q}.`
    ) : e.push(`${$}: @data is not a Table; imported as empty.`), Z.push({
      formatVersion: W,
      id: _,
      name: ct?.name ?? L.name ?? `Map ${_}`,
      parentId: ct?.parentId ?? 0,
      order: ct?.order ?? _,
      width: Q,
      height: q,
      // Slot 0 is the map's original RMXP tileset; more can be added in-editor.
      tilesets: [{ tilesetId: at }],
      layers: _e(R instanceof C ? R : null, Q, q),
      bgm: Mt(E.get("@bgm")),
      bgs: Mt(E.get("@bgs")),
      autoplayBgm: E.bool("@autoplay_bgm"),
      autoplayBgs: E.bool("@autoplay_bgs"),
      connections: Xt(_, c),
      weather: ve(L),
      lighting: {
        // Dark maps already imply lighting in Essentials; pre-enable those so the
        // author sees the same darkness in the editor as in-game.
        enabled: L.darkMap === !0 || L.dark === !0,
        ambient: L.darkMap === !0 || L.dark === !0 ? 0.72 : 0,
        tintByHour: {},
        lights: []
      },
      encounters: N.get(_) ?? [],
      encounterStep: le(E.get("@encounter_step"), 30),
      metadata: L,
      events: Ce(E.get("@events")),
      notes: ""
    });
  }
  return { maps: Z, tilesets: o, mapInfos: i, warnings: e };
}
const Nt = 3;
function nt(s) {
  return `Map${String(s).padStart(3, "0")}.rxdata`;
}
function Zt(s) {
  return new b(new TextEncoder().encode(s));
}
function Et(s, t) {
  const e = s?.name ?? "";
  if (t instanceof y) {
    const r = t.get("@name");
    if (r instanceof b && r.value === e)
      return s === null || (t.set("@volume", s.volume), t.set("@pitch", s.pitch)), t;
  }
  const n = t instanceof y ? t : new y("RPG::AudioFile");
  return n.set("@name", Zt(e)), n.set("@volume", s?.volume ?? 100), n.set("@pitch", s?.pitch ?? 100), n;
}
function De(s, t) {
  const e = new C(s.width, s.height, Nt);
  let n = 0, r = 0;
  for (let o = 0; o < s.layers.length; o++) {
    const i = s.layers[o]?.rows ?? [];
    for (let a = 0; a < s.height; a++) {
      const c = ye(i[a] ?? "", s.width);
      for (let l = 0; l < s.width; l++) {
        const f = c[l];
        if (f === 0) continue;
        if (o >= Nt) {
          n++;
          continue;
        }
        const { slot: d, id: N } = me(f);
        if (d !== 0) {
          r++;
          continue;
        }
        e.put(l, a, o, N);
      }
    }
  }
  return n > 0 && t.push(
    `${n} tiles on the Canopy/Sky layers have no .rxdata equivalent and were left out of ${nt(s.id)}. They remain in the SCMap JSON, so the runtime plugin still renders them.`
  ), r > 0 && t.push(
    `${r} tiles use a second tileset slot, which RPG Maker XP cannot store. They were left out of ${nt(s.id)} but remain in the SCMap JSON.`
  ), e;
}
function Be(s, t, e) {
  const n = new j(), r = /* @__PURE__ */ new Map();
  t instanceof j && t.entries.forEach(([i], a) => {
    typeof i == "number" && r.set(i, a);
  });
  const o = [...s.events].sort(
    (i, a) => (r.get(i.id) ?? Number.POSITIVE_INFINITY) - (r.get(a.id) ?? Number.POSITIVE_INFINITY) || i.id - a.id
  );
  for (const i of o) {
    let a;
    try {
      a = Wt(i.raw);
    } catch (c) {
      e.push(`Event ${i.id} (${i.name}) could not be exported: ${c.message}`);
      continue;
    }
    if (!(a instanceof y)) {
      e.push(`Event ${i.id} (${i.name}) did not decode to an RPG::Event; skipped.`);
      continue;
    }
    n.set(i.id, a);
  }
  return n;
}
function Oe(s, t = null) {
  const e = [], n = t instanceof y ? t : new y("RPG::Map"), r = s.tilesets[0]?.tilesetId ?? 1;
  return s.tilesets.length > 1 && e.push(
    `Map ${s.id} references ${s.tilesets.length} tilesets; only slot 0 (#${r}) is written to .rxdata.`
  ), n.set("@tileset_id", r), n.set("@width", s.width), n.set("@height", s.height), n.set("@autoplay_bgm", s.autoplayBgm), n.set("@bgm", Et(s.bgm, n.get("@bgm"))), n.set("@autoplay_bgs", s.autoplayBgs), n.set("@bgs", Et(s.bgs, n.get("@bgs"))), Array.isArray(n.get("@encounter_list")) || n.set("@encounter_list", []), n.set("@encounter_step", s.encounterStep), n.set("@data", De(s, e)), n.set("@events", Be(s, n.get("@events"), e)), { map: n, warnings: e };
}
function Re(s, { upsert: t = [], remove: e = [] }) {
  const n = s instanceof j ? s : new j();
  if (e.length > 0) {
    const r = new Set(e), o = n.entries.filter(([i]) => !(typeof i == "number" && r.has(i)));
    n.entries.length = 0, n.entries.push(...o);
  }
  for (const r of t) {
    const o = n.get(r.id), i = o instanceof y ? o : new y("RPG::MapInfo");
    i.set("@name", Zt(r.name)), i.set("@parent_id", r.parentId), i.set("@order", r.order), i.has("@expanded") || i.set("@expanded", !1), i.has("@scroll_x") || i.set("@scroll_x", 0), i.has("@scroll_y") || i.set("@scroll_y", 0), n.set(r.id, i);
  }
  return n;
}
const Le = 4400, Qt = 7;
function dt(s, t) {
  const e = t instanceof C ? t.xsize : Le, n = new C(e, 1, 1);
  for (const [r, o] of Object.entries(s)) {
    const i = Number(r);
    !Number.isInteger(i) || i < 0 || i >= e || (n.data[i] = o);
  }
  return n;
}
function ze(s) {
  return Array.from({ length: Qt }, (t, e) => b.from(s[e] ?? ""));
}
const Ue = [
  "@terrain_tags",
  "@panorama_hue",
  "@fog_sy",
  "@name",
  "@fog_opacity",
  "@priorities",
  "@panorama_name",
  "@fog_sx",
  "@fog_hue",
  "@passages",
  "@autotile_names",
  "@fog_zoom",
  "@fog_name",
  "@battleback_name",
  "@tileset_name",
  "@id",
  "@fog_blend_type"
];
function Pe(s) {
  const t = [
    ["@panorama_hue", 0],
    ["@panorama_name", b.from("")],
    ["@fog_name", b.from("")],
    ["@fog_hue", 0],
    ["@fog_opacity", 64],
    ["@fog_blend_type", 0],
    ["@fog_zoom", 100],
    ["@fog_sx", 0],
    ["@fog_sy", 0],
    ["@battleback_name", b.from("")]
  ];
  for (const [e, n] of t)
    s.get(e) === null && s.set(e, n);
}
function Fe(s, t = null) {
  const e = t instanceof y ? t : new y("RPG::Tileset");
  if (!(t instanceof y))
    for (const n of Ue) e.set(n, null);
  return e.set("@id", s.id), e.set("@name", b.from(s.name)), e.set("@tileset_name", b.from(s.graphic)), e.set("@autotile_names", ze(s.autotiles)), e.set("@passages", dt(s.passages, e.get("@passages"))), e.set("@priorities", dt(s.priorities, e.get("@priorities"))), e.set("@terrain_tags", dt(s.terrainTags, e.get("@terrain_tags"))), Pe(e), e;
}
function Ve(s, t) {
  const e = Array.isArray(s) ? [...s] : [null];
  e.length === 0 && e.push(null);
  for (const n of t)
    if (!(!Number.isInteger(n.id) || n.id < 1)) {
      for (; e.length <= n.id; ) e.push(null);
      e[n.id] = Fe(n, e[n.id]);
    }
  return e;
}
function We(s) {
  const t = new Set(s);
  let e = 1;
  for (; t.has(e); ) e++;
  return e;
}
function Ge(s, t, e, n = []) {
  return {
    id: s,
    name: t,
    graphic: e,
    autotiles: Array.from({ length: Qt }, (r, o) => n[o] ?? ""),
    // Sparse and empty: every tile starts passable, priority 0, terrain 0, which
    // is exactly what RPG Maker XP gives a new tileset too.
    passages: {},
    priorities: {},
    terrainTags: {}
  };
}
function Je(s, t, e) {
  const n = s.get(t);
  if (n instanceof b) {
    if (n.value === e) return;
    s.set(t, new b(new TextEncoder().encode(e), n.encoding));
    return;
  }
  s.set(t, new b(new TextEncoder().encode(e)));
}
function He(s) {
  if (!Array.isArray(s)) return [];
  const t = [];
  for (const e of s) {
    if (!(e instanceof y)) continue;
    const n = e.get("@list");
    t.push({
      id: e.int("@id"),
      name: e.str("@name"),
      trigger: e.int("@trigger"),
      switchId: e.int("@switch_id"),
      raw: Vt(e),
      commandCount: Array.isArray(n) ? n.length : 0
    });
  }
  return t.sort((e, n) => e.id - n.id);
}
function Ye(s, t) {
  const e = Array.isArray(s) ? [...s] : [null];
  e.length === 0 && e.push(null);
  for (const n of t) {
    if (!Number.isInteger(n.id) || n.id < 1) continue;
    const r = Wt(n.raw);
    if (r instanceof y) {
      for (r.set("@id", n.id), Je(r, "@name", n.name), r.set("@trigger", n.trigger), r.set("@switch_id", n.switchId); e.length <= n.id; ) e.push(null);
      e[n.id] = r;
    }
  }
  return e;
}
const Ke = /* @__PURE__ */ new Set(["raw", "passages", "priorities", "terrainTags"]);
function qt(s) {
  return `${gt(s, 0, null)}
`;
}
function gt(s, t, e) {
  if (e !== null && Ke.has(e)) return JSON.stringify(s);
  if (s === null || typeof s != "object") return JSON.stringify(s) ?? "null";
  const n = "  ".repeat(t + 1), r = "  ".repeat(t);
  if (Array.isArray(s))
    return s.length === 0 ? "[]" : s.every((c) => typeof c == "number") ? JSON.stringify(s) : `[
${s.map((c) => `${n}${gt(c, t + 1, null)}`).join(`,
`)}
${r}]`;
  const o = Object.entries(s).filter(
    ([, a]) => a !== void 0
  );
  return o.length === 0 ? "{}" : `{
${o.map(
    ([a, c]) => `${n}${JSON.stringify(a)}: ${gt(c, t + 1, a)}`
  ).join(`,
`)}
${r}}`;
}
function Tt(s) {
  return Math.max(1, Math.min(500, Math.round(s) || 1));
}
function Xe(s) {
  const t = Tt(s.width), e = Tt(s.height);
  return {
    formatVersion: W,
    id: s.id,
    name: s.name,
    parentId: s.parentId,
    order: s.order,
    width: t,
    height: e,
    tilesets: [{ tilesetId: s.tilesetId }],
    layers: Ht.map((n) => mt(t, e, n)),
    bgm: null,
    bgs: null,
    autoplayBgm: !1,
    autoplayBgs: !1,
    connections: [],
    weather: { kind: "None", power: 0, chance: 100 },
    lighting: { enabled: !1, ambient: 0, tintByHour: {}, lights: [] },
    encounters: [],
    encounterStep: 30,
    // Outdoor + ShowArea is what almost every hand-made Essentials map starts as,
    // and both are trivial to turn off; starting with an empty metadata block
    // instead means the new map silently has no area name in game.
    metadata: { outdoor: !0, showArea: !0, extra: {} },
    events: [],
    notes: ""
  };
}
function Ze(s, t, e, n) {
  return { ...JSON.parse(JSON.stringify(s)), id: t, name: e, order: n, connections: [] };
}
function At(s) {
  const t = new Set(s);
  let e = 1;
  for (; t.has(e); ) e++;
  return e;
}
const Y = !O.isPackaged, Qe = process.env.VITE_DEV_SERVER_URL ?? "http://localhost:5173";
O.setName("Shattered Crowns Editor");
for (const s of [process.stdout, process.stderr])
  s.on("error", (t) => {
    t.code !== "EPIPE" && (process.exitCode = 1);
  });
process.platform === "linux" && (O.commandLine.appendSwitch("ozone-platform-hint", "auto"), O.commandLine.appendSwitch("enable-features", "WaylandWindowDecorations"));
let x = null, p = null, v = null;
function g(s) {
  if (p === null) throw new Error("No project is open");
  if (St(s)) throw new Error(`Expected a relative path, got ${s}`);
  const t = Lt(p, s), e = zt(p, t);
  if (e.startsWith("..") || e.length > 0 && St(e))
    throw new Error(`Path escapes the project root: ${s}`);
  return t;
}
const qe = {
  readFile: (s) => new Uint8Array(S(s)),
  readTextIfExists: (s) => w(s) ? S(s, "utf8") : null,
  listDir: (s) => D(s),
  join: (...s) => u(...s)
};
function bt(s) {
  return u(s, "Data", "SCMaps");
}
function F(s) {
  const t = bt(s), e = [];
  if (!w(t)) return { maps: [], warnings: ["Project has not been imported yet."] };
  const n = [];
  for (const r of D(t).sort())
    if (/^Map\d+\.json$/.test(r))
      try {
        const o = JSON.parse(S(u(t, r), "utf8"));
        if (o.formatVersion > W) {
          e.push(`${r} was written by a newer editor (v${o.formatVersion}); skipped.`);
          continue;
        }
        n.push({
          id: o.id,
          name: o.name,
          parentId: o.parentId,
          order: o.order,
          width: o.width,
          height: o.height,
          connectedTo: (o.connections ?? []).map((i) => i.toMapId)
        });
      } catch (o) {
        e.push(`${r}: ${o.message}`);
      }
  return { maps: n, warnings: e };
}
function k(s) {
  const { maps: t, warnings: e } = F(s);
  let n = "Shattered Crowns";
  const r = u(s, "Game.ini");
  if (w(r)) {
    const o = /^Title\s*=\s*(.+)$/m.exec(S(r, "latin1"));
    o && (n = o[1].trim());
  }
  return { root: s, title: n, imported: w(bt(s)), maps: t, warnings: e };
}
function K(s) {
  return u("Data", "SCMaps", `Map${String(s).padStart(3, "0")}.json`);
}
function H(s) {
  return JSON.parse(S(g(K(s)), "utf8"));
}
function P(s) {
  const t = g(K(s.id));
  V(B(t), { recursive: !0 }), I(t, qt(s), "utf8");
}
function it(s) {
  if (!w(s)) return;
  const t = `${s}.forge-backup`;
  w(t) || I(t, S(s));
}
function _t() {
  const s = /* @__PURE__ */ new Set(), t = g(u("Data", "SCMaps"));
  if (w(t))
    for (const e of D(t)) {
      const n = /^Map(\d+)\.json$/.exec(e);
      n && s.add(Number.parseInt(n[1], 10));
    }
  for (const e of D(g("Data"))) {
    const n = /^Map(\d+)\.rxdata$/.exec(e);
    n && s.add(Number.parseInt(n[1], 10));
  }
  return s;
}
function Ct(s, t) {
  const e = g(s);
  if (!w(e)) return;
  const n = g(u("Data", "SCMaps", ".trash", t));
  V(n, { recursive: !0 }), re(e, u(n, s.split(Ut).pop() ?? "file"));
}
function tn() {
  const s = g(u("Data", "MapInfos.rxdata"));
  return w(s) ? T.parse(new Uint8Array(S(s))) : null;
}
function J(s) {
  const t = g(u("Data", "MapInfos.rxdata"));
  it(t);
  const e = Re(tn(), s);
  I(t, G.dump(e));
}
function ht(s) {
  const t = g(u("Data", nt(s.id))), e = w(t) ? T.parse(new Uint8Array(S(t))) : null, { map: n, warnings: r } = Oe(s, e);
  return it(t), I(t, G.dump(n)), r;
}
const te = u("Data", "SCMaps", "tilesets.json");
function jt() {
  const s = g(te);
  if (!w(s)) return { formatVersion: W, tilesets: [] };
  const t = JSON.parse(S(s, "utf8"));
  return { formatVersion: t.formatVersion ?? W, tilesets: t.tilesets ?? [] };
}
function vt(s) {
  const t = g(te);
  V(B(t), { recursive: !0 }), I(t, `${JSON.stringify(s, null, 2)}
`, "utf8");
}
function kt(s) {
  const t = g(u("Data", "Tilesets.rxdata")), e = w(t) ? T.parse(new Uint8Array(S(t))) : null;
  it(t), I(t, G.dump(Ve(e, s)));
}
function pt(s, t) {
  if (t.length === 0) return !1;
  const e = g(u("Graphics", s));
  if (!w(e)) return !1;
  const n = t.toLowerCase();
  return D(e).some((r) => r.replace(/\.[^.]+$/, "").toLowerCase() === n);
}
const ee = u("PBS", "map_connections.txt");
function en() {
  const s = g(ee);
  if (!w(s))
    return {
      parsed: [],
      header: [
        "# See the documentation on the wiki to learn how to edit this file.",
        "#-------------------------------"
      ],
      bom: !1
    };
  const t = S(s, "utf8"), { connections: e, header: n } = Kt(t);
  return { parsed: e, header: n, bom: t !== Yt(t) };
}
function Dt(s, t, e) {
  const { parsed: n, header: r, bom: o } = en(), i = /* @__PURE__ */ new Set([s]);
  for (const d of n)
    d.mapA === s && i.add(d.mapB), d.mapB === s && i.add(d.mapA);
  const a = n.filter((d) => d.mapA !== s && d.mapB !== s), c = (d) => `${e.get(d) ?? `Map ${d}`} (${d})`;
  for (const d of t)
    i.add(d.toMapId), a.push({
      mapA: s,
      edgeA: d.edge,
      offsetA: d.offset,
      mapB: d.toMapId,
      edgeB: d.toEdge,
      offsetB: d.toOffset,
      // The file is full of hand-written labels like this; a new entry without
      // one is immediately the odd line out in a diff.
      comment: [`# ${c(s)} - ${c(d.toMapId)}`]
    });
  const l = xe(a, r);
  I(g(ee), o ? `\uFEFF${l}` : l, "utf8");
  const f = [];
  for (const d of i) {
    const N = g(K(d));
    if (!w(N)) continue;
    const A = H(d);
    A.connections = Xt(d, a), P(A), f.push(d);
  }
  return f;
}
function Bt() {
  return p === null ? /* @__PURE__ */ new Map() : new Map(F(p).maps.map((s) => [s.id, s.name]));
}
function nn(s, t) {
  const e = /* @__PURE__ */ new Set([s]);
  let n = t.get(s) ?? 0;
  for (; n !== 0; ) {
    if (e.has(n)) return !0;
    e.add(n), n = t.get(n) ?? 0;
  }
  return !1;
}
function wt(s) {
  return w(u(s, "Data", "MapInfos.rxdata")) && w(u(s, "Graphics"));
}
function sn(s) {
  if (!s) return null;
  let t = Lt(s);
  for (w(t) || (t = B(t)); ; ) {
    if (wt(t)) return t;
    const e = B(t);
    if (e === t || t === Rt(t).root) return null;
    t = e;
  }
}
function rn() {
  m.handle(h.projectOpen, (t, e) => {
    const n = e === "" || e === "." ? p : e;
    if (n === null) throw new Error("No bundled project was found to open.");
    if (!wt(n))
      throw new Error(`${n} does not look like an Essentials project (no Data/MapInfos.rxdata).`);
    return p = n, k(n);
  }), m.handle(h.projectPick, async () => {
    const t = await tt.showOpenDialog({
      title: "Open project",
      properties: ["openDirectory"]
    });
    if (t.canceled || t.filePaths.length === 0) return null;
    const e = t.filePaths[0];
    if (!wt(e))
      throw new Error(`${e} does not look like an Essentials project.`);
    return p = e, k(e);
  }), m.handle(h.projectReimport, () => {
    if (p === null) throw new Error("No project is open");
    const t = ke(qe, p), e = bt(p);
    V(e, { recursive: !0 });
    for (const r of t.maps)
      I(u(e, `Map${String(r.id).padStart(3, "0")}.json`), qt(r), "utf8");
    I(
      u(e, "tilesets.json"),
      `${JSON.stringify(
        {
          formatVersion: W,
          tilesets: [...t.tilesets.values()].sort((r, o) => r.id - o.id)
        },
        null,
        2
      )}
`,
      "utf8"
    );
    const n = k(p);
    return n.warnings.push(...t.warnings), n;
  }), m.handle(h.mapLoad, (t, e) => {
    const n = g(u("Data", "SCMaps", `Map${String(e).padStart(3, "0")}.json`));
    return JSON.parse(S(n, "utf8"));
  }), m.handle(h.mapSave, (t, e) => {
    if (typeof e?.id != "number") throw new Error("Refusing to save a map with no id");
    return P(e), J({
      upsert: [{ id: e.id, name: e.name, parentId: e.parentId, order: e.order }]
    }), ht(e);
  }), m.handle(h.mapCreate, (t, e) => {
    if (p === null) throw new Error("No project is open");
    const n = F(p).maps, r = At(_t()), o = Xe({
      id: r,
      name: e.name.trim() || `Map ${r}`,
      width: e.width,
      height: e.height,
      tilesetId: e.tilesetId,
      parentId: e.parentId,
      order: n.reduce((a, c) => Math.max(a, c.order), 0) + 1
    });
    P(o), J({ upsert: [{ id: r, name: o.name, parentId: o.parentId, order: o.order }] });
    const i = ht(o);
    return { summary: k(p), warnings: i, invalidated: [], newMapId: r };
  }), m.handle(h.mapDuplicate, (t, e) => {
    if (p === null) throw new Error("No project is open");
    const n = H(e), r = F(p).maps, o = At(_t()), i = Ze(
      n,
      o,
      `${n.name} Copy`,
      r.reduce((c, l) => Math.max(c, l.order), 0) + 1
    );
    P(i), J({
      upsert: [{ id: o, name: i.name, parentId: i.parentId, order: i.order }]
    });
    const a = ht(i);
    return n.connections.length > 0 && a.push(
      `${i.name} was copied without ${n.name}'s ${n.connections.length} connection(s); a seam belongs to one specific pair of maps.`
    ), { summary: k(p), warnings: a, invalidated: [], newMapId: o };
  }), m.handle(h.mapDelete, (t, e) => {
    if (p === null) throw new Error("No project is open");
    const n = w(g(K(e))) ? H(e) : null, r = [], o = /* @__PURE__ */ new Set();
    for (const l of Dt(e, [], Bt())) o.add(l);
    const i = n?.parentId ?? 0, a = [];
    for (const l of F(p).maps.filter((f) => f.parentId === e)) {
      if (l.id === e) continue;
      const f = H(l.id);
      f.parentId = i, P(f), a.push({ id: l.id, name: f.name, parentId: i, order: f.order }), o.add(l.id);
    }
    a.length > 0 && r.push(`${a.length} child map(s) moved up to parent ${i || "root"}.`), J({ upsert: a, remove: [e] });
    const c = (/* @__PURE__ */ new Date()).toISOString().replace(/[:.]/g, "-");
    return Ct(K(e), c), Ct(u("Data", nt(e)), c), o.delete(e), r.push(`Map ${e} moved to Data/SCMaps/.trash/${c}.`), { summary: k(p), warnings: r, invalidated: [...o] };
  }), m.handle(h.mapTree, (t, e) => {
    if (p === null) throw new Error("No project is open");
    const n = new Map(F(p).maps.map((c) => [c.id, c])), r = [], o = [], i = [], a = new Map([...n].map(([c, l]) => [c, l.parentId]));
    for (const c of e)
      c.parentId !== void 0 && a.set(c.id, c.parentId);
    for (const c of e) {
      const l = n.get(c.id);
      if (!l) {
        i.push(`Map ${c.id} no longer exists; skipped.`);
        continue;
      }
      if (c.parentId !== void 0 && nn(c.id, a)) {
        i.push(`Map ${l.name} cannot be moved under its own descendant.`), a.set(c.id, l.parentId);
        continue;
      }
      const f = H(c.id);
      f.name = c.name?.trim() || f.name, f.parentId = c.parentId ?? f.parentId, f.order = c.order ?? f.order, P(f), r.push({ id: f.id, name: f.name, parentId: f.parentId, order: f.order }), o.push(f.id);
    }
    return r.length > 0 && J({ upsert: r }), { summary: k(p), warnings: i, invalidated: o };
  }), m.handle(
    h.mapConnections,
    (t, e, n) => {
      if (p === null) throw new Error("No project is open");
      const r = Dt(e, n, Bt());
      return { summary: k(p), warnings: [], invalidated: r };
    }
  ), m.handle(h.commonEventsLoad, () => {
    const t = g(u("Data", "CommonEvents.rxdata"));
    return w(t) ? He(T.parse(new Uint8Array(S(t)))) : [];
  }), m.handle(h.commonEventsSave, (t, e) => {
    const n = g(u("Data", "CommonEvents.rxdata")), r = w(n) ? T.parse(new Uint8Array(S(n))) : null;
    it(n), I(n, G.dump(Ye(r, e)));
  }), m.handle(h.tilesetCatalogLoad, () => {
    const t = g(u("Data", "SCMaps", "tilesets.json"));
    return JSON.parse(S(t, "utf8"));
  }), m.handle(h.tilesetCatalogSave, (t, e) => {
    const n = g(u("Data", "SCMaps", "tilesets.json"));
    I(n, `${JSON.stringify(e, null, 2)}
`, "utf8");
  }), m.handle(h.tilesetCreate, (t, e) => {
    const n = jt(), r = [], o = We(n.tilesets.map((c) => c.id)), i = e.graphic.trim();
    if (i.length === 0) throw new Error("A tileset needs a graphic from Graphics/Tilesets.");
    pt("Tilesets", i) || r.push(`Graphics/Tilesets/${i} was not found; the palette will be empty until it is added.`);
    for (const c of e.autotiles)
      c && !pt("Autotiles", c) && r.push(`Graphics/Autotiles/${c} was not found.`);
    const a = Ge(o, e.name.trim() || `Tileset ${o}`, i, e.autotiles);
    return n.tilesets.push(a), n.tilesets.sort((c, l) => c.id - l.id), vt(n), kt([a]), r.push(
      `Tile attributes (passability, priority, terrain tags) all start at zero, so every tile on #${o} is passable until they are set in RPG Maker XP.`
    ), { catalog: n, warnings: r, newTilesetId: o };
  }), m.handle(h.tilesetUpdate, (t, e) => {
    const n = jt(), r = n.tilesets.findIndex((i) => i.id === e.id);
    if (r === -1) throw new Error(`Tileset #${e.id} is not in the catalogue.`);
    const o = [];
    return pt("Tilesets", e.graphic) || o.push(`Graphics/Tilesets/${e.graphic} was not found.`), n.tilesets[r] = {
      ...n.tilesets[r],
      name: e.name,
      graphic: e.graphic,
      autotiles: e.autotiles,
      passages: e.passages ?? n.tilesets[r].passages,
      priorities: e.priorities ?? n.tilesets[r].priorities,
      terrainTags: e.terrainTags ?? n.tilesets[r].terrainTags
    }, vt(n), kt([n.tilesets[r]]), { catalog: n, warnings: o };
  }), m.handle(h.graphicsImport, async (t, e) => {
    if (p === null) throw new Error("No project is open");
    if (e !== "Tilesets" && e !== "Autotiles")
      throw new Error(`Refusing to import into Graphics/${e}`);
    const n = await tt.showOpenDialog({
      title: `Import into Graphics/${e}`,
      properties: ["openFile"],
      filters: [{ name: "Images", extensions: ["png", "jpg", "jpeg", "bmp"] }]
    });
    if (n.canceled || n.filePaths.length === 0) return null;
    const r = n.filePaths[0], o = Rt(r).base, i = g(u("Graphics", e, o));
    if (V(B(i), { recursive: !0 }), w(i))
      throw new Error(`Graphics/${e}/${o} already exists; rename the file or pick the existing one.`);
    return I(i, S(r)), o.replace(/\.[^.]+$/, "");
  }), m.handle(h.imageLoad, (t, e, n) => {
    if (n.length === 0) return null;
    const r = g(u("Graphics", e));
    if (!w(r)) return null;
    const o = [".png", ".PNG", ".jpg", ".jpeg", ".bmp", ""];
    for (const a of o) {
      const c = u(r, n + a);
      if (w(c))
        return { relPath: u("Graphics", e, n + a), bytes: new Uint8Array(S(c)) };
    }
    const i = n.toLowerCase();
    for (const a of D(r))
      if (a.replace(/\.[^.]+$/, "").toLowerCase() === i)
        return { relPath: u("Graphics", e, a), bytes: new Uint8Array(S(u(r, a))) };
    return null;
  }), m.handle(h.graphicsList, (t, e) => {
    const n = g(u("Graphics", e));
    return w(n) ? D(n).filter((r) => /\.(png|jpg|jpeg|bmp)$/i.test(r)).map((r) => r.replace(/\.[^.]+$/, "")).sort((r, o) => r.localeCompare(o)) : [];
  }), m.handle(h.systemNames, () => {
    const t = g(u("Data", "System.rxdata"));
    if (!w(t)) return { switches: [], variables: [], database: {} };
    const e = T.parse(new Uint8Array(S(t))), n = (o) => Array.isArray(o) ? o.map((i) => i instanceof b ? i.value : "") : [];
    if (!(e instanceof y)) return { switches: [], variables: [], database: {} };
    const r = (o) => {
      const i = g(u("Data", o));
      if (!w(i)) return [];
      const a = T.parse(new Uint8Array(S(i)));
      return Array.isArray(a) ? a.map((c) => c instanceof y && c.get("@name") instanceof b ? c.get("@name").value : "") : [];
    };
    return {
      switches: n(e.get("@switches")),
      variables: n(e.get("@variables")),
      database: {
        commonEvents: r("CommonEvents.rxdata"),
        actors: r("Actors.rxdata"),
        items: r("Items.rxdata"),
        weapons: r("Weapons.rxdata"),
        armor: r("Armors.rxdata"),
        skills: r("Skills.rxdata"),
        states: r("States.rxdata"),
        troops: r("Troops.rxdata"),
        animations: r("Animations.rxdata"),
        classes: r("Classes.rxdata"),
        enemies: r("Enemies.rxdata")
      }
    };
  }), m.handle(
    h.eventExport,
    async (t, e, n) => {
      if (p === null) throw new Error("No project is open");
      const r = await tt.showSaveDialog({
        title: "Export event",
        defaultPath: u(p, `${e}.json`),
        filters: [{ name: "Event JSON", extensions: ["json"] }]
      });
      return r.canceled || !r.filePath ? !1 : (I(r.filePath, n, "utf8"), !0);
    }
  ), m.handle(h.eventImport, async () => {
    if (p === null) throw new Error("No project is open");
    const t = await tt.showOpenDialog({
      title: "Import event",
      defaultPath: p,
      properties: ["openFile"],
      filters: [{ name: "Event JSON", extensions: ["json"] }]
    });
    return t.canceled || t.filePaths.length === 0 ? null : S(t.filePaths[0], "utf8");
  }), m.handle(h.pbsRead, (t, e) => {
    const n = g(u("PBS", e));
    return w(n) ? S(n, "utf8") : null;
  }), m.handle(h.pbsWrite, (t, e, n) => {
    I(g(u("PBS", e)), n, "utf8");
  }), m.handle(h.scriptList, () => {
    const t = g(u("Data", "Scripts")), e = [], n = (r) => {
      for (const o of D(r, { withFileTypes: !0 })) {
        const i = u(r, o.name);
        o.isDirectory() ? n(i) : o.name.endsWith(".rb") && e.push(zt(t, i).split(Ut).join("/"));
      }
    };
    return n(t), e.sort();
  }), m.handle(
    h.scriptRead,
    (t, e) => S(g(u("Data", "Scripts", e)), "utf8")
  ), m.handle(h.scriptWrite, (t, e, n) => {
    I(g(u("Data", "Scripts", e)), n, "utf8");
  });
  const s = (t) => {
    if (!t.endsWith(".rb") || t.includes("..") || t.startsWith("/") || t.includes("\\"))
      throw new Error("Invalid Script System path");
    return g(u("Plugins", "[SC] Script System", t));
  };
  m.handle(h.scriptSystemRead, (t, e) => {
    const n = s(e);
    return w(n) ? S(n, "utf8") : null;
  }), m.handle(h.scriptSystemWrite, (t, e, n) => {
    const r = s(e);
    V(B(r), { recursive: !0 }), I(r, n, "utf8");
  }), m.handle(h.gameLaunch, () => {
    if (p === null) throw new Error("No project is open");
    if (v !== null) throw new Error("The game is already running");
    const t = u(p, "Game"), e = w(t) ? t : u(p, "Game.exe");
    v = se(e, [], { cwd: p });
    const n = (r) => (o) => {
      x?.webContents.send(h.gameLog, {
        stream: r,
        text: o.toString("utf8"),
        at: Date.now()
      });
    };
    v.stdout?.on("data", n("stdout")), v.stderr?.on("data", n("stderr")), v.on("exit", (r) => {
      x?.webContents.send(h.gameLog, {
        stream: "stdout",
        text: `
[game exited with code ${r}]
`,
        at: Date.now()
      }), v = null;
    });
  }), m.handle(h.windowMinimize, () => x?.minimize()), m.handle(h.windowToggleMaximize, () => x ? (x.isMaximized() ? x.unmaximize() : x.maximize(), x.isMaximized()) : !1), m.handle(h.windowClose, () => x?.close()), m.handle(h.gameStop, () => {
    v?.kill(), v = null;
  });
}
function on() {
  const s = Y ? [
    "default-src 'self'",
    "img-src 'self' data: blob:",
    "style-src 'self' 'unsafe-inline'",
    "script-src 'self' 'unsafe-inline' 'unsafe-eval'",
    "font-src 'self' data:",
    "connect-src 'self' ws://localhost:* http://localhost:*"
  ] : [
    "default-src 'self'",
    "img-src 'self' data: blob:",
    "style-src 'self' 'unsafe-inline'",
    "script-src 'self'",
    "font-src 'self' data:",
    "connect-src 'self'"
  ];
  oe.defaultSession.webRequest.onHeadersReceived((t, e) => {
    e({
      responseHeaders: {
        ...t.responseHeaders,
        "Content-Security-Policy": [s.join("; ")]
      }
    });
  });
}
function an(s) {
  Y && (s.webContents.on("console-message", (t) => {
    const { level: e, message: n, lineNumber: r, sourceId: o } = t;
    console.log(`[renderer:${e}] ${n} (${o}:${r})`);
  }), s.webContents.on("render-process-gone", (t, e) => {
    console.error(`[renderer] process gone: ${e.reason} (exit ${e.exitCode})`);
  }), s.webContents.on("preload-error", (t, e, n) => {
    console.error(`[preload] ${e} failed: ${n.message}`);
  }), s.webContents.on("did-fail-load", (t, e, n, r) => {
    console.error(`[renderer] failed to load ${r}: ${n} (${e})`);
  }));
}
function Ot() {
  x = new Pt({
    title: "Shattered Crowns Editor",
    width: 1680,
    height: 980,
    minWidth: 1100,
    minHeight: 700,
    show: !1,
    backgroundColor: "#05070d",
    // Frameless so the UI can own the whole surface, including the title bar.
    titleBarStyle: "hidden",
    frame: process.platform !== "linux",
    webPreferences: {
      preload: u(import.meta.dirname, "preload.cjs"),
      contextIsolation: !0,
      nodeIntegration: !1,
      sandbox: !1
    }
  }), an(x);
  const s = () => x?.webContents.send(h.windowState, { maximized: x.isMaximized() });
  x.on("maximize", s), x.on("unmaximize", s), x.once("ready-to-show", () => x?.show()), Y && x.webContents.openDevTools({ mode: "detach" }), x.webContents.setWindowOpenHandler(({ url: t }) => (ie.openExternal(t), { action: "deny" })), Y ? x.loadURL(Qe) : x.loadFile(u(import.meta.dirname, "../dist/index.html"));
}
function cn() {
  Y && (process.on("SIGUSR1", () => {
    x?.webContents.capturePage().then((s) => {
      const t = "/tmp/forge-capture.png";
      I(t, s.toPNG()), console.log(`[capture] wrote ${t}`);
    }).catch((s) => console.error(`[capture] failed: ${s.message}`));
  }), console.log(`[capture] SIGUSR1 handler ready (pid ${process.pid})`));
}
O.whenReady().then(() => {
  on(), cn(), rn();
  const s = [
    process.cwd(),
    process.env.APPIMAGE ? B(process.env.APPIMAGE) : void 0,
    process.env.OWD,
    import.meta.dirname,
    B(process.execPath)
  ];
  for (const t of s)
    if (p = sn(t), p) break;
  Ot(), O.on("activate", () => {
    Pt.getAllWindows().length === 0 && Ot();
  });
});
O.on("window-all-closed", () => {
  v?.kill(), process.platform !== "darwin" && O.quit();
});
