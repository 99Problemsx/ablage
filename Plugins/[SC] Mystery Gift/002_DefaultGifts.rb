#===============================================================================
# [SC] Mystery Gift — default registered gifts
#===============================================================================
# Edit this file to add/remove gifts. Gifts can be code-based (entered by
# the player at the kiosk) or milestone-based (auto-unlocked).
#===============================================================================

# --- Milestone gifts (auto-unlock when player triggers them) -------------

SCMysteryGift.register(:GIFT_PURE_LIGHT_REWARD, {
  name:        "Champion's Sigil",
  description: "A token from the citizens of Asgheim — for saving the world without breaking it.",
  milestone:   :ending_pure_light,
  items:       { MASTERBALL: 1, MAXREVIVE: 5 },
  money:       100_000
})

SCMysteryGift.register(:GIFT_PURE_DARK_HALF, {
  name:        "Throne's Mercy",
  description: "Black-iron coin. No sender. No return address.",
  milestone:   :ending_pure_dark,
  items:       { NUGGET: 10 },
  money:       50_000
})

SCMysteryGift.register(:GIFT_WEDDING_HOUNDOUR, {
  name:        "Hilde's Wedding Gift",
  description: "A Houndour pup from the orphanage. Hilde said \"you'll need company.\"",
  milestone:   :ch52_wedding_seen,
  pokemon:     [:HOUNDOUR, 5, {
                 shiny:   false,
                 ability: :FLASHFIRE,
                 item:    :ORANBERRY,
                 moves:   [:EMBER, :HOWL, :LEER, :BITE]
               }]
})

# --- Code-based gifts (player enters a code) ------------------------------

SCMysteryGift.register(:GIFT_LAUNCH_HOOPA, {
  name:        "Launch Day Hoopa",
  description: "A Hoopa from the developers, to celebrate the game's release.",
  code:        "RING-MASTER",
  pokemon:     [:HOOPA, 50, {
                 shiny:   true,
                 ability: :MAGICIAN,
                 item:    :LIFEORB,
                 moves:   [:HYPERSPACEHOLE, :PSYCHIC, :SHADOWBALL, :DRAINPUNCH]
               }]
})

SCMysteryGift.register(:GIFT_RUNE_STARTER_PACK, {
  name:        "Rune Starter Pack",
  description: "A small kit of consumables to start a new save off right.",
  code:        "ASGHEIM-RISES",
  items:       { POTION: 10, SUPERPOTION: 5, REVIVE: 3, ESCAPEROPE: 3,
                 GREATBALL: 10, ULTRABALL: 5 },
  money:       10_000
})

SCMysteryGift.register(:GIFT_FATEFUL_EEVEE, {
  name:        "Fateful Eevee",
  description: "An Eevee blessed by the World Tree itself. Glows faintly at night.",
  code:        "WILLOW-AND-SHADOW",
  pokemon:     [:EEVEE, 10, {
                 shiny:   true,
                 ability: :ANTICIPATION,
                 item:    :EEVIUM_Z,
                 name:    "Willow",
                 moves:   [:TACKLE, :SWIFT, :SAND_ATTACK, :BITE]
               }]
})
