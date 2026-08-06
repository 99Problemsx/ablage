#===============================================================================
# UI Integration for Egg Steps Display
# Adds egg step display to the summary screen.
#-------------------------------------------------------------------------------
# v22-Port: Essentials v22 hat die Summary-Szene von PokemonSummary_Scene auf
# UI::PokemonSummaryVisuals umgestellt. Die Ei-Seite wird jetzt in
# UI::PokemonSummaryVisuals#draw_egg_memo gezeichnet (v22-Zeichen-API:
# draw_formatted_text / draw_text / get_text_color_theme).
#===============================================================================

# Party Screen Integration - DISABLED (per user request)

#===============================================================================
# Summary Screen Integration: exakte Ei-Schrittzahl statt vagem Text.
#===============================================================================
class UI::PokemonSummaryVisuals
  alias __egg_steps__draw_egg_memo draw_egg_memo unless method_defined?(:__egg_steps__draw_egg_memo)

  def draw_egg_memo
    if !EggStepsDisplay::SHOW_IN_SUMMARY
      __egg_steps__draw_egg_memo
      return
    end
    red_text_tag   = shadowc3tag(*get_text_color_theme(:shiny))
    black_text_tag = shadowc3tag(*get_text_color_theme(:black))
    memo = ""
    # Erhalten-Datum
    if @pokemon.timeReceived
      date  = @pokemon.timeReceived.day
      month = pbGetMonthName(@pokemon.timeReceived.mon)
      year  = @pokemon.timeReceived.year
      if defined?(Translation) && Translation.month_day_date_format?
        memo += black_text_tag + _INTL("{1} {2}, {3}", month, date, year) + "\n"
      else
        memo += black_text_tag + _INTL("{1} {2}, {3}", date, month, year) + "\n"
      end
    end
    # Fundort
    map_name = pbGetMapNameFromId(@pokemon.obtain_map)
    map_name = @pokemon.obtain_text if @pokemon.obtain_text && !@pokemon.obtain_text.empty?
    if map_name && map_name != ""
      map_name = red_text_tag + map_name + black_text_tag
      memo += black_text_tag + _INTL("A mysterious Pokémon Egg received from {1}.", map_name) + "\n"
    else
      memo += black_text_tag + _INTL("A mysterious Pokémon Egg.") + "\n"
    end
    draw_formatted_text(memo, 232, 86, 268)
    # "The Egg Watch" mit exakter Restschrittzahl
    draw_text(_INTL("The Egg Watch"), 238, 246, theme: :white)
    remaining = EggStepsDisplay.get_remaining_steps(@pokemon)
    if remaining <= 0
      egg_state = _INTL("This Egg is ready to hatch!")
    elsif remaining == 1
      egg_state = _INTL("This Egg needs just 1 more step to hatch!")
    elsif remaining <= 100
      egg_state = _INTL("This Egg is very close to hatching! Only {1} steps remain.", remaining)
    elsif remaining <= 500
      egg_state = _INTL("This Egg is getting close to hatching. {1} steps remain.", remaining)
    else
      egg_state = _INTL("This Egg still needs {1} steps to hatch.", remaining)
    end
    draw_formatted_text(black_text_tag + egg_state, 232, 278, 268)
  end
end

#===============================================================================
# Commands to toggle overlay
#===============================================================================
def pbToggleEggStepsOverlay
  if $egg_steps_overlay
    if $egg_steps_overlay.instance_variable_get(:@visible)
      $egg_steps_overlay.hide
      pbMessage(_INTL("Egg steps overlay hidden."))
    else
      $egg_steps_overlay.show
      pbMessage(_INTL("Egg steps overlay shown."))
    end
  end
end

# Debug command
def pbShowEggStepsInfo
  if $player.party.any? { |p| p.egg? }
    text = []
    $player.party.each_with_index do |pokemon, i|
      if pokemon.egg?
        remaining = EggStepsDisplay.get_remaining_steps(pokemon)
        total = EggStepsDisplay.get_total_steps(pokemon)
        progress = EggStepsDisplay.get_progress_percentage(pokemon)
        text.push(_INTL("Slot {1}: {2} steps ({3}%)", i + 1, remaining, progress))
      end
    end
    pbMessage(text.join("\\n"))
  else
    pbMessage(_INTL("No eggs in party."))
  end
end
