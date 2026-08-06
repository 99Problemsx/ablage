#===============================================================================
# [SC] Spirit Realm - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class SpiritRealmSaveData
  attr_accessor :discovered_portals  # Array of portal keys
  attr_accessor :cleared_realms      # Array of cleared realm keys
  attr_accessor :corruption          # Current corruption level
  attr_accessor :in_realm            # Whether player is currently in a realm
  attr_accessor :current_portal      # Key of current portal
  attr_accessor :return_map_id
  attr_accessor :return_x
  attr_accessor :return_y
  attr_accessor :shadow_pokemon      # Hash { pokemon_personal_id => purification_steps_remaining }

  def initialize
    @discovered_portals = []
    @cleared_realms     = []
    @corruption         = 0
    @in_realm           = false
    @current_portal     = nil
    @return_map_id      = nil
    @return_x           = 0
    @return_y           = 0
    @shadow_pokemon     = {}
  end

  def discover_portal(portal_key)
    return false if @discovered_portals.include?(portal_key)
    @discovered_portals.push(portal_key)
    true
  end

  def portal_discovered?(portal_key)
    @discovered_portals.include?(portal_key)
  end

  def clear_realm(portal_key)
    @cleared_realms.push(portal_key) unless @cleared_realms.include?(portal_key)
  end

  def realm_cleared?(portal_key)
    @cleared_realms.include?(portal_key)
  end

  def mark_shadow(pkmn)
    @shadow_pokemon[pkmn.personalID] = SpiritRealm::PURIFICATION_STEPS
  end

  def is_shadow?(pkmn)
    @shadow_pokemon.key?(pkmn.personalID)
  end

  def purify_step(pkmn)
    return unless is_shadow?(pkmn)
    @shadow_pokemon[pkmn.personalID] -= 1
    if @shadow_pokemon[pkmn.personalID] <= 0
      @shadow_pokemon.delete(pkmn.personalID)
      return true  # Purified!
    end
    false
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :spirit_realm_data

  def spirit_realm_data
    @spirit_realm_data ||= SpiritRealmSaveData.new
  end
end

SaveData.register(:spirit_realm_data) do
  save_value { $PokemonGlobal.spirit_realm_data }
  load_value { |val| $PokemonGlobal.spirit_realm_data = val }
  new_game_value { SpiritRealmSaveData.new }
end

#===============================================================================
# Spirit Realm Manager
#===============================================================================

module SpiritRealmManager
  def self.data
    $PokemonGlobal.spirit_realm_data
  end

  #=============================================================================
  # Enter a portal
  #=============================================================================

  def self.enter_portal(portal_key)
    portal = SpiritRealm::PORTALS[portal_key]
    return false unless portal

    # Check badge requirement
    if portal[:required_badge] && $player.badge_count < portal[:required_badge]
      pbMessage(_INTL("The portal resonates but won't open... You need more badges."))
      return false
    end

    # Discover portal
    if data.discover_portal(portal_key)
      pbMessage(_INTL("You discovered {1}!", portal[:name]))
      codexDiscover(:"PORTAL_#{portal_key}") if defined?(codexDiscover)
    end

    # Store return position
    data.return_map_id = $game_map.map_id
    data.return_x      = $game_player.x
    data.return_y      = $game_player.y
    data.in_realm      = true
    data.current_portal = portal_key
    data.corruption    = 0

    pbSEPlay(SpiritRealm::SE_ENTER_REALM)
    pbMessage(_INTL("You step through the portal into the Spirit Realm..."))

    # Apply visual tone
    if $game_screen
      $game_screen.start_tone_change(SpiritRealm::REALM_SCREEN_TONE, 20)
    end

    # Apply Spirit Realm shader ([SC] Visual Effects). Safe-noop if absent.
    pbApplyShader(:spirit_realm) if defined?(pbApplyShader)

    # Play spirit realm BGM
    pbBGMPlay(SpiritRealm::BGM_SPIRIT) if SpiritRealm::BGM_SPIRIT

    # Transfer to realm map
    $game_temp.player_transferring  = true
    $game_temp.player_new_map_id    = portal[:realm_map]
    $game_temp.player_new_x         = portal[:realm_entry_x]
    $game_temp.player_new_y         = portal[:realm_entry_y]
    $game_temp.player_new_direction  = 8
    $scene.transfer_player if $scene.is_a?(Scene_Map)
    true
  end

  #=============================================================================
  # Exit the realm
  #=============================================================================

  def self.exit_realm(forced = false)
    return unless data.in_realm

    if forced
      pbSEPlay(SpiritRealm::SE_CORRUPTION)
      pbMessage(_INTL("The void corruption is too strong! You're expelled!"))
    else
      pbSEPlay(SpiritRealm::SE_EXIT_REALM)
      pbMessage(_INTL("You return from the Spirit Realm."))
    end

    data.in_realm = false
    data.current_portal = nil
    data.corruption = 0

    # Restore screen tone
    $game_screen.start_tone_change(Tone.new(0, 0, 0, 0), 20) if $game_screen

    # Remove Spirit Realm shader ([SC] Visual Effects). Safe-noop if absent.
    pbRemoveShader(:spirit_realm) if defined?(pbRemoveShader)

    # Transfer back
    $game_temp.player_transferring  = true
    $game_temp.player_new_map_id    = data.return_map_id
    $game_temp.player_new_x         = data.return_x
    $game_temp.player_new_y         = data.return_y
    $game_temp.player_new_direction  = 2
    $scene.transfer_player if $scene.is_a?(Scene_Map)
  end

  #=============================================================================
  # Process corruption per step
  #=============================================================================

  def self.process_corruption
    return unless SpiritRealm::CORRUPTION_ENABLED && data.in_realm
    data.corruption += SpiritRealm::CORRUPTION_PER_STEP

    SpiritRealm::CORRUPTION_EFFECTS.each do |threshold, effect|
      next unless data.corruption == threshold
      apply_corruption_effect(effect)
    end
  end

  def self.apply_corruption_effect(effect)
    case effect
    when :SCREEN_TINT
      if $game_screen
        $game_screen.start_tone_change(SpiritRealm::CORRUPTION_TONE, 40)
      end
      pbMessage(_INTL("The void presses in around you..."))
    when :RANDOM_DAMAGE
      pbSEPlay(SpiritRealm::SE_CORRUPTION)
      $player.party.each do |pkmn|
        next if pkmn.egg? || pkmn.fainted?
        damage = [pkmn.totalhp / 10, 1].max
        pkmn.hp = [pkmn.hp - damage, 1].max
      end
      pbMessage(_INTL("The corruption saps your team's strength!"))
    when :WILD_AMBUSH
      pbMessage(_INTL("A shadow creature attacks!"))
      pool = SpiritRealm::SHADOW_AMBUSH_SPECIES.select { |s| GameData::Species.exists?(s) }
      species = pool.sample || :GENGAR
      level = [data.corruption / 2, 5].max.clamp(5, 100)
      pbWildBattle(species, level)
    when :FORCED_EXIT
      exit_realm(true)
    end
  end

  #=============================================================================
  # Mark a realm as cleared
  #=============================================================================

  def self.clear_current_realm
    return unless data.current_portal
    data.clear_realm(data.current_portal)
    pbMessage(_INTL("The realm's corruption fades... for now."))
    # Milestone
    pbMemoryMilestone(:"REALM_#{data.current_portal}", "Cleared a Spirit Realm!", :Exploration) if defined?(pbMemoryMilestone)
  end
end

#===============================================================================
# Step handler — corruption + shadow purification
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_spirit_realm_step,
  proc {
    next unless SpiritRealm::ENABLED
    data = $PokemonGlobal.spirit_realm_data

    # Corruption in realm
    SpiritRealmManager.process_corruption if data.in_realm

    # Shadow Pokemon purification progress
    $player.party.each do |pkmn|
      next unless data.is_shadow?(pkmn)
      if data.purify_step(pkmn)
        pbMessage(_INTL("{1} has been purified!", pkmn.name))
        pbSEPlay("Pkmn move learnt")
      end
    end
  }
)

#===============================================================================
# Event helpers
#===============================================================================

def pbEnterSpiritRealm(portal_key)
  return unless SpiritRealm::ENABLED
  SpiritRealmManager.enter_portal(portal_key)
end

def pbExitSpiritRealm
  SpiritRealmManager.exit_realm
end

def pbClearSpiritRealm
  SpiritRealmManager.clear_current_realm
end

def pbInSpiritRealm?
  $PokemonGlobal.spirit_realm_data.in_realm
end

def pbPortalDiscovered?(portal_key)
  $PokemonGlobal.spirit_realm_data.portal_discovered?(portal_key)
end

def pbRealmCleared?(portal_key)
  $PokemonGlobal.spirit_realm_data.realm_cleared?(portal_key)
end

def pbIsShadowPokemon?(pkmn)
  $PokemonGlobal.spirit_realm_data.is_shadow?(pkmn)
end

#===============================================================================
# Mark a Pokemon as shadow (typically called on catch in the realm).
#===============================================================================
def pbMarkShadow(pkmn)
  return false unless pkmn.is_a?(Pokemon)
  $PokemonGlobal.spirit_realm_data.mark_shadow(pkmn)
  true
end

#===============================================================================
# Current corruption level (0 .. SpiritRealm::CORRUPTION_MAX). Returns 0
# outside the realm.
#===============================================================================
def pbCorruptionLevel
  $PokemonGlobal.spirit_realm_data.corruption
end

#===============================================================================
# Begin/check purification on a specific Pokemon. With no item argument this
# returns the steps remaining (nil if not shadow). With an item that matches
# SpiritRealm::PURIFICATION_ITEM, it instantly purifies the Pokemon and
# returns true on success.
#===============================================================================
def pbPurifyPokemon(pkmn, item = nil)
  data = $PokemonGlobal.spirit_realm_data
  return nil unless pkmn.is_a?(Pokemon)
  return nil unless data.is_shadow?(pkmn)
  if item && SpiritRealm::PURIFICATION_ITEM && item == SpiritRealm::PURIFICATION_ITEM
    data.shadow_pokemon.delete(pkmn.personalID)
    pbMessage(_INTL("{1} has been purified!", pkmn.name))
    pbSEPlay("Pkmn move learnt")
    return true
  end
  data.shadow_pokemon[pkmn.personalID]
end
