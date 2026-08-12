#===============================================================================
# [SC] Companion Pokemon - Follower Core
# Replaces Following Pokemon EX entirely with a modern, self-contained
# implementation. All public API methods for spawning, toggling, refreshing,
# talking, and managing the overworld follower Pokemon.
#===============================================================================

#===============================================================================
# PokemonGlobalMetadata extensions — persistent follower state
#===============================================================================
class PokemonGlobalMetadata
  attr_reader   :follower_toggled
  attr_accessor :time_taken
  attr_accessor :follower_hold_item
  attr_accessor :current_surfing
  attr_accessor :current_diving
  attr_accessor :call_refresh
  # Set by pbDisableFollower / pbEnableFollower — survives saving.
  attr_accessor :follower_script_disabled

  def follower_toggled=(value)
    @follower_toggled = value
    CompanionFollower.refresh_internal
  end

  def call_refresh
    @call_refresh = [false, false] if !@call_refresh
    return @call_refresh
  end

  def call_refresh=(value)
    ret = value
    ret = [value, false] if !value.is_a?(Array)
    @call_refresh = ret
  end

  def time_taken
    @time_taken = 0 if !@time_taken
    return @time_taken
  end
end

#===============================================================================
# Game_Temp extensions — transient follower state
#===============================================================================
class Game_Temp
  attr_accessor :starting_over
  attr_accessor :no_follower_field_move
  attr_writer   :pokecenter_following_pkmn

  def pokecenter_following_pkmn
    @pokecenter_following_pkmn = 0 if !@pokecenter_following_pkmn
    return @pokecenter_following_pkmn
  end
end

#===============================================================================
# Impassable follower — prevent NPCs from walking through the follower
#===============================================================================
class Game_Character
  alias __sc_follower__passable? passable? unless method_defined?(:__sc_follower__passable?)
  def passable?(x, y, d, strict = false)
    ret = __sc_follower__passable?(x, y, d, strict)
    # SC FIX (review H5): passable? is on the pathfinding hot path — every
    # event move attempt calls this. Bail BEFORE evaluating the deep
    # checks/each_follower iteration whenever possible.
    return ret unless ret
    return ret unless CompanionFollower::IMPASSABLE_FOLLOWER
    return ret if self == $game_player || self.is_a?(Game_FollowingPkmn)
    return ret unless CompanionFollower.active?
    new_x = x + (d == 6 ? 1 : d == 4 ? -1 : 0)
    new_y = y + (d == 2 ? 1 : d == 8 ? -1 : 0)
    $game_temp.followers.each_follower do |e, _|
      return false if e.at_coordinate?(new_x, new_y) && !e.through
    end
    return ret
  end
end

#===============================================================================
# Prevent follower removal when starting over
#===============================================================================
alias __sc_follower__pbStartOver pbStartOver unless defined?(__sc_follower__pbStartOver)
def pbStartOver
  $game_temp.starting_over = true if $game_temp
  __sc_follower__pbStartOver
  $game_temp.starting_over = false if $game_temp
end

#===============================================================================
# NamedEvent#trigger_2 — returns callback value instead of nil
#===============================================================================
class NamedEvent
  def trigger_2(*args)
    @callbacks.each_value { |callback|
      ret = callback.call(*args)
      return ret if !ret.nil?
    }
    return -1
  end
end

module EventHandlers
  def self.trigger_2(event, *args)
    return @@events[event]&.trigger_2(*args)
  end
end

#===============================================================================
# CompanionFollower — Main Module
# Provides ALL public API for the follower system.
#===============================================================================
module CompanionFollower
  @@can_refresh      = false
  @@hidden           = false
  @@last_refresh_frame = -999
  @@last_pokemon_signature = nil
  @@emote_request_serial = 0
  @@emote_request_key = nil
  @@emote_playing_until = 0.0
  @@reaction_route_locked = false

  #=============================================================================
  # State queries
  #=============================================================================

  # Is the follower currently visible and active?
  def self.active?
    return @@can_refresh && !@@hidden
  end

  # Has an event/script locked the follower off? (pbDisableFollower or
  # DISABLE_SWITCH). While locked, the follower never appears and the player
  # cannot bring it back with the toggle key or the Options entry.
  def self.script_disabled?
    return true if $PokemonGlobal&.follower_script_disabled
    sw = DISABLE_SWITCH
    return true if sw && $game_switches && $game_switches[sw]
    return false
  end

  # Is the follower temporarily hidden by HIDE_SWITCH?
  def self.switch_hidden?
    sw = HIDE_SWITCH
    return !!(sw && $game_switches && $game_switches[sw])
  end

  # May the follower appear at all right now?
  def self.allowed?
    return !script_disabled? && !switch_hidden?
  end

  # Play one of the configured SE names, ignoring nil/missing files.
  def self.play_se(name)
    return if nil_or_empty?(name)
    pbSEPlay(name) rescue nil
  end

  # Is the follower temporarily hidden (e.g. during map transfer)?
  def self.hidden?
    return @@hidden
  end

  # Basic sanity check — can we safely access follower data?
  def self.can_check?
    return false if !$game_temp || !$PokemonGlobal || !$player
    return false if !$game_temp.respond_to?(:followers) || !$game_temp.followers
    return false if !$PokemonGlobal.respond_to?(:followers) || !$PokemonGlobal.followers
    return false if !$player.respond_to?(:party) || !$player.party
    return true
  end

  #=============================================================================
  # Accessors — get follower event/data/pokemon
  #=============================================================================

  # Returns [event, follower_data] or nil
  def self.get
    return nil if !can_check?
    $game_temp.followers.each_follower do |event, follower|
      next if !follower.following_pkmn?
      return [event, follower]
    end
    return nil
  end

  # Returns the Game_FollowingPkmn event
  def self.get_event
    ret = self.get
    return ret.is_a?(Array) ? ret[0] : nil
  end

  # Returns the FollowerData
  def self.get_data
    ret = self.get
    return ret.is_a?(Array) ? ret[1] : nil
  end

  # Returns the Pokemon object of the current follower
  def self.get_pokemon
    return nil if !can_check?
    return $player.first_able_pokemon
  end

  # Everything that can change the visible follower graphic. Tracking this
  # lets us repair party/battle/PC changes even if the screen that changed the
  # party did not call one of our explicit refresh hooks.
  def self.pokemon_signature
    pkmn = get_pokemon
    return nil if !pkmn
    shiny = pkmn.shiny? rescue false
    super_variant = if pkmn.respond_to?(:superVariant) && pkmn.respond_to?(:superShiny?)
                      pkmn.superShiny? ? pkmn.superVariant : nil
                    end
    return [pkmn.personalID, pkmn.species, pkmn.form, pkmn.gender,
            shiny, super_variant, pkmn.shadow]
  end

  def self.sync_party_lead(anim = false)
    signature = pokemon_signature
    return false if signature == @@last_pokemon_signature
    refresh(anim, true)
    return true
  end

  #=============================================================================
  # Spawn / Remove
  #=============================================================================

  # Attach a map event as the Following Pokemon
  def self.start_following(event_id = nil, anim = true)
    return if !can_check?
    event = (event_id.nil? && pbMapInterpreter ? pbMapInterpreter.get_character(0) : $game_map.events[event_id])
    return false if !get_pokemon || event.nil?
    leader = $game_player
    # Move event next to player if not already adjacent
    if [[-1, 0], [1, 0], [0, 1], [0, -1]].none? { |o| event.x == (leader.x + o[0]) && event.y == (leader.y + o[1]) }
      behind_dir = 10 - leader.direction
      target = $map_factory.getFacingTile(behind_dir, leader)
      target = [leader.map.map_id, leader.x, leader.y] if !target
      event.moveto(target[1], target[2])
    end
    $game_temp.followers.remove_follower_by_name("FollowerPkmn")
    $game_temp.followers.remove_follower_by_name("FollowingPkmn") if self.get
    $game_temp.followers.add_follower(event, "FollowingPkmn", FOLLOWER_COMMON_EVENT)
    $PokemonGlobal.follower_toggled = true
    $game_temp.followers.each_follower do |evt, follower|
      if follower.following_pkmn?
        pbTurnTowardEvent(evt, leader)
        follower.direction = evt.direction
      end
      leader = evt
    end
    refresh(anim)
  end

  # Remove the Following Pokemon from the follower list
  def self.stop_following
    return if !can_check?
    $game_temp.followers.remove_follower_by_name("FollowerPkmn")
    $game_temp.followers.remove_follower_by_name("FollowingPkmn")
  end

  #=============================================================================
  # Toggle
  #=============================================================================

  def self.toggle(forced = nil, anim = nil)
    return if !can_check? || !get_pokemon
    # A script lock or DISABLE_SWITCH beats the player's toggle. Turning the
    # follower OFF is still allowed so the stored preference can be changed.
    return if script_disabled? && forced != false
    anim_1 = active?
    if !forced.nil?
      $PokemonGlobal.follower_toggled = !!forced
    else
      $PokemonGlobal.follower_toggled = !$PokemonGlobal.follower_toggled
    end
    anim_2 = active?
    anim = (anim_1 != anim_2) if anim.nil?
    play_se($PokemonGlobal.follower_toggled ? SE_TOGGLE_ON : SE_TOGGLE_OFF)
    refresh(anim)
    $game_temp.followers.move_followers
    $game_temp.followers.turn_followers
  end

  def self.toggle_off(anim = nil)
    toggle(false, anim)
  end

  def self.toggle_on(anim = nil)
    toggle(true, anim)
  end

  #=============================================================================
  # Party cycling — change which Pokemon walks behind you
  #=============================================================================

  # Rotate the party so the next (dir >= 0) or previous (dir < 0) ABLE Pokemon
  # becomes the lead — which is also the follower (HGSS-style: follower == lead).
  # Eggs and fainted Pokemon are skipped so they never become the lead/follower.
  def self.cycle_party(dir = 1)
    return if !can_check? || !$player
    party = $player.party
    return if party.length < 2
    # Need at least two able Pokemon, otherwise there's nothing to cycle to.
    return if party.count { |p| p&.able? } < 2
    party.length.times do
      if dir >= 0
        party.push(party.shift)
      else
        party.unshift(party.pop)
      end
      break if party[0]&.able?
    end
    play_se(SE_CYCLE_PARTY)
    @@last_pokemon_signature = nil
    refresh(true)
  end

  #=============================================================================
  # Refresh — update sprite and visibility
  #=============================================================================

  def self.refresh(anim = false, force = false)
    return if !can_check?
    current_frame = Graphics.frame_count
    if !force && !anim && (current_frame - @@last_refresh_frame) < 6
      return @@can_refresh
    end
    @@last_refresh_frame = current_frame
    first_pkmn = get_pokemon
    if !first_pkmn
      @@can_refresh = false
      @@last_pokemon_signature = nil
      event = get_event
      event.transparent = true if event
      return false
    end
    refresh_internal
    ret = active?
    event = get_event
    if anim && event
      emote(ret ? :COME_OUT : :COME_IN)
    end
    # Always set sprite — PE controls visibility via transparent flag
    change_sprite(first_pkmn)
    @@last_pokemon_signature = pokemon_signature
    # Force visibility when active — safety against timing/sync issues
    # where Game_FollowerFactory#update hasn't run yet after a rebuild
    if ret && event
      event.transparent = false
      event.opacity = 255 if event.opacity <= 0
    end
    if ALWAYS_ANIMATE && event
      event.instance_variable_set(:@step_anime, ret ? true : false)
    end
    event&.calculate_bush_depth
    $PokemonGlobal.time_taken = 0 if !ret
    return ret
  end

  # Internal: evaluate appearance rules
  def self.refresh_internal
    if !can_check? || !self.get || !$PokemonGlobal.follower_toggled || !allowed?
      @@can_refresh = false
      return
    end
    old_refresh = @@can_refresh
    refresh_val = false
    first_pkmn = get_pokemon
    if first_pkmn
      refresh_val = EventHandlers.trigger_2(:following_pkmn_appear, first_pkmn)
      refresh_val = true if refresh_val == -1
    end
    @@can_refresh = refresh_val
    if old_refresh != @@can_refresh && !$PokemonGlobal.call_refresh[1]
      $PokemonGlobal.call_refresh[1] = true
    end
  end

  #=============================================================================
  # Sprite management
  #=============================================================================

  def self.remove_sprite
    get_event&.character_name = ""
    get_data&.character_name  = ""
    get_event&.character_hue  = 0
    get_data&.character_hue   = 0
  end

  def self.change_sprite(pkmn)
    shiny = pkmn.shiny?
    shiny = pkmn.superVariant if pkmn.respond_to?(:superVariant) && !pkmn.superVariant.nil? && pkmn.superShiny?
    swimming = should_use_swimming_sprites?
    fname = GameData::Species.ow_sprite_filename(pkmn.species, pkmn.form,
              pkmn.gender, shiny, pkmn.shadow, swimming)
    fname = fname.gsub("Graphics/Characters/", "")
    get_event&.character_name = fname
    get_data&.character_name  = fname
    hue = (pkmn.respond_to?(:superHue) && pkmn.superShiny?) ? pkmn.superHue : 0
    get_event&.character_hue = hue
    get_data&.character_hue  = hue
  end

  #=============================================================================
  # Hide / Unhide (for map transfers)
  #=============================================================================

  def self.hide_follower
    @@hidden = true
    # PE handles transparency via visible? -> active? -> @@hidden
  end

  def self.unhide_follower(anim = true)
    # Essentials also sets FollowerData#invisible_after_transfer. Clearing only
    # @@hidden leaves a logically active follower transparent until another
    # player movement happens.
    data = get_data
    data.invisible_after_transfer = false if data
    was_hidden = hidden?
    @@hidden = false
    if (was_hidden || data) && $PokemonGlobal.follower_toggled
      refresh(anim, true)
    end
  end

  #=============================================================================
  # Animations & Move Routes
  #=============================================================================

  # Request a sheet-based emote. Sprite_Character consumes this serial once,
  # which also makes requests safe across map/spriteset recreation.
  def self.emote(key)
    key = key.to_s.upcase.to_sym rescue nil
    return false if !key || !EMOTE_SHEET_FRAMES[key]
    return false if !can_check? || !get_event
    @@emote_request_key = key
    @@emote_request_serial += 1
    data = EMOTE_SHEET_FRAMES[key]
    frame_count = (data[1].length * EMOTE_FRAME_DURATION) +
                  EMOTE_HOLD_DURATION + EMOTE_FADE_DURATION
    frame_rate = [Graphics.frame_rate.to_f, 1.0].max
    @@emote_playing_until = System.uptime + (frame_count / frame_rate)
    return true
  end

  def self.emote_request
    return [@@emote_request_serial, @@emote_request_key]
  end

  # Player movement stays locked only for the actual visual reaction. This
  # lets message input continue normally while preventing the follower from
  # being dragged/teleported midway through its jump or dance route.
  def self.reaction_locked?
    return false if !can_check?
    event = get_event
    route_active = false
    if @@reaction_route_locked && event
      route_active = event.move_route_forcing || event.moving? || event.jumping?
      @@reaction_route_locked = false if !route_active
    else
      @@reaction_route_locked = false if !event
    end
    emote_active = System.uptime < @@emote_playing_until
    return !!(route_active || emote_active)
  end

  def self.animation(id = nil)
    return if !can_check?
    event = get_event
    return if !event
    if id.nil?
      pbMapInterpreter&.follower_animation("FollowingPkmn")
      return
    end
    custom_key = {
      ANIMATION_EMOTE_HEART   => :HEART,
      ANIMATION_EMOTE_HAPPY   => :HAPPY,
      ANIMATION_EMOTE_MUSIC   => :MUSIC,
      ANIMATION_EMOTE_ELIPSES => :DOTS,
      ANIMATION_EMOTE_ANGRY   => :ANGRY,
      ANIMATION_EMOTE_POISON  => :POISON,
      ANIMATION_COME_OUT      => :COME_OUT,
      ANIMATION_COME_IN       => :COME_IN
    }[id]
    return emote(custom_key) if custom_key
    # Sprite_Character#update picks this up and auto-disposes any previous animation
    event.animation_id = id
  end

  def self.move_route(commands = nil, lock_player = false)
    if commands.nil?
      pbMapInterpreter&.follower_move_route("FollowingPkmn")
      return
    end
    return if !can_check?
    event = get_event
    pbMoveRoute(event, commands, false) if event
    @@reaction_route_locked = true if event && lock_player
  end

  #=============================================================================
  # Talk interaction
  #=============================================================================

  def self.talk
    echoln "[SC] CompanionFollower.talk called" if CompanionPokemon::DEBUG_MODE
    return false if !can_check?
    return false if !$game_temp || $game_temp.in_battle || $game_temp.in_menu
    event = get_event
    return false if !event
    # While control is swapped, the follower event shows the player's (human)
    # charset — it visually IS the trainer, not the Pokemon. Running the Pokemon
    # cry / emotes / "{name} does X" reaction here would play over the wrong
    # sprite. Just face the player; no Pokemon reaction while swapped.
    if respond_to?(:swapped?) && swapped?
      echoln "[SC] talk: swapped — suppressing Pokemon reaction" if CompanionPokemon::DEBUG_MODE
      pbTurnTowardEvent(event, $game_player)
      return true
    end
    # Safety: clear any stuck move routes on the follower before talking
    if event.move_route_forcing
      echoln "[SC] talk: clearing stuck move_route on follower" if CompanionPokemon::DEBUG_MODE
      event.instance_variable_set(:@move_route_forcing, false)
    end
    return false if $game_player.move_route_forcing
    first_pkmn = get_pokemon
    return false if !first_pkmn
    echoln "[SC] talk: interacting with #{first_pkmn.name}" if CompanionPokemon::DEBUG_MODE
    pbTurnTowardEvent(event, $game_player)
    first_pkmn.play_cry rescue nil
    if !airborne?
      move_route([PBMoveRoute::JUMP, 0, 0])
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 8])
    end
    random_val = rand(6)
    handled = false
    if $PokemonGlobal&.follower_hold_item
      ret = EventHandlers.trigger_2(:following_pkmn_item, first_pkmn, random_val)
      handled = (ret != -1 && !ret.nil?)
    end
    # Direct call to reaction engine — bypasses EventHandlers dispatch which
    # can silently fail if the handler wasn't registered during plugin load.
    if !handled && defined?(CompanionReactionEngine)
      echoln "[SC] talk: calling CompanionReactionEngine.on_talk directly" if CompanionPokemon::DEBUG_MODE
      handled = CompanionReactionEngine.on_talk(first_pkmn)
      echoln "[SC] talk: on_talk returned #{handled.inspect}" if CompanionPokemon::DEBUG_MODE
    end
    # Last resort fallback
    if !handled
      echoln "[SC] talk: using last-resort fallback message" if CompanionPokemon::DEBUG_MODE
      emote_id = CompanionPokemon::EMOTE_MAP[:HAPPY] rescue nil
      animation(emote_id) if emote_id
      pbMessage(_INTL("{1} looks at you.", first_pkmn.name))
    end
    pbTurnTowardEvent(event, $game_player)
    return true
  end

  def self.can_talk?
    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] can_talk? checks: can_check=#{can_check?} active=#{active?} " \
             "in_battle=#{$game_temp&.in_battle} in_menu=#{$game_temp&.in_menu} " \
             "event_forcing=#{get_event&.move_route_forcing} " \
             "player_forcing=#{$game_player&.move_route_forcing} " \
             "facing=#{facing_follower?} adjacent=#{adjacent_to_follower?}"
    end
    return false if !can_check?
    return false if !active?
    return false if !$game_temp || $game_temp.in_battle || $game_temp.in_menu
    # Don't block on stuck follower move routes — talk will clear them
    return false if $game_player.move_route_forcing
    return facing_follower?
  end

  # Check if the player is facing the follower event
  def self.facing_follower?
    event = get_event
    return false if !event
    facing = $map_factory.getFacingTile rescue nil
    return false if !facing
    return event.map.map_id == facing[0] && event.x == facing[1] && event.y == facing[2]
  end

  # Check if the follower is within 1 tile of the player (any cardinal direction)
  # Also allows overlap (same tile) which happens after map transfers
  def self.adjacent_to_follower?
    event = get_event
    return false if !event
    return false if event.map.map_id != $game_player.map.map_id
    dx = (event.x - $game_player.x).abs
    dy = (event.y - $game_player.y).abs
    return (dx + dy) <= 1
  end

  #=============================================================================
  # Face the player (used by reaction system)
  #=============================================================================

  def self.turn_to_player
    event = get_event
    pbTurnTowardEvent(event, $game_player) if event rescue nil
  end

  #=============================================================================
  # Status tone overlay
  # Implemented in 008_FollowerVisuals.rb via Sprite_Character#update —
  # uses proper RGB sprite tone with pulse animation, like Following Pokemon EX.
  #=============================================================================

  #=============================================================================
  # Airborne / Waterborne checks
  #=============================================================================

  def self.airborne?
    return false if !can_check?
    pkmn = get_pokemon
    return false if !pkmn
    return true if pkmn.hasType?(:FLYING)
    return true if pkmn.hasAbility?(:LEVITATE)
    return true if LEVITATING_FOLLOWERS.any? { |s|
      s == pkmn.species || s.to_s == "#{pkmn.species}_#{pkmn.form}"
    }
    return false
  end

  # Alias for compatibility
  def self.airborne_follower?; airborne?; end

  def self.has_swimming_sprite?
    return false if !can_check?
    pkmn = get_pokemon
    return false if !pkmn
    shiny = pkmn.shiny?
    shiny = pkmn.superVariant if pkmn.respond_to?(:superVariant) && !pkmn.superVariant.nil? && pkmn.superShiny?
    folder = shiny ? "Swimming Shiny" : "Swimming"
    ret = GameData::Species.check_graphic_file("Graphics/Characters/", pkmn.species, pkmn.form,
                                               pkmn.gender, shiny, pkmn.shadow, folder)
    return true if !nil_or_empty?(ret)
    folder = shiny ? "Levitates Shiny" : "Levitates"
    ret = GameData::Species.check_graphic_file("Graphics/Characters/", pkmn.species, pkmn.form,
                                               pkmn.gender, shiny, pkmn.shadow, folder)
    return !nil_or_empty?(ret)
  end

  def self.waterborne?
    return false if defined?(@@checking_waterborne) && @@checking_waterborne
    @@checking_waterborne = true
    begin
      return false if !can_check?
      pkmn = get_pokemon
      return false if !pkmn
      return true if pkmn.hasType?(:WATER)
      return true if has_swimming_sprite?
      return false if SURFING_EXCEPTIONS.any? { |s|
        s == pkmn.species || s.to_s == "#{pkmn.species}_#{pkmn.form}"
      }
      return true if airborne?
      return false
    ensure
      @@checking_waterborne = false
    end
  end

  # Alias for compatibility
  def self.waterborne_follower?; waterborne?; end

  def self.should_use_swimming_sprites?
    return false if !can_check? || !active?
    return false if !$PokemonGlobal.surfing || !waterborne?
    event = get_event
    return false if !event
    terrain_tag = $map_factory.getTerrainTag(event.map.map_id, event.x, event.y)
    return terrain_tag.can_surf
  end

  #=============================================================================
  # Timers — friendship gain and item hold
  #=============================================================================

  def self.increase_time
    return if !can_check?
    $PokemonGlobal.time_taken += 1
    friendship_time = FRIENDSHIP_TIME_TAKEN * Graphics.frame_rate
    item_time       = ITEM_TIME_TAKEN * Graphics.frame_rate
    get_pokemon&.changeHappiness("levelup") if ($PokemonGlobal.time_taken % friendship_time) == 0
    $PokemonGlobal.follower_hold_item = true if $PokemonGlobal.time_taken > item_time
  end

  #=============================================================================
  # Item find (for hold item interaction)
  #=============================================================================

  def self.item(item, quantity = 1, message = nil)
    return false if !can_check?
    return false if !$PokemonGlobal.follower_hold_item
    pokename = get_pokemon&.name
    message = _INTL("{1} seems to be holding something...") if nil_or_empty?(message)
    pbMessage(_INTL(message, pokename))
    item = GameData::Item.try_get(item)
    return false if !item || quantity < 1
    itemname = (quantity > 1) ? item.name_plural : item.name
    pocket = item.pocket
    move   = item.move
    if $bag.add(item, quantity)
      meName = item.is_key_item? ? "Key item get" : "Item get"
      if item == :LEFTOVERS
        pbMessage(_INTL("\\me[{1}]{3} found some \\c[1]{2}\\c[0]!\\wtnp[30]", meName, itemname, pokename))
      elsif item == :DNASPLICERS
        pbMessage(_INTL("\\me[{1}]{3} found \\c[1]{2}\\c[0]!\\wtnp[30]", meName, itemname, pokename))
      elsif item.is_machine?
        pbMessage(_INTL("\\me[{1}]{4} found \\c[1]{2} {3}\\c[0]!\\wtnp[30]", meName, itemname, (GameData::Move.try_get(move)&.name || "????"), pokename))
      elsif quantity > 1
        pbMessage(_INTL("\\me[{1}]{4} found {2} \\c[1]{3}\\c[0]!\\wtnp[30]", meName, quantity, itemname, pokename))
      elsif itemname.starts_with_vowel?
        pbMessage(_INTL("\\me[{1}]{3} found an \\c[1]{2}\\c[0]!\\wtnp[30]", meName, itemname, pokename))
      else
        pbMessage(_INTL("\\me[{1}]{3} found a \\c[1]{2}\\c[0]!\\wtnp[30]", meName, itemname, pokename))
      end
      pbMessage(_INTL("You put the {1} away\\nin the <icon=bagPocket{2}>\\c[1]{3} Pocket\\c[0].",
                       itemname, pocket, PokemonBag.pocket_names[pocket]))
      $PokemonGlobal.follower_hold_item = false
      $PokemonGlobal.time_taken = 0
      return true
    end
    # Bag full
    if item == :LEFTOVERS
      pbMessage(_INTL("{1} found some \\c[1]{2}\\c[0]!\\wtnp[30]", pokename, itemname))
    elsif item == :DNASPLICERS
      pbMessage(_INTL("{1} found \\c[1]{2}\\c[0]!\\wtnp[30]", pokename, itemname))
    elsif item.is_machine?
      pbMessage(_INTL("{1} found \\c[1]{2} {3}\\c[0]!\\wtnp[30]", pokename, itemname, (GameData::Move.try_get(move)&.name || "????")))
    elsif quantity > 1
      pbMessage(_INTL("{1} found {2} \\c[1]{3}\\c[0]!\\wtnp[30]", pokename, quantity, itemname))
    elsif itemname.starts_with_vowel?
      pbMessage(_INTL("{1} found an \\c[1]{2}\\c[0]!\\wtnp[30]", pokename, itemname))
    else
      pbMessage(_INTL("{1} found a \\c[1]{2}\\c[0]!\\wtnp[30]", pokename, itemname))
    end
    pbMessage(_INTL("But your Bag is full..."))
    return false
  end
end

#===============================================================================
# Appearance rules — when should the follower be visible?
#===============================================================================
EventHandlers.add(:following_pkmn_appear, :vehicles, proc { |_pkmn|
  next false if $PokemonGlobal.bicycle && CompanionFollower::HIDE_ON_BICYCLE
  next false if $PokemonGlobal.respond_to?(:mount) && $PokemonGlobal.mount
})

EventHandlers.add(:following_pkmn_appear, :map_flag_keep, proc { |_pkmn|
  metadata = $game_map.metadata
  next true if metadata && metadata.has_flag?("ShowFollowingPkmn")
})

$__sc_follower_height_cache = {}
EventHandlers.add(:following_pkmn_appear, :height, proc { |pkmn|
  metadata = $game_map.metadata
  if CompanionFollower::HIDE_LARGE_POKEMON_INDOORS &&
     metadata && metadata.outdoor_map != true && $PokemonEncounters
    cache_key = [$game_map.map_id, pkmn.species, pkmn.form]
    if $__sc_follower_height_cache[:key] == cache_key
      next false if $__sc_follower_height_cache[:result] == :hide
    else
      height = GameData::Species.get_species_form(pkmn.species, pkmn.form).height
      should_hide = (height / 10.0) > CompanionFollower::LARGE_POKEMON_HEIGHT &&
                    !$PokemonEncounters.encounter_possible_here?
      $__sc_follower_height_cache = { key: cache_key, result: should_hide ? :hide : :show }
      next false if should_hide
    end
  end
})

EventHandlers.add(:on_enter_map, :clear_sc_follower_height_cache, proc {
  old_map_id = $__sc_follower_height_cache.dig(:key, 0)
  if old_map_id && $map_factory
    connected = $map_factory.areConnected?(old_map_id, $game_map.map_id) rescue false
    $__sc_follower_height_cache = {} unless connected
  else
    $__sc_follower_height_cache = {}
  end
})

EventHandlers.add(:following_pkmn_appear, :map_flag_remove, proc { |_pkmn|
  metadata = $game_map.metadata
  next false if metadata && metadata.has_flag?("HideFollowingPkmn")
})

EventHandlers.add(:following_pkmn_appear, :surfing, proc { |pkmn|
  if ($PokemonGlobal.surfing && !$game_temp.ending_surf) ||
     (CompanionFollower.get_event&.terrain_tag&.can_surf && CompanionFollower.active?)
    if pkmn == $PokemonGlobal.current_surfing
      able_count = $player.able_pokemon_count
      next false if able_count > 1
      next true if able_count == 1
    end
    next true if CompanionFollower.waterborne?
    next false
  end
})

EventHandlers.add(:following_pkmn_appear, :diving, proc { |pkmn|
  if $PokemonGlobal.diving
    next false if pkmn == $PokemonGlobal.current_diving
    next true if pkmn.hasType?(:WATER)
    next false
  end
})
