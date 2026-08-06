#===============================================================================
# [SC] Ancestral Weapons - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class AncestralWeaponData
  attr_accessor :weapons  # { :ZACIANS_FANG => { :stage => 1, :ko_count => 0, :unlocked => false }, ... }

  def initialize
    @weapons = {}
    AncestralWeapons::WEAPONS.each_key do |key|
      @weapons[key] = { :stage => 1, :ko_count => 0, :unlocked => false }
    end
  end

  def unlocked?(weapon_id)
    @weapons[weapon_id] && @weapons[weapon_id][:unlocked]
  end

  def unlock(weapon_id)
    return unless @weapons[weapon_id]
    @weapons[weapon_id][:unlocked] = true
  end

  def stage(weapon_id)
    return 0 unless @weapons[weapon_id]
    @weapons[weapon_id][:stage]
  end

  def ko_count(weapon_id)
    return 0 unless @weapons[weapon_id]
    @weapons[weapon_id][:ko_count]
  end

  def add_ko(weapon_id, count = 1)
    return unless @weapons[weapon_id] && @weapons[weapon_id][:unlocked]
    @weapons[weapon_id][:ko_count] += count
  end

  def set_stage(weapon_id, new_stage)
    return unless @weapons[weapon_id]
    @weapons[weapon_id][:stage] = new_stage
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :ancestral_weapon_data

  def ancestral_weapon_data
    @ancestral_weapon_data ||= AncestralWeaponData.new
  end
end

SaveData.register(:ancestral_weapon_data) do
  save_value { $PokemonGlobal.ancestral_weapon_data }
  load_value { |val| $PokemonGlobal.ancestral_weapon_data = val }
  new_game_value { AncestralWeaponData.new }
end

#===============================================================================
# Weapon Manager
#===============================================================================

module AncestralWeaponManager
  def self.data
    $PokemonGlobal.ancestral_weapon_data
  end

  #=============================================================================
  # Unlock a weapon (called from events)
  #=============================================================================

  def self.unlock_weapon(weapon_id)
    return unless AncestralWeapons::ENABLED
    return unless AncestralWeapons::WEAPONS[weapon_id]
    return if data.unlocked?(weapon_id)

    data.unlock(weapon_id)
    weapon_def = AncestralWeapons::WEAPONS[weapon_id]
    stage_info = weapon_def[:stages][1]

    pbSEPlay(AncestralWeapons::SE_EQUIP)
    pbMessage(_INTL("You received the {1}!", stage_info[:name]))
    pbMessage(_INTL("\"{1}\"", stage_info[:description]))

    # Lore Codex integration
    codexDiscover(:"WEAPON_#{weapon_id}") if defined?(codexDiscover)
  end

  #=============================================================================
  # Check for stage evolution after KOs
  #=============================================================================

  def self.check_evolution(weapon_id)
    return unless AncestralWeapons::ENABLED
    return unless data.unlocked?(weapon_id)
    weapon_def = AncestralWeapons::WEAPONS[weapon_id]
    return unless weapon_def

    current_stage = data.stage(weapon_id)
    kos = data.ko_count(weapon_id)

    AncestralWeapons::STAGE_THRESHOLDS.each do |stage, threshold|
      next if stage <= current_stage
      next if kos < threshold

      data.set_stage(weapon_id, stage)
      stage_info = weapon_def[:stages][stage]

      if AncestralWeapons::EVOLVE_ANIMATION
        pbSEPlay(AncestralWeapons::SE_EVOLVE)
        pbFlash(Color.new(255, 255, 200), 20)
      end

      pbMessage(_INTL("\\se[]{1} has evolved into {2}!",
                       weapon_def[:stages][current_stage][:name], stage_info[:name]))
      pbMessage(_INTL("\"{1}\"", stage_info[:description]))

      # Codex update
      codexDiscover(:"WEAPON_#{weapon_id}_STAGE#{stage}") if defined?(codexDiscover)

      break  # Only one evolution at a time
    end
  end

  #=============================================================================
  # Get weapon info by ID
  #=============================================================================

  def self.weapon_stage_info(weapon_id)
    return nil unless AncestralWeapons::WEAPONS[weapon_id]
    return nil unless data.unlocked?(weapon_id)
    stage = data.stage(weapon_id)
    AncestralWeapons::WEAPONS[weapon_id][:stages][stage]
  end

  #=============================================================================
  # Process KOs after battle
  #=============================================================================

  def self.process_battle_kos(ko_count)
    return unless AncestralWeapons::ENABLED
    AncestralWeapons::WEAPONS.each_key do |weapon_id|
      next unless data.unlocked?(weapon_id)
      data.add_ko(weapon_id, ko_count)
      check_evolution(weapon_id)
    end
  end
end

#===============================================================================
# Battle Integration — Track KOs
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_ancestral_weapon_kos,
  proc { |result, _can_lose|
    next unless AncestralWeapons::ENABLED
    next unless result == 1  # Player won
    ko_count = $player.party.reject(&:egg?).count { |p| p.hp > 0 }
    ko_count = [ko_count, 1].max
    AncestralWeaponManager.process_battle_kos(ko_count)
  }
)

#===============================================================================
# Battle Integration — Damage Multipliers (ATK / SpATK boosts)
# Applies weapon percentage boosts to all player-side Pokémon.
#===============================================================================

class Battle::Move
  alias sc_ancestral_pbCalcDamageMultipliers pbCalcDamageMultipliers unless method_defined?(:sc_ancestral_pbCalcDamageMultipliers)
  def pbCalcDamageMultipliers(user, target, numTargets, type, baseDmg, multipliers)
    sc_ancestral_pbCalcDamageMultipliers(user, target, numTargets, type, baseDmg, multipliers)
    return unless AncestralWeapons::ENABLED
    return unless user.pbOwnedByPlayer?
    AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
      next unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
      stage = $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
      info  = weapon_def[:stages][stage]
      next unless info
      # Physical attack boost
      if info[:atk_boost] > 0 && physicalMove?
        multipliers[:attack_multiplier] *= (1.0 + info[:atk_boost] / 100.0)
      end
      # Special attack boost
      if info[:spatk_boost] > 0 && specialMove?
        multipliers[:attack_multiplier] *= (1.0 + info[:spatk_boost] / 100.0)
      end
      # STEEL_PIERCE: Steel-type moves get +30% power (pierce flavor)
      if info[:effect] == :STEEL_PIERCE && type == :STEEL
        multipliers[:power_multiplier] *= 1.3
      end
    end
  end
end

#===============================================================================
# Battle Integration — Speed Boost
#===============================================================================

class Battle::Battler
  alias sc_ancestral_pbSpeed pbSpeed unless method_defined?(:sc_ancestral_pbSpeed)
  def pbSpeed
    ret = sc_ancestral_pbSpeed
    return ret unless AncestralWeapons::ENABLED
    return ret unless pbOwnedByPlayer?
    AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
      next unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
      stage = $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
      info  = weapon_def[:stages][stage]
      next unless info
      if info[:speed_boost] > 0
        ret = (ret * (1.0 + info[:speed_boost] / 100.0)).round
      end
    end
    ret
  end
end

#===============================================================================
# Battle Integration — Critical Hit Boost (Zacian Stage 2+)
#===============================================================================

class Battle::Move
  alias sc_ancestral_pbCalcCrit pbIsCritical? unless method_defined?(:sc_ancestral_pbCalcCrit)
  def pbIsCritical?(user, target)
    # Check for Zacian CRIT_BOOST before normal calc
    if AncestralWeapons::ENABLED && user.pbOwnedByPlayer?
      AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
        next unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
        stage = $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
        info  = weapon_def[:stages][stage]
        next unless info && info[:effect] == :CRIT_BOOST
        # +1 crit stage effectively — simulate by giving 25% crit chance
        return true if rand(100) < 25
      end
    end
    sc_ancestral_pbCalcCrit(user, target)
  end
end

#===============================================================================
# Battle Integration — Flinch (Yveltal DARK_FEAR: 20% on Dark moves)
#===============================================================================

class Battle::Move
  alias sc_ancestral_pbAdditionalEffect pbAdditionalEffect unless method_defined?(:sc_ancestral_pbAdditionalEffect)
  def pbAdditionalEffect(user, target)
    sc_ancestral_pbAdditionalEffect(user, target)
    return unless AncestralWeapons::ENABLED
    return unless user.pbOwnedByPlayer?
    return if target.damageState.substitute
    return if target.fainted?
    AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
      next unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
      stage = $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
      info  = weapon_def[:stages][stage]
      next unless info && info[:effect] == :DARK_FEAR
      next unless calcType == :DARK
      target.pbFlinch(user) if rand(100) < 20
    end
  end
end

#===============================================================================
# Battle Integration — HP Drain (Yveltal DARK_DRAIN: Dark moves heal 15%)
# and Lifesteal (Xerneas FAIRY_LIFESTEAL: Fairy moves heal 25%)
#===============================================================================

class Battle::Move
  alias sc_ancestral_pbEffectAgainstTarget pbEffectAgainstTarget unless method_defined?(:sc_ancestral_pbEffectAgainstTarget)
  def pbEffectAgainstTarget(user, target)
    sc_ancestral_pbEffectAgainstTarget(user, target)
    return unless AncestralWeapons::ENABLED
    return unless user.pbOwnedByPlayer?
    return if target.damageState.hpLost <= 0
    AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
      next unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
      stage = $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
      info  = weapon_def[:stages][stage]
      next unless info
      case info[:effect]
      when :DARK_DRAIN
        next unless calcType == :DARK
        heal = (target.damageState.hpLost * 0.15).round
        user.pbRecoverHPFromDrain(heal, target) if heal > 0
      when :FAIRY_LIFESTEAL
        next unless calcType == :FAIRY
        heal = (target.damageState.hpLost * 0.25).round
        user.pbRecoverHPFromDrain(heal, target) if heal > 0
      end
    end
  end
end

#===============================================================================
# Battle Integration — End-of-Round HP Regen (Xerneas HEAL_16: 1/16 HP)
#===============================================================================

EventHandlers.add(:on_battle_end_round, :sc_ancestral_weapon_regen,
  proc { |battle|
    next unless AncestralWeapons::ENABLED
    AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
      next unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
      stage = $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
      info  = weapon_def[:stages][stage]
      next unless info && info[:effect] == :HEAL_16
      battle.allSameSideBattlers(0).each do |b|
        next if b.fainted?
        heal = [b.totalhp / 16, 1].max
        b.pbRecoverHP(heal, false)
        battle.pbDisplay(_INTL("{1} is healed by ancestral energy!", b.pbThis))
      end
    end
  }
)

#===============================================================================
# Event Helpers
#===============================================================================

# Unlock a weapon from an event
# Usage in Script command: pbUnlockWeapon(:ZACIANS_FANG)
def pbUnlockWeapon(weapon_id)
  AncestralWeaponManager.unlock_weapon(weapon_id)
end

# Check if weapon is unlocked
def pbHasWeapon?(weapon_id)
  $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
end

# Get weapon stage
def pbWeaponStage(weapon_id)
  $PokemonGlobal.ancestral_weapon_data.stage(weapon_id)
end

# Show weapon status
def pbWeaponStatus
  data = $PokemonGlobal.ancestral_weapon_data
  any_unlocked = false

  AncestralWeapons::WEAPONS.each do |weapon_id, weapon_def|
    next unless data.unlocked?(weapon_id)
    any_unlocked = true
    stage = data.stage(weapon_id)
    info = weapon_def[:stages][stage]
    kos = data.ko_count(weapon_id)

    pbMessage(_INTL("=== {1} ===", info[:name]))
    pbMessage(_INTL("Stage: {1}/3 | KOs: {2}", stage, kos))
    pbMessage(_INTL("{1}", info[:description]))

    # Show next threshold
    next_stage = stage + 1
    threshold = AncestralWeapons::STAGE_THRESHOLDS[next_stage]
    if threshold
      remaining = threshold - kos
      pbMessage(_INTL("Next evolution: {1} more KOs needed.", [remaining, 0].max))
    else
      pbMessage(_INTL("FULLY EVOLVED — Maximum power reached!"))
    end
  end

  pbMessage(_INTL("No ancestral weapons unlocked yet.")) unless any_unlocked
end

# Grant KOs manually (debug/event)
def pbAddWeaponKOs(weapon_id, count)
  return unless $PokemonGlobal.ancestral_weapon_data.unlocked?(weapon_id)
  $PokemonGlobal.ancestral_weapon_data.add_ko(weapon_id, count)
  AncestralWeaponManager.check_evolution(weapon_id)
end
