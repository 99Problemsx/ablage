#===============================================================================
# [SC] Rune System - Core Logic
#===============================================================================

#===============================================================================
# Save Data — tracks discovered runes (inventory) and equipped runes
#===============================================================================

class RuneSaveData
  attr_accessor :discovered_runes  # Array of rune keys the player owns
  attr_accessor :equipped_runes    # Hash { pokemon_personal_id => rune_key }

  def initialize
    @discovered_runes = []
    @equipped_runes   = {}
  end

  def own?(rune_key)
    @discovered_runes.include?(rune_key)
  end

  def add_rune(rune_key)
    @discovered_runes.push(rune_key) unless own?(rune_key)
  end

  def equipped_on(pkmn)
    @equipped_runes[pkmn.personalID]
  end

  def equip(pkmn, rune_key)
    @equipped_runes[pkmn.personalID] = rune_key
  end

  def unequip(pkmn)
    @equipped_runes.delete(pkmn.personalID)
  end

  def rune_in_use?(rune_key)
    @equipped_runes.values.include?(rune_key)
  end

  def available_runes
    @discovered_runes.select { |r| !rune_in_use?(r) }
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :rune_data

  def rune_data
    @rune_data ||= RuneSaveData.new
  end
end

SaveData.register(:rune_data) do
  save_value { $PokemonGlobal.rune_data }
  load_value { |val| $PokemonGlobal.rune_data = val }
  new_game_value { RuneSaveData.new }
end

#===============================================================================
# Rune Manager
#===============================================================================

module RuneManager
  def self.data
    $PokemonGlobal.rune_data
  end

  #=============================================================================
  # Discover a rune (from shrine event)
  #=============================================================================

  def self.discover(rune_key)
    config = RuneSystem::RUNES[rune_key]
    return false unless config
    if data.own?(rune_key)
      pbMessage(_INTL("You already possess the {1}.", config[:name]))
      return false
    end
    data.add_rune(rune_key)
    pbSEPlay(RuneSystem::SE_DISCOVER)
    pbMessage(_INTL("You obtained the {1}!", config[:name]))
    pbMessage(_INTL("{1}", config[:description]))
    # Lore Codex integration
    codexDiscover(:"RUNE_#{rune_key}") if defined?(codexDiscover)
    true
  end

  #=============================================================================
  # Equip a rune on a Pokemon
  #=============================================================================

  def self.equip_menu(pkmn)
    current = data.equipped_on(pkmn)
    if current
      current_cfg = RuneSystem::RUNES[current]
      msg = _INTL("{1} has the {2} equipped.", pkmn.name, current_cfg[:name])
      choice = pbMessage(msg, ["Swap", "Remove", "Cancel"], 3)
      case choice
      when 0 then select_and_equip(pkmn)
      when 1
        data.unequip(pkmn)
        pbSEPlay(RuneSystem::SE_REMOVE)
        pbMessage(_INTL("Removed the {1}.", current_cfg[:name]))
      end
    else
      select_and_equip(pkmn)
    end
  end

  def self.select_and_equip(pkmn)
    available = data.available_runes
    if available.empty?
      pbMessage(_INTL("You have no available runes."))
      return
    end

    names = available.map { |r|
      cfg = RuneSystem::RUNES[r]
      "#{cfg[:name]} (T#{cfg[:tier]})"
    }
    names.push("Cancel")

    choice = pbMessage(_INTL("Choose a rune for {1}:", pkmn.name), names, names.length)
    return if choice == names.length - 1

    rune_key = available[choice]
    data.equip(pkmn, rune_key)
    pbSEPlay(RuneSystem::SE_SOCKET)
    cfg = RuneSystem::RUNES[rune_key]
    pbMessage(_INTL("{1} socketed the {2}!", pkmn.name, cfg[:name]))
  end

  #=============================================================================
  # Get stat multiplier for a Pokemon in battle
  # Returns Hash of { :ATTACK => multiplier, ... }
  #=============================================================================

  def self.stat_multipliers(pkmn)
    result = {}
    rune_key = data.equipped_on(pkmn)
    return result unless rune_key
    config = RuneSystem::RUNES[rune_key]
    return result unless config
    config[:stat_boosts].each do |stat, percent|
      result[stat] = 1.0 + (percent / 100.0)
    end
    result
  end

  #=============================================================================
  # Check special rune effects
  #=============================================================================

  def self.special_effect(pkmn)
    rune_key = data.equipped_on(pkmn)
    return nil unless rune_key
    config = RuneSystem::RUNES[rune_key]
    config ? config[:special] : nil
  end
end

#===============================================================================
# Battle hooks — apply stat boosts
#===============================================================================

# Stat modification via calc_stats alias — applies rune multipliers after base calc
class Pokemon
  alias __sc_rune__calc_stats calc_stats unless method_defined?(:__sc_rune__calc_stats)

  def calc_stats
    __sc_rune__calc_stats
    return unless RuneSystem::ENABLED
    mults = RuneManager.stat_multipliers(self)
    return if mults.empty?
    @totalhp = [(@totalhp * mults[:HP]).round, 1].max if mults[:HP]
    @attack  = [(@attack  * mults[:ATTACK]).round, 1].max if mults[:ATTACK]
    @defense = [(@defense * mults[:DEFENSE]).round, 1].max if mults[:DEFENSE]
    @spatk   = [(@spatk   * mults[:SPECIAL_ATTACK]).round, 1].max if mults[:SPECIAL_ATTACK]
    @spdef   = [(@spdef   * mults[:SPECIAL_DEFENSE]).round, 1].max if mults[:SPECIAL_DEFENSE]
    @speed   = [(@speed   * mults[:SPEED]).round, 1].max if mults[:SPEED]
  end
end

# End-of-turn effects (regen, status cure)
EventHandlers.add(:on_battle_end_round, :sc_rune_turn_effects,
  proc { |battle|
    next unless RuneSystem::ENABLED && battle
    battle.battlers.each do |b|
      next unless b && !b.fainted? && b.pokemon
      effect = RuneManager.special_effect(b.pokemon)
      next unless effect
      case effect
      when :REGEN
        heal_amt = [b.totalhp / RuneSystem::REGEN_FRACTION, 1].max
        if b.hp < b.totalhp
          b.pbRecoverHP(heal_amt, false)
          battle.pbDisplay(_INTL("{1}'s rune glows, restoring health!", b.pbThis))
        end
      when :STATUS_CURE
        if b.status != :NONE && b.statusCount >= RuneSystem::STATUS_CURE_TURNS
          b.pbCureStatus(false)
          battle.pbDisplay(_INTL("{1}'s rune purges the ailment!", b.pbThis))
        end
      when :CRIT_BOOST
        # Handled via focus energy equivalent — applied at battle start
      end
    end
  }
)

#===============================================================================
# Event helpers
#===============================================================================

def pbDiscoverRune(rune_key)
  RuneManager.discover(rune_key)
end

def pbRuneMenu(pkmn_index = nil)
  return unless RuneSystem::ENABLED
  if pkmn_index
    pkmn = $player.party[pkmn_index]
  else
    pbChoosePokemon(1, 3)
    idx = pbGet(1)
    return if idx < 0
    pkmn = $player.party[idx]
  end
  return unless pkmn
  RuneManager.equip_menu(pkmn)
end

def pbHasRune?(rune_key)
  $PokemonGlobal.rune_data.own?(rune_key)
end

def pbPokemonRune(pkmn)
  $PokemonGlobal.rune_data.equipped_on(pkmn)
end
