#===============================================================================
#  addition for PokemonSprite class to add bitmap constraints
#===============================================================================
class PokemonSprite < SpriteWrapper
  #-----------------------------------------------------------------------------
  #  boxes in the bitmap
  #-----------------------------------------------------------------------------
  def constrict(amt, deanimate = true)
    @_iconbitmap.constrict = amt if @_iconbitmap.respond_to?(:constrict)
    @_iconbitmap.setSpeed(0) if @_iconbitmap.respond_to?(:setSpeed) && deanimate
    @_iconbitmap.deanimate if @_iconbitmap.respond_to?(:deanimate) && deanimate
  end
  #-----------------------------------------------------------------------------
end
#===============================================================================
# v22-Port: Die folgenden Menue-Szenen (PokemonPokedexInfo_Scene, PokemonPokedex_Scene,
# PokemonStorageScene, PokemonSummary_Scene) existieren in v22 nicht mehr — sie wurden
# durch UI::PokedexInfo / UI::Pokedex / UI::Storage / UI::PokemonSummary ersetzt.
# Diese EBDX-Patches sind reine Sprite-Overflow-Kosmetik fuer die alten Menues und
# gehoeren NICHT zur Kampf-UI. Per `if defined?` abgesichert: greifen nur, falls die
# alte Klasse existiert; unter v22 werden sie uebersprungen (kein Crash).
#===============================================================================
#  Fix for form page misalignment
#===============================================================================
if defined?(PokemonPokedexInfo_Scene)
class PokemonPokedexInfo_Scene
  #-----------------------------------------------------------------------------
  #  updates y positioning
  #-----------------------------------------------------------------------------
  alias pbUpdateDummyPokemon_ebdx pbUpdateDummyPokemon unless self.method_defined?(:pbUpdateDummyPokemon_ebdx)
  def pbUpdateDummyPokemon
    pbUpdateDummyPokemon_ebdx
    @sprites["infosprite"].constrict(208)
    @sprites["formfront"].constrict(200) if @sprites["formfront"]
    if @sprites["formback"]
      @sprites["formback"].constrict(200)
      @sprites["formback"].setOffset(PictureOrigin::CENTER)
      @sprites["formback"].y = @sprites["formfront"].y if @sprites["formfront"]
    end
  end
  #-----------------------------------------------------------------------------
end
end
#===============================================================================
if defined?(PokemonPokedex_Scene)
class PokemonPokedex_Scene
  #-----------------------------------------------------------------------------
  #  restrains the sprite from overflowing out of the sprite area
  #-----------------------------------------------------------------------------
  alias setIconBitmap_ebdx setIconBitmap unless self.method_defined?(:setIconBitmap_ebdx)
  def setIconBitmap(*args)
    setIconBitmap_ebdx(*args)
    @sprites["icon"].constrict(224)
  end
  #-----------------------------------------------------------------------------
end
end
#===============================================================================
#  Fix for box storage sprite overflow
#===============================================================================
if defined?(PokemonStorageScene)
class PokemonStorageScene
  #-----------------------------------------------------------------------------
  #  restrains the sprite from overflowing out of the sprite area
  #-----------------------------------------------------------------------------
  alias pbUpdateOverlay_ebdx pbUpdateOverlay unless self.method_defined?(:pbUpdateOverlay_ebdx)
  def pbUpdateOverlay(*args)
    pbUpdateOverlay_ebdx(*args)
    @sprites["pokemon"].constrict(168)
  end
  #-----------------------------------------------------------------------------
end
end
#===============================================================================
#  Fix for summary screen sprite overflow
#===============================================================================
if defined?(PokemonSummary_Scene)
class PokemonSummary_Scene
  #-----------------------------------------------------------------------------
  #  restrains the sprite from overflowing out of the sprite area
  #-----------------------------------------------------------------------------
  alias pbStartScene_ebdx pbStartScene unless self.method_defined?(:pbStartScene_ebdx)
  def pbStartScene(*args)
    ret = pbStartScene_ebdx(*args)
    #@sprites["pokemon"].constrict(164, false)
  end
  alias pbChangePokemon_ebdx pbChangePokemon unless self.method_defined?(:pbChangePokemon_ebdx)
  def pbChangePokemon
    pbChangePokemon_ebdx
    #@sprites["pokemon"].constrict(164, false)
  end
end
end
