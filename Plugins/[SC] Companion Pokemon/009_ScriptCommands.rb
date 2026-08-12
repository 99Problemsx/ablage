#===============================================================================
# [SC] Companion Pokemon - Script & Event Commands
#
# Everything an event page or a script call needs to control the follower.
# Put these into a "Script" command in the event editor.
#
#-------------------------------------------------------------------------------
# TURNING THE FOLLOWER OFF FOR A WHILE (cutscenes, story chapters)
#-------------------------------------------------------------------------------
#   pbDisableFollower          # follower disappears and STAYS gone —
#                              # toggle key and Options entry are blocked
#   pbEnableFollower           # lift the lock again
#   pbDisableFollower(false)   # same, but without the "come in" animation
#   pbHideFollower             # instant hide (no animation), same lock
#   pbShowFollower             # instant show again
#   pbFollowerLocked?          # true while locked by script/switch
#   pbHideCompanion / pbShowCompanion   # same as pbDisableFollower/pbEnable...
#
#   Alternative without script calls: set CompanionFollower::DISABLE_SWITCH
#   (or HIDE_SWITCH) in 001_FollowerConfig.rb to a game switch ID and just
#   flip that switch in your events.
#
#-------------------------------------------------------------------------------
# NORMAL ON / OFF (the same thing the player's toggle key does)
#-------------------------------------------------------------------------------
#   pbFollowerOn / pbFollowerOff / pbToggleFollower
#   pbFollowerActive?          # is it currently walking behind the player?
#
#-------------------------------------------------------------------------------
# INTERACTION
#-------------------------------------------------------------------------------
#   pbFollowerPokemon          # the Pokemon object (or nil)
#   pbFollowerTalk             # trigger the talk/reaction scene
#   pbFollowerEmote(:HEART)    # :HEART :HAPPY :MUSIC :DOTS :ANGRY :POISON
#                              # :QUESTION :EXCLAIM :COME_OUT :COME_IN
#   pbFollowerAnimation(id)    # raw RPG Maker animation on the follower
#   pbFollowerMoveRoute([PBMoveRoute::JUMP, 0, 0])
#   pbFollowerFindItem(:POTION)
#   pbFollowerCycle(1)         # next / previous party Pokemon as follower
#   pbFollowerSwapControl      # swap sprites with the follower
#   pbFollowerRefresh          # force a sprite/visibility update
#===============================================================================

module CompanionFollower
  @@last_allowed = nil

  #=============================================================================
  # Script lock
  #=============================================================================

  # Lock the follower off (true) or release the lock (false).
  # anim: play the come out / come in emote on the change.
  def self.set_script_disabled(value, anim = true)
    return if !$PokemonGlobal
    value = !!value
    return if $PokemonGlobal.follower_script_disabled == value
    $PokemonGlobal.follower_script_disabled = value
    if can_check?
      refresh(anim && !!get_event, true)
      $game_temp.followers.move_followers if !value
      $game_temp.followers.turn_followers if !value
    end
    @@last_allowed = allowed?
  end

  # Watches DISABLE_SWITCH / HIDE_SWITCH so flipping a switch takes effect
  # right away instead of on the next map change.
  def self.check_allowed_change
    return if !can_check?
    now = allowed?
    if @@last_allowed.nil?
      @@last_allowed = now
      return
    end
    return if now == @@last_allowed
    @@last_allowed = now
    refresh(!!get_event, true)
    return if !now
    $game_temp.followers.move_followers
    $game_temp.followers.turn_followers
  end

  def self.reset_allowed_cache
    @@last_allowed = nil
  end
end

#===============================================================================
# Scene_Map — keep the switch watcher running
#===============================================================================
class Scene_Map
  alias __sc_follower_cmd__update update unless method_defined?(:__sc_follower_cmd__update)
  def update(*args)
    __sc_follower_cmd__update(*args)
    CompanionFollower.check_allowed_change
  end
end

[:on_game_load, :on_game_start, :on_enter_map].each do |evt|
  EventHandlers.add(evt, :sc_follower_reset_allowed, proc {
    CompanionFollower.reset_allowed_cache
  })
end

#===============================================================================
# Event / script commands
#===============================================================================

# --- Script lock -------------------------------------------------------------

def pbDisableFollower(anim = true)
  CompanionFollower.set_script_disabled(true, anim)
end

def pbEnableFollower(anim = true)
  CompanionFollower.set_script_disabled(false, anim)
end

def pbHideFollower
  CompanionFollower.set_script_disabled(true, false)
end

def pbShowFollower
  CompanionFollower.set_script_disabled(false, false)
end

def pbFollowerLocked?
  return CompanionFollower.script_disabled?
end

# --- Normal toggle -----------------------------------------------------------

def pbFollowerOn(anim = true)
  CompanionFollower.toggle(true, anim)
end

def pbFollowerOff(anim = true)
  CompanionFollower.toggle(false, anim)
end

def pbToggleFollower(anim = nil)
  CompanionFollower.toggle(nil, anim)
end

def pbFollowerActive?
  return CompanionFollower.active?
end

# --- Spawn / remove ----------------------------------------------------------

# Turn a map event into the follower (event_id = nil uses this event).
def pbSpawnFollower(event_id = nil, anim = true)
  CompanionFollower.start_following(event_id, anim)
end

def pbRemoveFollower
  CompanionFollower.stop_following
end

# --- Interaction -------------------------------------------------------------

def pbFollowerPokemon
  return CompanionFollower.get_pokemon
end

def pbFollowerEvent
  return CompanionFollower.get_event
end

def pbFollowerTalk
  return CompanionFollower.talk
end

def pbFollowerEmote(key)
  return CompanionFollower.emote(key)
end

def pbFollowerAnimation(id = nil)
  CompanionFollower.animation(id)
end

def pbFollowerMoveRoute(commands = nil, lock_player = false)
  CompanionFollower.move_route(commands, lock_player)
end

def pbFollowerFindItem(item, quantity = 1, message = nil)
  return CompanionFollower.item(item, quantity, message)
end

def pbFollowerCycle(dir = 1)
  CompanionFollower.cycle_party(dir)
end

def pbFollowerSwapControl
  CompanionFollower.swap_control
end

def pbFollowerRefresh(anim = false)
  CompanionFollower.refresh(anim, true)
end

#===============================================================================
# Following Pokemon EX compatibility — old script calls keep working
#===============================================================================
def pbToggleFollowingPokemon(anim = nil)
  CompanionFollower.toggle(nil, anim)
end

def pbFollowingPokemonActive?
  return CompanionFollower.active?
end
