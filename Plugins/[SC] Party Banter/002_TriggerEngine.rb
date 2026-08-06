#===============================================================================
# [SC] Party Banter - Trigger Engine
# Evaluates conditions and fires banter on map steps.
#===============================================================================

module BanterTriggerEngine
  #=============================================================================
  # Condition checkers
  #=============================================================================

  def self.party_low_hp?(context)
    return false unless $player && $player.party
    $player.party.any? { |p| p && !p.egg? && p.hp > 0 && p.hp <= (p.totalhp / 4) }
  end

  def self.special_weather?(context)
    return false unless $game_screen
    context[:weather] != nil && context[:weather] != :None
  end

  def self.post_story_event?(context)
    # Checks if a story-flag switch was recently set
    # Override with specific switch IDs per chapter
    false
  end

  def self.new_area?(context)
    $BanterData && $BanterData.last_map_id != context[:map_id]
  end

  def self.type_relevant?(context)
    context[:party_types] && !context[:party_types].empty?
  end

  def self.time_based?(context)
    context[:time] != nil
  end

  def self.always_true(_context = nil)
    true
  end

  #=============================================================================
  # Build context from current game state
  #=============================================================================

  def self.build_context
    ctx = {}
    ctx[:map_id] = $game_map ? $game_map.map_id : 0

    # Weather
    if $game_screen
      weather = $game_screen.weather_type
      # v22 liefert bereits ein Wetter-Symbol. Die Zahlen bleiben als
      # Rueckwaertskompatibilitaet fuer aeltere Spielstaende/Systeme erhalten.
      weather_types = { 0 => :None, 1 => :Rain, 2 => :Storm, 3 => :Snow,
                        4 => :Sandstorm, 5 => :Sun }
      ctx[:weather] = weather.is_a?(Symbol) ? weather : (weather_types[weather] || :None)
    end

    # Time of day
    time = pbGetTimeNow
    hour = time.hour
    ctx[:time] = if hour >= 5 && hour < 10
                   :morning
                 elsif hour >= 10 && hour < 17
                   :day
                 elsif hour >= 17 && hour < 21
                   :evening
                 else
                   :night
                 end

    # Party types
    if $player && $player.party
      ctx[:party_types] = $player.party.flat_map { |p|
        next [] if !p || p.egg?
        # Pokemon#type1/type2 wurden in v22 durch Pokemon#types ersetzt.
        p.types
      }.uniq
    end

    # Active companions (check game switches or variables)
    # Customize these switch IDs to match your story events
    ctx[:active_companions] = []
    # Example: ctx[:active_companions] << :LYRA if $game_switches[50]
    # Example: ctx[:active_companions] << :KAEL if $game_switches[51]

    ctx
  end

  #=============================================================================
  # Main step handler
  #=============================================================================

  def self.on_step
    return unless PartyBanter::ENABLED
    $BanterData ||= BanterSaveData.new
    $BanterData.step_counter += 1

    map_id = $game_map ? $game_map.map_id : 0
    if $BanterData.last_map_id != map_id
      $BanterData.last_map_id = map_id
      $BanterData.map_banter_count = 0
      $BanterData.step_counter = 0
    end

    return if $BanterData.step_counter < PartyBanter::MAP_ENTRY_DELAY
    return if $BanterData.step_counter < PartyBanter::COOLDOWN_STEPS
    return if $BanterData.map_banter_count >= PartyBanter::MAX_PER_MAP
    return if rand(100) >= PartyBanter::TRIGGER_CHANCE

    context = build_context
    return if context[:active_companions].empty?

    # Check triggers by priority
    sorted = PartyBanter::TRIGGERS.sort_by { |_k, v| -v[:priority] }
    sorted.each do |trigger_type, trigger_info|
      condition_method = trigger_info[:condition]
      next unless respond_to?(condition_method)
      next unless send(condition_method, context)

      banter = BanterRegistry.find_best(trigger_type, context)
      next unless banter

      display_banter(banter)
      $BanterData.mark_seen(banter) if banter[:once]
      $BanterData.step_counter = 0
      $BanterData.map_banter_count += 1
      break
    end
  end

  #=============================================================================
  # Display
  #=============================================================================

  def self.display_banter(entry)
    speaker_config = PartyBanter::COMPANION_SPEAKERS[entry[:speaker]]
    name = speaker_config ? speaker_config[:name] : entry[:speaker].to_s
    portrait = entry[:portrait] || (speaker_config ? speaker_config[:portrait] : nil)

    pbSEPlay(PartyBanter::BANTER_SE) if PartyBanter::BANTER_SE

    case PartyBanter::DISPLAY_MODE
    when :portrait
      # Use portrait if rainefallPortraits is available
      if portrait && defined?(pbShowPortrait)
        pbShowPortrait(portrait)
        pbMessage(_INTL("\\n{1}: {2}", name, entry[:text]))
        pbHidePortrait rescue nil
      else
        pbMessage(_INTL("\\n{1}: {2}", name, entry[:text]))
      end
    when :message
      pbMessage(_INTL("\\n{1}: {2}", name, entry[:text]))
    end
  end
end

#===============================================================================
# Hook into player movement
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_party_banter_step,
  proc {
    BanterTriggerEngine.on_step
  }
)
