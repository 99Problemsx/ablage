#===============================================================================
# [SC] Relationship System - Core Data & Save Integration
#===============================================================================

class RelationshipEntry
  attr_accessor :character_id, :points, :history

  def initialize(character_id)
    @character_id = character_id
    config = RelationshipSystem::CHARACTERS[character_id]
    @points = config ? (config[:start_points] || RelationshipSystem::DEFAULT_START_POINTS) : 0
    @history = []  # Array of [timestamp, change, reason]
  end

  def tier
    RelationshipSystem::TIER_THRESHOLDS.keys.reverse.each do |t|
      return t if @points >= RelationshipSystem::TIER_THRESHOLDS[t]
    end
    :RIVAL
  end

  def tier_name
    tier.to_s.capitalize
  end

  def add_points(amount, reason = "")
    old_tier = tier
    @points = (@points + amount).clamp(
      RelationshipSystem::POINTS_MIN,
      RelationshipSystem::POINTS_MAX
    )
    @history.push([Graphics.frame_count, amount, reason])
    # Keep history manageable
    @history.shift if @history.length > 100
    new_tier = tier
    if old_tier != new_tier && RelationshipSystem::DEBUG_MODE
      name = RelationshipSystem::CHARACTERS[@character_id][:name] rescue @character_id.to_s
      echoln "[SC] Relationship: #{name} tier changed #{old_tier} -> #{new_tier} (#{@points})"
    end
    return old_tier != new_tier
  end

  def meets_tier?(required_tier)
    required_val = RelationshipSystem::TIER_THRESHOLDS[required_tier] || 0
    @points >= required_val
  end
end

#===============================================================================
# Global Data Container
#===============================================================================

class RelationshipManager
  attr_accessor :entries

  def initialize
    @entries = {}
    RelationshipSystem::CHARACTERS.each_key do |id|
      @entries[id] = RelationshipEntry.new(id)
    end
  end

  def get(character_id)
    @entries[character_id] ||= RelationshipEntry.new(character_id)
  end

  def points(character_id)
    get(character_id).points
  end

  def tier(character_id)
    get(character_id).tier
  end

  def add_points(character_id, amount, reason = "")
    return false unless RelationshipSystem::ENABLED
    entry = get(character_id)
    tier_changed = entry.add_points(amount, reason)
    if RelationshipSystem::SHOW_NOTIFICATIONS && amount != 0
      rel_show_notification(character_id, amount)
    end
    tier_changed
  end

  def meets_tier?(character_id, required_tier)
    get(character_id).meets_tier?(required_tier)
  end

  def rel_show_notification(character_id, amount)
    config = RelationshipSystem::CHARACTERS[character_id]
    return unless config
    name = config[:name]
    if amount > 0
      pbMessage(_INTL("\\se[GUI sel decision]♥ {1} appreciates that! (+{2})", name, amount))
    elsif amount < 0
      pbMessage(_INTL("\\se[GUI sel buzzer]{1} didn't like that... ({2})", name, amount))
    end
  end
end

#===============================================================================
# Save Data Registration
#===============================================================================

SaveData.register(:relationship_data) do
  save_value { $RelationshipData }
  load_value { |val| $RelationshipData = val || RelationshipManager.new }
  new_game_value { RelationshipManager.new }
end

#===============================================================================
# Global accessor
#===============================================================================

def pbRelationship
  $RelationshipData ||= RelationshipManager.new
end
