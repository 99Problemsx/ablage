#===============================================================================
# Travelling Trader
# v1.0 by BoydALoyd
# Config Settings
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :trav_trader_location
  attr_accessor :trav_trader_requested_location
  attr_accessor :trav_trader_timer_seconds
  attr_accessor :trav_trader_last_frame_count
  attr_accessor :trav_trader_enabled
  attr_accessor :trav_trader_unlocked
  attr_accessor :trav_trader_ready_to_move
  attr_accessor :trav_trader_pending_location
  attr_accessor :trav_trader_tokens
end

#-----------------------------------------------------------------------------
# Configuration
#-----------------------------------------------------------------------------

module TravellingTrader

  # 30 active-game minutes. This only counts while the game is running.
  INTERVAL_SECONDS = 30 * 60

  # If false, the Travelling Trader will not appear or start their timer until
  # unlocked by script call or unlock switch.
  START_UNLOCKED = false

  # Optional switch that permanently unlocks the Travelling Trader when turned ON.
  # Set to 0 if you only want to unlock them with TravellingTrader.unlock.
  UNLOCK_SWITCH = 0

  # If this is set to a real game switch ID, turning that switch ON disables the
  # Travelling Trader. Set this to 0 if you only want to use the enable/disable
  # script calls instead.
  DISABLE_SWITCH = 0

  # The location the travelling trader should appear at when the system starts
  # for the first time. This must match one of the :id values in LOCATIONS.
  START_LOCATION = :safari_zone_outside

  #-----------------------------------------------------------------------------
  # Town Map marker settings
  #-----------------------------------------------------------------------------

  # Shows the Travelling Trader's current location on the Town Map.
  SHOW_TOWN_MAP_MARKER = true

  # File path:
  # Graphics/UI/Town Map/trav_trader_icon.png
  TOWN_MAP_MARKER_GRAPHIC = "Graphics/UI/Town Map/trav_trader_icon"

  # Used if a location does not define :town_map_region.
  DEFAULT_TOWN_MAP_REGION = 0

  # Standard Essentials Town Map tiles are 16x16.
  TOWN_MAP_SQUARE_SIZE = 16

  # Use these if the marker needs a small position adjustment.
  TOWN_MAP_MARKER_OFFSET_X = 0
  TOWN_MAP_MARKER_OFFSET_Y = 0

  TOWN_MAP_MARKER_Z = 99999

  # The marker blinks on/off like Essentials' Fly icon.
  TOWN_MAP_MARKER_BLINK = true

  # Add one entry for each place the travelling trader can appear.
  # x/y are currently for reference and future map marker work.
  LOCATIONS = [
    { id: :lappet_town,          name: "Lappet Town",          map_id: 2, town_map_region: 0, town_map_x: 13, town_map_y: 12 },
    { id: :route_1,              name: "Route 1",              map_id: 5, town_map_region: 0, town_map_x: 13, town_map_y: 11 },
    { id: :safari_zone_outside,  name: "Safari Zone Outside",  map_id: 66, town_map_region: 0, town_map_x: 12, town_map_y: 12 }
  ]

  #-----------------------------------------------------------------------------
  # Trader currencies/Shops
  #-----------------------------------------------------------------------------

  # The travelling trader's normal money shop. Each tier unlocks once the player has at least the listed number of badges.
  SHOP_STOCK = [
    {
      badges: 0,
      items: [
        :POKEBALL,
        :POTION
      ]
    },
    {
      badges: 1,
      items: [
        :GREATBALL,
        :SUPERPOTION,
        :ANTIDOTE,
        :PARALYZEHEAL,
        :AWAKENING,
        :BURNHEAL,
        :ICEHEAL,
        :ESCAPEROPE,
        :REPEL
      ]
    },
    {
      badges: 3,
      items: [
        :HYPERPOTION,
        :REVIVE,
        :SUPERREPEL
      ]
    },
    {
      badges: 5,
      items: [
        :ULTRABALL,
        :FULLHEAL,
        :MAXREPEL
      ]
    },
    {
      badges: 7,
      items: [
        :MAXPOTION
      ]
    },
    {
      badges: 8,
      items: [
        :FULLRESTORE
      ]
    },
  ]

  MAX_TRADER_CURRENCY = 999_999

  TRADER_CURRENCIES = {
    trader_tokens: {
      name: "Trader Token",
      plural_name: "Trader Tokens",
      save_attr: :trav_trader_tokens
    }
  }

  # Trader token shop.
  TRADER_TOKEN_SHOP = [
    { name: "Ability Patch (x2)", item: :ABILITYPATCH, amount: 2, cost: 1 },
    { name: "Ability Capsule (x2)", item: :ABILITYCAPSULE, amount: 2, cost: 1 },
    { name: "Master Ball (x5)",   item: :MASTERBALL,   amount: 5, cost: 1 },
    { name: "Exp Share", item: :EXPSHARE, amount: 1, cost: 1 },
    { name: "Choice Scarf", item: :CHOICESCARF, amount: 1, cost: 1 },
    { name: "Shiny Charm", item: :SHINYCHARM, amount: 1, cost: 1 },
    { name: "Venusaurite", item: :VENUSAURITE, amount: 1, cost: 1 },
    { name: "Charizardite X", item: :CHARIZARDITEX, amount: 1, cost: 1 },
    { name: "Charizardite Y", item: :CHARIZARDITEY, amount: 1, cost: 1 },
    { name: "Blastoisinite", item: :BLASTOISINITE, amount: 1, cost: 1 }
  ]
  
end