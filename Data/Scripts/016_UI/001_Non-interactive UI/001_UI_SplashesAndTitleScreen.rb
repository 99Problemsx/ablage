#===============================================================================
#
#===============================================================================
class IntroEventScene < EventScene
  # Splash screen images that appear for a few seconds and then disappear.
  SPLASH_IMAGES         = ["splash1", "splash2"]

  # Title screen images.
  TITLE_BG_IMAGE        = "title"
  TITLE_LOGO_IMAGE      = "logo"
  TITLE_START_IMAGE     = "start"

  # Logo position.
  TITLE_LOGO_X          = 0
  TITLE_LOGO_Y          = -90
  TITLE_LOGO_START_Y    = -250
  TITLE_LOGO_MOVE_TICKS = 20

  # "Press Enter" position.
  TITLE_START_IMAGE_X   = 0
  TITLE_START_IMAGE_Y   = 322

  SECONDS_PER_SPLASH    = 2
  TICKS_PER_ENTER_FLASH = 40   # 20 ticks per second
  FADE_TICKS            = 8    # 20 ticks per second

  def initialize(viewport = nil)
    super(viewport)

    # Background/splash image.
    @pic = addImage(0, 0, "")
    @pic.setOpacity(0, 0)

    # Flashing "Press Enter" image.
    @pic2 = addImage(0, 0, "")
    @pic2.setOpacity(0, 0)

    # Separate title logo.
    @logo = addImage(0, 0, "")
    @logo.setOpacity(0, 0)
    @logo.setVisible(0, false)

    @index = 0

    if SPLASH_IMAGES.empty?
      open_title_screen(self, nil)
    else
      open_splash(self, nil)
    end
  end

  def open_splash(_scene, *args)
    onCTrigger.clear

    @pic.name = "Graphics/Titles/" + SPLASH_IMAGES[@index]
    @pic.moveOpacity(0, FADE_TICKS, 255)

    pictureWait

    @timer = System.uptime
    onUpdate.set(method(:splash_update))
    onCTrigger.set(method(:close_splash))
  end

  def close_splash(scene, args)
    onUpdate.clear
    onCTrigger.clear

    @pic.moveOpacity(0, FADE_TICKS, 0)
    pictureWait

    @index += 1

    if @index >= SPLASH_IMAGES.length
      open_title_screen(scene, args)
    else
      open_splash(scene, args)
    end
  end

  def splash_update(scene, args)
    close_splash(scene, args) if System.uptime - @timer >= SECONDS_PER_SPLASH
  end

  def open_title_screen(_scene, *args)
    onUpdate.clear
    onCTrigger.clear

    # Background.
    @pic.name = "Graphics/Titles/" + TITLE_BG_IMAGE
    @pic.moveOpacity(0, FADE_TICKS, 255)

    # Logo starts above the screen.
    @logo.name = "Graphics/Titles/" + TITLE_LOGO_IMAGE
    @logo.setXY(0, TITLE_LOGO_X, TITLE_LOGO_START_Y)
    @logo.setVisible(0, true)
    @logo.setOpacity(0, 255)

    # Move logo down to its final position.
    @logo.moveXY(
      0,
      TITLE_LOGO_MOVE_TICKS,
      TITLE_LOGO_X,
      TITLE_LOGO_Y
    )

    # "Press Enter" image.
    @pic2.name = "Graphics/Titles/" + TITLE_START_IMAGE
    @pic2.setXY(0, TITLE_START_IMAGE_X, TITLE_START_IMAGE_Y)
    @pic2.setVisible(0, true)
    @pic2.moveOpacity(TITLE_LOGO_MOVE_TICKS, FADE_TICKS, 255)

    pictureWait

    pbBGMPlay($data_system.title_bgm)

    onUpdate.set(method(:title_screen_update))
    onCTrigger.set(method(:close_title_screen))
  end

  def fade_out_title_screen(scene)
    onUpdate.clear
    onCTrigger.clear

    # Play random cry.
    species_keys = GameData::Species.keys
    species_data = GameData::Species.get(species_keys.sample)
    Pokemon.play_cry(species_data.species, species_data.form)

    @pic.moveXY(0, 20, 0, 0)
    pictureWait

    # Fade out all title screen images.
    @pic.moveOpacity(0, FADE_TICKS, 0)

    @logo.clearProcesses
    @logo.moveOpacity(0, FADE_TICKS, 0)

    @pic2.clearProcesses
    @pic2.moveOpacity(0, FADE_TICKS, 0)

    pbBGMStop(1.0)
    pictureWait

    scene.dispose
  end

  def close_title_screen(scene, *args)
    fade_out_title_screen(scene)
    UI::Load.new.main
  end

  def title_screen_update(_scene, _args)
    # Flashing of "Press Enter" picture.
    if !@pic2.running?
      @pic2.moveOpacity(
        TICKS_PER_ENTER_FLASH * 2 / 10,
        TICKS_PER_ENTER_FLASH * 4 / 10,
        0
      )
      @pic2.moveOpacity(
        TICKS_PER_ENTER_FLASH * 6 / 10,
        TICKS_PER_ENTER_FLASH * 4 / 10,
        255
      )
    end
  end
end

#===============================================================================
#
#===============================================================================
class Scene_Intro
  def main
    Graphics.transition(0)
    @eventscene = IntroEventScene.new
    @eventscene.main
    Graphics.freeze
  end
end
