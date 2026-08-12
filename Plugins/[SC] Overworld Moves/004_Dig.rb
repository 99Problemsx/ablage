#===============================================================================
# [SC] Overworld Moves - Dig
#===============================================================================
# Replaces the vanilla "warp back to the escape point" Dig with a targeted
# version: the player and their follower burrow out of sight, a cursor appears,
# and the player picks the tile to resurface on.
#
# The vanilla behaviour is kept as a fallback for when no tile on the current
# map is a legal destination (which is the case on most single-room maps).
#===============================================================================

module SCOverworldMoves
  #-----------------------------------------------------------------------------
  # Hiding the player and follower
  #-----------------------------------------------------------------------------

  def self.each_follower_event
    return if !$game_temp.respond_to?(:followers) || !$game_temp.followers
    $game_temp.followers.each_follower do |event, _follower|
      next if !event
      yield event
    end
  end

  # Called every frame of the cursor scene. Plugins that redraw followers on
  # :on_frame_update would otherwise pop them back into view mid-selection.
  def self.enforce_hidden
    return if !@hidden
    $game_player.opacity = 0
    each_follower_event { |event| event.opacity = 0 }
  end

  def self.set_actor_opacity(value)
    $game_player.opacity = value
    each_follower_event { |event| event.opacity = value }
  end

  def self.redraw_map
    $scene.updateSpritesets if $scene.is_a?(Scene_Map)
    Graphics.update
  end

  def self.burrow_down
    pbSEPlay(SE_BURROW)
    frames = [BURROW_FRAMES, 1].max
    CompanionFollower.hide_follower if defined?(CompanionFollower)
    frames.times do |i|
      set_actor_opacity(255 - (255 * (i + 1) / frames))
      redraw_map
    end
    @hidden = true
    set_actor_opacity(0)
  end

  def self.burrow_up
    @hidden = false
    pbSEPlay(SE_BURROW)
    frames = [BURROW_FRAMES, 1].max
    frames.times do |i|
      set_actor_opacity(255 * (i + 1) / frames)
      redraw_map
    end
    set_actor_opacity(255)
  end

  #-----------------------------------------------------------------------------
  # Destination lookup
  #-----------------------------------------------------------------------------

  # Cached so that CanUseMove, ConfirmUseMove and UseMove share one flood fill.
  # The player cannot move between those three calls, so the stamp only needs to
  # guard against a stale cache from an earlier use.
  def self.dig_targets
    stamp = [$game_map.map_id, $game_player.x, $game_player.y]
    if @target_stamp != stamp
      @target_stamp = stamp
      @target_steps = Reachability.from_player
    end
    return @target_steps
  end

  def self.clear_dig_targets
    @target_stamp = nil
    @target_steps = nil
  end

  def self.dig_targeting_allowed?
    return false if !ENABLED
    return false if DIG_BLOCKED_SWITCH > 0 && $game_switches[DIG_BLOCKED_SWITCH]
    return false if $PokemonGlobal&.surfing || $PokemonGlobal&.diving
    return true
  end

  def self.dig_targeting_available?
    return false if !dig_targeting_allowed?
    return Reachability.any_target?(dig_targets)
  end

  #-----------------------------------------------------------------------------
  # The move itself
  #-----------------------------------------------------------------------------

  def self.use_targeted_dig(move, pokemon)
    steps = dig_targets
    if !pbHiddenMoveAnimation(pokemon)
      pbMessage(_INTL("{1} used {2}!", pokemon.name, GameData::Move.get(move).name))
    end
    burrow_down
    target = pbChooseTargetTile(steps)
    if target
      $game_player.moveto(target[0], target[1])
      $game_player.turn_down
      $game_temp.followers.put_followers_on_player if $game_temp.followers
      CompanionFollower.unhide_follower(false) if defined?(CompanionFollower)
    else
      # Cancelled - surface where we started, and undo the cursor's scrolling.
      $game_player.center($game_player.x, $game_player.y)
      CompanionFollower.unhide_follower(false) if defined?(CompanionFollower)
    end
    burrow_up
    clear_dig_targets
    return true
  end
end

#===============================================================================
# Handler overrides
#===============================================================================

HiddenMoveHandlers::CanUseMove.add(:DIG, proc { |move, pkmn, showmsg|
  next true if SCOverworldMoves.dig_targeting_available?
  # Fallback: vanilla escape-point Dig.
  escape = ($PokemonGlobal.escapePoint rescue nil)
  if !escape || escape == []
    pbMessage(_INTL("You can't use that here.")) if showmsg
    next false
  end
  if !$game_player.can_map_transfer_with_follower?
    pbMessage(_INTL("It can't be used when you have someone with you.")) if showmsg
    next false
  end
  next true
})

HiddenMoveHandlers::ConfirmUseMove.add(:DIG, proc { |move, pkmn|
  # The cursor is its own confirmation step, so don't ask twice.
  next true if SCOverworldMoves.dig_targeting_available?
  escape = ($PokemonGlobal.escapePoint rescue nil)
  next false if !escape || escape == []
  mapname = pbGetMapNameFromId(escape[0])
  next pbConfirmMessage(_INTL("Want to escape from here and return to {1}?", mapname))
})

HiddenMoveHandlers::UseMove.add(:DIG, proc { |move, pokemon|
  next SCOverworldMoves.use_targeted_dig(move, pokemon) if SCOverworldMoves.dig_targeting_available?
  escape = ($PokemonGlobal.escapePoint rescue nil)
  if escape
    if !pbHiddenMoveAnimation(pokemon)
      pbMessage(_INTL("{1} used {2}!", pokemon.name, GameData::Move.get(move).name))
    end
    pbFadeOutIn do
      $game_temp.player_new_map_id    = escape[0]
      $game_temp.player_new_x         = escape[1]
      $game_temp.player_new_y         = escape[2]
      $game_temp.player_new_direction = escape[3]
      pbDismountBike
      $scene.transfer_player
      $game_map.autoplay
      $game_map.refresh
    end
    pbEraseEscapePoint
    next true
  end
  next false
})
