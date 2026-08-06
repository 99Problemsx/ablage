#===============================================================================
# [SC] Move Reminder — NPC service that teaches forgotten level-up moves
#===============================================================================
# Pokemon Essentials v21.1 ships pbMoveRelearner; this plugin just wraps it
# in an SC-flavoured NPC interaction with a payment option (Heart Scale or
# money). Distinct from [SC] Move Tutor Network, which teaches *special*
# moves (egg / tutor / event moves) — this one only relearns level-up
# moves that the Pokemon could have learned at its current level.
#
# Public API:
#   pbScMoveReminder("Old Sage")
#   pbScMoveReminder("Old Sage", cost: :money, price: 2000)
#   pbScMoveReminder("Old Sage", cost: :item, item: :HEARTSCALE)
#===============================================================================

module SCMoveReminder
  def self.run(npc_name = "Move Reminder", cost: :item, price: nil, item: :HEARTSCALE)
    pbMessage(_INTL("\\b{1}\\b: Show me a Pokémon, and I'll bring a move back into its memory.", npc_name))

    pbChoosePokemon(1, 2) do |idx, pkmn|
      next if !pkmn
      moves = sc_collect_relearnable(pkmn)
      if moves.empty?
        pbMessage(_INTL("\\b{1}\\b: This Pokémon has nothing left to remember.", npc_name))
        next
      end

      if !sc_pay_cost(cost, price, item, npc_name)
        pbMessage(_INTL("\\b{1}\\b: Come back when you can pay.", npc_name))
        next
      end

      # Use Essentials' built-in move relearner UI for the selection.
      pbMoveRelearner(pkmn)
      pbMessage(_INTL("\\b{1}\\b: The memory has returned. Use it well.", npc_name))
    end
  end

  # All level-up moves the Pokemon already knew at or below its current
  # level but is not currently holding. (Excludes egg / tutor / TM moves —
  # the Tutor Network handles those.)
  def self.sc_collect_relearnable(pkmn)
    list  = []
    learn = GameData::Species.get(pkmn.species).moves
    learn.each do |level_move|
      lvl, move = level_move
      next if lvl > pkmn.level
      next if pkmn.moves.any? { |m| m.id == move }
      list << move
    end
    list.uniq
  end

  # Returns true if the cost was paid successfully.
  def self.sc_pay_cost(cost, price, item, npc_name)
    case cost
    when :free
      true
    when :money
      pp = price || 2000
      if $player.money < pp
        pbMessage(_INTL("\\b{1}\\b: This costs ${2}. You don't have enough.", npc_name, pp))
        return false
      end
      return false unless pbConfirmMessage(_INTL("Pay ${1}?", pp))
      $player.money -= pp
      true
    when :item
      it = item || :HEARTSCALE
      if !$bag.has?(it)
        item_name = GameData::Item.try_get(it)&.name || it.to_s
        pbMessage(_INTL("\\b{1}\\b: I need one {2}. You don't have any.", npc_name, item_name))
        return false
      end
      item_name = GameData::Item.get(it).name
      return false unless pbConfirmMessage(_INTL("Give one {1}?", item_name))
      $bag.remove(it, 1)
      true
    end
  end
end

# Script-call alias. Defaults to Heart Scale cost.
def pbScMoveReminder(name = "Old Sage", **opts)
  SCMoveReminder.run(name, **opts)
end
