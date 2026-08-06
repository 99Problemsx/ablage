#===============================================================================
# [SC] Rune Forging - Core Logic
# Combine two base runes into a hybrid rune with merged boosts and a drawback.
# Requires: [SC] Rune System
#===============================================================================

#===============================================================================
# Forge Manager
#===============================================================================

module RuneForgeManager
  #=============================================================================
  # Look up recipe for two runes (order-independent)
  #=============================================================================

  def self.recipe_for(rune_a, rune_b)
    key = [rune_a, rune_b].sort
    RuneForging::RECIPES[key]
  end

  #=============================================================================
  # Register a forged rune as a dynamic entry in RuneSystem::RUNES
  #=============================================================================

  def self.register_hybrid(rune_a, rune_b)
    recipe = recipe_for(rune_a, rune_b)
    return nil unless recipe
    hybrid_key = hybrid_key_for(rune_a, rune_b)

    # Merge bonus + drawback into a single stat_boosts hash
    merged = {}
    recipe[:bonus].each { |stat, val| merged[stat] = (merged[stat] || 0) + val }
    recipe[:drawback].each { |stat, val| merged[stat] = (merged[stat] || 0) + val }

    # Register as a Rune System rune so equip/stat hooks just work
    RuneSystem::RUNES[hybrid_key] = {
      :name        => recipe[:name],
      :description => recipe[:description],
      :stat_boosts => merged,
      :special     => recipe[:special],
      :tier        => recipe[:tier] || 4,
      :forged_from => [rune_a, rune_b],
    }

    hybrid_key
  end

  def self.hybrid_key_for(rune_a, rune_b)
    sorted = [rune_a, rune_b].sort
    :"HYBRID_#{sorted[0]}_#{sorted[1]}"
  end

  #=============================================================================
  # Forge two runes: consumes both, produces a hybrid
  #=============================================================================

  def self.forge(rune_a, rune_b)
    data = RuneManager.data

    # Validate ownership
    unless data.own?(rune_a) && data.own?(rune_b)
      pbSEPlay(RuneForging::SE_FAIL)
      pbMessage(_INTL("You don't own both runes needed."))
      return false
    end

    # Validate recipe exists
    recipe = recipe_for(rune_a, rune_b)
    unless recipe
      pbSEPlay(RuneForging::SE_FAIL)
      pbMessage(_INTL("These two runes cannot be combined."))
      return false
    end

    # Check if already forged
    hybrid_key = hybrid_key_for(rune_a, rune_b)
    if data.own?(hybrid_key)
      pbSEPlay(RuneForging::SE_FAIL)
      pbMessage(_INTL("You already possess the {1}.", recipe[:name]))
      return false
    end

    # Check neither rune is currently equipped
    if data.rune_in_use?(rune_a) || data.rune_in_use?(rune_b)
      pbSEPlay(RuneForging::SE_FAIL)
      pbMessage(_INTL("Unequip both runes before forging."))
      return false
    end

    # Confirm
    return false unless pbConfirmMessage(_INTL(
      "Forge {1} + {2} into the {3}?\nBoth original runes will be consumed.",
      RuneSystem::RUNES[rune_a][:name],
      RuneSystem::RUNES[rune_b][:name],
      recipe[:name]
    ))

    # Consume originals
    data.discovered_runes.delete(rune_a)
    data.discovered_runes.delete(rune_b)

    # Register hybrid and grant it
    register_hybrid(rune_a, rune_b)
    data.add_rune(hybrid_key)

    pbSEPlay(RuneForging::SE_FORGE)
    # Forge glow shader ([SC] Visual Effects). Safe-noop if absent.
    pbApplyShader(:rune_forging) if defined?(pbApplyShader)
    pbMessage(_INTL("The runes merge in Yggdrasil's light..."))
    pbMessage(_INTL("You forged the {1}!", recipe[:name]))
    pbMessage(_INTL("{1}", recipe[:description]))
    pbRemoveShader(:rune_forging) if defined?(pbRemoveShader)

    # Lore Codex integration
    codexDiscover(:"RUNE_FORGED_#{hybrid_key}") if defined?(codexDiscover)

    # Memory Lane integration
    if defined?(MemoryLane)
      MemoryLane.record(:rune_forged, recipe[:name]) rescue nil
    end

    true
  end

  #=============================================================================
  # Open forge menu — pick two runes from inventory
  #=============================================================================

  def self.open_forge_menu
    unless RuneForging::ENABLED
      pbMessage(_INTL("Rune forging is not available."))
      return
    end

    data = RuneManager.data
    base_runes = data.discovered_runes.select { |r|
      cfg = RuneSystem::RUNES[r]
      cfg && !cfg[:forged_from]  # Only base runes, not hybrids
    }

    if base_runes.length < 2
      pbMessage(_INTL("You need at least two base runes to forge."))
      return
    end

    # Pick first rune
    names1 = base_runes.map { |r| RuneSystem::RUNES[r][:name] }
    names1.push("Cancel")
    idx1 = pbMessage(_INTL("Choose the first rune:"), names1, names1.length)
    return if idx1 == names1.length - 1
    rune_a = base_runes[idx1]

    # Pick second rune (exclude first)
    remaining = base_runes.reject { |r| r == rune_a }
    # Show only runes that have valid recipes with rune_a
    compatible = remaining.select { |r| recipe_for(rune_a, r) }

    if compatible.empty?
      pbMessage(_INTL("No compatible runes can be combined with the {1}.",
                       RuneSystem::RUNES[rune_a][:name]))
      return
    end

    names2 = compatible.map { |r|
      recipe = recipe_for(rune_a, r)
      "#{RuneSystem::RUNES[r][:name]} -> #{recipe[:name]}"
    }
    names2.push("Cancel")
    idx2 = pbMessage(_INTL("Choose the second rune:"), names2, names2.length)
    return if idx2 == names2.length - 1
    rune_b = compatible[idx2]

    # Forge them
    forge(rune_a, rune_b)
  end
end

#===============================================================================
# Re-register hybrids on save load (RuneSystem::RUNES is not saved)
#===============================================================================

SaveData.register_conversion(:rune_forging_v1) do
  essentials_version 21
  display_title "Re-registering forged rune definitions"
  to_all { |data|
    # Nothing to convert — handled on load
  }
end

EventHandlers.add(:on_game_load, :sc_rune_forging_restore,
  proc {
    next unless RuneForging::ENABLED
    next unless $PokemonGlobal&.rune_data
    data = $PokemonGlobal.rune_data
    data.discovered_runes.each do |rune_key|
      next unless rune_key.to_s.start_with?("HYBRID_")
      # Parse the two source runes from the key
      parts = rune_key.to_s.sub("HYBRID_", "").split("_", 2)
      next unless parts.length == 2
      rune_a = parts[0].to_sym
      rune_b = parts[1].to_sym
      # Re-register in RUNES hash if not already there
      unless RuneSystem::RUNES[rune_key]
        RuneForgeManager.register_hybrid(rune_a, rune_b)
      end
    end
  }
)

#===============================================================================
# Battle hook for :REGEN_CURE special (combined regen + status cure)
#===============================================================================

EventHandlers.add(:on_battle_end_round, :sc_rune_forge_regen_cure,
  proc { |battle|
    next unless RuneForging::ENABLED && RuneSystem::ENABLED && battle
    battle.battlers.each do |b|
      next unless b && !b.fainted? && b.pokemon
      effect = RuneManager.special_effect(b.pokemon)
      next unless effect == :REGEN_CURE
      # Regen
      heal_amt = [b.totalhp / RuneSystem::REGEN_FRACTION, 1].max
      if b.hp < b.totalhp
        b.pbRecoverHP(heal_amt, false)
        battle.pbDisplay(_INTL("{1}'s forged rune pulses with life!", b.pbThis))
      end
      # Status cure
      if b.status != :NONE
        turns_active = b.statusCount rescue 0
        cure_turns = RuneSystem::STATUS_CURE_TURNS rescue 3
        if turns_active >= cure_turns
          old_status = b.status
          b.pbCureStatus(false)
          battle.pbDisplay(_INTL("{1}'s rune purged the {2}!", b.pbThis,
            GameData::Status.get(old_status).name))
        end
      end
    end
  }
)

#===============================================================================
# Script helper for events
#===============================================================================

def pbOpenRuneForge
  RuneForgeManager.open_forge_menu
end

AdvancedAI.log("Rune Forging System loaded (28 hybrid recipes)", "RuneForging") if defined?(AdvancedAI)
