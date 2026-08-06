#===============================================================================
# Shattered Crowns Script System - Shops DSL
#===============================================================================
# Provides a clean DSL for defining shop inventories.
#===============================================================================

module GameData
  #=============================================================================
  # Shop - DSL for shop inventories
  #=============================================================================
  class Shop < ScriptBase
    @shops = {}
    
    class << self
      attr_accessor :shops
    end
    
    #---------------------------------------------------------------------------
    # Define a shop
    # Usage: Shop.define :pokecenter_mart do |shop| ... end
    #---------------------------------------------------------------------------
    def self.define(name, &block)
      builder = ShopBuilder.new(name)
      yield(builder) if block_given?
      @shops[name] = builder
      SCScripts.log("Registered shop: #{name}")
    end
    
    #---------------------------------------------------------------------------
    # Open a shop by name
    # Usage: GameData::Shop.open(:pokecenter_mart)
    #---------------------------------------------------------------------------
    def self.open(name)
      shop = @shops[name]
      unless shop
        SCScripts.log("ERROR: Shop '#{name}' not found!")
        return false
      end
      
      shop.open_shop
      true
    end
    
    #---------------------------------------------------------------------------
    # Get shop inventory (for custom UI)
    #---------------------------------------------------------------------------
    def self.get_inventory(name)
      shop = @shops[name]
      return [] unless shop
      shop.get_available_items
    end
  end
  
  #=============================================================================
  # ShopBuilder - Builds shop inventories
  #=============================================================================
  class ShopBuilder
    attr_reader :name, :items
    
    def initialize(name)
      @name = name
      @items = []
      @greeting = nil
      @farewell = nil
      @currency_item = nil
    end
    
    #---------------------------------------------------------------------------
    # Shop configuration
    #---------------------------------------------------------------------------
    
    # Set greeting message
    def greeting(text)
      @greeting = text
    end
    
    # Set farewell message
    def farewell(text)
      @farewell = text
    end

    # Set a custom currency item (e.g. currency :SANCTUARY_TOKEN).
    # When set, the shop charges this item from the Bag instead of money.
    def currency(item = nil)
      @currency_item = item if item
      @currency_item
    end
    
    # Add item to shop
    # Usage: item :POKEBALL
    #        item :GREATBALL, price: 800
    #        item :ULTRABALL, condition: -> { $player.badge_count >= 4 }
    #        item :MASTERBALL, price: 50000, condition: -> { has_completed_game? }
    def item(item_id, options = {})
      # Erlaubt positionalen Preis: item :X, 800  (neben item :X, price: 800)
      options = { price: options } if options.is_a?(Integer)
      @items << {
        item: item_id,
        price: options[:price],      # nil = default price
        condition: options[:condition],
        stock: options[:stock],       # nil = unlimited
        badge_req: options[:badges]
      }
    end
    
    # Add multiple basic items
    def items(*item_ids)
      item_ids.each { |id| item(id) }
    end
    
    # Add items unlocked by badge count
    def badge_items(badge_count, *item_ids)
      item_ids.each do |id|
        item(id, badges: badge_count)
      end
    end
    
    # Add TM/HM
    def tm(tm_id, options = {})
      item(tm_id, options)
    end
    
    # Add items only in challenge mode
    def challenge_mode_items(*item_ids)
      item_ids.each do |id|
        item(id, condition: -> { $PokemonGlobal&.challenge_mode })
      end
    end
    
    #---------------------------------------------------------------------------
    # Get available items based on conditions.
    # Returns array of hashes: [{ item:, price: }, ...]
    #---------------------------------------------------------------------------
    def get_available_items
      @items.select do |item_data|
        next false if item_data[:condition] && !item_data[:condition].call
        next false if item_data[:badge_req] && $player.badge_count < item_data[:badge_req]
        next false if item_data[:stock] && item_data[:stock] <= 0
        true
      end
    end
    
    #---------------------------------------------------------------------------
    # Open the shop
    #---------------------------------------------------------------------------
    def open_shop
      pbMessage(@greeting) if @greeting
      
      stock_data = get_available_items
      
      if stock_data.empty?
        pbMessage("Sorry, we're out of stock!")
        return
      end
      
      # PE v21.1 expects pbPokemonMart(stock) where stock is a flat array of
      # item symbols. Custom prices are applied via $game_temp.mart_prices.
      stock_ids = stock_data.map { |it| it[:item] }
      $game_temp.mart_prices ||= {}
      stock_data.each do |it|
        next unless it[:price]
        $game_temp.mart_prices[it[:item]] ||= [-1, -1]
        $game_temp.mart_prices[it[:item]][0] = it[:price]
      end
      
      if @currency_item && GameData::Item.exists?(@currency_item)
        SCItemCurrencyMart.new(@currency_item, stock_ids, $bag).main
      else
        pbPokemonMart(stock_ids)
      end

      pbMessage(@farewell) if @farewell
    end
  end

  #=============================================================================
  # v22 Custom-Waehrungs-Mart: bezahlt mit einem Item (statt Geld) aus dem Beutel.
  # Nach dem Vorbild von UI::BPShop. currency_item = z. B. :SANCTUARY_TOKEN.
  #=============================================================================
  class SCItemCurrencyStockWrapper < UI::MartStockWrapper
    attr_reader :currency_item

    def initialize(currency_item, stock)
      @currency_item = currency_item
      super(stock)
    end

    def money
      return $bag.quantity(@currency_item)
    end

    def spend(amount)
      $bag.remove(@currency_item, amount)
    end

    def currency_name(qty = 1)
      return GameData::Item.get(@currency_item).portion_name_plural if qty != 1
      return GameData::Item.get(@currency_item).portion_name
    end

    def buy_price_string(item)
      return _INTL("{1} {2}", buy_price(item).to_s_formatted, currency_name(buy_price(item)))
    end

    def sell_price(_item)
      return 0
    end
  end

  class SCItemCurrencyMartVisuals < UI::MartVisuals
    def refresh_money_window
      @sprites[:money_window].text = _INTL("{1}:\n<r>{2}",
        @stock.currency_name(2), @stock.money.to_s_formatted)
    end
  end
end

class SCItemCurrencyMart < UI::Mart
  ACTIONS = HandlerHash.new

  def initialize(currency_item, stock, bag = $bag)
    @currency_item = currency_item
    super(stock, bag)
  end

  def initialize_stock(stock)
    @stock = GameData::SCItemCurrencyStockWrapper.new(@currency_item, stock)
  end

  def initialize_visuals
    @visuals = GameData::SCItemCurrencyMartVisuals.new(@stock, @bag)
  end

  ACTIONS.add(:interact, {
    :effect => proc { |screen|
      item_data    = screen.item_data
      stock        = screen.stock
      unit_price   = stock.buy_price(item_data.id)
      max_quantity = stock.maximum_affordable_quantity(item_data.id)
      if max_quantity == 0
        screen.show_message(_INTL("You don't have enough {1}.", stock.currency_name(2)))
        next
      end
      quantity = 1
      if item_data.is_important?
        next if !screen.show_confirm_message(
          _INTL("You would like the {1}?\nThat will be {2}.",
                item_data.portion_name, stock.buy_price_string(item_data.id)))
      else
        quantity = screen.choose_number(
          _INTL("How many {1} would you like?", item_data.portion_name_plural), max_quantity)
        next if quantity == 0
        total = unit_price * quantity
        next if !screen.show_confirm_message(
          _INTL("So you want {1} {2}?\nThat will be {3} {4}. All right?",
                quantity, item_data.portion_name_plural, total.to_s_formatted, stock.currency_name(total)))
      end
      total_price = unit_price * quantity
      if !screen.bag.can_add?(item_data.id, quantity)
        screen.show_message(_INTL("You have no room in your Bag."))
        next
      end
      screen.bag.add(item_data.id, quantity)
      stock.spend(total_price)
      stock.remove_from_stock(item_data.id, quantity)
      stock.refresh
      screen.refresh
      screen.show_message(_INTL("Here you are! Thank you!")) { pbSEPlay("Mart buy item") }
    }
  })
end
