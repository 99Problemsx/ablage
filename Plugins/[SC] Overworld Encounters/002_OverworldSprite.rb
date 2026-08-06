#===============================================================================
# [SC] Overworld Encounters — Sprite (Grafik + Namensbox + Aura + "!"-Blase)
#===============================================================================
# Rendert ein SCOverworldPokemon: Engine-Sprite via Sprite_Character, darueber
# die halbtransparente Namensbox (Name seltenheits-gefaerbt, goldenes Level),
# fuer Ultra/Legendary eine pulsierende Aura, und bei Alarm eine "!"-Blase.
# Die Emote-Blasen verwenden die gemeinsamen Companion-Emote-Sheets.
#===============================================================================

class SCOverworldEmoteSprite < SCCompanionEmoteSprite
  private

  def update_position
    self.x = @owner.x
    self.y = @owner.y - (@owner.src_rect.height / 2) - CompanionFollower::EMOTE_Y_OFFSET
    self.z = @owner.z + 100
    self.visible = @owner.visible
  end
end

class SCOESprite
  def initialize(character, viewport)
    @character  = character
    @viewport   = viewport
    @char       = Sprite_Character.new(viewport, character)
    @emote      = SCOverworldEmoteSprite.new(viewport, @char)
    @emote_serial = character.sc_emote_request[0]
    @plate      = Sprite.new(viewport)
    @aura       = nil
    @aura_bitmap = nil
    @aura_shader = nil
    @aura_kind  = nil
    @phase      = rand(100)
    build_plate
    build_aura if character.alpha? || SCOverworldEncounters.has_aura?(character.rarity)
    update
  end

  #-----------------------------------------------------------------------------
  # Namensbox einmalig zeichnen: "Name [gender] Lv.XX"
  #-----------------------------------------------------------------------------
  def build_plate
    pkmn   = @character.pkmn
    name   = pkmn.speciesName
    shiny  = pkmn.shiny?
    gsym   = (pkmn.gender == 0) ? "♂" : (pkmn.gender == 1) ? "♀" : ""
    lvtext = "Lv.#{pkmn.level}"
    star   = shiny ? "★ " : ""
    prefix = @character.alpha? ? "α " : ""

    tmp = Bitmap.new(8, 8)
    pbSetSmallFont(tmp)
    wName = tmp.text_size(prefix + star + name + " ").width
    wGen  = gsym.empty? ? 0 : tmp.text_size(gsym + " ").width
    wLv   = tmp.text_size(lvtext).width
    tmp.dispose

    padX = 6
    w = padX * 2 + wName + wGen + wLv
    h = 24
    bmp = Bitmap.new(w, h)
    # Schlichter schwarzer Balken wie in der verlorenen Referenz.
    bf = SCOverworldEncounters::BOX_FILL
    if bf && bf[3] && bf[3] > 0
      bmp.fill_rect(0, 0, w, h, Color.new(bf[0], bf[1], bf[2], bf[3]))
    end

    # Die kleine Systemschrift ist fuer kompakte UI-Texte gedacht. Die normale
    # Systemschrift stark zu schrumpfen erzeugt einen duennen, unsauberen Look.
    text_bmp = Bitmap.new(w, 40)
    pbSetSmallFont(text_bmp)
    x = padX
    nameCol = if shiny
                Color.new(*SCOverworldEncounters::SHINY_TINT)
              elsif @character.alpha?
                Color.new(*SCOverworldEncounters::AURA_COLOR[:alpha])
              else
                Color.new(255, 255, 255)
              end
    draw_seg(text_bmp, prefix + star + name, x, 0, nameCol)
    x += wName
    # Geschlecht
    unless gsym.empty?
      gcol = (pkmn.gender == 0) ? SCOverworldEncounters::GENDER_MALE_COLOR :
                                  SCOverworldEncounters::GENDER_FEMALE_COLOR
      draw_seg(text_bmp, gsym, x, 0, Color.new(*gcol))
      x += wGen
    end
    draw_seg(text_bmp, lvtext, x, 0,
             Color.new(*SCOverworldEncounters::LEVEL_COLOR))
    blt_text_centered(bmp, text_bmp)
    text_bmp.dispose

    @plate.bitmap = bmp
    @plate.ox = w / 2
    @plate.oy = h
  end

  # Ruhiger 1-Pixel-Schatten statt der alten dicken 8-Richtungs-Outline.
  def draw_seg(bmp, str, x, y, color)
    tw = bmp.text_size(str).width + 2
    text_height = bmp.height
    bmp.font.color = Color.new(0, 0, 0, 190)
    bmp.draw_text(x + 1, y + 1, tw, text_height, str)
    bmp.font.color = color
    bmp.draw_text(x, y, tw, text_height, str)
  end

  def blt_text_centered(dest, source)
    min_y = nil
    max_y = nil
    source.height.times do |py|
      visible = false
      source.width.times do |px|
        if source.get_pixel(px, py).alpha > 0
          visible = true
          break
        end
      end
      next if !visible
      min_y ||= py
      max_y = py
    end
    return if min_y.nil?
    visible_h = max_y - min_y + 1
    dest_y = ((dest.height - visible_h) / 2.0).round - min_y
    dest.blt(0, dest_y, source,
             Rect.new(0, 0, source.width, source.height))
  end

  #-----------------------------------------------------------------------------
  # Aura (Ultra/Legendary): pulsierende Ellipse unter dem Pokemon
  #-----------------------------------------------------------------------------
  def build_aura
    if @character.alpha?
      build_alpha_shader_aura
      return
    end
    aura_type = @character.alpha? ? :alpha : @character.rarity
    col = SCOverworldEncounters::AURA_COLOR[aura_type] || [255, 255, 255]
    r = 40
    bmp = Bitmap.new(r * 2, r)
    # weiche Ellipse aus konzentrischen, abnehmenden Alphas
    (0...8).each do |i|
      a = 90 - i * 10
      rw = r - i * 2
      rh = (r / 2) - i
      cx = r; cy = r / 2
      draw_ellipse(bmp, cx, cy, rw, rh, Color.new(col[0], col[1], col[2], [a, 0].max))
    end
    @aura_bitmap = bmp
    @aura = Sprite.new(@viewport)
    @aura.bitmap = bmp
    @aura.ox = r; @aura.oy = r / 2
    @aura_kind = :ellipse
  end

  # Die Alpha-Aura sitzt direkt auf der Textur des Pokemon. Dadurch folgt sie
  # Position, Laufanimation und Blickrichtung automatisch und kann nicht als
  # separates Feuerbild am Bildschirmrand stehen bleiben.
  def build_alpha_shader_aura
    if defined?(Shader) && @char.respond_to?(:shader=)
      @aura_shader = Shader.new("Shaders/SC_AlphaAura.frag")
      @char.shader = @aura_shader
      @aura_kind = :sprite_shader
    else
      echoln("[SC Overworld] Alpha aura needs the bundled shader-enabled Game runner.")
    end
  end

  def draw_ellipse(bmp, cx, cy, rw, rh, color)
    return if rw <= 0 || rh <= 0
    (-rh..rh).each do |dy|
      next if rh == 0
      w = (rw * Math.sqrt(1.0 - (dy.to_f * dy) / (rh * rh))).to_i
      bmp.fill_rect(cx - w, cy + dy, w * 2, 1, color)
    end
  end

  #-----------------------------------------------------------------------------
  def update
    @char.update
    serial, key = @character.sc_emote_request
    if serial != @emote_serial
      @emote_serial = serial
      @emote.play(key)
    end
    @emote.update
    if @character.alpha?
      @char.zoom_x = TilemapRenderer::ZOOM_X * SCOverworldEncounters::ALPHA_SCALE
      @char.zoom_y = TilemapRenderer::ZOOM_Y * SCOverworldEncounters::ALPHA_SCALE
    end
    fh = @char.src_rect ? (@char.src_rect.height * @char.zoom_y) : 32
    # Namensbox knapp ueber dem Kopf
    @plate.x = @char.x
    @plate.y = @char.y - fh - 2
    @plate.z = @char.z + 50
    @plate.opacity = @char.opacity
    half_char_w = @char.src_rect ? (@char.src_rect.width * @char.zoom_x / 2) : 16
    @plate.visible = @char.x >= -half_char_w &&
                     @char.x <= Graphics.width + half_char_w &&
                     @char.y >= -fh && @char.y <= Graphics.height + fh
    # Aura pulsieren
    if @aura
      @phase += 1
      @aura.x = @char.x
      @aura.y = @char.y - 2
      @aura.z = @char.z - 1
      pulse = 0.85 + 0.15 * Math.sin(@phase / 12.0)
      @aura.zoom_x = pulse
      @aura.zoom_y = pulse
      @aura.opacity = 150 + (40 * Math.sin(@phase / 10.0)).to_i
      @aura.opacity = (@aura.opacity * @char.opacity / 255.0).to_i
    end
  end

  def dispose
    @emote.dispose if @emote && !@emote.disposed?
    @char.dispose  if @char && !@char.disposed?
    @plate.dispose if @plate && !@plate.disposed?
    @aura.dispose  if @aura && !@aura.disposed?
    @aura_shader.dispose if @aura_shader && !@aura_shader.disposed?
    @aura_bitmap.dispose if @aura_bitmap && !@aura_bitmap.disposed?
  end

  def disposed?
    @char.nil? || @char.disposed?
  end

  def plate_rect
    Rect.new(@plate.x - @plate.ox, @plate.y - @plate.oy,
             @plate.bitmap.width, @plate.bitmap.height)
  end

  def plate_visible?
    @plate && !@plate.disposed? && @plate.visible
  end

  def plate_y=(value)
    @plate.y = value + @plate.oy
  end

  # Nebeneinander stehende Pokemon bekommen gestaffelte Labels, statt dass
  # Namen und Balken zu einer unlesbaren Zeile verschmelzen.
  def self.resolve_plate_overlaps(sprites)
    placed = []
    sprites.compact.reject(&:disposed?).select(&:plate_visible?).sort_by { |spr| spr.plate_rect.y }.each do |spr|
      6.times do
        rect = spr.plate_rect
        hit = placed.find do |other|
          rect.x < other.x + other.width && rect.x + rect.width > other.x &&
            rect.y < other.y + other.height && rect.y + rect.height > other.y
        end
        break if !hit
        spr.plate_y = hit.y - rect.height - 2
      end
      placed << spr.plate_rect
    end
  end
end
