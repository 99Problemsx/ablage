#===============================================================================
# Hoopa's Ring Shop — postgame rare-item vendor
#===============================================================================
# Opened on Map 48 (Sanctuary Hub) once :sc_hoopa_shop_open switch is set.
# Hoopa's portal magic lets it pull rare hold items "from wherever they are
# slowest to find." Prices are high — but the inventory is hand-picked.
#
# Inventory is split by tier; later tiers unlock via story progression:
#   Tier 1 (default open): basic rare berries + competitive consumables
#   Tier 2 (:sc_hoopa_shop_t2): rare hold items
#   Tier 3 (:sc_hoopa_shop_t3, after Marcus Prime beaten): Mega Stones
#===============================================================================

GameData::Shop.define :hoopa_ring_shop do |shop|
  shop.greeting "\\bHoopa\\b: Ring-Ring! What treasure does Champion-friend want today?"
  shop.farewell "\\bHoopa\\b: Spend wisely. Hoopa does not do refunds. Magic is one-way."

  # ---- Tier 1: always available ----
  shop.item :LEFTOVERS,      price: 30_000
  shop.item :CHOICEBAND,     price: 25_000
  shop.item :CHOICESPECS,    price: 25_000
  shop.item :CHOICESCARF,    price: 25_000
  shop.item :LIFEORB,        price: 20_000
  shop.item :FOCUSSASH,      price: 15_000
  shop.item :ASSAULTVEST,    price: 22_000
  shop.item :EVIOLITE,       price: 25_000
  shop.item :ROCKYHELMET,    price: 18_000
  shop.item :HEAVYDUTYBOOTS, price: 18_000 rescue nil

  # Power-training & EV items (always)
  shop.item :PROTEINBAR,     price: 10_000 rescue nil
  shop.item :PPMAX,          price: 12_000
  shop.item :PPUP,           price:  4_900

  # ---- Tier 2: unlocked after :sc_hoopa_shop_t2 switch ----
  t2 = -> { $game_switches[:sc_hoopa_shop_t2] rescue false }
  shop.item :LUMBERRY,       price:  8_000, condition: t2
  shop.item :SITRUSBERRY,    price:  5_000, condition: t2
  shop.item :YACHEBERRY,     price:  6_000, condition: t2
  shop.item :CHOPLEBERRY,    price:  6_000, condition: t2
  shop.item :CHARTIBERRY,    price:  6_000, condition: t2
  shop.item :OCCABERRY,      price:  6_000, condition: t2
  shop.item :PASSHOBERRY,    price:  6_000, condition: t2
  shop.item :LUMBERRY,       price:  8_000, condition: t2
  shop.item :BLACKSLUDGE,    price: 15_000, condition: t2
  shop.item :TOXICORB,       price: 12_000, condition: t2
  shop.item :FLAMEORB,       price: 12_000, condition: t2
  shop.item :KINGSROCK,      price: 18_000, condition: t2
  shop.item :EXPERTBELT,     price: 20_000, condition: t2

  # ---- Tier 3: Mega Stones (after Marcus Prime beaten) ----
  t3 = -> { $PokemonGlobal&.sc_marcus_prime_beaten == true }
  shop.item :CHARIZARDITEX,  price: 200_000, condition: t3
  shop.item :CHARIZARDITEY,  price: 200_000, condition: t3
  shop.item :BLASTOISINITE,  price: 200_000, condition: t3
  shop.item :VENUSAURITE,    price: 200_000, condition: t3
  shop.item :GARCHOMPITE,    price: 250_000, condition: t3
  shop.item :TYRANITARITE,   price: 250_000, condition: t3
  shop.item :METAGROSSITE,   price: 250_000, condition: t3
  shop.item :SALAMENCITE,    price: 250_000, condition: t3
  shop.item :LUCARIONITE,    price: 200_000, condition: t3
  shop.item :GENGARITE,      price: 200_000, condition: t3
  shop.item :BANETTITE,      price: 180_000, condition: t3
  shop.item :MAWILITE,       price: 180_000, condition: t3
  shop.item :AGGRONITE,      price: 220_000, condition: t3
  shop.item :ALAKAZITE,      price: 200_000, condition: t3
  shop.item :GARDEVOIRITE,   price: 200_000, condition: t3
end


#===============================================================================
# Hoopa Shop intro cutscene + helper
#===============================================================================

GameData::Cutscene.define :hoopa_shop_open do |scene|
  scene.script {
    cycle = $PokemonGlobal.respond_to?(:sc_hoopa_shop_visits) ?
              ($PokemonGlobal.sc_hoopa_shop_visits || 0) : 0
    if cycle == 0
      pbMessage("\\bHoopa\\b: *grinning* Champion-friend! Look, look — Hoopa has the ring open. The ring goes *everywhere.*")
      pbMessage("\\bHoopa\\b: Hoopa cannot keep most of these. Hoopa is not allowed. But Hoopa can fetch. For a price.")
      pbMessage("\\bHoopa\\b: Mega Stones come last. After Marcus-pa says you are the strongest. Hoopa likes the dramatic timing.")
      $PokemonGlobal.sc_hoopa_shop_visits = 1 if $PokemonGlobal.respond_to?(:sc_hoopa_shop_visits=)
    else
      pbMessage("\\bHoopa\\b: Champion-friend again! Same ring. New things, sometimes. Hoopa does not lie about that.")
    end
    GameData::Shop.open(:hoopa_ring_shop)
  }
end


#===============================================================================
# Save flag for Hoopa shop tier-2 unlock and visit count
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_hoopa_shop_visits
end

SaveData.register(:sc_hoopa_shop_visits) do
  ensure_class :Integer
  save_value { $PokemonGlobal.sc_hoopa_shop_visits || 0 }
  load_value { |v| $PokemonGlobal.sc_hoopa_shop_visits = v }
  new_game_value { 0 }
end
