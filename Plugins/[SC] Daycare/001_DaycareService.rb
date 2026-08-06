#===============================================================================
# [SC] Daycare Service — convenience layer over the built-in DayCare class
#===============================================================================
# Pokemon Essentials v21.1 already ships a full breeding/daycare system in
# Data/Scripts/012_Overworld/007_Overworld_DayCare.rb. This plugin just adds
# a clean event-script API and the SC-flavoured NPC dialogue.
#
# In an event script, drop a one-liner:
#   pbScDaycareTalk("Hilde")    # opens deposit/withdraw/egg menu
#
# Place the call in any NPC event. The Daycare itself persists across the
# whole game.
#===============================================================================

module SCDaycare
  # Default cost-per-level when withdrawing
  COST_PER_LEVEL = 100
  COST_BASE      = 100

  # Show the main daycare menu and route the user through deposit/withdraw/egg
  # interactions. Returns nothing — drives the conversation.
  def self.talk(npc_name = "Daycare Lady")
    loop do
      compat_var = nil
      compatibility = DayCare.get_compatibility(compat_var)
      choices = []
      action_keys = []
      DayCare.count.times do |i|
        name_var  = nil
        cost_var  = nil
        DayCare.get_details(i, name_var, cost_var)
        choices << _INTL("Withdraw {1}", $game_variables[name_var] || "Pokémon")
        action_keys << [:withdraw, i]
      end
      if DayCare.count < 2 && $player.party.count > 1
        choices << _INTL("Deposit a Pokémon")
        action_keys << [:deposit]
      end
      if DayCare.egg_generated?
        choices << _INTL("Take the Egg")
        action_keys << [:egg]
      end
      choices << _INTL("Compatibility") if DayCare.count == 2
      action_keys << [:compat] if DayCare.count == 2
      choices << _INTL("See you")
      action_keys << [:bye]

      choice = pbMessage(_INTL("\\b{1}\\b: What can I help you with?", npc_name),
                          choices, choices.length)
      action = action_keys[choice]
      break if !action || action[0] == :bye

      case action[0]
      when :deposit  then sc_deposit
      when :withdraw then sc_withdraw(action[1])
      when :egg      then sc_take_egg(npc_name)
      when :compat   then sc_show_compat(npc_name)
      end
    end
    pbMessage(_INTL("\\b{1}\\b: Come back any time.", npc_name))
  end

  def self.sc_deposit
    pbChooseAblePokemon(1) do |idx|
      DayCare.deposit(idx) if idx >= 0
    end
  end

  def self.sc_withdraw(slot)
    DayCare.withdraw(slot)
  end

  def self.sc_take_egg(npc_name)
    DayCare.collect_egg
    pbMessage(_INTL("\\b{1}\\b: Take good care of it!", npc_name))
  end

  def self.sc_show_compat(npc_name)
    compat_var = nil
    case DayCare.get_compatibility(compat_var)
    when 0 then pbMessage(_INTL("\\b{1}\\b: They don't seem to like each other.", npc_name))
    when 1 then pbMessage(_INTL("\\b{1}\\b: They get along.", npc_name))
    when 2 then pbMessage(_INTL("\\b{1}\\b: They get along very well!", npc_name))
    when 3 then pbMessage(_INTL("\\b{1}\\b: They get along the best!", npc_name))
    end
  end
end

# Script-call alias
def pbScDaycareTalk(name = "Daycare Lady")
  SCDaycare.talk(name)
end
