#===============================================================================
# [SC] Reputation System - Core Data
#===============================================================================

class ReputationSaveData
  attr_accessor :factions  # { faction_id => points }

  def initialize
    @factions = {}
    ReputationSystem::FACTIONS.each do |id, config|
      @factions[id] = config[:start] || 0
    end
  end

  def points(faction_id)
    @factions[faction_id] || 0
  end

  def tier(faction_id)
    pts = points(faction_id)
    current_tier = :NEUTRAL
    ReputationSystem::TIERS.each do |tier_name, threshold|
      current_tier = tier_name if pts >= threshold
    end
    current_tier
  end

  def add(faction_id, amount, reason = "")
    return unless @factions.key?(faction_id)
    old_tier = tier(faction_id)
    @factions[faction_id] = (@factions[faction_id] + amount).clamp(
      ReputationSystem::REP_MIN, ReputationSystem::REP_MAX
    )
    new_tier = tier(faction_id)

    if ReputationSystem::SHOW_NOTIFICATIONS && amount != 0
      name = ReputationSystem::FACTIONS[faction_id][:name]
      if amount > 0
        pbMessage(_INTL("\\se[{1}]▲ {2} reputation increased! (+{3})",
                        ReputationSystem::SE_REP_CHANGE, name, amount))
      else
        pbMessage(_INTL("\\se[{1}]▼ {2} reputation decreased. ({3})",
                        ReputationSystem::SE_REP_CHANGE, name, amount))
      end
    end

    if old_tier != new_tier && ReputationSystem::DEBUG_MODE
      echoln "[SC] Reputation: #{faction_id} tier #{old_tier} -> #{new_tier}"
    end
  end

  def meets_tier?(faction_id, required_tier)
    required_val = ReputationSystem::TIERS[required_tier] || 0
    points(faction_id) >= required_val
  end

  def shop_modifier(faction_id)
    t = tier(faction_id)
    ReputationSystem::SHOP_MODIFIERS[t] || 1.0
  end
end

SaveData.register(:reputation_data) do
  save_value { $ReputationData }
  load_value { |val| $ReputationData = val || ReputationSaveData.new }
  new_game_value { ReputationSaveData.new }
end

def pbReputation
  $ReputationData ||= ReputationSaveData.new
end

#===============================================================================
# Event helpers
#===============================================================================

def repChange(faction_id, amount, reason = "")
  return unless ReputationSystem::ENABLED
  pbReputation.add(faction_id, amount, reason)
end

def repTier?(faction_id, required_tier)
  return false unless ReputationSystem::ENABLED
  pbReputation.meets_tier?(faction_id, required_tier)
end

def repPoints(faction_id)
  pbReputation.points(faction_id)
end

def repShopMod(faction_id)
  pbReputation.shop_modifier(faction_id)
end

#===============================================================================
# Event comment tags: [Reputation ASGHEIM_GUARD +10]
#===============================================================================

EventHandlers.add(:on_event_interaction, :sc_reputation_tags,
  proc { |event|
    next unless ReputationSystem::ENABLED
    next unless event
    event.list.each do |cmd|
      next unless cmd.code == 108 || cmd.code == 408
      if cmd.parameters[0] =~ /\[Reputation\s+(\w+)\s+([+-]?\d+)\]/i
        faction = $1.upcase.to_sym
        amount = $2.to_i
        repChange(faction, amount, "Event tag")
      end
    end
  }
)
