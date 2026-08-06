#===============================================================================
# [SC] New Game Plus — Title-screen menu integration
#===============================================================================
# Inserts a "New Game+" command between "New Game" and "Options" iff at
# least one ending has been cleared (persisted in Data/sc_ng_plus.dat).
#
# We do this by aliasing PokemonLoadScreen#pbStartLoadScreen with a copy
# that injects the extra command. The base class is small enough that a
# wrap is cleaner than monkey-patching the inner loop.
#===============================================================================

# v22 hat den Load-Screen auf UI::Load + MenuHandlers.add(:load_screen, ...) umgestellt;
# PokemonLoadScreen#pbStartLoadScreen existiert nicht mehr. Alten Monkey-Patch nur
# ausfuehren, wenn er passt (sonst uebersprungen). TODO: als :load_screen-Handler neu bauen.
if defined?(PokemonLoadScreen) && PokemonLoadScreen.is_a?(Class) && PokemonLoadScreen.method_defined?(:pbStartLoadScreen)
class PokemonLoadScreen
  unless method_defined?(:sc_ng_plus_pbStartLoadScreen)
    alias sc_ng_plus_pbStartLoadScreen pbStartLoadScreen

    def pbStartLoadScreen
      # If NG+ isn't unlocked yet, fall through to the stock flow.
      return sc_ng_plus_pbStartLoadScreen unless SCNGPlus.unlocked?

      commands = []
      cmd_continue      = -1
      cmd_new_game      = -1
      cmd_new_game_plus = -1
      cmd_options       = -1
      cmd_language      = -1
      cmd_mystery_gift  = -1
      cmd_debug         = -1
      cmd_quit          = -1
      show_continue = !@save_data.empty?
      if show_continue
        commands[cmd_continue = commands.length] = _INTL("Continue")
        if @save_data[:player].mystery_gift_unlocked
          commands[cmd_mystery_gift = commands.length] = _INTL("Mystery Gift")
        end
      end
      commands[cmd_new_game      = commands.length] = _INTL("New Game")
      commands[cmd_new_game_plus = commands.length] = _INTL("New Game+")
      commands[cmd_options       = commands.length] = _INTL("Options")
      commands[cmd_language      = commands.length] = _INTL("Language") if Settings::LANGUAGES.length >= 2
      commands[cmd_debug         = commands.length] = _INTL("Debug")    if $DEBUG
      commands[cmd_quit          = commands.length] = _INTL("Quit Game")
      map_id = show_continue ? @save_data[:map_factory].map.map_id : 0
      @scene.pbStartScene(commands, show_continue, @save_data[:player], @save_data[:stats], map_id)
      @scene.pbSetParty(@save_data[:player]) if show_continue
      @scene.pbStartScene2
      loop do
        command = @scene.pbChoose(commands)
        pbPlayDecisionSE if command != cmd_quit
        case command
        when cmd_continue
          @scene.pbEndScene
          Game.load(@save_data)
          return
        when cmd_new_game
          @scene.pbEndScene
          Game.start_new
          return
        when cmd_new_game_plus
          # Confirmation — NG+ overwrites the current save when first save fires.
          next unless pbConfirmMessage(_INTL(
            "Start a New Game+ run?\nCarries over: starting money boost, item pack, prior ending memories."
          ))
          @scene.pbEndScene
          SCNGPlus.start_ng_plus!
          return
        when cmd_mystery_gift
          pbFadeOutIn { pbDownloadMysteryGift(@save_data[:player]) }
        when cmd_options
          pbFadeOutIn do
            scene = PokemonOption_Scene.new
            screen = PokemonOptionScreen.new(scene)
            screen.pbStartScreen(true)
          end
        when cmd_language
          @scene.pbEndScene
          $PokemonSystem.language = pbChooseLanguage
          MessageTypes.load_message_files(Settings::LANGUAGES[$PokemonSystem.language][1])
          if show_continue
            @save_data[:pokemon_system] = $PokemonSystem
            File.open(SaveData::FILE_PATH, "wb") { |file| Marshal.dump(@save_data, file) }
          end
          $scene = pbCallTitle
          return
        when cmd_debug
          pbFadeOutIn { pbDebugMenu(false) }
        when cmd_quit
          pbPlayCloseMenuSE
          @scene.pbEndScene
          $scene = nil
          return
        else
          pbPlayBuzzerSE
        end
      end
    end
  end
end
end   # guard: defined?(PokemonLoadScreen) ...

# Essentials v22 title screen integration.
if defined?(UI::Load)
  UI::Load::ACTIONS.add(:new_game_plus, {
    :effect => proc { |screen|
      next unless screen.show_confirm_message(_INTL(
        "Start a New Game+ run?\nCarries over: starting money boost, item pack, prior ending memories."
      ))
      screen.end_screen
      SCNGPlus.start_ng_plus!
    }
  })

  MenuHandlers.add(:load_screen, :new_game_plus, {
    "name"      => _INTL("New Game+"),
    "order"     => 35,
    "condition" => proc { |_screen| next SCNGPlus.unlocked? }
  })
end

#===============================================================================
# Helper script calls for use inside cutscenes / events.
#===============================================================================

# Returns true if the current playthrough is a NG+ run.
def pbInNGPlus?
  SCNGPlus.ng_plus_run?
end

# Returns the NG+ cycle number (0 = first playthrough).
def pbNGPlusCycle
  SCNGPlus.cycle_number
end

# Returns true if the player saw a specific ending in a *previous* run.
def pbSawEnding?(tier_symbol)
  return false unless $PokemonGlobal
  ($PokemonGlobal.sc_ng_plus_prior_endings || []).include?(tier_symbol)
end
