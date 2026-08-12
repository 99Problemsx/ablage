#===============================================================================
# [SC] Companion Pokemon - Swap Control
# Allows the player to swap visual roles with their follower Pokemon.
# The player controls the Pokemon sprite while the player character
# sprite follows behind as the companion.
#===============================================================================

module CompanionFollower
  @@swapped = false
  @@stored_player_charset = nil

  #===========================================================================
  # Public API
  #===========================================================================

  # Is control currently swapped (player controls Pokemon sprite)?
  def self.swapped?
    return @@swapped
  end

  # Toggle swap on/off via user input
  def self.swap_control
    return if !can_check? || !active?
    return if $game_temp.in_battle || $game_temp.in_menu
    return if $game_player.moving? || $game_player.jumping?
    return if $game_player.move_route_forcing || pbMapInterpreterRunning?
    return if $PokemonGlobal.bicycle || $PokemonGlobal.surfing || $PokemonGlobal.diving
    return if $PokemonGlobal.ice_sliding
    event = get_event
    return if !event || event.moving? || event.jumping?
    if @@swapped
      unswap_internal(false)
    else
      swap_internal
    end
  end

  # Force unswap silently (called automatically when conditions require it)
  def self.force_unswap
    return unless @@swapped
    unswap_internal(true)
  end

  #===========================================================================
  # Internal swap / unswap
  #===========================================================================

  def self.swap_internal
    event = get_event
    return if !event
    pkmn = get_pokemon
    return if !pkmn
    # Ensure follower event is visible before swapping sprites
    event.transparent = false
    event.opacity = 255
    # Save player charset
    @@stored_player_charset = $game_player.character_name
    # Pokemon sprite → player
    apply_pokemon_sprite_to_player(pkmn)
    # Player sprite → follower
    event.character_name = @@stored_player_charset
    data = get_data
    if data
      data.character_name = @@stored_player_charset
      data.character_hue  = 0
    end
    event.character_hue = 0
    @@swapped = true
    # Idle animation for the Pokemon sprite on the player
    $game_player.instance_variable_set(:@step_anime, true) if ALWAYS_ANIMATE
    play_se(SE_SWAP_CONTROL)
  end

  def self.unswap_internal(silent = false)
    event = get_event
    # Restore player charset
    if @@stored_player_charset
      $game_player.character_name = @@stored_player_charset
      @@stored_player_charset = nil
    else
      $game_player.refresh_charset rescue nil
    end
    $game_player.character_hue = 0 rescue nil
    $game_player.instance_variable_set(:@step_anime, false)
    @@swapped = false
    # Restore Pokemon sprite on follower
    if event
      pkmn = get_pokemon
      change_sprite(pkmn) if pkmn
      event.instance_variable_set(:@step_anime, true) if ALWAYS_ANIMATE
    end
    play_se(SE_SWAP_CONTROL) unless silent
  end

  def self.apply_pokemon_sprite_to_player(pkmn)
    shiny = pkmn.shiny?
    shiny = pkmn.superVariant if pkmn.respond_to?(:superVariant) && !pkmn.superVariant.nil? && pkmn.superShiny?
    fname = GameData::Species.ow_sprite_filename(pkmn.species, pkmn.form,
              pkmn.gender, shiny, pkmn.shadow, false)
    fname = fname.gsub("Graphics/Characters/", "")
    $game_player.character_name = fname
    hue = (pkmn.respond_to?(:superHue) && pkmn.superShiny?) ? pkmn.superHue : 0
    $game_player.character_hue = hue rescue nil
  end

  #===========================================================================
  # Alias change_sprite — keep swap sprites in sync when refresh is called
  #===========================================================================
  class << self
    alias __sc_swap__change_sprite change_sprite unless method_defined?(:__sc_swap__change_sprite)
  end

  def self.change_sprite(pkmn)
    if @@swapped
      # Update Pokemon sprite on player (in case party changed)
      apply_pokemon_sprite_to_player(pkmn)
      # Keep player sprite on follower
      charset = @@stored_player_charset
      if charset
        get_event&.character_name = charset
        get_data&.character_name  = charset
        get_event&.character_hue  = 0
        get_data&.character_hue   = 0
      end
      return
    end
    __sc_swap__change_sprite(pkmn)
  end

  #===========================================================================
  # Alias toggle — force unswap before toggling follower on/off
  #===========================================================================
  class << self
    alias __sc_swap__toggle toggle unless method_defined?(:__sc_swap__toggle)
  end

  def self.toggle(forced = nil, anim = nil)
    force_unswap if @@swapped
    __sc_swap__toggle(forced, anim)
  end

  #===========================================================================
  # Alias stop_following — force unswap before removing follower
  #===========================================================================
  class << self
    alias __sc_swap__stop_following stop_following unless method_defined?(:__sc_swap__stop_following)
  end

  def self.stop_following
    force_unswap if @@swapped
    __sc_swap__stop_following
  end
end

#===============================================================================
# Game_Player — prevent charset overwrite while swapped
#===============================================================================
class Game_Player
  alias __sc_swap__set_movement_type set_movement_type unless method_defined?(:__sc_swap__set_movement_type)
  def set_movement_type(type)
    if CompanionFollower.swapped?
      # Apply speed but keep current Pokemon sprite
      case type
      when :running
        self.move_speed = 4 if !@move_route_forcing
      else
        self.move_speed = 3 if !@move_route_forcing
      end
      return
    end
    __sc_swap__set_movement_type(type)
  end

  alias __sc_swap__refresh_charset refresh_charset unless method_defined?(:__sc_swap__refresh_charset)
  def refresh_charset
    return if CompanionFollower.swapped?
    __sc_swap__refresh_charset
  end
end

#===============================================================================
# Scene_Map — swap key handling + automatic unswap safety
#===============================================================================
class Scene_Map
  alias __sc_swap__update update unless method_defined?(:__sc_swap__update)
  def update(*args)
    __sc_swap__update(*args)
    # Auto-unswap when conditions no longer allow it
    if CompanionFollower.swapped?
      if !CompanionFollower.active? ||
         $PokemonGlobal.bicycle || $PokemonGlobal.surfing ||
         $PokemonGlobal.diving  || $PokemonGlobal.ice_sliding
        CompanionFollower.force_unswap
      end
    end
    # Swap key
    swap_key = CompanionFollower::SWAP_CONTROL_KEY rescue nil
    if swap_key && CompanionFollower.can_check? && Input.trigger?(swap_key)
      if !$game_temp.in_battle && !$game_temp.in_menu &&
         !$game_player.moving? && !pbMapInterpreterRunning?
        CompanionFollower.swap_control
      end
    end
  end
end

#===============================================================================
# Safety: reset swap state on game load to prevent stale Pokemon sprite
#===============================================================================
EventHandlers.add(:on_game_load, :sc_swap_reset, proc {
  next if !CompanionFollower.can_check?
  CompanionFollower.force_unswap if CompanionFollower.swapped?
  $game_player.refresh_charset
  $game_player.character_hue = 0 rescue nil
})
