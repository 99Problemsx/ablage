#===============================================================================
# [SC] Companion Pokemon - Follower Hooks
# Aliases and event handlers to keep the follower in sync with game state:
# Bike, PC, Party Screen, Evolution, Trade, Hatch, Debug, Day Care,
# Map Transfer, Scene_Map update, Battle slide-in, Options menu, etc.
#===============================================================================

#===============================================================================
# Game_FollowerFactory overrides — create the correct class, skip inactive
# followers as leaders
#===============================================================================
class Game_FollowerFactory
  alias __sc_follower__create_follower_object create_follower_object unless private_method_defined?(:__sc_follower__create_follower_object)
  private def create_follower_object(*args)
    return Game_FollowingPkmn.new(args[0]) if args[0].following_pkmn?
    return __sc_follower__create_follower_object(*args)
  end

  def move_followers
    leader = $game_player
    $PokemonGlobal.followers.each_with_index do |follower, i|
      event = @events[i]
      event.follow_leader(leader, false, (i == 0))
      follower.x              = event.x
      follower.y              = event.y
      follower.current_map_id = event.map.map_id
      follower.direction      = event.direction
      leader = event if !event.is_a?(Game_FollowingPkmn) || CompanionFollower.active?
    end
  end

  def turn_followers
    leader = $game_player
    $PokemonGlobal.followers.each_with_index do |follower, i|
      event = @events[i]
      event.turn_towards_leader(leader)
      follower.direction = event.direction
      leader = event if !event.is_a?(Game_FollowingPkmn) || CompanionFollower.active?
    end
  end

  def remove_all_except_following_pkmn
    followers = $PokemonGlobal.followers
    followers.each_with_index do |follower, i|
      next if follower.following_pkmn?
      followers[i] = nil
      @events[i] = nil
      @last_update += 1
    end
    followers.compact!
    @events.compact!
  end
end

#===============================================================================
# Game_Player overrides — allow map transfer with Following Pokemon
#===============================================================================
class Game_Player
  alias __sc_follower__can_map_transfer_with_follower? can_map_transfer_with_follower? unless method_defined?(:__sc_follower__can_map_transfer_with_follower?)
  def can_map_transfer_with_follower?(*args)
    return true if CompanionFollower.get && $PokemonGlobal.followers.length == 1
    return __sc_follower__can_map_transfer_with_follower?(*args)
  end

  alias __sc_follower__can_ride_vehicle_with_follower? can_ride_vehicle_with_follower? unless method_defined?(:__sc_follower__can_ride_vehicle_with_follower?)
  def can_ride_vehicle_with_follower?(*args)
    return true if CompanionFollower.get && $PokemonGlobal.followers.length == 1
    return __sc_follower__can_ride_vehicle_with_follower?(*args)
  end
end

#===============================================================================
# Followers module — protect Following Pokemon during clear
#===============================================================================
module Followers
  class << self
    alias __sc_follower__remove remove unless method_defined?(:__sc_follower__remove)
    alias __sc_follower__remove_event remove_event unless method_defined?(:__sc_follower__remove_event)
    alias __sc_follower__clear clear unless method_defined?(:__sc_follower__clear)
  end
  module_function

  def remove(*args)
    __sc_follower__remove(*args)
    CompanionFollower.refresh(false)
  end

  def remove_event(*args)
    __sc_follower__remove_event(*args)
    CompanionFollower.refresh(false)
  end

  def clear(*args)
    if $game_temp&.starting_over
      $game_temp.followers.remove_all_except_following_pkmn
    else
      __sc_follower__clear(*args)
    end
    CompanionFollower.refresh(false)
  end
end

#===============================================================================
# Refresh after Bike mount/dismount
#===============================================================================
alias __sc_follower__pbMountBike pbMountBike unless defined?(__sc_follower__pbMountBike)
def pbMountBike(*args)
  ret = __sc_follower__pbMountBike(*args)
  CompanionFollower.refresh(false)
  return ret
end

alias __sc_follower__pbDismountBike pbDismountBike unless defined?(__sc_follower__pbDismountBike)
def pbDismountBike(*args)
  ret = __sc_follower__pbDismountBike(*args)
  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after PC usage
#===============================================================================
alias __sc_follower__pbTrainerPC pbTrainerPC unless defined?(__sc_follower__pbTrainerPC)
def pbTrainerPC(*args)
  ret = __sc_follower__pbTrainerPC(*args)
  CompanionFollower.refresh(false)
  return ret
end

alias __sc_follower__pbPokeCenterPC pbPokeCenterPC unless defined?(__sc_follower__pbPokeCenterPC)
def pbPokeCenterPC(*args)
  active_before = CompanionFollower.active?
  show_anim     = active_before && CompanionFollower::SHOW_POKECENTER_ANIMATION
  $game_temp.pokecenter_following_pkmn = active_before ? (show_anim ? 2 : 1) : 0

  # Pre-heal: pull the follower back into its Poke Ball with a flash animation
  if show_anim
    CompanionFollower.animation(CompanionFollower::ANIMATION_COME_IN)
    pbWait(0.45)
    CompanionFollower.toggle_off(false)
  end

  ret = __sc_follower__pbPokeCenterPC(*args)

  # Post-heal: pop the follower back out
  if show_anim
    CompanionFollower.toggle_on(false)
    CompanionFollower.animation(CompanionFollower::ANIMATION_COME_OUT)
    pbWait(0.45)
  end

  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after Party Screen closes
#===============================================================================
alias __sc_follower__pbPokemonScreen pbPokemonScreen unless defined?(__sc_follower__pbPokemonScreen)
def pbPokemonScreen(*args)
  ret = __sc_follower__pbPokemonScreen(*args)
  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after Evolution
#===============================================================================
class PokemonEvolutionScene
  alias __sc_follower__pbEndScreen pbEndScreen unless method_defined?(:__sc_follower__pbEndScreen)
  def pbEndScreen(*args)
    ret = __sc_follower__pbEndScreen(*args)
    CompanionFollower.refresh(false)
    return ret
  end
end

# SC FIX (review C1): EBDX Battle UI loads AFTER Companion Pokemon and
# replaces PokemonEvolutionScene#pbEndScreen entirely without alias-chaining,
# which silently wipes the alias above. EBDX has been patched to fire
# :on_evolution_scene_end; we listen here as a robust fallback so the
# follower refresh works regardless of load order or which evolution scene
# implementation is active.
EventHandlers.add(:on_evolution_scene_end, :sc_follower_evo_refresh, proc { |_pkmn|
  CompanionFollower.refresh(false) rescue nil
})

#===============================================================================
# Refresh after Trade
#===============================================================================
alias __sc_follower__pbStartTrade pbStartTrade unless defined?(__sc_follower__pbStartTrade)
def pbStartTrade(*args)
  ret = __sc_follower__pbStartTrade(*args)
  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after Hatching
#===============================================================================
alias __sc_follower__pbHatch pbHatch unless defined?(__sc_follower__pbHatch)
def pbHatch(*args)
  ret = __sc_follower__pbHatch(*args)
  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after Bag / Item Choice
#===============================================================================
alias __sc_follower__pbChooseItem pbChooseItem unless defined?(__sc_follower__pbChooseItem)
def pbChooseItem(*args)
  ret = __sc_follower__pbChooseItem(*args)
  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after Debug menu
#===============================================================================
alias __sc_follower__pbDebugMenu pbDebugMenu unless defined?(__sc_follower__pbDebugMenu)
def pbDebugMenu(*args)
  ret = __sc_follower__pbDebugMenu(*args)
  CompanionFollower.refresh(false)
  return ret
end

#===============================================================================
# Refresh after Day Care interaction
#===============================================================================
class DayCare
  class << self
    alias __sc_follower__deposit deposit unless method_defined?(:__sc_follower__deposit)
    def deposit(*args)
      ret = __sc_follower__deposit(*args)
      CompanionFollower.refresh(false)
      return ret
    end

    alias __sc_follower__withdraw withdraw unless method_defined?(:__sc_follower__withdraw)
    def withdraw(*args)
      ret = __sc_follower__withdraw(*args)
      CompanionFollower.refresh(false)
      return ret
    end
  end
end

#===============================================================================
# Scene_Map update — toggle key, party cycling, queued refresh, time tracking
#===============================================================================
class Scene_Map
  alias __sc_follower__update update unless method_defined?(:__sc_follower__update)
  def update(*args)
    __sc_follower__update(*args)

    follower_input_allowed = CompanionFollower.can_check? &&
                             !$game_temp.in_battle && !$game_temp.in_menu &&
                             !$game_temp.message_window_showing &&
                             !$game_player.moving? &&
                             !pbMapInterpreterRunning?

    # Toggle key — ignored while an event/script has the follower locked off
    t_key = CompanionFollower::TOGGLE_KEY
    if t_key && follower_input_allowed && !CompanionFollower.script_disabled? &&
       Input.trigger?(t_key)
      CompanionFollower.toggle
    end

    # Quick party cycling — rotate the lead (= follower) to the next/previous
    # able Pokemon. Eggs and fainted Pokemon are skipped so they never end up
    # parked at the front as the lead/follower.
    if CompanionFollower.can_check? && CompanionFollower.active? &&
       $player && $player.party.length >= 2
      if follower_input_allowed
        fwd_key = CompanionFollower::CYCLE_PARTY_FORWARD_KEY
        bwd_key = CompanionFollower::CYCLE_PARTY_BACKWARD_KEY
        if fwd_key && Input.trigger?(fwd_key)
          CompanionFollower.cycle_party(1)
        elsif bwd_key && Input.trigger?(bwd_key)
          CompanionFollower.cycle_party(-1)
        end
      end
    end

    # Queued refresh
    if $PokemonGlobal.call_refresh[0]
      CompanionFollower.refresh($PokemonGlobal.call_refresh[1])
      $PokemonGlobal.call_refresh = false
    end

    # Follower visibility safety — catch any frame where the event is missing
    # or transparent despite the follower being logically active.
    if CompanionFollower.can_check? && CompanionFollower.active?
      ev = CompanionFollower.get_event
      if !ev
        # Follower data exists but the factory holds no event for it (data was
        # added without rebuilding the factory). Rebuild so the event — and its
        # sprite — appear immediately instead of only after the next map load.
        $game_temp.followers = nil
        $game_temp.followers
        CompanionFollower.refresh(false)
      elsif ev.transparent || ev.character_name == ""
        CompanionFollower.refresh(false)
      end
    end

    # Party order can change through battle, scripts and third-party UIs which
    # don't pass through PokemonPartyScreen. Keep the actual sprite tied to the
    # first able party Pokemon in all of those cases.
    CompanionFollower.sync_party_lead(false) if CompanionFollower.can_check?

    # Increase timers while active
    CompanionFollower.increase_time if CompanionFollower.active?
  end
end

#===============================================================================
# Step-taken hook — queued refresh
#===============================================================================
EventHandlers.add(:on_player_step_taken, :sc_forced_follower_refresh, proc {
  if $PokemonGlobal.call_refresh[0]
    CompanionFollower.refresh($PokemonGlobal.call_refresh[1])
    $PokemonGlobal.call_refresh = false
  end
})

#===============================================================================
# Map Transfer — hide follower during transfer, unhide after movement
#===============================================================================
class Game_Player
  alias __sc_follower__update_move update_move unless method_defined?(:__sc_follower__update_move)
  def update_move
    __sc_follower__update_move
    CompanionFollower.unhide_follower(false) if !moving?
  end
end

class Interpreter
  alias __sc_follower__command_201 command_201 unless method_defined?(:__sc_follower__command_201)
  def command_201
    # Hide follower before the transfer begins
    CompanionFollower.hide_follower if CompanionFollower.can_check?
    # Reset ice sliding so follower doesn't slide on the new map
    $PokemonGlobal.ice_sliding = false if $PokemonGlobal
    return __sc_follower__command_201
  end
end

#===============================================================================
# Field move animation — follower steps forward for HM moves
#===============================================================================
alias __sc_follower__pbHiddenMoveAnimation pbHiddenMoveAnimation unless defined?(__sc_follower__pbHiddenMoveAnimation)
def pbHiddenMoveAnimation(pokemon, field_move = true)
  no_field_move = !field_move || ($game_temp.no_follower_field_move rescue false)
  CompanionFollower.move_route([PBMoveRoute::WAIT, 1]) if pokemon && CompanionFollower.active?
  ret = __sc_follower__pbHiddenMoveAnimation(pokemon)
  return ret if !ret || no_field_move || !CompanionFollower.active? || pokemon != CompanionFollower.get_pokemon
  initial_dir = $game_player.direction
  pbTurnTowardEvent(CompanionFollower.get_event, $game_player)
  pbWait(0.2)
  moved_dir = 0
  possible_dir = [$game_player.direction, 10 - $game_player.direction]
  [2, 8, 4, 6].each { |d| possible_dir.push(d) if !possible_dir.include?(d) }
  possible_dir.each do |d|
    next if !$game_player.passable?($game_player.x, $game_player.y, 10 - d)
    moved_dir = 10 - d
    break
  end
  if moved_dir > 0
    CompanionFollower.get_event.move_toward_player
    pbMoveRoute($game_player, [(moved_dir) / 2], true)
    pbWait(0.2)
    pbTurnTowardEvent($game_player, CompanionFollower.get_event)
    pbWait(0.2)
    CompanionFollower.move_route([15 + (initial_dir / 2)])
    pbWait(0.2)
  end
  pbSEPlay("Player jump")
  CompanionFollower.move_route([PBMoveRoute::JUMP, 0, 0])
  pbWait(0.2)
  return ret
end

#===============================================================================
# Battle slide-in animation — follower slides in instead of Pokeball throw
#===============================================================================
class Battle::Scene::Animation::PokeballPlayerSendOut < Battle::Scene::Animation
  alias __sc_follower__initialize initialize unless method_defined?(:__sc_follower__initialize)
  def initialize(sprites, viewport, idxTrainer, battler, startBattle, idxOrder = 0)
    @idxTrainer     = idxTrainer
    @battler        = battler
    @showingTrainer = startBattle
    @idxOrder       = idxOrder
    @trainer        = @battler.battle.pbGetOwnerFromBattlerIndex(@battler.index)
    @shadowVisible  = sprites["shadow_#{battler.index}"].visible
    @sprites        = sprites
    @viewport       = viewport
    @pictureEx      = []
    @pictureSprites = []
    @tempSprites    = []
    @animDone       = false
    if CompanionFollower.active? && startBattle &&
       battler.index == 0 && CompanionFollower::SLIDE_INTO_BATTLE
      createFollowerProcesses
    else
      createProcesses
    end
  end

  def createFollowerProcesses
    delay = @showingTrainer ? 5 : 0
    batSprite = @sprites["pokemon_#{@battler.index}"]
    shaSprite = @sprites["shadow_#{@battler.index}"]
    battler = addSprite(batSprite, PictureOrigin::BOTTOM)
    battler.setVisible(delay, true)
    battler.setZoomXY(delay, 100, 100)
    battler.setColor(delay, Color.new(0, 0, 0, 0))
    battler.setDelta(0, -240, 0)
    battler.moveDelta(delay, 12, 240, 0)
    battler.setCallback(delay + 12, [batSprite, :pbPlayIntroAnimation])
    if @shadowVisible
      shadow = addSprite(shaSprite, PictureOrigin::CENTER)
      shadow.setVisible(delay, @shadowVisible)
      shadow.setDelta(0, -Graphics.width / 2, 0)
      shadow.setDelta(delay, 12, Graphics.width / 2, 0)
    end
  end
end

#===============================================================================
# Fix for emote animation duration check
#===============================================================================
class SpriteAnimation
  def effect?
    return @_animation_duration > 0 if @_animation_duration
  end
end

#===============================================================================
# Options menu — toggle Following Pokemon
#===============================================================================
module OptionsCategories
  BATTLE   = :battle
  AUDIO    = :audio
  GRAPHICS = :graphics
  GAMEPLAY = :gameplay
  PLUGINS  = :plugins
  SYSTEM   = :system
end unless defined?(OptionsCategories)

MenuHandlers.add(:options_menu, :follower_toggle, {
  "name"        => _INTL("Following Pokemon"),
  "order"       => 10,
  "type"        => :array,
  "parameters"  => [_INTL("On"), _INTL("Off")],
  "description" => _INTL("Let the first Pokemon in your party follow you in the overworld."),
  "category"    => OptionsCategories::PLUGINS,
  "condition"   => proc {
    next false if !CompanionFollower.can_check? || !CompanionFollower.get_event
    next false if !CompanionFollower::SHOW_TOGGLE_IN_OPTIONS
    next false if CompanionFollower::LOCK_HIDES_OPTION && CompanionFollower.script_disabled?
    next true
  },
  "get_proc"    => proc { next ($PokemonGlobal&.follower_toggled ? 0 : 1) },
  "set_proc"    => proc { |value, _scene|
    next if !CompanionFollower.can_check?
    next if $PokemonGlobal.follower_toggled == (value == 0)
    $PokemonGlobal.follower_toggled = (value == 0)
    CompanionFollower.refresh(false)
  }
})

#===============================================================================
# EBDX compatibility (if installed)
#===============================================================================
if PluginManager.installed?("Elite Battle: DX")
  module EliteBattle
    def self.follower(battle)
      return nil if !EliteBattle::USE_FOLLOWER_EXCEPTION
      return (CompanionFollower.active? && battle.scene.firstsendout) ? 0 : nil
    end
  end
end

#===============================================================================
# Auto-spawn follower on game load / new game
# On save reload: follower data persists in $PokemonGlobal.followers,
# the factory's initialize recreates the Game_FollowingPkmn from it.
# On first run (no follower yet): create FollowerData manually.
#===============================================================================
EventHandlers.add(:on_game_load, :sc_follower_init, proc {
  next if !CompanionFollower.can_check?
  pkmn = CompanionFollower.get_pokemon
  next if !pkmn
  # Default to toggled on for new games
  $PokemonGlobal.follower_toggled = CompanionFollower::ENABLED_BY_DEFAULT if $PokemonGlobal.follower_toggled.nil?
  # Remove stale FP-EX follower data
  $PokemonGlobal.followers.reject! { |f|
    f.event_name == "FollowerPkmn" || f.name == "FollowerPkmn"
  }
  # Ensure our follower data exists
  has_follower = $PokemonGlobal.followers.any? { |f| f.event_name == "FollowingPkmn" }
  if !has_follower
    behind_dir = 10 - $game_player.direction
    target = $map_factory.getFacingTile(behind_dir, $game_player) rescue nil
    target = [$game_map.map_id, $game_player.x, $game_player.y] if !target
    # Pre-resolve sprite so follower isn't created with empty character_name
    shiny = pkmn.shiny?
    shiny = pkmn.superVariant if pkmn.respond_to?(:superVariant) && !pkmn.superVariant.nil? && pkmn.superShiny?
    fname = GameData::Species.ow_sprite_filename(pkmn.species, pkmn.form,
              pkmn.gender, shiny, pkmn.shadow, false)
    fname = fname.gsub("Graphics/Characters/", "")
    follower_data = FollowerData.new(
      $game_map.map_id, 0, "FollowingPkmn",
      $game_map.map_id, target[1], target[2],
      $game_player.direction, fname, 0
    )
    follower_data.name = "FollowingPkmn"
    follower_data.common_event_id = CompanionFollower::FOLLOWER_COMMON_EVENT
    $PokemonGlobal.followers.push(follower_data)
  end
  # Force factory rebuild so events match the follower data
  $game_temp.followers = nil
  $game_temp.followers
  CompanionFollower.refresh(false)
})

EventHandlers.add(:on_enter_map, :sc_follower_map_refresh, proc {
  next if !CompanionFollower.can_check?
  # Reset ice sliding state from previous map
  $PokemonGlobal.ice_sliding = false if $PokemonGlobal
  # Auto-create follower data if it's missing (e.g. after receiving starter)
  pkmn = CompanionFollower.get_pokemon
  if !CompanionFollower.get && pkmn
    $PokemonGlobal.follower_toggled = CompanionFollower::ENABLED_BY_DEFAULT if $PokemonGlobal.follower_toggled.nil?
    has_follower = $PokemonGlobal.followers.any? { |f| f.event_name == "FollowingPkmn" }
    if !has_follower
      behind_dir = 10 - $game_player.direction
      target = $map_factory.getFacingTile(behind_dir, $game_player) rescue nil
      target = [$game_map.map_id, $game_player.x, $game_player.y] if !target
      # Pre-resolve sprite so follower isn't created with empty character_name
      shiny = pkmn.shiny?
      shiny = pkmn.superVariant if pkmn.respond_to?(:superVariant) && !pkmn.superVariant.nil? && pkmn.superShiny?
      fname = GameData::Species.ow_sprite_filename(pkmn.species, pkmn.form,
                pkmn.gender, shiny, pkmn.shadow, false)
      fname = fname.gsub("Graphics/Characters/", "")
      follower_data = FollowerData.new(
        $game_map.map_id, 0, "FollowingPkmn",
        $game_map.map_id, target[1], target[2],
        $game_player.direction, fname, 0
      )
      follower_data.name = "FollowingPkmn"
      follower_data.common_event_id = CompanionFollower::FOLLOWER_COMMON_EVENT
      $PokemonGlobal.followers.push(follower_data)
      $game_temp.followers = nil
      $game_temp.followers
    end
  end
  if CompanionFollower.get
    # Finish both halves of Essentials' transfer hiding immediately. Without
    # this, the follower may remain invisible until the player moves again.
    CompanionFollower.unhide_follower(false)
    CompanionFollower.sync_party_lead(false)
    CompanionFollower.refresh(false, true)
  end
})

# Battle results can faint/reorder the lead without opening the party screen.
# Refresh before post-battle companion reactions are evaluated (this file loads
# before ReactionCore), so emotes and dialogue belong to the visible Pokemon.
EventHandlers.add(:on_end_battle, :sc_follower_battle_refresh, proc { |_decision, _can_lose|
  next if !CompanionFollower.can_check?
  CompanionFollower.sync_party_lead(false)
  CompanionFollower.refresh(false, true)
})

#===============================================================================
# Player interaction fallback — talk to follower if facing it
# (Backup for cases where Game_FollowerFactory#update doesn't handle it)
#===============================================================================
EventHandlers.add(:on_player_interact, :sc_follower_talk, proc {
  if CompanionPokemon::DEBUG_MODE
    echoln "[SC] on_player_interact fired — can_talk?=#{CompanionFollower.can_talk?}"
  end
  if CompanionFollower.can_talk?
    echoln "[SC] on_player_interact: calling talk" if CompanionPokemon::DEBUG_MODE
    CompanionFollower.talk
  end
})

#===============================================================================
# Talk response — connect to reaction engine
#===============================================================================
EventHandlers.add(:following_pkmn_talk, :sc_reaction_talk, proc { |pkmn, _random|
  next false if !pkmn
  echoln "[SC] :following_pkmn_talk handler called for #{pkmn.name}" if CompanionPokemon::DEBUG_MODE
  if defined?(CompanionReactionEngine)
    result = CompanionReactionEngine.on_talk(pkmn)
    echoln "[SC] CompanionReactionEngine.on_talk returned #{result.inspect}" if CompanionPokemon::DEBUG_MODE
    next result
  end
  # Fallback: basic message if reaction engine not loaded
  echoln "[SC] ReactionEngine not defined, using fallback message" if CompanionPokemon::DEBUG_MODE
  pkmn.play_cry rescue nil
  pbMessage(_INTL("{1} looks at you happily!", pkmn.name))
  next true
})
# Keep player input disabled while a visible companion reaction is still
# running. Scene/message updates continue, so the animation never freezes.
class Game_Player < Game_Character
  alias __sc_companion_reaction__update_command_new update_command_new unless method_defined?(:__sc_companion_reaction__update_command_new)
  def update_command_new
    forced = $PokemonGlobal&.forced_movement? rescue false
    if !forced && CompanionFollower.reaction_locked?
      @last_input_time = nil
      return
    end
    __sc_companion_reaction__update_command_new
  end
end
