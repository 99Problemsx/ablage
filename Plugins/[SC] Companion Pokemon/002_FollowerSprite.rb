#===============================================================================
# [SC] Companion Pokemon - Overworld Sprite Resolution
# Adds GameData::Species.ow_sprite_filename for resolving follower sprites
# from Graphics/Characters/Followers/ with shiny, form, gender, and swimming
# variant support.
#===============================================================================

module GameData
  class Species
    #---------------------------------------------------------------------------
    # Resolve the overworld sprite filename for a Pokemon species.
    # Checks Followers/, Followers Shiny/, Swimming/, Swimming Shiny/,
    # Levitates/, Levitates Shiny/ subfolders with full variant fallback.
    #---------------------------------------------------------------------------
    def self.ow_sprite_filename(species, form = 0, gender = 0, shiny = false, shadow = false, swimming = false)
      # Priority for swimming: Levitates > Swimming > Followers
      if swimming
        folder = shiny ? "Levitates Shiny" : "Levitates"
        ret = self.check_graphic_file("Graphics/Characters/", species, form,
                                      gender, shiny, shadow, folder)
        return ret if !nil_or_empty?(ret)

        folder = shiny ? "Swimming Shiny" : "Swimming"
        ret = self.check_graphic_file("Graphics/Characters/", species, form,
                                      gender, shiny, shadow, folder)
        return ret if !nil_or_empty?(ret)
      end
      # Default to Followers subfolder
      ret = self.check_graphic_file("Graphics/Characters/", species, form,
                                    gender, shiny, shadow, "Followers")
      ret = "Graphics/Characters/Followers/" if nil_or_empty?(ret)
      return ret
    end
  end
end

#===============================================================================
# FollowerData extension — mark Pokemon follower entries
#===============================================================================
class FollowerData
  def following_pkmn?
    return @event_name == "FollowingPkmn"
  end

  # PE sets event.transparent = !follower.visible? every frame.
  # Tie visibility to CompanionFollower.active? so PE handles show/hide.
  alias __sc_follower__visible? visible? unless method_defined?(:__sc_follower__visible?)
  def visible?
    if following_pkmn?
      # Rock Climb EX: keep the follower hidden while the player scales a rock
      # face — it can't mirror the vertical "through" climb cleanly.
      return false if $PokemonGlobal.respond_to?(:rockclimbing) && $PokemonGlobal.rockclimbing
      return CompanionFollower.active?
    end
    return __sc_follower__visible?
  end

  # Override interact to call CompanionFollower.talk when it's the follower
  alias __sc_follower__interact interact unless method_defined?(:__sc_follower__interact)
  def interact(event)
    if following_pkmn?
      return if !CompanionFollower.active?
      echoln "[SC] FollowerData#interact: calling CompanionFollower.talk" if CompanionPokemon::DEBUG_MODE
      CompanionFollower.talk
      return
    end
    __sc_follower__interact(event)
  end
end

#===============================================================================
# Game_FollowingPkmn — Pokemon-specific follower event
# Extends Game_Follower with terrain-aware movement, sprite awareness,
# and water/airborne handling.
#===============================================================================
class Game_FollowingPkmn < Game_Follower
  def initialize(*args)
    super(*args)
    @step_anime = true if CompanionFollower::ALWAYS_ANIMATE
    @last_leader_x = nil
    @last_leader_y = nil
  end

  #-----------------------------------------------------------------------------
  # Constant walk animation speed regardless of move speed
  #-----------------------------------------------------------------------------
  def update_pattern
    return if @lock_pattern
    if @moved_last_frame && !@moved_this_frame && !@step_anime
      @pattern = @original_pattern
      @anime_count = 0
      return
    end
    if !@moved_last_frame && @moved_this_frame && !@step_anime
      @pattern = (@pattern + 1) % 4 if @walk_anime
      @anime_count = 0
      return
    end
    pattern_time = pattern_update_speed / 4
    return if @anime_count < pattern_time
    @pattern = (@pattern + 1) % 4
    @anime_count -= pattern_time
  end

  #-----------------------------------------------------------------------------
  # Don't turn off walk animation when ice sliding if airborne
  #-----------------------------------------------------------------------------
  alias __sc_follower__walk_anime walk_anime= unless method_defined?(:__sc_follower__walk_anime)
  def walk_anime=(value)
    return if $PokemonGlobal.ice_sliding && CompanionFollower.airborne?
    # Keep walk + stop animation on when ALWAYS_ANIMATE is enabled
    if CompanionFollower::ALWAYS_ANIMATE
      __sc_follower__walk_anime(true)
      @step_anime = true
      return
    end
    __sc_follower__walk_anime(value)
  end

  alias __sc_follower__straighten straighten unless method_defined?(:__sc_follower__straighten)
  def straighten
    return if $PokemonGlobal.ice_sliding && CompanionFollower.airborne?
    # Preserve stop animation when ALWAYS_ANIMATE is enabled
    __sc_follower__straighten
    @step_anime = true if CompanionFollower::ALWAYS_ANIMATE
  end

  #-----------------------------------------------------------------------------
  # Dust animation only when grounded
  #-----------------------------------------------------------------------------
  def show_dust_animation
    return unless CompanionFollower.active? && !CompanionFollower.airborne?
    spriteset = $scene.spriteset(map_id) rescue nil
    spriteset&.addUserAnimation(CompanionFollower::DUST_ANIMATION_ID, self.x, self.y, true, 1)
  end

  def update_move
    was_jumping = jumping?
    super
    show_dust_animation if was_jumping && !jumping?
  end

  #-----------------------------------------------------------------------------
  # Water-aware passability — followers can traverse water if waterborne
  #-----------------------------------------------------------------------------
  def location_passable?(x, y, direction)
    this_map = self.map
    return false if !this_map || !this_map.valid?(x, y)
    return true if @through
    passed_tile_checks = false
    bit = (1 << ((direction / 2) - 1)) & 0x0f
    this_map.events.each_value do |event|
      next if event.tile_id < 0 || event.through || !event.at_coordinate?(x, y)
      tile_data = GameData::TerrainTag.try_get(this_map.terrain_tags[event.tile_id])
      next if tile_data.ignore_passability
      next if tile_data.bridge && $PokemonGlobal.bridge == 0
      return false if tile_data.ledge
      return true if tile_data.can_surf && CompanionFollower.waterborne?
      passage = this_map.passages[event.tile_id] || 0
      return false if passage & bit != 0
      passed_tile_checks = true if (tile_data.bridge && $PokemonGlobal.bridge > 0) ||
                                   (this_map.priorities[event.tile_id] || -1) == 0
      break if passed_tile_checks
    end
    if !passed_tile_checks
      [2, 1, 0].each do |i|
        tile_id = this_map.data[x, y, i] || 0
        next if tile_id == 0
        tile_data = GameData::TerrainTag.try_get(this_map.terrain_tags[tile_id])
        next if tile_data.ignore_passability
        next if tile_data.bridge && $PokemonGlobal.bridge == 0
        return false if tile_data.ledge
        return true if tile_data.can_surf && CompanionFollower.waterborne?
        passage = this_map.passages[tile_id] || 0
        return false if passage & bit != 0
        break if tile_data.bridge && $PokemonGlobal.bridge > 0
        break if (this_map.priorities[tile_id] || -1) == 0
      end
    end
    this_map.events.values.each do |event|
      next if !event.at_coordinate?(x, y)
      return false if !event.through && event.character_name != ""
    end
    return true
  end

  #-----------------------------------------------------------------------------
  # Facing behavior
  #-----------------------------------------------------------------------------
  def turn_towards_leader(leader)
    return if CompanionFollower.active? && !CompanionFollower::ALWAYS_FACE_PLAYER
    pbTurnTowardEvent(self, leader)
  end

  # Optional-plugin state checks (guarded so they're no-ops when the plugin
  # isn't installed — keeps this order-independent, no cross-plugin aliasing).
  # Rock Climb EX adds $PokemonGlobal.rockclimbing; Spin Tiles adds .spinning.
  def sc_rockclimbing?
    return $PokemonGlobal.respond_to?(:rockclimbing) && $PokemonGlobal.rockclimbing
  end

  def sc_spinning?
    return $PokemonGlobal.respond_to?(:spinning) && $PokemonGlobal.spinning
  end

  #-----------------------------------------------------------------------------
  # Smart follow logic — find best position behind leader
  #-----------------------------------------------------------------------------
  def follow_leader(leader, instant = false, leaderIsTrueLeader = true)
    return if @move_route_forcing
    # Rock Climb EX: while scaling a rock face, stay parked on the player
    # (hidden via visible?); the update override forces the position.
    return if sc_rockclimbing?
    # During ice sliding / Spin Tiles, positioning is handled by the update
    # override (follower trails the player tile-by-tile).
    if $PokemonGlobal.ice_sliding || sc_spinning?
      @last_leader_x = leader.x
      @last_leader_y = leader.y
      return
    end
    # During waterfall traversal, positioning is handled by the update override
    if $PokemonGlobal.descending_waterfall || $PokemonGlobal.ascending_waterfall
      @last_leader_x = leader.x
      @last_leader_y = leader.y
      return
    end
    # Keep follower frozen while player transitions between ice patches
    if @ice_prev_tile
      leader_tag = $game_player.pbTerrainTag rescue nil
      if leader_tag&.ice
        @last_leader_x = leader.x
        @last_leader_y = leader.y
        return
      end
      @ice_prev_tile = nil
      @ice_last_leader = nil
    end
    # Reset waterfall tracking when waterfall ends
    if @wf_prev_tile
      leader_tag = $game_player.pbTerrainTag rescue nil
      if leader_tag&.waterfall || leader_tag&.waterfall_crest
        @last_leader_x = leader.x
        @last_leader_y = leader.y
        return
      end
      @wf_prev_tile = nil
      @wf_last_leader = nil
    end
    return if (jumping? || moving?) && !instant &&
              leader.x == @last_leader_x && leader.y == @last_leader_y
    end_movement

    old_terrain = $map_factory.getTerrainTag(self.map.map_id, self.x, self.y) rescue nil

    if @last_leader_x.nil? || @last_leader_y.nil? || leader.x != @last_leader_x || leader.y != @last_leader_y
      @last_leader_x = leader.x
      @last_leader_y = leader.y

      maps_connected = $map_factory.areConnected?(leader.map.map_id, self.map.map_id)
      target = nil

      if maps_connected
        bg_dir = 10 - leader.direction
        dirs = case leader.direction
               when 2 then [8, 4, 6]
               when 4 then [6, 2, 8]
               when 6 then [4, 2, 8]
               when 8 then [2, 4, 6]
               else [bg_dir]
               end

        dirs.each do |dir|
          t = $map_factory.getFacingTile(dir, leader)
          next if !t
          map = $map_factory.getMap(t[0])
          next if !map || !map.valid?(t[1], t[2])
          # Block only on real character-graphic events — exactly like the
          # player does. Graphic-less, "through" and tile-graphic events
          # (bridges, mats, decorative "above" overlays) are walked over
          # rather than treated as solid obstacles.
          blocked = false
          map.events.each_value do |e|
            next if e == self || e == leader
            next if e.through || e.character_name == ""
            next unless e.at_coordinate?(t[1], t[2])
            blocked = true
            break
          end
          next if blocked
          # Validate with the follower's OWN passability so it can step onto
          # bridges (pbBridgeOn) and other special tiles wherever the player
          # can. location_passable? is bridge/water/ledge-aware but only knows
          # self.map, so fall back to Game_Map#passable? for the rare cross-map
          # candidate at a map seam.
          ok = if t[0] == self.map.map_id
                 location_passable?(t[1], t[2], 0)
               else
                 map.passable?(t[1], t[2], 0, self)
               end
          # A ledge tile isn't stand-able, but it must still be selectable so
          # the ledge redirect below can make the follower hop across the ledge
          # like the player does. (location_passable? rejects ledges outright.)
          if !ok && ($map_factory.getTerrainTag(t[0], t[1], t[2]).ledge rescue false)
            ok = true
          end
          if ok
            target = t
            break
          end
        end

        if target && $map_factory.getTerrainTag(target[0], target[1], target[2]).ledge
          target = $map_factory.getFacingTileFromPos(target[0], target[1], target[2], bg_dir)
        end
        target = [leader.map.map_id, leader.x, leader.y] if !target

        # Sideways-stair support is provided by Boon's "Terrain Tag Side
        # Stairs" plugin, which overrides Game_Follower#move_fancy /
        # fancy_moveto / move_through to walk followers diagonally up and down
        # :StairLeft / :StairRight tiles (with the pseudo-depth offset_y). Our
        # fancy_moveto chains into that via super and our move_through handles
        # the diagonal step codes, so we must NOT pre-shift the target here —
        # doing so double-adjusts and makes the follower glitch on stairs.
      else
        target = [leader.map.map_id, leader.x, leader.y]
      end

      # Handle cross-map movement
      if self.map.map_id != target[0]
        vector = $map_factory.getRelativePos(target[0], 0, 0, self.map.map_id, @x, @y)
        @map = $map_factory.getMap(target[0])
        @x = vector[0]
        @y = vector[1]
        @real_x = @x * Game_Map::REAL_RES_X
        @real_y = @y * Game_Map::REAL_RES_Y
      end

      if instant || !maps_connected
        moveto(target[1], target[2])
      else
        fancy_moveto(target[1], target[2], leader)
      end

      calculate_bush_depth

      # Refresh sprite on water/land transition
      new_terrain = $map_factory.getTerrainTag(self.map.map_id, self.x, self.y) rescue nil
      if old_terrain && new_terrain && (old_terrain.can_surf != new_terrain.can_surf)
        pkmn = CompanionFollower.get_pokemon
        CompanionFollower.change_sprite(pkmn) if pkmn
      end
    end
  end

  def moveto(x, y)
    super(x, y)
    # Reset cached leader position so follow_leader re-evaluates after map transfer
    @last_leader_x = nil
    @last_leader_y = nil
    calculate_bush_depth
  end

  def fancy_moveto(new_x, new_y, leader)
    super(new_x, new_y, leader)
    calculate_bush_depth
  end

  def move_through(direction)
    old_through = @through
    @through = true
    case direction
    when 1 then move_lower_left
    when 2 then move_down
    when 3 then move_lower_right
    when 4 then move_left
    when 6 then move_right
    when 7 then move_upper_left
    when 8 then move_up
    when 9 then move_upper_right
    end
    @through = old_through
    @step_anime = true
  end

  def screen_z(height = 0)
    ret = super
    return ret + 1
  end

  #-----------------------------------------------------------------------------
  # Forced movement: follower trails the player by 1 tile, pixel-locked.
  # Handles ice sliding, ascending/descending waterfalls.
  #-----------------------------------------------------------------------------
  alias __sc_ice__update update unless method_defined?(:__sc_ice__update)
  def update
    __sc_ice__update
    leader = $game_player
    return if @move_route_forcing
    #---------------------------------------------------------------------------
    # Rock Climb EX — park the (hidden) follower on the player during a climb so
    # it reappears correctly placed afterwards instead of teleporting up from
    # the foot of the rock face.
    #---------------------------------------------------------------------------
    if sc_rockclimbing?
      _apply_forced_position([leader.x, leader.y], leader)
      return
    end
    #---------------------------------------------------------------------------
    # Ice sliding / Spin Tiles (rotating tiles) — trail the player tile-by-tile
    #---------------------------------------------------------------------------
    if $PokemonGlobal&.ice_sliding || sc_spinning?
      if !@ice_prev_tile
        behind_x = leader.x
        behind_y = leader.y
        case leader.direction
        when 2 then behind_y -= 1
        when 4 then behind_x += 1
        when 6 then behind_x -= 1
        when 8 then behind_y += 1
        end
        @ice_prev_tile = [behind_x, behind_y]
        @ice_last_leader = [leader.x, leader.y]
        @direction = leader.direction
        echoln "[SC] ICE-INIT: follower(#{behind_x},#{behind_y}) leader(#{leader.x},#{leader.y}) dir=#{leader.direction}" if CompanionPokemon::DEBUG_MODE
      end
      cur_leader = [leader.x, leader.y]
      if cur_leader != @ice_last_leader
        old_prev = @ice_prev_tile.dup
        @ice_prev_tile = @ice_last_leader.dup
        @ice_last_leader = cur_leader.dup
        echoln "[SC] ICE-STEP: leader moved to (#{leader.x},#{leader.y}) dir=#{leader.direction} " \
               "follower target: (#{old_prev[0]},#{old_prev[1]}) -> (#{@ice_prev_tile[0]},#{@ice_prev_tile[1]})" if CompanionPokemon::DEBUG_MODE
      end
      _apply_forced_position(@ice_prev_tile, leader)
      return
    end
    #---------------------------------------------------------------------------
    # Waterfall (ascending / descending)
    #---------------------------------------------------------------------------
    if $PokemonGlobal&.descending_waterfall || $PokemonGlobal&.ascending_waterfall
      if !@wf_prev_tile
        behind_x = leader.x
        behind_y = leader.y
        # Ascending = dir 8 (up), behind = below; Descending = dir 2 (down), behind = above
        if $PokemonGlobal.ascending_waterfall
          behind_y += 1
        else
          behind_y -= 1
        end
        @wf_prev_tile = [behind_x, behind_y]
        @wf_last_leader = [leader.x, leader.y]
        @direction = leader.direction
      end
      cur_leader = [leader.x, leader.y]
      if cur_leader != @wf_last_leader
        @wf_prev_tile = @wf_last_leader.dup
        @wf_last_leader = cur_leader.dup
      end
      _apply_forced_position(@wf_prev_tile, leader)
      return
    end
  end

  # Shared helper: lock follower tile+pixel position relative to leader
  def _apply_forced_position(target_tile, leader)
    @x = target_tile[0]
    @y = target_tile[1]
    tile_dx = target_tile[0] - leader.x
    tile_dy = target_tile[1] - leader.y
    @real_x = leader.real_x + tile_dx * Game_Map::REAL_RES_X
    @real_y = leader.real_y + tile_dy * Game_Map::REAL_RES_Y
    if tile_dx < 0
      @direction = 6
    elsif tile_dx > 0
      @direction = 4
    elsif tile_dy < 0
      @direction = 2
    elsif tile_dy > 0
      @direction = 8
    else
      @direction = leader.direction
    end
    @move_timer = nil if @move_timer
    @jump_timer = nil if @jump_timer
  end
end

#===============================================================================
# Sync follower move speed with player
#===============================================================================
class Game_FollowerFactory
  alias __sc_follower__update update unless method_defined?(:__sc_follower__update)
  def update(*args)
    __sc_follower__update(*args)
    followers = $PokemonGlobal.followers
    return if followers.length == 0
    leader = $game_player
    followers.each_with_index do |follower, i|
      event = @events[i]
      next if !event
      event.move_speed = leader.move_speed if follower.following_pkmn?
      leader = event
    end
  end
end

#===============================================================================
# Ensure bush depth is recalculated on follower creation
#===============================================================================
class Game_Follower
  alias __sc_follower__initialize initialize unless method_defined?(:__sc_follower__initialize)
  def initialize(*args)
    __sc_follower__initialize(*args)
    calculate_bush_depth
  end
end

#===============================================================================
# Rebuild the on-screen follower sprites when the follower factory is replaced
# mid-map.
#
# When a Pokemon is received and $game_temp.followers is reset (factory
# rebuild) without a full map reload, the new factory's last_update counter
# restarts at -1, which can match the value FollowerSprites already stored — so
# the base refresh check is skipped and the follower stays sprite-less ("X
# appeared!" fires but nothing is drawn) until some later event happens to bump
# the counter. Detect a new factory instance and force the refresh so the
# sprite shows up immediately instead of after the next map change or battle.
#===============================================================================
class FollowerSprites
  alias __sc_follower__update update unless method_defined?(:__sc_follower__update)
  def update
    if $game_temp && !$game_temp.followers.equal?(@sc_last_factory)
      @sc_last_factory = $game_temp.followers
      @last_update = nil   # force the base refresh path
    end
    __sc_follower__update
  end
end
