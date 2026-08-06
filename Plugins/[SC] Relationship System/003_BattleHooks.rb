#===============================================================================
# [SC] Relationship System - Battle Hooks
# Awards relationship points based on in-battle actions with companion trainers.
#===============================================================================

# Track companion presence in doubles battles
module RelationshipBattleTracker
  @active_companion = nil
  @ally_protected   = false
  @ally_healed      = false
  @ally_fainted     = false

  class << self
    attr_accessor :active_companion, :ally_protected, :ally_healed, :ally_fainted
  end

  def self.reset
    @active_companion = nil
    @ally_protected   = false
    @ally_healed      = false
    @ally_fainted     = false
  end

  def self.active?
    @active_companion != nil
  end
end

#===============================================================================
# Set companion for the current battle (call before doubles with story partner)
# Usage in event: relSetBattleCompanion(:LYRA)
#===============================================================================

def relSetBattleCompanion(character_id)
  RelationshipBattleTracker.reset
  RelationshipBattleTracker.active_companion = character_id
end

def relClearBattleCompanion
  RelationshipBattleTracker.reset
end

#===============================================================================
# Battle End Hook — award points based on tracked actions
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_relationship_battle_end,
  proc { |_decision, _canLose|
    next unless RelationshipSystem::ENABLED
    next unless RelationshipBattleTracker.active?
    companion = RelationshipBattleTracker.active_companion

    if RelationshipBattleTracker.ally_protected
      relChange(companion, RelationshipSystem::BATTLE_PROTECT_ALLY, "Protected ally in battle")
    end
    if RelationshipBattleTracker.ally_healed
      relChange(companion, RelationshipSystem::BATTLE_HEAL_ALLY, "Healed ally in battle")
    end
    if RelationshipBattleTracker.ally_fainted
      relChange(companion, RelationshipSystem::BATTLE_ALLY_FAINTED, "Ally fainted in battle")
    end
    if _decision == 1 # Win
      relChange(companion, RelationshipSystem::BATTLE_WIN_TOGETHER, "Won battle together")
    end

    RelationshipBattleTracker.reset
  }
)

#===============================================================================
# Move usage tracking — Protect/Follow Me/Healing moves
#===============================================================================

EventHandlers.add(:on_move_usage, :sc_relationship_move_track,
  proc { |_battle, move, user, targets|
    next unless RelationshipSystem::ENABLED
    next unless RelationshipBattleTracker.active?
    next unless user.index == 0  # Player's Pokemon only

    # Check for protective moves aimed at ally position
    if [:PROTECT, :WIDEGUARD, :QUICKGUARD, :FOLLOWME, :RAGEPOWDER, :ALLYSWITCH].include?(move.id)
      RelationshipBattleTracker.ally_protected = true
    end

    # Check for healing moves used on ally
    if move.healingMove? && targets.any? { |t| t.index == 2 }
      RelationshipBattleTracker.ally_healed = true
    end
  }
)

#===============================================================================
# Faint tracking — ally's Pokemon went down
#===============================================================================

EventHandlers.add(:on_faint, :sc_relationship_faint_track,
  proc { |_battle, battler|
    next unless RelationshipSystem::ENABLED
    next unless RelationshipBattleTracker.active?
    # Ally is index 2 in doubles
    if battler.index == 2
      RelationshipBattleTracker.ally_fainted = true
    end
  }
)
