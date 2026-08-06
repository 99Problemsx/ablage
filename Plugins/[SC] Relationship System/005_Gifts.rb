#===============================================================================
# [SC] Relationship System - Gift Sub-System
#
# Lets the player offer an item from their bag to a companion. Each character
# has loved/liked/disliked/hated items defined in 000_Config.rb. Giving a gift
# consumes the item and adjusts relationship points.
#
# Cooldown is enforced per character via player steps to prevent farming.
#
# Event usage:
#   pbGiveGift(:LYRA)
#===============================================================================

class RelationshipEntry
  attr_accessor :last_gift_step

  # Reaction symbol for an item (:LOVED/:LIKED/:NEUTRAL/:DISLIKED/:HATED)
  def gift_reaction(item_id)
    prefs = RelationshipSystem::GIFT_PREFERENCES[@character_id] || {}
    [:LOVED, :LIKED, :DISLIKED, :HATED].each do |key|
      list = prefs[key] || []
      return key if list.include?(item_id)
    end
    :NEUTRAL
  end

  def gift_cooldown_active?
    return false if @last_gift_step.nil?
    return false unless $stats
    elapsed = ($stats.steps_taken || 0) - @last_gift_step
    elapsed < RelationshipSystem::GIFT_COOLDOWN_STEPS
  end

  def steps_until_gift_ready
    return 0 if @last_gift_step.nil?
    return 0 unless $stats
    [RelationshipSystem::GIFT_COOLDOWN_STEPS -
       (($stats.steps_taken || 0) - @last_gift_step), 0].max
  end
end

# Open bag, let player pick an item, give it to the character.
def pbGiveGift(character_id)
  return false unless RelationshipSystem::ENABLED
  config = RelationshipSystem::CHARACTERS[character_id]
  unless config
    pbMessage(_INTL("[Relationship] Unknown character: {1}", character_id))
    return false
  end

  entry = pbRelationship.get(character_id)
  if entry.gift_cooldown_active?
    steps_left = entry.steps_until_gift_ready
    pbMessage(_INTL("{1} doesn't want another gift right now. ({2} steps to wait.)",
                    config[:name], steps_left))
    return false
  end

  # Choose item from bag
  item_id = nil
  pbChooseItem(proc { |it|
    item_data = GameData::Item.try_get(it)
    next false unless item_data
    next false if item_data.is_key_item?
    next false if item_data.is_HM? || item_data.is_TR?
    true
  }) { |chosen| item_id = chosen }
  return false if item_id.nil?

  unless $bag.has?(item_id)
    pbMessage(_INTL("You don't have that item."))
    return false
  end

  reaction = entry.gift_reaction(item_id)
  delta = RelationshipSystem::GIFT_POINTS[reaction] || 0
  item_name = GameData::Item.get(item_id).name
  $bag.remove(item_id, 1)
  pbRelationship.add_points(character_id, delta, "Gift: #{item_name}")
  entry.last_gift_step = ($stats.steps_taken || 0) if $stats

  case reaction
  when :LOVED
    pbMessage(_INTL("\\se[Mining found all]{1}: \"{2}?! I love this!\" (+{3})",
                    config[:name], item_name, delta))
  when :LIKED
    pbMessage(_INTL("\\se[GUI sel decision]{1}: \"Thanks for the {2}.\" (+{3})",
                    config[:name], item_name, delta))
  when :NEUTRAL
    pbMessage(_INTL("{1} accepts the {2} politely. (+{3})",
                    config[:name], item_name, delta))
  when :DISLIKED
    pbMessage(_INTL("\\se[GUI sel buzzer]{1}: \"...{2}? Oh.\" ({3})",
                    config[:name], item_name, delta))
  when :HATED
    pbMessage(_INTL("\\se[GUI sel buzzer]{1}: \"You think I want this?!\" ({2})",
                    config[:name], delta))
  end
  true
end

# Helper: list a character's preferences (for debug/UI use).
def pbGiftPreferences(character_id)
  prefs = RelationshipSystem::GIFT_PREFERENCES[character_id] || {}
  prefs.each do |reaction, items|
    next if items.nil? || items.empty?
    names = items.map { |i| GameData::Item.try_get(i)&.name || i.to_s }.join(", ")
    echoln "[#{reaction}] #{names}"
  end
end
