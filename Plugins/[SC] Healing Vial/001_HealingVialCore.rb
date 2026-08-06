#===============================================================================
# [SC] Healing Vial - Core Logic
#===============================================================================

#===============================================================================
# Save Data - tracks remaining charges
#===============================================================================

class HealingVialData
  attr_accessor :charges

  def initialize
    @charges = HealingVial::STARTING_CHARGES
  end

  def empty?
    @charges <= 0
  end

  def use_charge
    return false if empty?
    @charges -= 1
    true
  end

  def recharge
    @charges = HealingVial::MAX_CHARGES
  end

  def add_charges(amount = 1)
    @charges = [@charges + amount, HealingVial::MAX_CHARGES].min
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :healing_vial_data

  def healing_vial_data
    @healing_vial_data ||= HealingVialData.new
  end
end

SaveData.register(:healing_vial_data) do
  save_value { $PokemonGlobal.healing_vial_data }
  load_value { |val| $PokemonGlobal.healing_vial_data = val }
  new_game_value { HealingVialData.new }
end

#===============================================================================
# Item Definition
#===============================================================================

GameData::Item.define :HEALINGVIAL do |i|
  i.name "Healing Vial"
  i.name_plural "Healing Vials"
  i.pocket 8
  i.field_use :"Direct"
  i.description "A mystical vial brimming with restorative energy. Fully heals all party Pokemon. Has limited charges; recharge it at a Pokemon Center."
end

#===============================================================================
# Item Handlers
#===============================================================================

ItemHandlers::UseFromBag.add(:HEALINGVIAL, proc { |item|
  next 0 unless HealingVial::ENABLED
  data = $PokemonGlobal.healing_vial_data
  if data.empty?
    pbSEPlay(HealingVial::SE_EMPTY)
    pbMessage(_INTL("The Healing Vial is empty. Recharge it at a Pokemon Center."))
    next 0
  end
  if $player.party.length == 0
    pbMessage(_INTL("There are no Pokemon in your party."))
    next 0
  end
  needs_heal = $player.party.any? { |pkmn|
    pkmn.hp < pkmn.totalhp || pkmn.status != :NONE || pkmn.fainted? ||
    pkmn.moves.any? { |m| m && m.pp < m.total_pp }
  }
  unless needs_heal
    pbMessage(_INTL("Your party is already in perfect health!"))
    next 0
  end
  data.use_charge
  pbSEPlay(HealingVial::SE_HEAL)
  $player.party.each { |pkmn| pkmn.heal }
  pbMessage(_INTL("The vial glows warmly... All your Pokemon were fully healed!"))
  if data.empty?
    pbMessage(_INTL("The Healing Vial's energy has been depleted."))
  else
    pbMessage(_INTL("Charges remaining: {1}/{2}.", data.charges, HealingVial::MAX_CHARGES))
  end
  next 1
})

ItemHandlers::UseInField.add(:HEALINGVIAL, proc { |item|
  next false unless HealingVial::ENABLED
  data = $PokemonGlobal.healing_vial_data
  if data.empty?
    pbSEPlay(HealingVial::SE_EMPTY)
    pbMessage(_INTL("The Healing Vial is empty. Recharge it at a Pokemon Center."))
    next false
  end
  if $player.party.length == 0
    pbMessage(_INTL("There are no Pokemon in your party."))
    next false
  end
  needs_heal = $player.party.any? { |pkmn|
    pkmn.hp < pkmn.totalhp || pkmn.status != :NONE || pkmn.fainted? ||
    pkmn.moves.any? { |m| m && m.pp < m.total_pp }
  }
  unless needs_heal
    pbMessage(_INTL("Your party is already in perfect health!"))
    next false
  end
  data.use_charge
  pbSEPlay(HealingVial::SE_HEAL)
  $player.party.each { |pkmn| pkmn.heal }
  pbMessage(_INTL("The vial glows warmly... All your Pokemon were fully healed!"))
  if data.empty?
    pbMessage(_INTL("The Healing Vial's energy has been depleted."))
  else
    pbMessage(_INTL("Charges remaining: {1}/{2}.", data.charges, HealingVial::MAX_CHARGES))
  end
  next true
})

#===============================================================================
# Event helpers - for use in map events / scripts
#===============================================================================

# Give the player the Healing Vial
def pbReceiveHealingVial
  return unless HealingVial::ENABLED
  $bag.add(:HEALINGVIAL) if defined?($bag)
  $PokemonGlobal.healing_vial_data.recharge
  pbMessage(_INTL("You received a Healing Vial!"))
  pbMessage(_INTL("It can fully heal your party {1} times before needing a recharge.", HealingVial::MAX_CHARGES))
end

# Recharge the vial (call from Pokecenter events)
def pbRechargeHealingVial
  return unless HealingVial::ENABLED
  data = $PokemonGlobal.healing_vial_data
  return if data.charges == HealingVial::MAX_CHARGES
  old_charges = data.charges
  data.recharge
  pbSEPlay(HealingVial::SE_CHARGE)
  pbMessage(_INTL("Your Healing Vial was recharged! ({1}/{2})", data.charges, HealingVial::MAX_CHARGES))
end

# Check current charges
def pbHealingVialCharges
  $PokemonGlobal.healing_vial_data.charges
end

# Check if player has the vial
def pbHasHealingVial?
  return false unless defined?($bag)
  $bag.has?(:HEALINGVIAL)
end
