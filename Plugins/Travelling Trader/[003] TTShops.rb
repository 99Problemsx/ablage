#===============================================================================
# Travelling Trader
# v1.0 by BoydALoyd
# Shops Setup
#===============================================================================

module TravellingTrader

	#-----------------------------------------------------------------------------
	# Bag helpers
	#-----------------------------------------------------------------------------

	def self.item_exists?(item)
	return true if !defined?(GameData::Item)
	return GameData::Item.exists?(item) if GameData::Item.respond_to?(:exists?)
	return !GameData::Item.try_get(item).nil? if GameData::Item.respond_to?(:try_get)
	return true
	end

	def self.can_add_item?(item, quantity = 1)
	return false if !$bag
	return false if !item_exists?(item)
	return $bag.can_add?(item, quantity) if $bag.respond_to?(:can_add?)
	return true
	end

	def self.give_item(item, quantity = 1)
	return false if !$bag
	return false if !item_exists?(item)
	return pbReceiveItem(item, quantity) if defined?(pbReceiveItem)
	return $bag.add(item, quantity) if $bag.respond_to?(:add)
	return false
	end

	def self.player_badge_count
	return 0 if !$player

	return $player.badge_count if $player.respond_to?(:badge_count)

	if $player.respond_to?(:badges) && $player.badges
	  return $player.badges.count { |badge| badge }
	end

	return 0
	end

	def self.current_shop_stock
	badges = player_badge_count
	stock = []

	SHOP_STOCK.each do |tier|
	  next if !tier[:badges]
	  next if !tier[:items]
	  next if badges < tier[:badges]

	  stock.concat(tier[:items])
	end

	return stock.uniq
	end

	def self.open_item_shop
	stock = current_shop_stock

	if stock.empty?
	  pbMessage(_INTL("I don't have anything to sell right now."))
	  return
	end

	if defined?(PokemonMart_Scene) && defined?(PokemonMartScreen)
	  scene = PokemonMart_Scene.new
	  screen = PokemonMartScreen.new(scene, stock)
	  screen.pbBuyScreen
	else
	  pbPokemonMart(stock, _INTL("What would you like to buy?"))
	end
	end

	def self.trader_currency_data(currency)
	data = TRADER_CURRENCIES[currency]
	if !data
	  raise "Unknown Travelling Trader currency: #{currency}"
	end
	return data
	end

	def self.trader_currency_name(currency, quantity = 2)
	data = trader_currency_data(currency)
	return data[:name] if quantity == 1
	return data[:plural_name]
	end

	def self.ensure_trader_currency(currency)
	return if !$PokemonGlobal

	data = trader_currency_data(currency)
	value = $PokemonGlobal.send(data[:save_attr])

	if value.nil?
	  $PokemonGlobal.send("#{data[:save_attr]}=", 0)
	end
	end

	def self.trader_currency_amount(currency)
	return 0 if !$PokemonGlobal

	ensure_trader_currency(currency)
	data = trader_currency_data(currency)

	return $PokemonGlobal.send(data[:save_attr]) || 0
	end

	def self.set_trader_currency(currency, amount)
	return if !$PokemonGlobal

	data = trader_currency_data(currency)

	amount = amount.to_i
	amount = 0 if amount < 0
	amount = MAX_TRADER_CURRENCY if amount > MAX_TRADER_CURRENCY

	$PokemonGlobal.send("#{data[:save_attr]}=", amount)
	end

	def self.add_trader_currency(currency, amount, show_message = true)
	return false if !$PokemonGlobal

	amount = amount.to_i
	return false if amount <= 0

	old_amount = trader_currency_amount(currency)
	new_amount = old_amount + amount
	new_amount = MAX_TRADER_CURRENCY if new_amount > MAX_TRADER_CURRENCY

	set_trader_currency(currency, new_amount)

	gained = new_amount - old_amount
	return false if gained <= 0

	if show_message
	  pbMessage(_INTL("You received {1} {2}.", gained, trader_currency_name(currency, gained)))
	end

	return true
	end

	def self.remove_trader_currency(currency, amount)
	return false if !$PokemonGlobal

	amount = amount.to_i
	return false if amount <= 0
	return false if trader_currency_amount(currency) < amount

	set_trader_currency(currency, trader_currency_amount(currency) - amount)
	return true
	end

	def self.trader_tokens
	return trader_currency_amount(:trader_tokens)
	end

	def self.add_trader_tokens(amount, show_message = true)
	return add_trader_currency(:trader_tokens, amount, show_message)
	end

	def self.reward_display_name(reward)
	return reward[:name] if reward[:name]

	item_data = GameData::Item.get(reward[:item])
	name = item_data.name
	amount = reward[:amount] || 1

	return name if amount <= 1
	return _INTL("{1} (x{2})", name, amount)
	end

	#-----------------------------------------------------------------------------
	# Shop/token interaction
	#-----------------------------------------------------------------------------

	def self.pbTalk
	update!

	if !enabled?
	  pbMessage(_INTL("The Travelling Trader is not available right now."))
	  return
	end

	if !active_here?
	  pbMessage(_INTL("The Travelling Trader isn't here right now."))
	  return
	end

	# Keep the timer steady while the trader menu is open.
	pause_timer

	loop do
	  commands = [
	    _INTL("Browse Items"),
	    _INTL("Use Trader Tokens ({1})", trader_tokens),
	    _INTL("Request next location"),
	    _INTL("Ask when they move"),
	    _INTL("Leave")
	  ]

	  cmd = pbMessage(_INTL("Hello traveller! What can I do for you today?"), commands, commands.length)

	  case cmd
	  when 0
	    open_item_shop
	  when 1
	    open_trader_token_shop
	  when 2
	    choose_requested_location
	  when 3
	    show_time_remaining
	  else
	    pbMessage(_INTL("Come find me again soon!"))
	    break
	  end
	end
	end

	def self.open_exchange_shop(currency, rewards)
	amount = trader_currency_amount(currency)

	if amount <= 0
	  pbMessage(_INTL("You don't have any {1}.", trader_currency_name(currency)))
	  return
	end

	if !defined?(TravellingTraderMart)
	  pbMessage(_INTL("The exchange shop could not be opened."))
	  echoln "[Travelling Trader] TravellingTraderMart (UI::Mart) was not found."
	  return
	end

	TravellingTraderMart.new(currency, rewards, $bag).main
	end

	def self.open_trader_token_shop
	open_exchange_shop(:trader_tokens, TRADER_TOKEN_SHOP)
	end

	def self.show_time_remaining
	update!

	if ready_to_move?
	  pending_id = $PokemonGlobal.trav_trader_pending_location
	  pending_id = choose_next_location_id if !pending_id || !location(pending_id)
	  $PokemonGlobal.trav_trader_pending_location = pending_id if pending_id

	  pending_loc = location(pending_id)
	  pending_name = pending_loc ? pending_loc[:name] : "my next stop"

	  if current_map_is_trader_location?
	    pbMessage(_INTL("I'll move on as soon as you're done browsing!"))
	  elsif current_map_is_pending_location?
	    pbMessage(_INTL("I was just about to head there, actually! I'll arrive once you've moved on."))
	  else
	    pbMessage(_INTL("I'll be heading to {1} soon!", pending_name))
	  end

	  return
	end

	seconds = seconds_remaining
	minutes = seconds / 60
	secs    = seconds % 60

	pbMessage(_INTL("I'll move again in about {1} minute(s) and {2} second(s).", minutes, secs))
	end
end