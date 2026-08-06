#===============================================================================
# [SC] Pokemon Titles - Stats Tracking & Title Logic
#===============================================================================

# Extend Pokemon with battle stats and title tracking
class Pokemon
  attr_writer :title_stats, :earned_titles, :active_title

  def title_stats
    @title_stats ||= {
      :wins               => 0,
      :wins_no_faint      => 0,   # Consecutive wins without fainting
      :dragon_kos         => 0,
      :se_hits_survived   => 0,
      :first_moves        => 0,
      :ohkos              => 0,
      :steps_as_lead      => 0,
      :crown_shatters     => 0,
      :nidhoggr_final_blow => false
    }
  end

  def earned_titles
    @earned_titles ||= []
  end

  def active_title
    @active_title ||= nil
  end

  def active_title=(title_id)
    @active_title = title_id
  end

  # Get the display title (highest priority earned, or manually selected)
  def display_title
    return nil unless PokemonTitles::ENABLED
    if @active_title && earned_titles.include?(@active_title)
      return PokemonTitles::TITLES[@active_title][:name]
    end
    # Auto-select highest priority
    best = earned_titles
      .select { |t| PokemonTitles::TITLES[t] }
      .max_by { |t| PokemonTitles::TITLES[t][:priority] }
    best ? PokemonTitles::TITLES[best][:name] : nil
  end

  # Full display name with title
  def name_with_title
    title = display_title
    title ? "#{name} #{title}" : name
  end

  # Check and award new titles
  def check_titles
    return unless PokemonTitles::ENABLED
    PokemonTitles::TITLES.each do |title_id, config|
      next if earned_titles.include?(title_id)
      method_name = config[:check]
      if TitleChecker.respond_to?(method_name)
        if TitleChecker.send(method_name, self)
          earned_titles.push(title_id)
          if PokemonTitles::DEBUG_MODE
            echoln "[SC] Title: #{name} earned #{title_id}"
          end
          pbSEPlay(PokemonTitles::SE_TITLE_EARNED)
          pbMessage(_INTL("{1} earned the title: \\c[1]{2}\\c[0]!",
                          name, config[:name]))
        end
      end
    end
  end
end

#===============================================================================
# Title condition checkers
#===============================================================================

module TitleChecker
  def self.check_undefeated(pkmn)
    pkmn.title_stats[:wins_no_faint] >= 50
  end

  def self.check_dragon_slayer(pkmn)
    pkmn.title_stats[:dragon_kos] >= 10
  end

  def self.check_nidhoggr_bane(pkmn)
    pkmn.title_stats[:nidhoggr_final_blow] == true
  end

  def self.check_iron_wall(pkmn)
    pkmn.title_stats[:se_hits_survived] >= 30
  end

  def self.check_first_strike(pkmn)
    pkmn.title_stats[:first_moves] >= 100
  end

  def self.check_ohko(pkmn)
    pkmn.title_stats[:ohkos] >= 20
  end

  def self.check_loyal(pkmn)
    pkmn.title_stats[:steps_as_lead] >= 10000
  end

  def self.check_chosen_warrior(pkmn)
    $player && $player.badge_count >= 8 && pkmn.title_stats[:wins] >= 50
  end

  def self.check_crown_bearer(pkmn)
    pkmn.title_stats[:crown_shatters] >= 25
  end

  def self.check_veteran(pkmn)
    pkmn.title_stats[:wins] >= 200
  end
end

#===============================================================================
# Battle tracking hooks
#===============================================================================

# Track wins
EventHandlers.add(:on_end_battle, :sc_titles_win,
  proc { |decision, _canLose|
    next unless PokemonTitles::ENABLED
    next unless decision == 1 && $player
    $player.party.each do |pkmn|
      next unless pkmn && !pkmn.egg? && pkmn.hp > 0
      pkmn.title_stats[:wins] += 1
      pkmn.title_stats[:wins_no_faint] += 1
      pkmn.check_titles
    end
  }
)

# Track faints (reset no-faint streak)
EventHandlers.add(:on_faint, :sc_titles_faint,
  proc { |_battle, battler|
    next unless PokemonTitles::ENABLED
    next unless battler.index.even?
    pkmn = battler.pokemon
    pkmn.title_stats[:wins_no_faint] = 0 if pkmn
  }
)

# Track KOs for type-specific titles
EventHandlers.add(:on_pokemon_ko, :sc_titles_ko,
  proc { |_battle, attacker, target|
    next unless PokemonTitles::ENABLED
    next unless attacker && attacker.index.even?
    pkmn = attacker.pokemon
    next unless pkmn

    # Dragon KOs
    if target.pbHasType?(:DRAGON)
      pkmn.title_stats[:dragon_kos] += 1
    end

    # OHKO check (full HP to 0)
    if target.damageState && target.damageState.totalHPLost >= target.totalhp
      pkmn.title_stats[:ohkos] += 1
    end
  }
)

# Track walking steps for lead Pokemon
EventHandlers.add(:on_player_step_taken, :sc_titles_steps,
  proc {
    next unless PokemonTitles::ENABLED
    next unless $player && $player.party && !$player.party.empty?
    lead = $player.party.first
    lead.title_stats[:steps_as_lead] += 1 if lead && !lead.egg?
  }
)
