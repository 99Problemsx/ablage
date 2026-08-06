#===============================================================================
# [SC] Flashback System - Core Logic
# Saves current state, loads flashback state, restores on completion.
#===============================================================================

module FlashbackManager
  @active = false
  @saved_state = nil

  class << self
    attr_reader :active
  end

  def self.active?
    @active
  end

  #=============================================================================
  # Start a flashback
  #=============================================================================

  def self.start(flashback_id)
    return if @active
    config = FlashbackSystem::FLASHBACKS[flashback_id]
    return unless config

    @active = true

    # Save current state
    @saved_state = {
      :party     => $player.party.map(&:clone),
      :map_id    => $game_map.map_id,
      :x         => $game_player.x,
      :y         => $game_player.y,
      :direction => $game_player.direction,
      :tone      => $game_screen.tone.clone,
      :name      => $player.name,
      :switches  => {},
      :flashback_id => flashback_id
    }

    # Visual transition
    pbFadeOutIn(FlashbackSystem::FADE_FRAMES) {
      # Set flashback party
      $player.party.clear
      config[:party].each_with_index do |species, i|
        level = config[:party_levels] ? config[:party_levels][i] : 50
        pkmn = Pokemon.new(species, level)
        $player.party.push(pkmn)
      end

      # Apply flashback tone
      $game_screen.start_tone_change(FlashbackSystem::FLASHBACK_TONE, 0)

      # Apply flashback shader ([SC] Visual Effects). Safe-noop if absent.
      pbApplyShader(:flashback) if defined?(pbApplyShader)

      # Transfer to flashback map
      $game_temp.player_transferring   = true
      $game_temp.player_new_map_id     = config[:map_id]
      $game_temp.player_new_x          = config[:start_x]
      $game_temp.player_new_y          = config[:start_y]
      $game_temp.player_new_direction  = 2  # Face down
      $scene.transfer_player if $scene.is_a?(Scene_Map)
    }

    # Show label
    if FlashbackSystem::SHOW_LABEL && config[:label]
      show_flashback_label(config[:label], config[:character])
    end

    echoln "[SC] Flashback: Started #{flashback_id}" if FlashbackSystem::DEBUG_MODE
  end

  #=============================================================================
  # End the current flashback
  #=============================================================================

  def self.finish
    return unless @active
    return unless @saved_state

    config = FlashbackSystem::FLASHBACKS[@saved_state[:flashback_id]]

    pbFadeOutIn(FlashbackSystem::FADE_FRAMES) {
      # Restore party
      $player.party.clear
      @saved_state[:party].each { |p| $player.party.push(p) }

      # Restore name
      $player.name = @saved_state[:name]

      # Restore tone
      $game_screen.start_tone_change(@saved_state[:tone], 0)

      # Remove flashback shader ([SC] Visual Effects). Safe-noop if absent.
      pbRemoveShader(:flashback) if defined?(pbRemoveShader)

      # Transfer back
      $game_temp.player_transferring   = true
      $game_temp.player_new_map_id     = @saved_state[:map_id]
      $game_temp.player_new_x          = @saved_state[:x]
      $game_temp.player_new_y          = @saved_state[:y]
      $game_temp.player_new_direction  = @saved_state[:direction]
      $scene.transfer_player if $scene.is_a?(Scene_Map)
    }

    # Set completion switch
    if config && config[:end_switch]
      $game_switches[config[:end_switch]] = true
    end

    @active = false
    @saved_state = nil

    echoln "[SC] Flashback: Finished" if FlashbackSystem::DEBUG_MODE
  end

  #=============================================================================
  # Display helpers
  #=============================================================================

  def self.show_flashback_label(label, character = nil)
    viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    viewport.z = 100000
    sprite = BitmapSprite.new(Graphics.width, Graphics.height, viewport)
    pbSetSystemFont(sprite.bitmap)

    # Darken
    sprite.bitmap.fill_rect(0, 0, Graphics.width, Graphics.height, Color.new(0, 0, 0, 180))

    # Label text
    pbDrawTextPositions(sprite.bitmap, [
      [label, Graphics.width / 2, Graphics.height / 2 - 20, 2,
       FlashbackSystem::LABEL_TEXT_COLOR, FlashbackSystem::LABEL_SHADOW_COLOR]
    ])
    if character
      pbDrawTextPositions(sprite.bitmap, [
        [_INTL("— {1}'s Memory —", character), Graphics.width / 2, Graphics.height / 2 + 16, 2,
         Color.new(200, 200, 200), Color.new(60, 60, 60)]
      ])
    end

    # Hold for 3 seconds then fade
    120.times { Graphics.update }
    8.times do |i|
      sprite.opacity -= 32
      Graphics.update
    end
    sprite.dispose
    viewport.dispose
  end
end

#===============================================================================
# Event helpers
#
# SC FIX (review C3): the FlashbackSystem::ENABLED toggle from Config wasn't
# checked anywhere — setting it to false had no effect. Each entry point now
# bails early if the system is disabled.
#===============================================================================

def pbStartFlashback(flashback_id)
  return unless FlashbackSystem::ENABLED
  FlashbackManager.start(flashback_id)
end

def pbEndFlashback
  return unless FlashbackSystem::ENABLED
  FlashbackManager.finish
end

def pbInFlashback?
  return false unless FlashbackSystem::ENABLED
  FlashbackManager.active?
end

#===============================================================================
# Menu restrictions during flashback
# Wraps pause menu conditions to hide entries during active flashbacks.
#===============================================================================
{
  save:     FlashbackSystem::DISABLE_SAVE,
  bag:      FlashbackSystem::DISABLE_BAG,
  party:    FlashbackSystem::DISABLE_POKEMON,
  town_map: FlashbackSystem::DISABLE_MAP,
  pokegear: FlashbackSystem::DISABLE_MAP
}.each do |menu_key, should_disable|
  next unless should_disable
  MenuHandlers.each(:pause_menu) do |option, hash|
    next unless option == menu_key
    original_cond = hash["condition"]
    hash["condition"] = proc {
      next false if FlashbackManager.active?
      next(original_cond ? original_cond.call : true)
    }
  end
end
