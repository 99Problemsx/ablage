#===============================================================================
# [SC] Relationship System - Dialogue Hooks
# Provides event commands for changing relationship via dialogue choices.
#===============================================================================

#===============================================================================
# Event Command Helpers (call from events)
#===============================================================================

# Change relationship points from an event
# Usage in event Script: relChange(:LYRA, 10, "Helped her in the forest")
def relChange(character_id, amount, reason = "")
  return unless RelationshipSystem::ENABLED
  pbRelationship.add_points(character_id, amount, reason)
end

# Check relationship tier (for Conditional Branch)
# Usage in event Conditional Branch (Script): relTier?(:KAEL, :FRIEND)
def relTier?(character_id, required_tier)
  return false unless RelationshipSystem::ENABLED
  pbRelationship.meets_tier?(character_id, required_tier)
end

# Get current points (for variable assignment)
# Usage: relPoints(:LYRA) => integer
def relPoints(character_id)
  return 0 unless RelationshipSystem::ENABLED
  pbRelationship.points(character_id)
end

# Get current tier symbol
# Usage: relCurrentTier(:KAEL) => :COLD, :WARM, etc.
def relCurrentTier(character_id)
  return :NEUTRAL unless RelationshipSystem::ENABLED
  pbRelationship.tier(character_id)
end

# Check if a gated scene is available
# Usage in event Conditional Branch (Script): relSceneAvailable?("lyra_confession")
def relSceneAvailable?(scene_label)
  return true unless RelationshipSystem::ENABLED
  reqs = RelationshipSystem::SCENE_REQUIREMENTS[scene_label]
  return true unless reqs
  reqs.all? { |char_id, min_tier| relTier?(char_id, min_tier) }
end

#===============================================================================
# Event Comment Tag Support
# Place in event comments: [Relationship LYRA +10]  or [Relationship KAEL -5]
#===============================================================================

EventHandlers.add(:on_event_interaction, :sc_relationship_tags,
  proc { |event|
    next unless RelationshipSystem::ENABLED
    next unless event
    event.list.each do |cmd|
      next unless cmd.code == 108 || cmd.code == 408
      if cmd.parameters[0] =~ /\[Relationship\s+(\w+)\s+([+-]?\d+)\]/i
        char_id = $1.upcase.to_sym
        amount  = $2.to_i
        relChange(char_id, amount, "Event tag")
      end
    end
  }
)
