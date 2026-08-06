#===============================================================================
#  Main Utility Module for Elite Battle: DX
#-------------------------------------------------------------------------------
#  used to store and manipulate all of the configurable data and much more
#===============================================================================
# v22-Port: ErrorLogger stammte aus Luka's Scripting Utilities 3.3 und wurde in
# 4.0.2 entfernt. EBDX(E21) erwartet die Klasse weiterhin (EliteBattle.log.warn/
# .error/.debug). Minimaler kompatibler Ersatz.
unless defined?(ErrorLogger)
  class ErrorLogger
    def initialize(filename = "errorlogEBDX.txt")
      @filename = filename
    end

    def write(level, msg)
      line = "[#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}] [#{level}] #{msg}"
      echoln(line) if defined?(echoln)
      begin
        File.open(@filename, "a") { |f| f.puts(line) }
      rescue StandardError
        # Schreibfehler ignorieren (z. B. schreibgeschuetztes Verzeichnis)
      end
    end

    def error(msg); write("ERROR", msg); end
    def warn(msg);  write("WARN",  msg); end
    def debug(msg); write("DEBUG", msg) if $DEBUG; end
    def info(msg);  write("INFO",  msg); end
    def log(msg);   write("LOG",   msg); end
  end
end

# v22-Port: File.safeData? stammte aus Luka's Scripting Utilities 3.x (prueft, ob eine
# Datendatei existiert/ladbar ist). In v22 uebernimmt das pbRgssExists?.
unless File.respond_to?(:safeData?)
  def File.safeData?(filename)
    return pbRgssExists?(filename) if defined?(pbRgssExists?)
    return FileTest.exist?(filename)
  end
end

# v22-Port: Hash#get_key stammte aus Luka's Scripting Utilities 3.x (sicherer Zugriff
# per Schluessel) und wurde in 4.0.2 entfernt. EBDX nutzt es fuer seine Boss-/Battler-Hashes.
class Hash
  def get_key(key, default = nil)
    return has_key?(key) ? self[key] : default
  end unless method_defined?(:get_key)
end

# v22-Port: Numeric#delta_add / #delta_sub stammten aus Luka's Scripting Utilities 3.x
# (Framerate-Skalierung fuer Animationen) und wurden in 4.0.2 entfernt. EBDX-Entry-/
# Move-Animationen nutzen sie. Identitaets-Shim = Basisverhalten (60fps-Design).
# Optionales Argument (true/false) = runden ja/nein.
class Numeric
  def delta_add(round = true)
    round ? self.round : self
  end unless method_defined?(:delta_add)
  def delta_sub(round = true)
    round ? self.round : self
  end unless method_defined?(:delta_sub)
end

# v22-Port: EBDX ruft Luka-Sprite-Helfer (create_rect/full_rect/blank_screen) auf
# GLOBALEN ::Sprite-Objekten (Sprite.new(viewport)) auf. Luka's Utilities definieren
# die aber nur auf Sprites::Base < FloatSprite -> "undefined method for #<Sprite>".
# Als Shim direkt auf ::Sprite bereitstellen.
class Sprite
  unless method_defined?(:create_rect)
    def create_rect(width, height, color)
      self.bitmap = Bitmap.new(width, height)
      self.bitmap.fill_rect(0, 0, width, height, color)
      self.bitmap
    end
  end
  unless method_defined?(:blank_screen)
    def blank_screen
      w = (viewport ? viewport.width : Graphics.width)
      h = (viewport ? viewport.height : Graphics.height)
      self.bitmap = Bitmap.new(w, h)
    end
  end
  unless method_defined?(:full_rect)
    def full_rect(color)
      bmp = bitmap || blank_screen
      bmp.fill_rect(0, 0, bmp.width, bmp.height, color)
      bmp
    end
  end
  unless method_defined?(:memorize_bitmap)
    def memorize_bitmap(bmp = nil)
      src = (bmp || bitmap)
      @stored_bitmap = src && !src.disposed? ? src.clone : nil
    end
  end
  unless method_defined?(:restore_bitmap)
    def restore_bitmap
      self.bitmap = @stored_bitmap.clone if @stored_bitmap && !@stored_bitmap.disposed?
    end
  end
  # v22-Port: Luka colorize (E21: positional amount; 4.0.2: keyword). Blendet solide
  # Pixel Richtung color; Alpha bleibt erhalten. EBDX ruft colorize(color, amount).
  unless method_defined?(:colorize)
    def colorize(color, amount = 255)
      return unless bitmap && !bitmap.disposed?
      alpha = amount / 255.0
      bitmap.width.times do |x|
        bitmap.height.times do |y|
          px = bitmap.get_pixel(x, y)
          next unless px.alpha > 0
          r = alpha * color.red   + (1 - alpha) * px.red
          g = alpha * color.green + (1 - alpha) * px.green
          b = alpha * color.blue  + (1 - alpha) * px.blue
          bitmap.set_pixel(x, y, Color.new(r, g, b, px.alpha))
        end
      end
    end
  end
  # v22-Port: Luka-Sprite-Groesse/Anker/Positionierung. EBDX nutzt center! (213x),
  # bottom! u.a. auf plain Sprites. width/height = src_rect-Masse (wie Luka Base).
  unless method_defined?(:width)
    def width;  src_rect ? src_rect.width  : (bitmap ? bitmap.width  : 0); end
  end
  unless method_defined?(:height)
    def height; src_rect ? src_rect.height : (bitmap ? bitmap.height : 0); end
  end
  unless method_defined?(:anchor)
    def anchor(type)
      w = width; h = height
      case type
      when :bottom_left   then self.ox = 0;     self.oy = h
      when :bottom_middle then self.ox = w / 2; self.oy = h
      when :bottom_right  then self.ox = w;     self.oy = h
      when :middle_left   then self.ox = 0;     self.oy = h / 2
      when :middle        then self.ox = w / 2; self.oy = h / 2
      when :middle_right  then self.ox = w;     self.oy = h / 2
      when :top_left      then self.ox = 0;     self.oy = 0
      when :top_middle    then self.ox = w / 2; self.oy = 0
      when :top_right     then self.ox = w;     self.oy = 0
      end
    end
  end
  unless method_defined?(:center!)
    def center!(snap = false, snap_kw: nil)
      snap = snap_kw unless snap_kw.nil?
      anchor(:middle)
      return unless snap && viewport
      self.x = viewport.rect.width / 2
      self.y = viewport.rect.height / 2
    end
  end
  unless method_defined?(:bottom!)
    def bottom!; anchor(:bottom_middle); end
  end
  unless method_defined?(:bottom)
    def bottom; [width / 2, height]; end
  end
  # Weitere Luka-Base-Helfer, die EBDX auf plain Sprites nutzt.
  unless method_defined?(:zoom)
    def zoom; zoom_x; end
  end
  unless method_defined?(:zoom=)
    def zoom=(val); self.zoom_x = val; self.zoom_y = val; end
  end
  unless method_defined?(:center)
    def center; [width / 2, height / 2]; end
  end
  unless method_defined?(:x_mid)
    def x_mid; bitmap ? bitmap.width / 2 : ox; end
  end
  unless method_defined?(:default!)
    def default!
      self.speed = 1; self.toggle = 1; self.direction = 1; self.param = 1
      self.ex = 0; self.ey = 0; self.dx = 0; self.dy = 0
      self.end_x = 0; self.end_y = 0; self.zx = 1; self.zy = 1
      self.finished = false
      self
    end
  end
  unless method_defined?(:snap_screen)
    def snap_screen
      self.bitmap = Graphics.snap_to_bitmap
    end
  end
  unless method_defined?(:stretch_screen)
    def stretch_screen(path)
      bmp = pbBitmap(path)
      w = viewport ? viewport.rect.width : Graphics.width
      h = viewport ? viewport.rect.height : Graphics.height
      self.bitmap = Bitmap.new(w, h)
      self.bitmap.stretch_blt(self.bitmap.rect, bmp, bmp.rect)
    end
  end
  unless method_defined?(:glow)
    def glow(color, keep: true)
      self.color = color
      begin
        bitmap.blur if bitmap && bitmap.respond_to?(:blur)
      rescue StandardError
      end
    end
  end
  unless method_defined?(:skew)
    # Luka-skew (Bitmap-Scherung) ist komplex + selten (1x); sichere no-op.
    def skew(*_args, **_kwargs); end
  end
  # v22-Port: Luka-Base-Animationsattribute (ex/ey/zx/zy/end_x/... ) auf ::Sprite.
  # EBDX nutzt sie massiv als Tween-Daten. Defaults wie Luka default!:
  # Offsets/Deltas = 0, Zoom/Speed/Param/Toggle/Direction = 1.
  [:ex, :ey, :dx, :dy, :end_x, :end_y, :skew_d].each do |a|
    unless method_defined?(a)
      define_method(a) { instance_variable_get("@#{a}") || 0 }
      define_method("#{a}=") { |v| instance_variable_set("@#{a}", v) }
    end
  end
  [:zx, :zy, :speed, :param, :toggle, :direction].each do |a|
    unless method_defined?(a)
      define_method(a) { v = instance_variable_get("@#{a}"); v.nil? ? 1 : v }
      define_method("#{a}=") { |v| instance_variable_set("@#{a}", v) }
    end
  end
  attr_accessor :finished unless method_defined?(:finished)
end

# v22-Port: Luka 3.x erweiterte Hash#has_key? um Mehrfach-Keys ("hat mindestens einen"),
# 4.0.2 hat das entfernt -> EBDX (has_key?(:A, :B)) crasht mit "given 2, expected 1".
# Ein Argument = natives Verhalten; mehrere = any.
class Hash
  unless method_defined?(:ebdx_native_has_key?)
    alias_method :ebdx_native_has_key?, :has_key?
    def has_key?(*keys)
      return ebdx_native_has_key?(*keys) if keys.length <= 1
      keys.any? { |k| ebdx_native_has_key?(k) }
    end
  end
end

# Luka's legacy animation scripts use this helper to pick a point on a circle.
# It disappeared from newer Scripting Utilities, but hundreds of EBDX move and
# common animations still call it. Keep the original Luka implementation.
unless defined?(randCircleCord)
  def randCircleCord(radius, x = nil)
    x = rand(radius * 2) if x.nil?
    y1 = -Math.sqrt((radius**2) - ((x - radius)**2))
    y2 =  Math.sqrt((radius**2) - ((x - radius)**2))
    return x, (rand(2) == 0 ? y1.to_i : y2.to_i) + radius
  end
end

# v22-Port: Bitmap.smartWindow(margins, rect, skin) baute in aelteren Essentials/EBDX
# ein 9-Slice-Fenster aus einer Skin-Grafik; in v22 entfernt. EBDX-UI nutzt es.
# margins = Rect(links, oben, rechts, unten); rect = Zielgroesse; skin = Grafikpfad.
class Bitmap
  # Luka's older bitmap helpers provided this filled-circle primitive. A number
  # of EBDX common/move animations still use it for their particle bitmaps.
  def bmp_circle(color = Color.white)
    radius = [width, height].min / 2.0
    center_x = (width - 1) / 2.0
    center_y = (height - 1) / 2.0
    height.times do |draw_y|
      delta_y = draw_y - center_y
      inside = (radius * radius) - (delta_y * delta_y)
      next if inside < 0
      half_width = Math.sqrt(inside)
      left = [(center_x - half_width).ceil, 0].max
      right = [(center_x + half_width).floor, width - 1].min
      fill_rect(left, draw_y, right - left + 1, 1, color) if right >= left
    end
    self
  end

  def self.smartWindow(margins, rect, skin, *_extra)
    src = skin.is_a?(Bitmap) ? skin : pbBitmap(skin)
    w = rect.width; h = rect.height
    ml = margins.x; mt = margins.y; mr = margins.width; mb = margins.height
    sw = src.width; sh = src.height
    out = Bitmap.new(w, h)
    # Ecken (fix)
    out.blt(0,     0,     src, Rect.new(0,      0,      ml, mt))
    out.blt(w-mr,  0,     src, Rect.new(sw-mr,  0,      mr, mt))
    out.blt(0,     h-mb,  src, Rect.new(0,      sh-mb,  ml, mb))
    out.blt(w-mr,  h-mb,  src, Rect.new(sw-mr,  sh-mb,  mr, mb))
    # Kanten (gestreckt)
    cw = [w-ml-mr, 0].max; ch = [h-mt-mb, 0].max
    scw = [sw-ml-mr, 1].max; sch = [sh-mt-mb, 1].max
    out.stretch_blt(Rect.new(ml, 0,    cw, mt), src, Rect.new(ml,    0,     scw, mt)) if cw > 0
    out.stretch_blt(Rect.new(ml, h-mb, cw, mb), src, Rect.new(ml,    sh-mb, scw, mb)) if cw > 0
    out.stretch_blt(Rect.new(0,    mt, ml, ch), src, Rect.new(0,     mt,    ml, sch)) if ch > 0
    out.stretch_blt(Rect.new(w-mr, mt, mr, ch), src, Rect.new(sw-mr, mt,    mr, sch)) if ch > 0
    # Mitte (gestreckt)
    out.stretch_blt(Rect.new(ml, mt, cw, ch), src, Rect.new(ml, mt, scw, sch)) if cw > 0 && ch > 0
    return out
  end
end

# v22-Port: pbBitmap(path) war ein globaler Bitmap-Lade-Helfer (Luka/aeltere Essentials),
# den EBDX massiv fuer Move-/Szenen-Grafiken nutzt; in v22 nicht mehr vorhanden.
# Ueber RPG::Cache geladen (Endung wird intern aufgeloest) -> gecacht (read-only, EBDX
# kopiert per blt daraus). Fallback auf frisches Bitmap.
unless defined?(pbBitmap)
  def pbBitmap(path, hue = 0)
    return RPG::Cache.load_bitmap("", path, hue)
  rescue StandardError
    resolved = (pbResolveBitmap(path) || path)
    return Bitmap.new(resolved)
  end
end

# v22-Port: ScrollingSprite war in Luka 3.x global; 4.0.2 hat es zu Sprites::Scrolling
# (namespaced, snake_case, abhaengig von .lerp/SpriteHash/Base) umgebaut. EBDX(E21) nutzt
# global ScrollingSprite.new + setBitmap(path[, vertical]) massiv (Wolken/Move-BGs).
# Eigenstaendige Reimplementierung auf ::Sprite-Basis (nahtloser 2x-Strip-Scroll).
# v22-Port: SpriteSheet war eine Luka-Klasse fuer horizontal frame-basierte
# Animations-Sprites (Cursor-Highlights, Wetter-FX etc.), in 4.0.2 entfernt. EBDX nutzt
# global SpriteSheet.new(viewport, frameCount) + setBitmap(bmp) (Bitmap wird in
# frameCount gleich breite Frames aufgeteilt), .speed steuert die Zyklusgeschwindigkeit.
# v22-Port: Originalverhalten aus Luka's Scripting Utilities 3.x. cmdSel wird
# in vier Ecken geteilt. In vier Frames bewegen sich die Ecken an den Zielrahmen
# heran und wieder davon weg; die Grafik selbst wird dabei nicht skaliert.
unless defined?(pbSelBitmap)
  def pbSelBitmap(path, rect)
    bmp = pbBitmap(path)
    qw = bmp.width / 2
    qh = bmp.height / 2
    max_w = rect.width + (qw * 2) - 8
    max_h = rect.height + (qh * 2) - 8
    full = Bitmap.new(max_w * 4, max_h)
    4.times do |i|
      4.times do |j|
        movement = (i < 3) ? i : (i - 2)
        x = (j % 2 == 0 ? 2 : -2) * movement
        x += (max_w * i) + (j % 2 == 0 ? 0 : max_w - qw)
        y = (j / 2 == 0 ? 2 : -2) * movement
        y += (j / 2 == 0 ? 0 : max_h - qh)
        full.blt(x, y, bmp, Rect.new(qw * (j % 2), qh * (j / 2), qw, qh))
      end
    end
    return full
  end
end

# v22-Port: SelectorSprite war eine Luka-Klasse fuer den animierten Menue-Auswahl-
# Cursor (Bag/Choose-Target-Fenster). Die Grafik wird erst beim Setzen des Ziels
# mit pbSelBitmap auf dessen Abmessungen gerendert und am Zielmittelpunkt verankert.
unless defined?(SelectorSprite)
  class SelectorSprite < Sprite
    attr_accessor :filename, :anchor

    def initialize(viewport = nil, frame_count = 1)
      super(viewport)
      @frame_count = [frame_count.to_i, 1].max
      @frame_index = 0
      @tick = 0.0
      self.speed = 4
    end

    def filename=(path)
      @filename = path
    end

    def render(rect, path = nil, _vertical = false)
      @filename = path if @filename.nil? && !path.nil?
      return if @filename.nil?
      self.bitmap = pbSelBitmap(@filename, rect)
      @frame_width = [(bitmap.width / @frame_count.to_f).to_i, 1].max
      @frame_index = 0
      @tick = 0.0
      self.src_rect.set(0, 0, @frame_width, bitmap.height)
      self.ox = @frame_width / 2
      self.oy = bitmap.height / 2
      self.speed = 4
    end

    def target(sprite)
      return if !sprite || !sprite.is_a?(Sprite)
      render(Rect.new(0, 0, sprite.width, sprite.height))
      self.anchor = sprite
      updateAnchor
    end

    def update
      if !disposed? && bitmap && !bitmap.disposed? && @frame_count > 1
        frame_delay = (speed || 1).to_f * Graphics.frame_rate / 40.0
        if frame_delay > 0 && @tick >= frame_delay
          @tick = 0.0
          @frame_index = (@frame_index + 1) % @frame_count
          self.src_rect.set(@frame_index * @frame_width, 0, @frame_width, bitmap.height)
        end
        @tick += 1
      end
      updateAnchor
    end

    def updateAnchor
      return if !anchor
      self.x = anchor.x - anchor.ox + anchor.width / 2
      self.y = anchor.y - anchor.oy + anchor.height / 2
      self.opacity = anchor.opacity
      self.visible = anchor.visible
    end
  end
end

unless defined?(SpriteSheet)
  class SpriteSheet < Sprite
    def initialize(viewport = nil, frame_count = 1)
      super(viewport)
      @frame_count = [frame_count.to_i, 1].max
      @frame_index = 0
      @tick = 0.0
      self.speed = 4
    end

    def setBitmap(src)
      bmp = src.is_a?(Bitmap) ? src : pbBitmap(src)
      return self if bmp.nil? || bmp.disposed?
      self.bitmap = bmp
      fw = (bmp.width / @frame_count.to_f).to_i
      fw = 1 if fw < 1
      @frame_width = fw
      @frame_index = 0
      self.src_rect.set(0, 0, fw, bmp.height)
      self
    end
    alias set_bitmap setBitmap

    def frame_count; @frame_count; end
    def frame_index=(i)
      return unless bitmap && !bitmap.disposed?
      @frame_index = i % @frame_count
      self.src_rect.set(@frame_index * @frame_width, 0, @frame_width, bitmap.height)
    end

    def update
      return if disposed? || bitmap.nil? || bitmap.disposed? || @frame_count <= 1
      frame_delay = (speed || 1).to_f * Graphics.frame_rate / 40.0
      return if frame_delay <= 0
      if @tick >= frame_delay
        @tick = 0.0
        self.frame_index = @frame_index + 1
      end
      @tick += 1
    end
  end
end

unless defined?(ScrollingSprite)
  class ScrollingSprite < Sprite
    attr_accessor :vertical
    def initialize(viewport = nil)
      super(viewport)
      self.speed     = 1
      self.direction = 1
      @vertical = false
      @scroll   = 0.0
      @base_w   = 0
      @base_h   = 0
    end

    # E21-API: setBitmap(pfad_oder_bitmap, vertical=false)
    def setBitmap(src, vertical = false)
      bmp = src.is_a?(Bitmap) ? src : pbBitmap(src)
      return self if bmp.nil? || bmp.disposed?
      @vertical = vertical ? true : false
      @base_w = bmp.width
      @base_h = bmp.height
      if @vertical
        self.bitmap = Bitmap.new(bmp.width, bmp.height * 2)
        2.times { |i| self.bitmap.blt(0, bmp.height * i, bmp, bmp.rect) }
      else
        self.bitmap = Bitmap.new(bmp.width * 2, bmp.height)
        2.times { |i| self.bitmap.blt(bmp.width * i, 0, bmp, bmp.rect) }
      end
      self.src_rect.set(0, 0, bmp.width, bmp.height)
      @scroll = 0.0
      self
    end
    alias set_bitmap setBitmap

    def setSpeed(v); self.speed = v; end

    def update
      return if disposed? || bitmap.nil? || bitmap.disposed?
      sp  = (speed || 1).to_f.abs
      dir = ((direction || 1) >= 0) ? 1 : -1
      @scroll = (@scroll || 0.0) + (sp * dir)
      if @vertical
        @scroll = @scroll % @base_h if @base_h && @base_h > 0
        self.src_rect.y = @scroll.to_i
      else
        @scroll = @scroll % @base_w if @base_w && @base_w > 0
        self.src_rect.x = @scroll.to_i
      end
    end
  end
end

module EliteBattle
  # variables for caching next battle segments
  @nextBattleBack = nil
  @nextBattleScript = nil
  @nextBattleData = nil
  @nextTransition = nil
  @wildSpecies = nil
  @wildLevel = nil
  @wildForm = nil
  @cachedBattler = nil
  @colorAlpha = 0
  @nextUI = nil
  @smAnim = false
  # variables for storing system data
  @pokemonData = {}
  @trainerData = {}
  @environmentData = {}
  @terrainData = {}
  @bgmData = {}
  @transitionData = {}
  @mapData = {}
  @procData = {}
  @metrics = {}
  @abilityMsg = []
  @abilityMsgText = []
  @vectors = {}
  @battlerMetrics = {}
  @customTransitions = {}
  @nextVectors = []
  # slight transition gimmick
  @tviewport = nil
  # configuration variables
  # Keep EBDX text readable on the bright v22/-ext renderer. The old light
  # palette used dark glyphs with a light shadow and looked almost black.
  @messageLightColor = Color.white
  @messageLightShadow = Color.new(32, 32, 32)
  @messageDarkColor = Color.white
  @messageDarkShadow = Color.new(32, 32, 32)
  # additional config vars
  @setBoss = false
  @logger = ErrorLogger.new("errorlogEBDX.txt")
  # cache move animations at game load
  @moveAnimations = (load_data("Data/PkmnAnimations.rxdata") rescue [])
  # ensure compiling
  @compiled = false
  @cachedData = []
  @full_species = [:NONE]
  @full_items = [:NONE]
  #-----------------------------------------------------------------------------
  # Indices parse
  #-----------------------------------------------------------------------------
  def self.GetStatusIconPosition(_status)
      status = GameData::Status.get(_status)

      return 0 if status.nil? || status.id == :NONE
      return status if status.is_a?(Numeric)

      iconpos = status.icon_position + 1
      #EliteBattle.log.debug("Loading status #{status.id} with pos #{status.icon_position} and returning #{iconpos}")
      return iconpos
  end
  
  def self.ShowStatusIcon(_status)
      status = GetStatusIconPosition(_status) 
      return status > 0 if status.is_a?(Numeric)
      return status.icon_position > 0
  end

  def self.InitializeSpecies 
    GameData::Species.each_species { |s| @full_species.push(s.species) }
  end

  def self.CanGetItemData?(item)
    return !@full_items.nil? && @full_items.include?(item)
  end

  def self.InitializeItems
    GameData::Item.each do |item|
      @full_items.push(item.id)
    end
  end
  def self.GetSpeciesIndex(species)
    
    if EliteBattle::TRY_TO_ALWAYS_INITIALIZE && @full_species.length <= GameData::Species.species_count
      EliteBattle.InitializeSpecies()
    end

    number = @full_species.index(species) || 0
    return number
  end
  
  def self.GetSpeciesID(species)
    return GameData::Species.try_get(species)&.species
  end

  def self.GetItemID(item)
    return @full_items.index(item) || 0
  end
  #-----------------------------------------------------------------------------
  # initialize logger
  #-----------------------------------------------------------------------------
  def self.log; return @logger; end
  #-----------------------------------------------------------------------------
  # internally parses action to valid symbolic name
  #-----------------------------------------------------------------------------
  def self.parse(var)
    return nil if !var.is_a?(Symbol) && !var.is_a?(String)
    return var if eval("defined?(@#{var})")
    return nil
  end
  #-----------------------------------------------------------------------------
  # gets value of specified varaible
  #-----------------------------------------------------------------------------
  def self.get(var)
    var = self.parse(var)
    return nil if var.nil?
    return self.instance_variable_get("@#{var}")
  end
  #-----------------------------------------------------------------------------
  # sets value for specified variable
  #-----------------------------------------------------------------------------
  def self.set(var, val)
    # specific catches
    return if var == :randomizer && !$PokemonGlobal && !$PokemonGlobal.randomizedData
    return if var == :nuzlocke && !$PokemonGlobal && !$PokemonGlobal.nuzlockeData
    # rest of function
    var = self.parse(var)
    if var == :nextBattleScript && val.is_a?(Symbol)
      val = hasConst?(BattleScripts, val) ? getConst(BattleScripts, val) : nil
    end
    return if var.nil?
    # concats battle speech parameter into an array if necessary
    if var == :nextBattleScript # potential compatibility for double battles
      if val.nil?
        @nextBattleScript = nil
      elsif !@nextBattleScript.nil?
        @nextBattleScript = [@nextBattleScript] if !@nextBattleScript.is_a?(Array)
        @nextBattleScript.push(val.is_a?(Hash) ? val.clone : nil)
      else
        @nextBattleScript = [val.is_a?(Hash) ? val.clone : nil]
      end
    else
      # merges hashes if applicable
      if val.is_a?(Hash) && self.get(var).is_a?(Hash)
        hash = self.get(var)
        for key in val.keys
          hash[key] = val[key]
        end
        val = hash
      end
      # applies varaible value
      self.instance_variable_set("@#{var}", val)
    end
  end
  #-----------------------------------------------------------------------------
  # resets value to nil
  #-----------------------------------------------------------------------------
  def self.reset(*args)
    for var in args
      self.set(var, nil)
    end
  end
  #-----------------------------------------------------------------------------
  # toggle selected variable
  #-----------------------------------------------------------------------------
  def self.toggle(sym)
    # specific catches
    return if sym == :randomizer && !$PokemonGlobal && !$PokemonGlobal.randomizedData
    return if var == :nuzlocke && !$PokemonGlobal && !$PokemonGlobal.nuzlockeData
    # rest of function
    val = self.get(sym)
    return if !val.is_a?(TrueClass) && !val.is_a?(FalseClass)
    val = !val
    self.set(sym, val)
  end
  #-----------------------------------------------------------------------------
  # checks if observed dataset contains form info (prevent skipping)
  #-----------------------------------------------------------------------------
  def self.form_data?(dataset, skey, const, form)
    return false if !dataset.is_a?(Hash)
    for key in dataset.keys
      next if key == skey
      for val in dataset[key]
        if val.to_s.include?("_")
          vry = val.to_s.split("_")
          return true if vry[0] == const && vry[1].to_i == form
        end
      end
    end
    return false
  end
  #-----------------------------------------------------------------------------
  # registers all BGM
  #-----------------------------------------------------------------------------
  def self.assign_bgm(key, *args)
    @bgmData[key] = args
  end
  #-----------------------------------------------------------------------------
  # gets next battle BGM
  #-----------------------------------------------------------------------------
  def self.next_bgm?(id, variant = 0, ext = 0, mod = :Trainer)
    return nil if id.nil?
    # try with form variants
    for key in @bgmData.keys
      return key if self.can_transition?(key, id, mod, variant, ext, @bgmData)
    end
    # try without form variants
    if mod == :Species
      for key in @bgmData.keys
        return key if self.can_transition?(key, id, mod, 0, 0, @bgmData)
      end
    end
    # return nothing
    return nil
  end
  #-----------------------------------------------------------------------------
  # register custom battle animation transition
  #-----------------------------------------------------------------------------
  def self.register_transition(name, process = nil, &block)
    @customTransitions[name] = (block.nil? ? process : block);
  end
  #-----------------------------------------------------------------------------
  # sets next transition
  #-----------------------------------------------------------------------------
  def self.next_transition(name)
    @nextTransition = name
  end
  #-----------------------------------------------------------------------------
  # plays the next transition
  #-----------------------------------------------------------------------------
  def self.play_next_transition(viewport, trainer = nil, mod = :Trainer)
    @tviewport = viewport
    # trainer assigned custom transitions
    if !trainer.nil?
      for key in @customTransitions.keys
        if self.can_transition?(key, trainer.trainer_type, mod, trainer.name, trainer.partyID)
          wrapper = CallbackWrapper.new
          wrapper.set({ :viewport => viewport, :trainer => trainer, :trainerid => trainer.trainer_type, :name => trainer.name, :partyID => trainer.partyID })
          wrapper.execute(@customTransitions[@key])
          return true
        end
      end
    end
    # play manually queued transition
    return false if @nextTransition.nil? || !@customTransitions.keys.include?(@nextTransition)
    wrapper = CallbackWrapper.new
    wrapper.set({ :viewport => viewport })
    wrapper.execute(@customTransitions[@nextTransition])
    @nextTransition = nil
    return true
  end
  #-----------------------------------------------------------------------------
  # registers all transitions
  #-----------------------------------------------------------------------------
  def self.assign_transition(*args)
    keys = []; vals = []
    for arg in args
      arr = arg.is_a?(String) ? keys : vals
      arr.push(arg)
    end
    for key in keys
      if @transitionData.has_key?(key)
        for val in vals
          @transitionData[key].push(val)
        end
      else
        @transitionData[key] = vals
      end
    end
  end
  #-----------------------------------------------------------------------------
  # checks whether or not to run special transition for constant
  #-----------------------------------------------------------------------------
  def self.can_transition?(transition, id, mod = :Trainer, variant = 0, ext = 0, dataset = @transitionData)
    return false if !dataset.has_key?(transition)
    vrnt = variant
    array = dataset[transition]
    array = [array] if !array.is_a?(Array)
    return true if array.include?(:ALLOW_ALL)
    for val in array
      if val.to_s.include?("__i__")
        vry = [val.to_s.split("__i__")[0]]
        vry.push(variant) if variant.is_a?(String)
        vry.push(ext) if ext && ext > 0
        return true if vry.join("__i__").to_sym == val
      elsif val.to_s.include?("_")
        prk = val.to_s.split("_")
        variant = 0 if prk[1] == "0" && !array.include?("#{prk[0]}_#{variant}".to_sym)
        return true if "#{prk[0]}_#{prk[1]}" == "#{id}_#{vrnt}"
        return true if "#{prk[0]}_#{prk[1]}" == "#{id}_#{variant}" && !self.form_data?(@transitionData, transition, prk[0], vrnt)
      end
      return true if val == id
    end
    return false
  end
  #-----------------------------------------------------------------------------
  # returns an array containing a list of all the possible SM VS backgrounds
  #-----------------------------------------------------------------------------
  def self.sun_moon_transitions
    return [
            "trainer", "special", "elite", "crazy",
            "ultra", "space", "crystal", "digital",
            "gold", "forest", "plasma", "waves",
            "flames"
          ]
  end
  #-----------------------------------------------------------------------------
  # returns true if game is supposed to load a Sun & Moon styled VS sequence
  #-----------------------------------------------------------------------------
  def self.sun_moon_transition?(id, poke = false, variant = 0, extr = 0)
    ret = false
    if !id.nil?
      for ext in self.sun_moon_transitions
        ret = true if self.can_transition?("#{ext}SM", id, (poke ? :Species : :Trainer), variant, extr)
      end
      str = poke ? "species" : "trainer"
      id = id[0] if id.is_a?(Array)
      id = id.species if poke && id.is_a?(Pokemon)
      custom_id = poke ? GetSpeciesIndex(GameData::Species.get(id).id) : GetTrainerID(GameData::TrainerType.get(id).id)
      sym = poke ? GameData::Species.get(id).id : GameData::TrainerType.get(id).id
      if !pbResolveBitmap(sprintf("Graphics/EBDX/Transitions/%s", sym)) && !pbResolveBitmap(sprintf("Graphics/EBDX/Transitions/%s_%d", sym, (poke && variant) ? variant : 0))
        ret = false if !pbResolveBitmap(sprintf("Graphics/EBDX/Transitions/#{str}%03d", custom_id)) && !pbResolveBitmap(sprintf("Graphics/EBDX/Transitions/#{str}%03d_%d", custom_id, (poke && variant) ? variant : 0))
      end
    end
    return (@smAnim = ret)
  end
  def self.GetTrainerID(trainer_type)
    return GameData::TrainerType.keys.index(trainer_type) || 1
  end
  #-----------------------------------------------------------------------------
  # adds additional metadata for Trainer and Pokemon
  #-----------------------------------------------------------------------------
  def self.add_data(constant, *args)
    # compiler exception
    if !@compiled && $DEBUG
      args.insert(0, constant)
      @cachedData.push(args)
      return
    end
    # begin data processing
    constant = [constant] if !constant.is_a?(Array)
    # safety check for game data
    mods = ["other"]
    for try_m in [:Environment, :TerrainTag, :TrainerType, :Species]
      mods.push(try_m) if GameData.constants.include?(try_m)
    end
    forceMod = nil; addTo = nil
    if mods.include?(args[0])
      forceMod = args[0]; args.delete_at(0)
    end
    for contt in constant
      const = contt
      if contt.is_a?(Symbol)
        for mod in mods
          next if !forceMod.nil? && forceMod != mod
          const = contt; variant = 0
          # trainer validation
          if mod != "other" && !GameData.const_get(mod).exists?(const) && const.to_s.include?("__i__")
            vry = const.to_s.split("__i__")
            vry[0] = vry[0].to_sym
            vry[1] = vry[1].to_s if vry.length > 1
            vry[2] = vry[2].to_i if vry.length > 2
            mod = :Trainer if vry.length > 1
            next if mod == :Trainer && !GameData.const_get(mod).exists?(*vry)
            const = vry[0]
          end
          # catch existing data
          next if !["other", :Trainer].include?(mod) && !GameData.const_get(mod).exists?(const)
          # checks to which module constant belongs to
          case mod
          when :Trainer, :TrainerType
            const = contt
            data = @trainerData.has_key?(const) ? @trainerData[const] : {}
            hash = @trainerData
            addTo = :TRAINERS
            break
          when :Species
            cd = const.to_s.split("_"); cd.push("0") if cd.length < 2
            const = cd.join("_").to_sym
            data = @pokemonData.has_key?(const) ? @pokemonData[const] : {}
            hash = @pokemonData
            addTo = :SPECIES
            break
          when :Environment
            data = @environmentData.has_key?(const) ? @environmentData[const] : {}
            hash = @environmentData
            addTo = :ENVIRONMENT
            break
          when :TerrainTag
            data = @terrainData.has_key?(const) ? @terrainData[const] : {}
            hash = @terrainData
            addTo = :TERRAIN
            break
          when "other"
            data = @metrics.has_key?(const) ? @metrics[const] : {}
            hash = @metrics
            addTo = :OTHER
          end
        end
      elsif contt.is_a?(Numeric)
        data = @mapData.has_key?(contt) ? @mapData[contt] : {}
        hash = @mapData
        addTo = :MAPS
      elsif contt.is_a?(Proc)
        data = @procData.has_key?(contt) ? @procData[contt] : {}
        hash = @procData
        addTo = :PROCS
      else
        data = @metrics.has_key?(const) ? @metrics[const] : {}
        hash = @metrics
        addTo = :OTHER
      end
      # failsafe
      return if data.nil?
      # adds arguments depending on whether or not there are an even pair of them
      for i in 0...args.length
        next if i%2 == 1 || (i+1) >= args.length
        if [:BGM, :TRANSITION].include?(args[i]) && addTo != :MAPS
          set = (args[i] == :BGM) ? @bgmData : @transitionData
          if set.has_key?(args[i+1])
            set[args[i+1]].push(const)
          else
            set[args[i+1]] = [const]
          end
        elsif [:BACKDROP].include?(args[i]) && args[i+1].is_a?(Symbol) && defined?(EnvironmentEBDX)
          if addTo == :ENVIRONMENT && GameData::Environment.exist?(args[i+1])
            data[args[i]] = args[i+1]
          elsif addTo == :TERRAIN && GameData::TerrainTag.exist?(args[i+1])
            data[args[i]] = args[i+1]
          end
        else
          data[args[i]] = args[i+1]
        end
      end
      hash[const] = data if !data.empty?
    end
  end
  #-----------------------------------------------------------------------------
  # gets additional metadata for Trainer and Pokemon
  #-----------------------------------------------------------------------------
  def self.get_data(const, mod, key = nil, variant = 0, ext = 0)
    unless mod.is_a?(Proc)
      id = const.is_a?(Symbol) ? const.to_s.split("__i__")[0].to_sym : const
    end
    # gets data from specified module
    case mod
    when :Trainers
      data = @trainerData
    when :Species
      id = (id.to_s + "_" + variant.to_s)
      data = @pokemonData
    when :Environment
      data = @environmentData
    when :TerrainTag
      data = @terrainData
    when :Map
      return nil if !key.nil? && (!@mapData[const] || !@mapData[const][key])
      return nil if key.nil? && !@mapData[const]
      return key.nil? ? @mapData[const] : @mapData[const][key]
    when :Metrics
      return nil if !key.nil? && (!@metrics[const] || !@metrics[const][key])
      return nil if key.nil? && !@metrics[const]
      return key.nil? ? @metrics[const] : @metrics[const][key]
    end
    # failsafe
    return nil if data.nil?
    for hash_key in data.keys
      # for form offsets
      if mod == :Species
        vry = hash_key.to_s.split("_")
        vry[1] = variant.to_s if vry[1] == "0" && !data.keys.include?("#{vry[0]}_#{variant}".to_sym) # applies default entry to all forms
        k = ("#{vry[0]}_#{vry[1]}")
      elsif mod == :Trainers
        vry = hash_key.to_s.split("__i__")
        k = vry[0].to_sym
        if ext.nil? || vry.nil?
          k = nil
        else
          k = nil if (variant.is_a?(String) && vry.length < 2) || (!variant.is_a?(String) && vry.length > 1)
          k = nil if (ext > 0 && vry.length < 3) || (ext < 1 && vry.length > 2) || (ext > 0 && vry.length > 2 && vry[2].to_i != ext)
        end
      else
        k = hash_key
      end
      if k == id
        if key.nil?
          return (data && data[hash_key]) ? data[hash_key] : nil
        else
          return (data && data[hash_key] && data[hash_key][key]) ? data[hash_key][key] : nil
        end
      end
    end
    return nil
  end
  #-----------------------------------------------------------------------------
  # gets trainer metadata
  #-----------------------------------------------------------------------------
  def self.get_trainer_data(const, key, trainer = nil)
    d1 = self.get_data(const, :Trainers, key)
    d2 = trainer.nil? ? nil : self.get_data(const, :Trainers, key, trainer.name)
    d3 = trainer.nil? ? nil : self.get_data(const, :Trainers, key, trainer.name, trainer.partyID)
    return d3 if !d3.nil?
    return d2 if !d2.nil?
    return d1 if !d1.nil?
    return nil
  end
  #-----------------------------------------------------------------------------
  # gets map metadata
  #-----------------------------------------------------------------------------
  def self.get_map_data(key)
    d1 = EliteBattle.get_data($game_map.map_id, :Map, key)
    if pbIsSpring
      d2 = EliteBattle.get_data($game_map.map_id, :Map, "SPRING_#{key.to_s}".to_sym)
    elsif pbIsSummer
      d2 = EliteBattle.get_data($game_map.map_id, :Map, "SUMMER_#{key.to_s}".to_sym)
    elsif pbIsAutumn
      d2 = EliteBattle.get_data($game_map.map_id, :Map, "AUTUMN_#{key.to_s}".to_sym)
    elsif pbIsWinter
      d2 = EliteBattle.get_data($game_map.map_id, :Map, "WINTER_#{key.to_s}".to_sym)
    else
      d2 = nil
    end
    return d2 if !d2.nil?
    return d1 if !d1.nil?
    return nil
  end
  #-----------------------------------------------------------------------------
  # get all species keys
  #-----------------------------------------------------------------------------
  def self.all_species
    keys = []
    GameData::Species.each { |species| keys.push(species.id) if species.form == 0 }
    return keys
  end
  #-----------------------------------------------------------------------------
  # adds main battler metrics
  #-----------------------------------------------------------------------------
  def self.battler_position(index, *args)
    @battlerMetrics[index] = {}
    sym = nil
    for arg in args
      if arg.is_a?(Symbol)
        sym = arg; @battlerMetrics[index][sym] = []
      else
        @battlerMetrics[index][sym].push(arg) unless sym.nil?
      end
    end
  end
  #-----------------------------------------------------------------------------
  # gets trainerID from file
  #-----------------------------------------------------------------------------
  def self.id_from_trainer_file(file)
    num = file.split("/")[-1]
    num.gsub!(".png", "") if num.include?(".png")
    return num.to_sym
  end
  #-----------------------------------------------------------------------------
  # returns battle background sprite parameters from hashmap
  #-----------------------------------------------------------------------------
  def self.bg_hash_map(key)
    hash = {:x => :ex, :y => :ey, :bitmap => :bitmap, :z => :z, :ox => :ox,
            :oy => :oy, :mirror => :mirror, :zoom => :param,
            :opacity => :opacity, :zoom_x => :zx, :zoom_y => :zy,
            :speed => :speed, :direction => :direction
    }
    return hash.has_key?(key) ? hash[key] : nil
  end
  #-----------------------------------------------------------------------------
  # stores vector data
  #-----------------------------------------------------------------------------
  def self.add_vector(key,*args)
    if key == :CAMERA
      @vectors[key] = []
      for v in args
        v.push(1); @vectors[key].push(v)
      end
      return
    end
    args.push(1)
    @vectors[key] = args
  end
  #-----------------------------------------------------------------------------
  # returns vector data
  #-----------------------------------------------------------------------------
  def self.get_vector(key, cond = nil)
    if [:MAIN, :BATTLER].include?(key)
      case key
      when :MAIN
        return @vectors[:TRIPLE].clone if @vectors.has_key?(:TRIPLE) && cond.respond_to?(:triplebattle?) && cond.triplebattle?
        return @vectors[:DOUBLE].clone if @vectors.has_key?(:DOUBLE) && cond.respond_to?(:doublebattle?) && cond.doublebattle?
        return @vectors[:SINGLE].clone if @vectors.has_key?(:SINGLE)
      when :BATTLER
        return cond ? @vectors[:PLAYER].clone : @vectors[:ENEMY].clone if @vectors.has_key?(:PLAYER, :ENEMY)
      end
    end
    return [102, 408, 32, 342, 1, 1] if !@vectors.has_key?(key)
    return @vectors[key].clone
  end
  #-----------------------------------------------------------------------------
  #  store random motion vectors
  #-----------------------------------------------------------------------------
  def self.next_vector(*args)
    for vec in args
      @nextVectors.push(vec) if vec.is_a?(Array) && vec.length > 5
    end
  end
  #-----------------------------------------------------------------------------
  # gets random camera vector motion
  #-----------------------------------------------------------------------------
  def self.random_vector(battle, last)
    # failsafe
    if !@vectors.keys.include?(:CAMERA_MOTION) || !@vectors[:CAMERA_MOTION].is_a?(Array) || @vectors[:CAMERA_MOTION].empty?
      return self.get_vector(:MAIN, battle).clone
    end
    a = @nextVectors.length > 0 ? @nextVectors.clone : @vectors[:CAMERA_MOTION].clone
    a.push(self.get_vector(:MAIN, battle))
    a.delete_at(last) if !last.nil?
    return a
  end
  #-----------------------------------------------------------------------------
  # changes text displayed at the start of the battle if applicable
  #-----------------------------------------------------------------------------
  def self.battle_text(default, *args)
    text = @nextBattleData.is_a?(Hash) && @nextBattleData.has_key?(:BATTLE_TEXT) ? @nextBattleData[:BATTLE_TEXT] : nil
    msg = (!text.nil? && text.is_a?(String)) ? text : default
    return _INTL(msg, *args)
  end
  #-----------------------------------------------------------------------------
  # check if follower Pokemon is active
  #-----------------------------------------------------------------------------
  # v22-Port: $PokemonGlobal.dependentEvents/.follower_toggled (E21-Follower-System)
  # existieren in v22 nicht mehr -> $game_temp.followers (Game_FollowerFactory).
  # Party-Index 0 gilt als "aktiver Follower", wenn dessen Overworld-Sprite sichtbar ist.
  def self.follower(battle)
    return nil if !EliteBattle::USE_FOLLOWER_EXCEPTION
    return nil if !$game_temp || !$game_temp.respond_to?(:followers)
    fdata = $PokemonGlobal&.followers&.first
    return nil if !fdata || !fdata.visible?
    return (battle.scene.firstsendout) ? 0 : nil
  end
  #-----------------------------------------------------------------------------
  # check if current map is an outdoor map
  #-----------------------------------------------------------------------------
  def self.outdoor_map?
    return GameData::MapMetadata.exists?($game_map.map_id) && GameData::MapMetadata.get($game_map.map_id).outdoor_map
  end
  #-----------------------------------------------------------------------------
end
#-------------------------------------------------------------------------------
# mkxp-z-ext text renderer for EBDX. The engine's native Font#outline path can
# terminate while EBDX constructs its dynamic UI bitmaps. Bypass Essentials'
# wrapper and draw a compact four-pass 1 px edge through the original Bitmap
# primitive instead. This is both safer and cleaner than EBDX's old eight-pass
# outline. Other Essentials screens keep their regular Ruby implementation.
def pbDrawEBDXOutlineText(bitmap, x, y, width, height, string, baseColor, outlineColor = nil, align = 0)
  return if !bitmap || !string
  return pbDrawOutlineText(bitmap, x, y, width, height, string, baseColor, outlineColor, align) if !bitmap.respond_to?(:mkxp_draw_text)
  width = (width < 0) ? bitmap.text_size(string).width + 4 : width
  old_name      = bitmap.font.name
  old_color     = bitmap.font.color.clone
  begin
    bitmap.font.name = Bitmap::GENDER_SYMBOL_FONT if string == "♀" || string == "♂"
    native_height = bitmap.text_size(string).height
    native_y = y - (bitmap.text_offset_y || 0)
    if outlineColor && outlineColor.alpha > 0
      bitmap.font.color = outlineColor
      bitmap.mkxp_draw_text(x - 1, native_y, width, native_height, string, align)
      bitmap.mkxp_draw_text(x + 1, native_y, width, native_height, string, align)
      bitmap.mkxp_draw_text(x, native_y - 1, width, native_height, string, align)
      bitmap.mkxp_draw_text(x, native_y + 1, width, native_height, string, align)
    end
    if baseColor && baseColor.alpha > 0
      bitmap.font.color = baseColor
      bitmap.mkxp_draw_text(x, native_y, width, native_height, string, align)
    end
  ensure
    bitmap.font.name  = old_name
    bitmap.font.color = old_color
  end
end
#-------------------------------------------------------------------------------
# failsafe
module EnvironmentEBDX; end
module TerrainEBDX; end
module BattleScripts; end
