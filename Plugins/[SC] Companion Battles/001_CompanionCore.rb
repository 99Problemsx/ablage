#===============================================================================
# [SC] Companion Battles - Core Logic
# Provides helper to start companion tag-team battles.
#===============================================================================

module CompanionBattleManager
  #=============================================================================
  # Start a companion tag-team battle
  # companion_key: Symbol key from CompanionBattles::COMPANIONS
  # opponent_type: Enemy trainer type symbol
  # opponent_name: Enemy trainer name string
  # Returns: 1 = won, 2 = lost, 3 = fled, 5 = draw
  #=============================================================================

  def self.start(companion_key, opponent_type, opponent_name)
    config = CompanionBattles::COMPANIONS[companion_key]
    unless config
      Console.echoln("[SC] Companion Battles: Unknown companion #{companion_key}") if CompanionBattles::DEBUG_MODE
      return 2
    end

    # Guard: the companion's trainer_type must actually exist in PBS/trainers.
    # Without this guard pbDoubleTrainerBattle would crash with a NameError
    # when an event author wires up a companion before the trainer is defined
    # (common during early story authoring).
    unless GameData::TrainerType.exists?(config[:trainer_type])
      pbMessage(_INTL("(\\c[6]Companion Battle skipped: trainer {1} is not defined yet.\\c[0])",
                       config[:trainer_type])) if $DEBUG
      Console.echoln("[SC] Companion Battles: missing trainer_type #{config[:trainer_type]} for #{companion_key}") if CompanionBattles::DEBUG_MODE
      return 2
    end

    # Pre-battle dialogue
    if CompanionBattles::SHOW_DIALOGUE
      pbMessage(_INTL("{1}: \"{2}\"", config[:display_name], config[:pre_battle_line]))
    end

    # Sound effect
    pbSEPlay(CompanionBattles::SE_COMPANION_JOIN) if CompanionBattles::SE_COMPANION_JOIN

    # Apply relationship bonus if available
    apply_relationship_bonus(companion_key) if CompanionBattles::RELATIONSHIP_BONUS_ENABLED

    # Run the double battle: player + companion vs opponent
    result = pbDoubleTrainerBattle(
      opponent_type, opponent_name, nil, nil,
      config[:trainer_type], config[:display_name]
    )

    # Post-battle dialogue
    if CompanionBattles::SHOW_DIALOGUE
      case result
      when 1
        pbMessage(_INTL("{1}: \"{2}\"", config[:display_name], config[:victory_line]))
        grant_relationship_bonus(companion_key, :WIN) if defined?(relChange)
      when 2
        pbMessage(_INTL("{1}: \"{2}\"", config[:display_name], config[:defeat_line]))
      end
    end

    # Remove relationship stat boosts
    remove_relationship_bonus(companion_key) if CompanionBattles::RELATIONSHIP_BONUS_ENABLED

    result
  end

  #=============================================================================
  # Relationship-based stat boost
  #=============================================================================

  def self.apply_relationship_bonus(companion_key)
    return unless defined?(RelationshipSystem) && defined?(RelationshipManager)
    char_name = CompanionBattles::COMPANIONS[companion_key][:display_name].upcase.to_sym
    tier = RelationshipManager.tier(char_name) rescue 0
    return unless tier > 2
    bonus = (tier - 2) * CompanionBattles::RELATIONSHIP_STAT_BOOST
    # Store the bonus for removal later
    $PokemonGlobal.sc_companion_bonus = bonus
  end

  def self.remove_relationship_bonus(_companion_key)
    $PokemonGlobal.sc_companion_bonus = 0 if $PokemonGlobal.respond_to?(:sc_companion_bonus=)
  end

  def self.grant_relationship_bonus(companion_key, _outcome)
    char_name = CompanionBattles::COMPANIONS[companion_key][:display_name].upcase.to_sym
    relChange(char_name, 3) if defined?(relChange)
  end
end

#===============================================================================
# Global metadata extension for stat bonus tracking
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :sc_companion_bonus

  def sc_companion_bonus
    @sc_companion_bonus ||= 0
  end
end

#===============================================================================
# Event helper — call from events
# Usage: pbCompanionBattle(:LYRA, :TEAMROCKET, "Grunt")
#===============================================================================

def pbCompanionBattle(companion_key, opponent_type, opponent_name)
  return 2 unless CompanionBattles::ENABLED
  CompanionBattleManager.start(companion_key, opponent_type, opponent_name)
end

#===============================================================================
# Event tag: [CompanionBattle COMPANION ENEMY_TYPE ENEMY_NAME]
#===============================================================================

EventHandlers.add(:on_event_comment_tag, :sc_companion_battle_tag,
  proc { |event, tag, params|
    next unless tag == "CompanionBattle" && params.length >= 3
    companion_key  = params[0].to_sym
    opponent_type  = params[1].to_sym
    opponent_name  = params[2]
    pbCompanionBattle(companion_key, opponent_type, opponent_name)
  }
)
