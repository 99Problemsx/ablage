#===============================================================================
# [SC] Mystery Gift — code-based and event-based gift redemption
#===============================================================================
# Two redemption paths:
#
#   1. CODE-based — player enters a string at the Mystery Gift kiosk (often
#      a "delivery person" NPC at any Pokémon Center). Codes come from
#      community events, milestones, or developer hand-outs.
#
#   2. EVENT-based — milestone unlocks, e.g. "first ending cleared" auto-
#      adds a redeemable gift the next time the player visits the kiosk.
#
# Gifts can be: a Pokemon, an item bundle, money, or a custom callback.
#
# Public API:
#   SCMysteryGift.register(:CODE_KEY, { ... })  — define a gift
#   SCMysteryGift.redeem_at_kiosk(npc_name)     — opens kiosk UI
#   SCMysteryGift.claim_milestone(:KEY)         — auto-unlock by milestone
#===============================================================================

module SCMysteryGift
  GIFTS = {}

  # Register a new gift. `data` is a Hash with one or more of:
  #   :name        => "Aurora's Shiny Houndour"  (displayed in UI)
  #   :description => "From Hilde, on your wedding day."
  #   :code        => "WEDDING-2026"             (case-insensitive)
  #   :milestone   => :ending_pure_light          (auto-unlock key)
  #   :pokemon     => [:HOUNDOUR, 5, { shiny: true, item: :LIFEORB,
  #                                     moves: [:CRUNCH], ability: :FLASHFIRE,
  #                                     name: "Brave" }]
  #   :items       => { POTION: 10, REVIVE: 3 }
  #   :money       => 5000
  #   :script      => proc { ... custom delivery ... }
  #   :one_time    => true   (default; can only be redeemed once per save)
  def self.register(key, data)
    GIFTS[key] = data
  end

  # Mark a milestone-unlocked gift as redeemable.
  def self.claim_milestone(milestone_key)
    GIFTS.each_pair do |key, data|
      next unless data[:milestone] == milestone_key
      $PokemonGlobal.sc_mg_pending ||= []
      $PokemonGlobal.sc_mg_pending << key unless $PokemonGlobal.sc_mg_pending.include?(key)
      $PokemonGlobal.sc_mg_pending << key  # add even if redeemed (handled in deliver)
    end
    $PokemonGlobal.sc_mg_pending.uniq!
  end

  # Opens the kiosk UI. Call from an NPC event.
  def self.redeem_at_kiosk(npc_name = "Delivery Person")
    redeemed = $PokemonGlobal.sc_mg_redeemed ||= []
    pending  = $PokemonGlobal.sc_mg_pending  ||= []

    choices = []
    choices << _INTL("Enter a code") if !GIFTS.values.all? { |g| g[:code].nil? }
    choices << _INTL("Claim pending gifts") if pending.any? { |k| !redeemed.include?(k) }
    choices << _INTL("Leave")

    case choices.length
    when 1
      pbMessage(_INTL("\\b{1}\\b: Nothing to deliver right now. Come back any time!", npc_name))
      return
    end

    pick = pbMessage(_INTL("\\b{1}\\b: What can I do for you?", npc_name), choices, choices.length)
    if choices[pick] == _INTL("Enter a code")
      sc_enter_code(npc_name)
    elsif choices[pick] == _INTL("Claim pending gifts")
      sc_claim_pending(npc_name)
    end
  end

  def self.sc_enter_code(npc_name)
    code = pbEnterText(_INTL("Enter your gift code:"), 0, 24)
    return if !code || code.empty?
    code_clean = code.strip.upcase
    found = GIFTS.find { |_k, data| data[:code] && data[:code].upcase == code_clean }
    unless found
      pbMessage(_INTL("\\b{1}\\b: I don't recognise that code...", npc_name))
      return
    end
    key, data = found
    if data[:one_time] != false && ($PokemonGlobal.sc_mg_redeemed || []).include?(key)
      pbMessage(_INTL("\\b{1}\\b: That code has already been redeemed.", npc_name))
      return
    end
    sc_deliver(key, data, npc_name)
  end

  def self.sc_claim_pending(npc_name)
    pending  = $PokemonGlobal.sc_mg_pending  ||= []
    redeemed = $PokemonGlobal.sc_mg_redeemed ||= []
    pending.each do |key|
      next if redeemed.include?(key)
      data = GIFTS[key]
      next unless data
      sc_deliver(key, data, npc_name)
    end
  end

  def self.sc_deliver(key, data, npc_name)
    pbMessage(_INTL("\\b{1}\\b: A gift has arrived: {2}!", npc_name, data[:name] || key.to_s))
    pbMessage(_INTL("\\b{1}\\b: {2}", npc_name, data[:description])) if data[:description]

    if data[:pokemon]
      species, level, opts = data[:pokemon]
      opts ||= {}
      pkmn = Pokemon.new(species, level)
      pkmn.shiny = true                              if opts[:shiny]
      pkmn.item  = opts[:item]                       if opts[:item]
      pkmn.ability = opts[:ability]                  if opts[:ability]
      pkmn.name = opts[:name]                        if opts[:name]
      opts[:moves]&.each_with_index { |m, i| pkmn.moves[i] = Pokemon::Move.new(m) }
      pbAddPokemon(pkmn)
    end
    data[:items]&.each_pair { |item, qty| $bag.add(item, qty) }
    if data[:money]
      $player.money = [$player.money + data[:money], Settings::MAX_MONEY].min
      pbMessage(_INTL("You received ${1}!", data[:money]))
    end
    data[:script]&.call

    $PokemonGlobal.sc_mg_redeemed ||= []
    $PokemonGlobal.sc_mg_redeemed << key
    # Unlock the Mystery Gift menu on the title screen.
    $player.mystery_gift_unlocked = true if $player.respond_to?(:mystery_gift_unlocked=)
  end
end

#===============================================================================
# Save-data accessors
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_mg_redeemed
  attr_accessor :sc_mg_pending
end

SaveData.register(:sc_mg_redeemed) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_mg_redeemed ||= [] }
  load_value { |v| $PokemonGlobal.sc_mg_redeemed = v }
  new_game_value { [] }
end

SaveData.register(:sc_mg_pending) do
  ensure_class :Array
  save_value { $PokemonGlobal.sc_mg_pending ||= [] }
  load_value { |v| $PokemonGlobal.sc_mg_pending = v }
  new_game_value { [] }
end

# Convenience script call
def pbScMysteryGift(name = "Delivery Person")
  SCMysteryGift.redeem_at_kiosk(name)
end
