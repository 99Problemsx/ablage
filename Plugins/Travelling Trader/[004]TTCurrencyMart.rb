#===============================================================================
# Travelling Trader
# v1.0 by BoydALoyd
# Currency/Shop UI
#-------------------------------------------------------------------------------
# v22-Port: Essentials v22 hat den Mart komplett auf UI::Mart / UI::MartStockWrapper
# umgestellt (PokemonMartAdapter / PokemonMart_Scene existieren nicht mehr).
# Dieser Custom-Waehrungs-Shop ist nach dem Vorbild von UI::BPShop neu aufgebaut.
#===============================================================================

#-------------------------------------------------------------------------------
# Stock-Wrapper: haelt die belohnungsbasierten Preise/Mengen und die Waehrung.
#-------------------------------------------------------------------------------
class TravellingTraderStockWrapper < UI::MartStockWrapper
  attr_reader :currency

  def initialize(currency, rewards)
    @currency       = currency
    @cost_by_item   = {}
    @amount_by_item = {}
    stock = []
    rewards.each do |reward|
      next if !reward[:item]
      next if !TravellingTrader.item_exists?(reward[:item])
      item = GameData::Item.get(reward[:item]).id
      stock.push(item) if !stock.include?(item)
      @cost_by_item[item]   = reward[:cost] || 0
      @amount_by_item[item] = reward[:amount] || 1
    end
    super(stock)
  end

  # Anzahl an Items, die pro gekaufter Einheit ausgegeben werden.
  def amount_for(item)
    return @amount_by_item[item] || 1
  end

  def money
    return TravellingTrader.trader_currency_amount(@currency)
  end

  def spend_money(price)
    TravellingTrader.set_trader_currency(@currency, money - price)
  end

  def currency_label
    return TravellingTrader.trader_currency_name(@currency)
  end

  def buy_price(item)
    return 0 if item.nil?
    return @cost_by_item[item] || 0
  end

  def buy_price_string(item)
    price = buy_price(item)
    return _INTL("{1} {2}", price.to_s_formatted, TravellingTrader.trader_currency_name(@currency, price))
  end

  # Custom-Waehrungs-Shop verkauft nicht.
  def sell_price(item)
    return 0
  end
end

#-------------------------------------------------------------------------------
# Visuals: zeigt die Custom-Waehrung statt Geld an.
#-------------------------------------------------------------------------------
class TravellingTraderMartVisuals < UI::MartVisuals
  def refresh_money_window
    @sprites[:money_window].text = _INTL("{1}:\n<r>{2}",
      @stock.currency_label, @stock.money.to_s_formatted)
  end

  # Wie in BaseVisuals, aber mit Custom-Waehrung im Mengen-Fenster.
  def choose_number_as_money_multiplier(help_text, money_per_unit, maximum, init_value = 1)
    currency = @stock.currency
    price_text = proc { |qty| _INTL("×{1}<r>{2} {3}", qty,
      (qty * money_per_unit).to_s_formatted,
      TravellingTrader.trader_currency_name(currency, qty * money_per_unit)) }
    @sprites[:speech_box].visible = true
    @sprites[:speech_box].text = help_text
    pbBottomLeftLines(@sprites[:speech_box], 2)
    loop do
      Graphics.update
      Input.update
      update_visuals
      if @sprites[:speech_box].busy?
        if Input.trigger?(Input::USE)
          pbPlayDecisionSE if @sprites[:speech_box].pausing?
          @sprites[:speech_box].resume
        end
      else
        break
      end
    end
    quantity = init_value
    using(num_window = Window_AdvancedTextPokemon.newWithSize(
          price_text.call(quantity), 0, 0, 224, 64, @viewport)) do
      num_window.z              = 2000
      num_window.visible        = true
      num_window.letterbyletter = false
      pbBottomRight(num_window)
      num_window.y -= @sprites[:speech_box].height
      loop do
        Graphics.update
        Input.update
        update
        num_window.update
        old_quantity = quantity
        if Input.repeat?(Input::LEFT)
          quantity = [quantity - 10, 1].max
        elsif Input.repeat?(Input::RIGHT)
          quantity = [quantity + 10, maximum].min
        elsif Input.repeat?(Input::UP)
          quantity += 1
          quantity = 1 if quantity > maximum
        elsif Input.repeat?(Input::DOWN)
          quantity -= 1
          quantity = maximum if quantity < 1
        end
        if quantity != old_quantity
          num_window.text = price_text.call(quantity)
          pbPlayCursorSE
        end
        if Input.trigger?(Input::USE)
          pbPlayDecisionSE
          break
        elsif Input.trigger?(Input::BACK)
          pbPlayCancelSE
          quantity = 0
          break
        end
      end
    end
    @sprites[:speech_box].visible = false
    return quantity
  end
end

#-------------------------------------------------------------------------------
# Screen: Kaufablauf mit Custom-Waehrung und Mengen pro Belohnung.
#-------------------------------------------------------------------------------
class TravellingTraderMart < UI::Mart
  ACTIONS = HandlerHash.new

  def initialize(currency, rewards, bag = $bag)
    @currency = currency
    @rewards  = rewards
    super(rewards, bag)
  end

  def initialize_stock(_stock)
    @stock = TravellingTraderStockWrapper.new(@currency, @rewards)
  end

  def initialize_visuals
    @visuals = TravellingTraderMartVisuals.new(@stock, @bag)
  end

  ACTIONS.add(:interact, {
    :effect => proc { |screen|
      item_data    = screen.item_data
      stock        = screen.stock
      currency     = stock.currency
      unit_price   = stock.buy_price(item_data.id)
      per_unit     = stock.amount_for(item_data.id)
      max_quantity = stock.maximum_affordable_quantity(item_data.id)
      # Genug Waehrung?
      if max_quantity == 0
        screen.show_message(_INTL("You don't have enough {1}.",
          TravellingTrader.trader_currency_name(currency)))
        next
      end
      # Menge waehlen
      quantity = 1
      if item_data.is_important?
        next if !screen.show_confirm_message(
          _INTL("You would like the {1}?\nThat will be {2}.",
                item_data.portion_name, stock.buy_price_string(item_data.id)))
      else
        quantity = screen.choose_number_as_money_multiplier(
          _INTL("How many {1} would you like?", item_data.portion_name_plural),
          unit_price, max_quantity)
        next if quantity == 0
        total_price = unit_price * quantity
        cost_name = TravellingTrader.trader_currency_name(currency, total_price)
        if quantity > 1
          next if !screen.show_confirm_message(
            _INTL("So you want {1} {2}?\nThey'll cost {3} {4}. All right?",
                  quantity, item_data.portion_name_plural, total_price.to_s_formatted, cost_name))
        else
          next if !screen.show_confirm_message(
            _INTL("So you want {1}?\nIt'll cost {2} {3}. All right?",
                  item_data.portion_name, total_price.to_s_formatted, cost_name))
        end
      end
      total_price = unit_price * quantity
      total_items = per_unit * quantity
      # Passt es in den Beutel?
      if !screen.bag.can_add?(item_data.id, total_items)
        screen.show_message(_INTL("You have no room in your Bag."))
        next
      end
      # Kaufen
      screen.bag.add(item_data.id, total_items)
      stock.spend_money(total_price)
      stock.remove_from_stock(item_data.id, quantity)
      stock.refresh
      screen.refresh
      screen.show_message(_INTL("Here you are! Thank you!")) { pbSEPlay("Mart buy item") }
    }
  })
end
