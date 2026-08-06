#===============================================================================
# [SC] QoL Toggles - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class QoLSaveData
  attr_accessor :toggles       # Hash { toggle_key => true/false }
  attr_accessor :seen_cutscenes # Array of seen cutscene IDs (for skip feature)

  def initialize
    @toggles = {}
    @seen_cutscenes = []
    # Apply defaults
    QoLToggles::TOGGLES.each do |key, config|
      @toggles[key] = config[:default]
    end
  end

  def enabled?(toggle_key)
    @toggles[toggle_key] == true
  end

  def toggle(toggle_key)
    @toggles[toggle_key] = !@toggles[toggle_key]
  end

  def set(toggle_key, value)
    @toggles[toggle_key] = value
  end

  def mark_cutscene_seen(cutscene_id)
    @seen_cutscenes.push(cutscene_id) unless @seen_cutscenes.include?(cutscene_id)
  end

  def cutscene_seen?(cutscene_id)
    @seen_cutscenes.include?(cutscene_id)
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :qol_data

  def qol_data
    @qol_data ||= QoLSaveData.new
  end
end

SaveData.register(:qol_data) do
  save_value { $PokemonGlobal.qol_data }
  load_value { |val| $PokemonGlobal.qol_data = val }
  new_game_value { QoLSaveData.new }
end

#===============================================================================
# QoL Menu
#===============================================================================

def pbOpenQoLMenu
  return unless QoLToggles::ENABLED
  pbSEPlay(QoLToggles::SE_OPEN)
  data = $PokemonGlobal.qol_data

  loop do
    options = QoLToggles::TOGGLES.map { |key, config|
      state = data.enabled?(key) ? "ON" : "OFF"
      "[#{state}] #{config[:name]}"
    }
    options.push("Cancel")

    choice = pbMessage(_INTL("Quality of Life Settings"), options, options.length)
    break if choice == options.length - 1

    toggle_key = QoLToggles::TOGGLES.keys[choice]
    next unless toggle_key
    config = QoLToggles::TOGGLES[toggle_key]
    data.toggle(toggle_key)
    pbSEPlay(QoLToggles::SE_TOGGLE)
    state = data.enabled?(toggle_key) ? "ON" : "OFF"
    pbMessage(_INTL("{1}: {2}\n{3}", config[:name], state, config[:description]))
  end
end

#===============================================================================
# Query helpers — call from anywhere
#===============================================================================

def qolEnabled?(toggle_key)
  return false unless QoLToggles::ENABLED
  $PokemonGlobal.qol_data.enabled?(toggle_key)
end

def qolSet(toggle_key, value)
  $PokemonGlobal.qol_data.set(toggle_key, value)
end

#===============================================================================
# AUTO-RUN hook
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_qol_auto_run,
  proc {
    if qolEnabled?(:AUTO_RUN)
      $game_player.move_speed = 4.5 if $game_player
    end
  }
) if defined?(EventHandlers)

#===============================================================================
# FAST TEXT hook — speed up message display
#===============================================================================

module QoLTextSpeed
  def self.apply
    if qolEnabled?(:FAST_TEXT) && defined?(MessageConfig::TEXT_SPEED)
      MessageConfig.const_set(:TEXT_SPEED, -1)
    end
  end
end

#===============================================================================
# CUTSCENE TRACKING
# Use: pbStartCutscene(:INTRO) at beginning, pbEndCutscene(:INTRO) at end
# Player can hold CTRL to skip if they've seen it before
#===============================================================================

def pbStartCutscene(cutscene_id)
  data = $PokemonGlobal.qol_data
  $game_temp.sc_current_cutscene = cutscene_id if $game_temp
  if qolEnabled?(:SKIP_SEEN_CUTSCENES) && data.cutscene_seen?(cutscene_id)
    return true  # Signal: can skip
  end
  false
end

def pbEndCutscene(cutscene_id)
  $PokemonGlobal.qol_data.mark_cutscene_seen(cutscene_id)
end

def pbCanSkipCutscene?
  return false unless $game_temp && $game_temp.respond_to?(:sc_current_cutscene)
  cutscene_id = $game_temp.sc_current_cutscene
  return false unless cutscene_id
  qolEnabled?(:SKIP_SEEN_CUTSCENES) &&
    $PokemonGlobal.qol_data.cutscene_seen?(cutscene_id)
end
