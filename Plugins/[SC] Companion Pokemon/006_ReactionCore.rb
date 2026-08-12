#===============================================================================
# [SC] Companion Pokemon - Reaction Core Logic
# Ambient reactions for the follower Pokemon based on context and affection.
# Requires: [SC] Pokemon Affection
#===============================================================================

#===============================================================================
# Companion Reaction Engine
#===============================================================================

module CompanionReactionEngine
  @step_counter    = 0
  @cooldown_counter = 0
  @affection_steps = 0
  @item_find_steps = 0
  @last_milestones = {}  # { pokemon_personalID => last_level_notified }
  @last_weather     = nil
  @pending_battle_result = nil

  #=============================================================================
  # Called every step
  #=============================================================================

  def self.on_step
    return unless CompanionPokemon::ENABLED

    pkmn = CompanionFollower.get_pokemon
    return unless pkmn && !pkmn.egg? && pkmn.respond_to?(:affection_level)

    # Affection gain from following — always active, even if follower hidden
    track_follow_affection(pkmn)

    # Everything below requires follower to be visible
    return unless CompanionFollower.active?

    # No ambient reactions during ice sliding (follower is frozen in place)
    return if $PokemonGlobal.ice_sliding

    # Track cooldown
    @cooldown_counter -= 1 if @cooldown_counter > 0

    # Milestone check
    check_milestone(pkmn)

    # Item find check
    check_item_find(pkmn)

    # Low HP check (overrides everything except status)
    if @step_counter >= CompanionPokemon::REACTION_STEP_INTERVAL && @cooldown_counter <= 0
      if check_low_hp(pkmn)
        @step_counter = 0
        return
      end
    end

    # Status reaction check (overrides environment reactions)
    if @step_counter >= CompanionPokemon::REACTION_STEP_INTERVAL && @cooldown_counter <= 0
      if try_status_reaction(pkmn)
        @step_counter = 0
        return
      end
    end

    # Reaction check
    @step_counter += 1
    if @step_counter >= CompanionPokemon::REACTION_STEP_INTERVAL
      @step_counter = 0
      try_reaction(pkmn) if @cooldown_counter <= 0
    end
  end

  #=============================================================================
  # Grant affection for walking with follower
  #=============================================================================

  def self.track_follow_affection(pkmn)
    return unless pkmn.respond_to?(:add_affection)
    @affection_steps = (@affection_steps || 0) + 1
    if @affection_steps >= CompanionPokemon::FOLLOW_AFFECTION_STEPS
      @affection_steps = 0
      pkmn.add_affection(1)
    end
  end

  #=============================================================================
  # One-time milestone dialogue when affection reaches a new tier
  #=============================================================================

  def self.check_milestone(pkmn)
    level = pkmn.affection_level
    return if level == :NONE

    pid = pkmn.personalID
    @last_milestones[pid] ||= :NONE

    # Level ordering for comparison
    order = [:NONE, :LOW, :MEDIUM, :HIGH, :MAX]
    current_idx  = order.index(level) || 0
    last_idx     = order.index(@last_milestones[pid]) || 0

    if current_idx > last_idx
      @last_milestones[pid] = level
      msg = CompanionPokemon::MILESTONE_MESSAGES[level]
      if msg
        # Play heart emote on milestone (non-blocking, no text during walking)
        play_emote(:HEART)
      end
    end
  end

  #=============================================================================
  # Attempt to show a contextual reaction
  #=============================================================================

  def self.try_reaction(pkmn)
    level = pkmn.affection_level
    return if level == :NONE  # No reactions at zero affection

    # Try type-specific reactions first (higher priority, rarer)
    if rand(100) < 30  # 30% chance to try type-specific
      result = type_specific_reaction(pkmn)
      if result
        msg, context_key = result
        context = CompanionPokemon::REACTIONS[context_key]
        show_reaction(pkmn, msg, context, level)
        return
      end
    end

    # Shiny reactions — special sparkle reactions for shiny Pokemon
    if CompanionPokemon::SHINY_REACTIONS_ENABLED && pkmn.shiny?
      if rand(100) < CompanionPokemon::SHINY_REACTION_CHANCE
        data = CompanionPokemon::SHINY_REACTIONS
        msg = pick_message_for_level(data[:messages], level)
        if msg
          show_reaction(pkmn, msg, data, level)
          return
        end
      end
    end

    # Friendship reactions — based on base happiness, not affection
    if CompanionPokemon::FRIENDSHIP_REACTIONS_ENABLED
      if rand(100) < CompanionPokemon::FRIENDSHIP_REACTION_CHANCE
        if pkmn.happiness >= CompanionPokemon::FRIENDSHIP_HIGH_THRESHOLD
          data = CompanionPokemon::FRIENDSHIP_HIGH_REACTIONS
          msg = data[:messages].sample
          if msg
            show_reaction(pkmn, msg, data, level)
            return
          end
        elsif pkmn.happiness <= CompanionPokemon::FRIENDSHIP_LOW_THRESHOLD
          data = CompanionPokemon::FRIENDSHIP_LOW_REACTIONS
          msg = data[:messages].sample
          if msg
            show_reaction(pkmn, msg, data, level)
            return
          end
        end
      end
    end

    # Try environment reactions (in priority order, first match wins)
    priority_order = [:TRAINER_NEARBY, :GYM, :LAB, :POKECENTER, :HOME,
                      :ICE_SLIDING, :BRIDGE, :SURFING, :DIVING, :BICYCLE,
                      :STORM, :SANDSTORM, :FOG, :CAVE, :SNOW, :RAIN,
                      :SUNNY, :MOUNTAIN, :LAKE, :FOREST, :BEACH, :WATER,
                      :MORNING, :NIGHT, :INDOORS, :OUTDOOR]

    priority_order.each do |context_key|
      context = CompanionPokemon::REACTIONS[context_key]
      next unless context

      # Evaluate condition
      triggered = false
      begin
        triggered = context[:condition].call(pkmn)
      rescue StandardError
        triggered = false
      end
      next unless triggered

      # Get messages for this affection level (or lower)
      msg = pick_message_for_level(context[:messages], level)
      if msg
        show_reaction(pkmn, msg, context, level)
        return
      end
    end
  end

  #=============================================================================
  # Pick a type-specific reaction
  #=============================================================================

  def self.type_specific_reaction(pkmn)
    CompanionPokemon::TYPE_REACTIONS.each do |type, contexts|
      next unless pkmn.hasType?(type)
      contexts.each do |context_key, messages|
        # Check if that environment context is active
        env_context = CompanionPokemon::REACTIONS[context_key]
        next unless env_context
        triggered = false
        begin
          triggered = env_context[:condition].call(pkmn)
        rescue StandardError
          triggered = false
        end
        next unless triggered
        return [messages.sample, context_key]
      end
    end
    nil
  end

  #=============================================================================
  # Pick a message from the highest applicable affection tier
  #=============================================================================

  def self.pick_message_for_level(messages, level)
    order = [:MAX, :HIGH, :MEDIUM, :LOW, :NONE]
    reached = false
    order.each do |lvl|
      reached = true if lvl == level
      next unless reached
      if messages[lvl] && !messages[lvl].empty?
        return messages[lvl].sample
      end
    end
    nil
  end

  # Returns the full message array for the highest applicable tier
  def self.pick_message_list_for_level(messages, level)
    return nil unless messages
    order = [:MAX, :HIGH, :MEDIUM, :LOW, :NONE]
    # Try current level and below first
    reached = false
    order.each do |lvl|
      reached = true if lvl == level
      next unless reached
      return messages[lvl] if messages[lvl] && !messages[lvl].empty?
    end
    # Fallback: check levels above (closest first)
    idx = order.index(level) || order.length
    (idx - 1).downto(0) do |i|
      return messages[order[i]] if messages[order[i]] && !messages[order[i]].empty?
    end
    nil
  end

  #=============================================================================
  # Show reaction: emote animation + move route + message
  #=============================================================================

  def self.show_reaction(pkmn, message, context = nil, level = nil)
    @cooldown_counter = CompanionPokemon::REACTION_COOLDOWN

    # Determine emote animation from context
    emote_key = nil
    if context && context[:emote] && level
      emote_key = pick_for_level(context[:emote], level)
    end
    emote_key ||= :HAPPY  # Default fallback

    # Play emote bubble on the follower sprite (non-blocking)
    play_emote(emote_key)

    # The reaction config has always defined context-sensitive movement, but
    # the old implementation never executed it. The route itself remains
    # asynchronous; Game_Player only ignores walking input until it finishes.
    if context && context[:move] && level
      move_key = pick_for_level(context[:move], level)
      route = CompanionPokemon::MOVE_ROUTES[move_key] if move_key
      CompanionFollower.move_route(route.dup, true) if route
    end

    if context && context[:cry] && [:HIGH, :MAX].include?(level)
      pkmn.play_cry rescue nil
    end

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion reaction (#{emote_key}): #{_INTL(message, pkmn.name)}"
    end
  end

  # React once when overworld weather actually changes instead of waiting up
  # to REACTION_STEP_INTERVAL walked tiles. The same configured type/emote/move
  # data is used, so Fire Pokemon dislike rain while Water Pokemon can enjoy it.
  def self.check_weather_change
    return unless CompanionPokemon::ENABLED
    return unless $game_screen
    weather = $game_screen.weather_type
    if @last_weather.nil?
      @last_weather = weather
      return
    end
    return if weather == @last_weather
    @last_weather = weather
    return unless CompanionFollower.active?
    return if $game_temp.in_battle || $game_temp.in_menu
    pkmn = CompanionFollower.get_pokemon
    return unless pkmn && !pkmn.egg?
    level = pkmn.affection_level
    level = :LOW if level == :NONE
    keys = case weather
           when :Rain, :HeavyRain then [:STORM, :RAIN]
           when :Storm           then [:STORM]
           when :Snow, :Blizzard, :Hail then [:SNOW]
           when :Sandstorm       then [:SANDSTORM]
           when :Sun             then [:SUNNY]
           when :Fog             then [:FOG]
           else []
           end
    keys.each do |key|
      context = CompanionPokemon::REACTIONS[key]
      next if !context
      next if !(context[:condition].call(pkmn) rescue false)
      msg = pick_message_for_level(context[:messages], level)
      next if !msg
      show_reaction(pkmn, msg, context, level)
      break
    end
  end

  #=============================================================================
  # Status reaction — fires if the follower has a status condition.
  # Has highest priority, overrides environment reactions.
  #=============================================================================

  def self.try_status_reaction(pkmn)
    status = pkmn.status
    return false if status == :NONE || status.nil?

    status_data = CompanionPokemon::STATUS_REACTIONS[status]
    return false unless status_data

    msg = status_data[:messages].sample
    return false unless msg

    @cooldown_counter = CompanionPokemon::REACTION_COOLDOWN

    # Emote (non-blocking)
    play_emote(status_data[:emote]) if status_data[:emote]

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion status reaction (#{status}): #{_INTL(msg, pkmn.name)}"
    end
    true
  end

  #=============================================================================
  # Item find system — high-affection Pokemon may find items while walking
  #=============================================================================

  def self.check_item_find(pkmn)
    return unless CompanionPokemon::ITEM_FIND_ENABLED
    @item_find_steps += 1
    return if @item_find_steps < CompanionPokemon::ITEM_FIND_STEPS
    @item_find_steps = 0

    level = pkmn.affection_level
    chance = CompanionPokemon::ITEM_FIND_CHANCE[level]
    return unless chance && rand(100) < chance

    # Determine context for item table
    table_key = :DEFAULT
    CompanionPokemon::ITEM_FIND_TABLE.each_key do |key|
      next if key == :DEFAULT
      env_context = CompanionPokemon::REACTIONS[key]
      next unless env_context
      begin
        if env_context[:condition].call(pkmn)
          table_key = key
          break
        end
      rescue StandardError
        next
      end
    end

    items = CompanionPokemon::ITEM_FIND_TABLE[table_key] || CompanionPokemon::ITEM_FIND_TABLE[:DEFAULT]
    return unless items && !items.empty?

    item = items.sample
    return unless GameData::Item.exists?(item)

    # Approach with emote and jump animation
    approach_msg = CompanionPokemon::ITEM_FIND_MESSAGE_APPROACH.sample
    play_emote(:HAPPY)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil
    CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[:JUMP], true)
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil

    pbMessage(_INTL(approach_msg, pkmn.name))
    if $bag.can_add?(item)
      $bag.add(item)
      item_name = GameData::Item.get(item).name
      pbMessage(_INTL("\\me[Item get]You received a {1}!", item_name))
      play_emote(:HEART)
    else
      pbMessage(_INTL("But your bag is full..."))
    end

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion item find: #{pkmn.name} found #{item} (context: #{table_key})"
    end
  end

  #=============================================================================
  # Talk hook — affection-aware dialogue when interacting with follower
  #=============================================================================

  def self.on_talk(pkmn)
    return false unless CompanionPokemon::ENABLED
    return false unless pkmn

    level = pkmn.affection_level

    # Gather messages — base (affection) pool and context pool with emotes
    base_msgs = (CompanionPokemon::TALK_REACTIONS[level] || []).dup
    ctx_entries = []   # [{msg: String, emote: Symbol, move: Symbol}]
    CompanionPokemon::REACTIONS.each_value do |data|
      triggered = false
      begin
        triggered = data[:condition]&.call(pkmn)
      rescue StandardError
        triggered = false
      end
      next unless triggered
      found = pick_message_list_for_level(data[:messages], level)
      next if !found || found.empty?
      ctx_emote = pick_for_level(data[:emote], level) if data[:emote]
      ctx_move  = pick_for_level(data[:move], level) if data[:move]
      found.each { |m| ctx_entries << { msg: m, emote: ctx_emote, move: ctx_move } }
    end

    # Pick message: 60% base, 40% context — unless one pool is empty
    msg = nil
    emote = CompanionPokemon::TALK_EMOTES[level]  # default emote
    ctx_move = nil  # context-specific move route
    if !base_msgs.empty? && !ctx_entries.empty?
      if rand(100) < 60
        msg = base_msgs.sample
      else
        entry = ctx_entries.sample
        msg = entry[:msg]
        emote = entry[:emote] if entry[:emote]
        ctx_move = entry[:move]
      end
    elsif !base_msgs.empty?
      msg = base_msgs.sample
    elsif !ctx_entries.empty?
      entry = ctx_entries.sample
      msg = entry[:msg]
      emote = entry[:emote] if entry[:emote]
      ctx_move = entry[:move]
    end

    return false unless msg

    # Play emote (context-aware or affection-based)
    play_emote(emote) if emote
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 15]) rescue nil

    # Play move route — use context move when a context message was picked,
    # otherwise fall back to generic TALK_MOVES per affection level
    move_key = ctx_move || CompanionPokemon::TALK_MOVES[level]
    if move_key && CompanionPokemon::MOVE_ROUTES[move_key]
      CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[move_key], true)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
    end

    # Play cry at high affection
    pkmn.play_cry rescue nil if level == :MAX || level == :HIGH

    # Grant affection for interacting
    pkmn.add_affection(CompanionPokemon::TALK_AFFECTION_GAIN) if pkmn.respond_to?(:add_affection)

    pbMessage(_INTL(msg, pkmn.name))
    true
  end

  #=============================================================================
  # Low HP check — concern when follower's HP is critically low
  #=============================================================================

  def self.check_low_hp(pkmn)
    return false unless CompanionPokemon::LOW_HP_ENABLED
    return false if pkmn.fainted?
    return false if pkmn.hp == pkmn.totalhp

    ratio = pkmn.hp.to_f / pkmn.totalhp
    return false if ratio > CompanionPokemon::LOW_HP_THRESHOLD
    return false if rand(100) >= 40  # 40% chance so it's not every interval

    level = pkmn.affection_level
    return false if level == :NONE

    data = CompanionPokemon::LOW_HP_REACTIONS
    msg = pick_message_for_level(data[:messages], level)
    return false unless msg

    @cooldown_counter = CompanionPokemon::REACTION_COOLDOWN

    # Emote (non-blocking)
    play_emote(data[:emote]) if data[:emote]

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion low HP (#{(ratio * 100).to_i}%): #{_INTL(msg, pkmn.name)}"
    end
    true
  end

  #=============================================================================
  # Battle end reaction — victory or defeat dialogue
  #=============================================================================

  def self.on_battle_end(result)
    return unless CompanionPokemon::BATTLE_REACTIONS_ENABLED
    # :on_end_battle fires while pbBattleAnimation still owns the screen. Queue
    # the reaction so its map emote/movement is actually visible afterwards.
    if $game_temp&.in_battle
      @pending_battle_result = result
      return
    end
    return unless CompanionFollower.active?
    pkmn = CompanionFollower.get_pokemon
    return unless pkmn && !pkmn.egg?
    return if rand(100) >= CompanionPokemon::BATTLE_REACTION_CHANCE

    level = pkmn.affection_level
    return if level == :NONE

    # result: 1 = win, 2 = loss, 3 = run, 4 = caught, 5 = draw
    if result == 1 || result == 4
      data = CompanionPokemon::BATTLE_WIN_REACTIONS
    elsif result == 2
      data = CompanionPokemon::BATTLE_LOSE_REACTIONS
    else
      return  # No reaction for run/draw
    end

    msg = pick_message_for_level(data[:messages], level)
    return unless msg

    play_emote(data[:emote]) if data[:emote]
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil

    if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
      CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
    end

    pkmn.play_cry rescue nil if level == :MAX
    pbMessage(_INTL(msg, pkmn.name))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion battle end (#{result}): #{_INTL(msg, pkmn.name)}"
    end
  end

  def self.process_pending_battle_reaction
    return if @pending_battle_result.nil?
    return if !$game_temp || $game_temp.in_battle || $game_temp.in_menu
    return if pbMapInterpreterRunning?
    result = @pending_battle_result
    @pending_battle_result = nil
    on_battle_end(result)
  end

  #=============================================================================
  # Level up reaction — celebration when follower levels up
  #=============================================================================

  def self.on_level_up(pkmn, new_level)
    return unless CompanionPokemon::ENABLED
    return unless CompanionFollower.active?
    follower = CompanionFollower.get_pokemon
    return unless follower && follower == pkmn

    level = pkmn.affection_level
    return if level == :NONE

    data = CompanionPokemon::LEVEL_UP_REACTIONS
    msg = pick_message_for_level(data[:messages], level)
    return unless msg

    play_emote(data[:emote]) if data[:emote]
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil

    if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
      CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
    end

    pkmn.play_cry rescue nil if level == :MAX || level == :HIGH
    pbMessage(_INTL(msg, pkmn.name, new_level))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion level up: #{pkmn.name} -> Lv.#{new_level}"
    end
  end

  #=============================================================================
  # Evolution reaction — celebration when follower evolves
  #=============================================================================

  def self.on_evolution(pkmn)
    return unless CompanionPokemon::ENABLED
    return unless CompanionFollower.active?
    follower = CompanionFollower.get_pokemon
    return unless follower && follower == pkmn

    level = pkmn.affection_level

    data = CompanionPokemon::EVOLUTION_REACTIONS
    # Allow NONE level for evolution (it's a big moment)
    msg = pick_message_for_level(data[:messages], level)
    msg ||= data[:messages][:LOW]&.sample
    return unless msg

    play_emote(data[:emote]) if data[:emote]
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil

    if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
      CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 40]) rescue nil
    end

    pkmn.play_cry rescue nil
    pbMessage(_INTL(msg, pkmn.name))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion evolution: #{pkmn.name}"
    end
  end

  #=============================================================================
  # Faint reaction — concern when follower faints
  #=============================================================================

  def self.on_faint(pkmn)
    return unless CompanionPokemon::ENABLED

    level = pkmn.affection_level

    data = CompanionPokemon::FAINT_REACTIONS
    msg = pick_message_for_level(data[:messages], level)
    msg ||= data[:messages][:LOW]&.sample
    return unless msg

    # Emote only if follower is still visible (it may have fainted away)
    if CompanionFollower.active?
      play_emote(data[:emote]) if data[:emote]
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil
    end

    pbMessage(_INTL(msg, pkmn.name))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion faint: #{pkmn.name}"
    end
  end

  #=============================================================================
  # Catch reaction — excitement when catching a new Pokemon
  #=============================================================================

  def self.on_catch(new_pkmn)
    return unless CompanionPokemon::CATCH_REACTIONS_ENABLED
    return unless CompanionFollower.active?
    pkmn = CompanionFollower.get_pokemon
    return unless pkmn && !pkmn.egg?
    return if rand(100) >= CompanionPokemon::CATCH_REACTION_CHANCE

    level = pkmn.affection_level
    return if level == :NONE

    # Check for shared type
    shared_type = nil
    pkmn.types.each do |t|
      if new_pkmn.hasType?(t)
        shared_type = t
        break
      end
    end

    data = CompanionPokemon::CATCH_REACTIONS
    if shared_type && rand(100) < 60
      msg = CompanionPokemon::CATCH_SAME_TYPE_MESSAGES.sample
      type_name = GameData::Type.get(shared_type).name rescue shared_type.to_s
    else
      msg = pick_message_for_level(data[:messages], level)
      type_name = ""
    end
    return unless msg

    play_emote(data[:emote]) if data[:emote]
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil

    if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
      CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
    end

    pbMessage(_INTL(msg, pkmn.name, new_pkmn.name, type_name))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion catch reaction: #{pkmn.name} for #{new_pkmn.name}"
    end
  end

  #=============================================================================
  # Heal reaction — gratitude after Pokemon Center healing
  #=============================================================================

  def self.on_heal
    return unless CompanionPokemon::HEAL_REACTIONS_ENABLED
    return unless CompanionFollower.active?
    pkmn = CompanionFollower.get_pokemon
    return unless pkmn && !pkmn.egg?

    level = pkmn.affection_level
    return if level == :NONE

    data = CompanionPokemon::HEAL_REACTIONS
    msg = pick_message_for_level(data[:messages], level)
    return unless msg

    play_emote(data[:emote]) if data[:emote]
    pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil

    if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
      CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
    end

    pkmn.play_cry rescue nil if level == :MAX
    pbMessage(_INTL(msg, pkmn.name))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion heal reaction: #{pkmn.name}"
    end
  end

  #=============================================================================
  # Map enter reaction — one-shot reaction when entering a new map
  #=============================================================================

  def self.on_map_enter(old_map_id)
    return unless CompanionPokemon::MAP_ENTER_ENABLED
    return unless CompanionFollower.active?
    pkmn = CompanionFollower.get_pokemon
    return unless pkmn && !pkmn.egg?

    level = pkmn.affection_level
    return if level == :NONE

    map_name = CompanionPokemon.current_map_identity
    return if map_name.empty?

    CompanionPokemon::MAP_ENTER_REACTIONS.each do |_key, data|
      next unless data[:pattern] && data[:pattern].match?(map_name)

      msgs = data[:messages]
      msg = pick_message_for_level(msgs, level)
      next unless msg

      # Small delay so the map loads visually first
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 15]) rescue nil

      play_emote(data[:emote]) if data[:emote]
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil

      if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
        CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
        pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
      end

      pbMessage(_INTL(msg, pkmn.name))

      if CompanionPokemon::DEBUG_MODE
        echoln "[SC] Companion map enter (#{_key}): #{_INTL(msg, pkmn.name)}"
      end
      return  # Only show first matching reaction
    end
  end

  #=============================================================================
  # Toggle reactions — when follower is shown/hidden
  #=============================================================================

  def self.on_toggle(pkmn, shown)
    return unless CompanionPokemon::TOGGLE_REACTIONS_ENABLED
    return unless pkmn

    level = pkmn.affection_level
    data = shown ? CompanionPokemon::TOGGLE_ON_REACTIONS
                 : CompanionPokemon::TOGGLE_OFF_REACTIONS
    return unless data

    msgs = data[:messages]
    msg = pick_message_for_level(msgs, level)
    # NONE level has messages for toggle, check it explicitly
    msg ||= msgs[:NONE]&.sample if level == :NONE
    return unless msg

    if shown
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil
      play_emote(data[:emote]) if data[:emote]
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 15]) rescue nil
      if data[:move] && CompanionPokemon::MOVE_ROUTES[data[:move]]
        CompanionFollower.move_route(CompanionPokemon::MOVE_ROUTES[data[:move]], true)
        pbMoveRoute($game_player, [PBMoveRoute::WAIT, 30]) rescue nil
      end
      pkmn.play_cry rescue nil if level == :MAX || level == :HIGH
    else
      play_emote(data[:emote]) if data[:emote]
      pbMoveRoute($game_player, [PBMoveRoute::WAIT, 20]) rescue nil
    end

    pbMessage(_INTL(msg, pkmn.name))

    if CompanionPokemon::DEBUG_MODE
      echoln "[SC] Companion toggle #{shown ? 'ON' : 'OFF'}: #{_INTL(msg, pkmn.name)}"
    end
  end

  #=============================================================================
  # Play an emote animation on the follower sprite
  #=============================================================================

  def self.play_emote(emote_key)
    return unless emote_key
    CompanionFollower.emote(emote_key)
  end

  #=============================================================================
  # Pick value from a hash by highest applicable affection tier
  #=============================================================================

  def self.pick_for_level(hash, level)
    return nil unless hash
    order = [:MAX, :HIGH, :MEDIUM, :LOW, :NONE]
    # Try current level and below first
    reached = false
    order.each do |lvl|
      reached = true if lvl == level
      next unless reached
      return hash[lvl] if hash[lvl]
    end
    # Fallback: check levels above (closest first)
    idx = order.index(level) || order.length
    (idx - 1).downto(0) do |i|
      return hash[order[i]] if hash[order[i]]
    end
    nil
  end
end

#===============================================================================
# Hook into step events
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_companion_reaction,
  proc { CompanionReactionEngine.on_step }
)

#===============================================================================
# Restore milestone tracking on game load
#===============================================================================

EventHandlers.add(:on_game_load, :sc_companion_restore,
  proc {
    next unless CompanionPokemon::ENABLED
    # Reset counters on load (clean slate)
    CompanionReactionEngine.instance_variable_set(:@step_counter, 0)
    CompanionReactionEngine.instance_variable_set(:@cooldown_counter, 0)
    CompanionReactionEngine.instance_variable_set(:@affection_steps, 0)
    CompanionReactionEngine.instance_variable_set(:@item_find_steps, 0)
    CompanionReactionEngine.instance_variable_set(:@last_weather, $game_screen&.weather_type)
    CompanionReactionEngine.instance_variable_set(:@pending_battle_result, nil)
    # Rebuild milestone tracking from current party affection levels
    milestones = {}
    if $player && $player.party
      $player.party.each do |pkmn|
        next if !pkmn || pkmn.egg?
        milestones[pkmn.personalID] = pkmn.affection_level
      end
    end
    CompanionReactionEngine.instance_variable_set(:@last_milestones, milestones)
  }
)

# Weather can be changed by map metadata or an event without taking a step.
# Scene_Map already updates every frame, so observe the stable weather ID here.
class Scene_Map
  alias __sc_companion_weather__update update unless method_defined?(:__sc_companion_weather__update)
  def update(*args)
    __sc_companion_weather__update(*args)
    CompanionReactionEngine.check_weather_change
    CompanionReactionEngine.process_pending_battle_reaction
  end
end

#===============================================================================
# Hook into map enter for entrance reactions
#===============================================================================

EventHandlers.add(:on_enter_map, :sc_companion_map_enter,
  proc { |old_map_id|
    CompanionReactionEngine.on_map_enter(old_map_id)
  }
)

#===============================================================================
# Hook into follower toggle for show/hide reactions
#===============================================================================

module CompanionToggleHook
  @@last_toggle_state = nil

  def self.check_toggle
    return unless CompanionPokemon::ENABLED

    current = CompanionFollower.active?
    if @@last_toggle_state != nil && current != @@last_toggle_state
      pkmn = CompanionFollower.get_pokemon
      CompanionReactionEngine.on_toggle(pkmn, current) if pkmn
    end
    @@last_toggle_state = current
  end
end

# Check toggle state each step to detect changes
EventHandlers.add(:on_player_step_taken, :sc_companion_toggle_check,
  proc { CompanionToggleHook.check_toggle }
)

#===============================================================================
# Hook into battle end for win/lose reactions
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_companion_battle_end,
  proc { |_decision, _can_lose|
    # _decision: 1=win, 2=lose, 3=run, 4=caught, 5=draw
    CompanionReactionEngine.on_battle_end(_decision)
  }
)

#===============================================================================
# Hook into Pokemon level up
#===============================================================================

EventHandlers.add(:on_pokemon_level_up, :sc_companion_level_up,
  proc { |pkmn, _old_level|
    CompanionReactionEngine.on_level_up(pkmn, pkmn.level)
  }
)

#===============================================================================
# Hook into Pokemon evolution
#===============================================================================

EventHandlers.add(:on_pokemon_evolved, :sc_companion_evolution,
  proc { |pkmn, _old_species|
    CompanionReactionEngine.on_evolution(pkmn)
  }
)

#===============================================================================
# Hook into Pokemon faint
#===============================================================================

EventHandlers.add(:on_faint, :sc_companion_faint,
  proc { |_battle, battler|
    # Only react if this is the follower
    next unless CompanionPokemon::ENABLED
    pkmn = battler.pokemon
    next unless pkmn
    follower = CompanionFollower.get_pokemon
    next unless follower && follower == pkmn
    CompanionReactionEngine.on_faint(pkmn)
  }
)

#===============================================================================
# Hook into Pokemon caught
#===============================================================================

EventHandlers.add(:on_wild_pokemon_caught, :sc_companion_catch,
  proc { |new_pkmn|
    CompanionReactionEngine.on_catch(new_pkmn)
  }
)

#===============================================================================
# Hook into Pokemon Center healing
#===============================================================================

EventHandlers.add(:on_pokemon_center_heal, :sc_companion_heal,
  proc {
    CompanionReactionEngine.on_heal
  }
)

#===============================================================================
# Integration: Memory Lane
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_companion_memory_lane,
  proc {
    next unless CompanionPokemon::ENABLED
    next unless defined?(MemoryLane) && MemoryLane.respond_to?(:record)
    next unless CompanionFollower.active?
    pkmn = CompanionFollower.get_pokemon
    next unless pkmn
    # Record first companion walk
    if $PokemonGlobal.respond_to?(:companion_first_walk_recorded)
      next if $PokemonGlobal.companion_first_walk_recorded
    end
    MemoryLane.record(:first_companion_walk, pkmn.name) rescue nil
    if $PokemonGlobal.respond_to?(:companion_first_walk_recorded=)
      $PokemonGlobal.companion_first_walk_recorded = true
    end
  }
)

#===============================================================================
# Script helpers for events
#===============================================================================

def pbCompanionReaction
  return unless CompanionPokemon::ENABLED
  return unless CompanionFollower.active?
  pkmn = CompanionFollower.get_pokemon
  return unless pkmn
  CompanionReactionEngine.try_reaction(pkmn)
end

def pbCompanionAffectionLevel
  return :NONE unless CompanionFollower.active?
  pkmn = CompanionFollower.get_pokemon
  return :NONE unless pkmn
  pkmn.affection_level
end

def pbToggleCompanion
  CompanionFollower.toggle
end

# Hide/show for cutscenes. These lock the follower away, so the player cannot
# bring it back with the toggle key or the Options entry until pbShowCompanion
# runs. See 009_ScriptCommands.rb for the full command list.
def pbHideCompanion(anim = true)
  CompanionFollower.set_script_disabled(true, anim)
end

def pbShowCompanion(anim = true)
  CompanionFollower.set_script_disabled(false, anim)
end

AdvancedAI.log("Companion Pokemon System loaded", "CompanionPkmn") if defined?(AdvancedAI)
