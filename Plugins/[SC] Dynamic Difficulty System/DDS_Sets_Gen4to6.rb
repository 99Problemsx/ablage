#===============================================================================
# Dynamic Difficulty System — Competitive Sets: Generation 4–6
# Sinnoh (#387–#493) + Unova (#494–#649) + Kalos (#650–#721)
# Includes cross-gen evolutions introduced in Gen 4
#===============================================================================

module DynamicDifficulty
  module CompetitiveSets
    s = SETS

    #=========================================================================
    # GENERATION 4 — SINNOH (+ cross-gen evolutions)
    #=========================================================================

    # --- Torterra ---
    s[:TORTERRA] = [
      { tier: 3, ability: :OVERGROW, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :WOODHAMMER, :STEALTHROCK, :SYNTHESIS],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SHELLARMOR, nature: :ADAMANT, item: :LIFEORB,
        moves: [:EARTHQUAKE, :WOODHAMMER, :STONEEDGE, :ROCKPOLISH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Infernape ---
    s[:INFERNAPE] = [
      { tier: 3, ability: :BLAZE, nature: :JOLLY, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :FLAREBLITZ, :UTURN, :MACHPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :IRONFIST, nature: :NAIVE, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :FIREBLAST, :UTURN, :MACHPUNCH],
        evs: { ATTACK: 128, SPECIAL_ATTACK: 128, SPEED: 252 } },
    ]

    # --- Empoleon ---
    s[:EMPOLEON] = [
      { tier: 3, ability: :TORRENT, nature: :MODEST, item: :LEFTOVERS,
        moves: [:SCALD, :FLASHCANNON, :STEALTHROCK, :ROAR],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:SCALD, :FLASHCANNON, :ICEBEAM, :GRASSKNOT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
    ]

    # --- Staraptor ---
    s[:STARAPTOR] = [
      { tier: 3, ability: :RECKLESS, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:BRAVEBIRD, :DOUBLEEDGE, :CLOSECOMBAT, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :RECKLESS, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:BRAVEBIRD, :DOUBLEEDGE, :CLOSECOMBAT, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Luxray ---
    s[:LUXRAY] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:WILDCHARGE, :CRUNCH, :ICEFANG, :SUPERPOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:FACADE, :WILDCHARGE, :CRUNCH, :SUPERPOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Roserade ---
    s[:ROSERADE] = [
      { tier: 3, ability: :NATURALCURE, nature: :TIMID, item: :LIFEORB,
        moves: [:SLUDGEBOMB, :GIGADRAIN, :SLEEPPOWDER, :SPIKES],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :TIMID, item: :LIFEORB,
        moves: [:SLUDGEBOMB, :LEAFSTORM, :SLEEPPOWDER, :TOXICSPIKES],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Rampardos ---
    s[:RAMPARDOS] = [
      { tier: 3, ability: :MOLDBREAKER, nature: :ADAMANT, item: :CHOICESCARF,
        moves: [:HEADSMASH, :EARTHQUAKE, :ZENHEADBUTT, :FIREPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOLDBREAKER, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:HEADSMASH, :EARTHQUAKE, :SWORDSDANCE, :CRUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Bastiodon ---
    s[:BASTIODON] = [
      { tier: 3, ability: :STURDY, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :METALBLAST, :TOXIC, :ROAR],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
      { tier: 4, ability: :STURDY, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :IRONHEAD, :BODYPRESS, :TOXIC],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Floatzel ---
    s[:FLOATZEL] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :JOLLY, item: :LIFEORB,
        moves: [:WATERFALL, :ICEPUNCH, :CRUNCH, :BULKUP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:WATERFALL, :ICEPUNCH, :CRUNCH, :SWITCHEROO],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gastrodon ---
    s[:GASTRODON] = [
      { tier: 3, ability: :STORMDRAIN, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :EARTHPOWER, :ICEBEAM, :RECOVER],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :STORMDRAIN, nature: :CALM, item: :LEFTOVERS,
        moves: [:SCALD, :EARTHPOWER, :ICEBEAM, :RECOVER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :STORMDRAIN, nature: :CALM, item: :SITRUSBERRY,
        moves: [:EARTHPOWER, :ICYWIND, :YAWN, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Honchkrow ---
    s[:HONCHKROW] = [
      { tier: 3, ability: :MOXIE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:BRAVEBIRD, :SUCKERPUNCH, :SUPERPOWER, :ROOST],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :ADAMANT, item: :CHOICESCARF,
        moves: [:BRAVEBIRD, :SUCKERPUNCH, :SUPERPOWER, :HEATWAVE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mismagius ---
    s[:MISMAGIUS] = [
      { tier: 3, ability: :LEVITATE, nature: :TIMID, item: :LIFEORB,
        moves: [:SHADOWBALL, :DAZZLINGGLEAM, :NASTYPLOT, :WILLOWISP],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :TIMID, item: :LIFEORB,
        moves: [:SHADOWBALL, :THUNDERBOLT, :NASTYPLOT, :TAUNT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Skuntank ---
    s[:SKUNTANK] = [
      { tier: 3, ability: :AFTERMATH, nature: :JOLLY, item: :BLACKSLUDGE,
        moves: [:CRUNCH, :POISONJAB, :SUCKERPUNCH, :TAUNT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :AFTERMATH, nature: :ADAMANT, item: :LIFEORB,
        moves: [:CRUNCH, :GUNKSHOT, :SUCKERPUNCH, :FIREBLAST],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Bronzong ---
    s[:BRONZONG] = [
      { tier: 3, ability: :LEVITATE, nature: :SASSY, item: :LEFTOVERS,
        moves: [:GYROBALL, :EARTHQUAKE, :STEALTHROCK, :TOXIC],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
      { tier: 4, ability: :LEVITATE, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:GYROBALL, :EARTHQUAKE, :STEALTHROCK, :BODYPRESS],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:GYROBALL, :BODYPRESS, :TRICKROOM, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Spiritomb ---
    s[:SPIRITOMB] = [
      { tier: 3, ability: :PRESSURE, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:SUCKERPUNCH, :SHADOWSNEAK, :WILLOWISP, :CALMMIND],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PRESSURE, nature: :CALM, item: :LEFTOVERS,
        moves: [:DARKPULSE, :SHADOWBALL, :WILLOWISP, :CALMMIND],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Garchomp ---
    s[:GARCHOMP] = [
      { tier: 3, ability: :ROUGHSKIN, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :OUTRAGE, :STONEEDGE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ROUGHSKIN, nature: :JOLLY, item: :ROCKYHELMET,
        moves: [:EARTHQUAKE, :DRAGONCLAW, :STEALTHROCK, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ROUGHSKIN, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :DRAGONCLAW, :ROCKSLIDE, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Lucario ---
    s[:LUCARIO] = [
      { tier: 3, ability: :INNERFOCUS, nature: :TIMID, item: :LIFEORB,
        moves: [:AURASPHERE, :FLASHCANNON, :NASTYPLOT, :VACUUMWAVE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :JUSTIFIED, nature: :JOLLY, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :METEORMATE, :EXTREMESPEED, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INNERFOCUS, nature: :TIMID, item: :FOCUSSASH,
        moves: [:AURASPHERE, :FLASHCANNON, :VACUUMWAVE, :FOLLOWME],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Hippowdon ---
    s[:HIPPOWDON] = [
      { tier: 3, ability: :SANDSTREAM, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :STEALTHROCK, :SLACKOFF, :WHIRLWIND],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SANDSTREAM, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :STEALTHROCK, :SLACKOFF, :TOXIC],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Drapion ---
    s[:DRAPION] = [
      { tier: 3, ability: :BATTLEARMOR, nature: :JOLLY, item: :LIFEORB,
        moves: [:KNOCKOFF, :CROSSPOISON, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SNIPER, nature: :JOLLY, item: :SCOPELENS,
        moves: [:KNOCKOFF, :CROSSPOISON, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Toxicroak ---
    s[:TOXICROAK] = [
      { tier: 3, ability: :DRYSKIN, nature: :JOLLY, item: :LIFEORB,
        moves: [:DRAINPUNCH, :GUNKSHOT, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DRYSKIN, nature: :ADAMANT, item: :LIFEORB,
        moves: [:DRAINPUNCH, :GUNKSHOT, :SUCKERPUNCH, :ICEPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DRYSKIN, nature: :ADAMANT, item: :LIFEORB,
        moves: [:DRAINPUNCH, :GUNKSHOT, :FAKEOUT, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Carnivine ---
    s[:CARNIVINE] = [
      { tier: 3, ability: :LEVITATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:POWERWHIP, :KNOCKOFF, :RETURN, :SLEEPPOWDER],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:POWERWHIP, :KNOCKOFF, :RETURN, :CRUNCH],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Abomasnow ---
    s[:ABOMASNOW] = [
      { tier: 3, ability: :SNOWWARNING, nature: :QUIET, item: :FOCUSSASH,
        moves: [:BLIZZARD, :GIGADRAIN, :ICESHARD, :EARTHQUAKE],
        evs: { SPECIAL_ATTACK: 252, ATTACK: 252, HP: 4 } },
      { tier: 4, ability: :SNOWWARNING, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:BLIZZARD, :GIGADRAIN, :ICESHARD, :EARTHQUAKE],
        evs: { HP: 252, SPECIAL_ATTACK: 252, ATTACK: 4 } },
      { tier: 4, ability: :SNOWWARNING, nature: :QUIET, item: :FOCUSSASH,
        moves: [:BLIZZARD, :GIGADRAIN, :ICESHARD, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, ATTACK: 4 }, format: :doubles },
    ]

    # --- Weavile ---
    s[:WEAVILE] = [
      { tier: 3, ability: :PRESSURE, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:KNOCKOFF, :TRIPLEAXEL, :ICICLECRASH, :ICEPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PRESSURE, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:KNOCKOFF, :TRIPLEAXEL, :ICESHARD, :LOWKICK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PRESSURE, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:KNOCKOFF, :ICICLECRASH, :FAKEOUT, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Magnezone ---
    s[:MAGNEZONE] = [
      { tier: 3, ability: :MAGNETPULL, nature: :MODEST, item: :CHOICESPECS,
        moves: [:THUNDERBOLT, :FLASHCANNON, :VOLTSWITCH, :BODYPRESS],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :MAGNETPULL, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :FLASHCANNON, :VOLTSWITCH, :BODYPRESS],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Rhyperior ---
    s[:RHYPERIOR] = [
      { tier: 3, ability: :SOLIDROCK, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :STONEEDGE, :MEGAHORN, :STEALTHROCK],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SOLIDROCK, nature: :ADAMANT, item: :WEAKNESSPOLICY,
        moves: [:EARTHQUAKE, :STONEEDGE, :ICEPUNCH, :ROCKPOLISH],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Tangrowth ---
    s[:TANGROWTH] = [
      { tier: 3, ability: :REGENERATOR, nature: :BOLD, item: :ASSAULTVEST,
        moves: [:GIGADRAIN, :KNOCKOFF, :HIDDENPOWERFIRE, :EARTHQUAKE],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_ATTACK: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :RELAXED, item: :ROCKYHELMET,
        moves: [:GIGADRAIN, :KNOCKOFF, :SLEEPPOWDER, :LEECHSEED],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Electivire ---
    s[:ELECTIVIRE] = [
      { tier: 3, ability: :MOTORDRIVE, nature: :JOLLY, item: :LIFEORB,
        moves: [:WILDCHARGE, :ICEPUNCH, :CROSSCHOP, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOTORDRIVE, nature: :JOLLY, item: :EXPERTBELT,
        moves: [:WILDCHARGE, :ICEPUNCH, :CROSSCHOP, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Magmortar ---
    s[:MAGMORTAR] = [
      { tier: 3, ability: :VITALSPIRIT, nature: :MODEST, item: :LIFEORB,
        moves: [:FIREBLAST, :THUNDERBOLT, :FOCUSBLAST, :HIDDENPOWERGRASS],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :VITALSPIRIT, nature: :TIMID, item: :CHOICESCARF,
        moves: [:FIREBLAST, :THUNDERBOLT, :FOCUSBLAST, :PSYCHIC],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Togekiss ---
    s[:TOGEKISS] = [
      { tier: 3, ability: :SERENEGRACE, nature: :TIMID, item: :LEFTOVERS,
        moves: [:AIRSLASH, :DAZZLINGGLEAM, :NASTYPLOT, :ROOST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SERENEGRACE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:AIRSLASH, :DAZZLINGGLEAM, :FLAMETHROWER, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SERENEGRACE, nature: :TIMID, item: :SITRUSBERRY,
        moves: [:AIRSLASH, :FOLLOWME, :DAZZLINGGLEAM, :PROTECT],
        evs: { HP: 252, SPEED: 252, SPECIAL_ATTACK: 4 }, format: :doubles },
    ]

    # --- Leafeon ---
    s[:LEAFEON] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :JOLLY, item: :LIFEORB,
        moves: [:LEAFBLADE, :KNOCKOFF, :XSCISSOR, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LEAFBLADE, :KNOCKOFF, :DOUBLEEDGE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Glaceon ---
    s[:GLACEON] = [
      { tier: 3, ability: :ICEBODY, nature: :MODEST, item: :CHOICESPECS,
        moves: [:ICEBEAM, :SHADOWBALL, :SIGNALBEAM, :FREEZEDRY],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ICEBODY, nature: :MODEST, item: :CHOICESCARF,
        moves: [:BLIZZARD, :SHADOWBALL, :FREEZEDRY, :WATERPULSE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gliscor ---
    s[:GLISCOR] = [
      { tier: 3, ability: :POISONHEAL, nature: :IMPISH, item: :TOXICORB,
        moves: [:EARTHQUAKE, :KNOCKOFF, :ROOST, :STEALTHROCK],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :POISONHEAL, nature: :JOLLY, item: :TOXICORB,
        moves: [:EARTHQUAKE, :FACADE, :SWORDSDANCE, :ROOST],
        evs: { HP: 252, SPEED: 252, ATTACK: 4 } },
    ]

    # --- Mamoswine ---
    s[:MAMOSWINE] = [
      { tier: 3, ability: :THICKFAT, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :ICICLECRASH, :ICESHARD, :STEALTHROCK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :THICKFAT, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:EARTHQUAKE, :ICICLECRASH, :ICESHARD, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Porygon-Z ---
    s[:PORYGONZ] = [
      { tier: 3, ability: :ADAPTABILITY, nature: :TIMID, item: :LIFEORB,
        moves: [:TRIATTACK, :SHADOWBALL, :THUNDERBOLT, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ADAPTABILITY, nature: :MODEST, item: :CHOICESCARF,
        moves: [:TRIATTACK, :SHADOWBALL, :THUNDERBOLT, :ICEBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gallade ---
    s[:GALLADE] = [
      { tier: 3, ability: :JUSTIFIED, nature: :JOLLY, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :ZENHEADBUTT, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :JUSTIFIED, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:CLOSECOMBAT, :ZENHEADBUTT, :KNOCKOFF, :SHADOWSNEAK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Probopass ---
    s[:PROBOPASS] = [
      { tier: 3, ability: :MAGNETPULL, nature: :MODEST, item: :LEFTOVERS,
        moves: [:FLASHCANNON, :EARTHPOWER, :STEALTHROCK, :VOLTSWITCH],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :MAGNETPULL, nature: :CALM, item: :LEFTOVERS,
        moves: [:FLASHCANNON, :EARTHPOWER, :STEALTHROCK, :BODYPRESS],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Dusknoir ---
    s[:DUSKNOIR] = [
      { tier: 3, ability: :PRESSURE, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:SHADOWPUNCH, :EARTHQUAKE, :WILLOWISP, :PAINSPLIT],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PRESSURE, nature: :BRAVE, item: :LEFTOVERS,
        moves: [:POLTERGEIST, :ICEPUNCH, :TRICKROOM, :PAINSPLIT],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Froslass ---
    s[:FROSLASS] = [
      { tier: 3, ability: :CURSEDBODY, nature: :TIMID, item: :FOCUSSASH,
        moves: [:ICEBEAM, :SHADOWBALL, :SPIKES, :DESTINYBOND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CURSEDBODY, nature: :TIMID, item: :FOCUSSASH,
        moves: [:ICEBEAM, :SHADOWBALL, :SPIKES, :TAUNT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Rotom (base form) ---
    s[:ROTOM] = [
      { tier: 3, ability: :LEVITATE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:THUNDERBOLT, :SHADOWBALL, :VOLTSWITCH, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:THUNDERBOLT, :SHADOWBALL, :WILLOWISP, :PAINSPLIT],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Yanmega ---
    s[:YANMEGA] = [
      { tier: 3, ability: :SPEEDBOOST, nature: :MODEST, item: :LIFEORB,
        moves: [:BUGBUZZ, :AIRSLASH, :PSYCHIC, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TINTEDLENS, nature: :MODEST, item: :CHOICESPECS,
        moves: [:BUGBUZZ, :AIRSLASH, :PSYCHIC, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Ambipom ---
    s[:AMBIPOM] = [
      { tier: 3, ability: :TECHNICIAN, nature: :JOLLY, item: :LIFEORB,
        moves: [:FAKEOUT, :RETURN, :UTURN, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :JOLLY, item: :SILKSCARF,
        moves: [:FAKEOUT, :DOUBLEHIT, :UTURN, :LOWSWEEP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Lickitung ---
    s[:LICKILICKY] = [
      { tier: 3, ability: :OBLIVIOUS, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:BODYSLAM, :EARTHQUAKE, :KNOCKOFF, :WISH],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :OBLIVIOUS, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:BODYSLAM, :EARTHQUAKE, :KNOCKOFF, :POWERWHIP],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Magcargo ---
    s[:MAGCARGO] = [
      { tier: 3, ability: :FLAMEBODY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:LAVAPLUME, :ANCIENTPOWER, :STEALTHROCK, :RECOVER],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :FLAMEBODY, nature: :MODEST, item: :LEFTOVERS,
        moves: [:FIREBLAST, :EARTHPOWER, :SHELLSMASH, :RECOVER],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Octillery ---
    s[:OCTILLERY] = [
      { tier: 3, ability: :MOODY, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:HYDROPUMP, :ICEBEAM, :FIREBLAST, :ENERGYBALL],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SNIPER, nature: :MODEST, item: :SCOPELENS,
        moves: [:HYDROPUMP, :ICEBEAM, :FOCUSENERGY, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Corsola ---
    s[:CORSOLA] = [
      { tier: 3, ability: :NATURALCURE, nature: :BOLD, item: :EVIOLITE,
        moves: [:SCALD, :POWERGEM, :STEALTHROCK, :RECOVER],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :BOLD, item: :EVIOLITE,
        moves: [:SCALD, :POWERGEM, :STEALTHROCK, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Jumpluff ---
    s[:JUMPLUFF] = [
      { tier: 3, ability: :INFILTRATOR, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:SLEEPPOWDER, :UTURN, :ACROBATICS, :LEECHSEED],
        evs: { HP: 4, ATTACK: 252, SPEED: 252 } },
      { tier: 4, ability: :INFILTRATOR, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:SLEEPPOWDER, :STRENGTHSAP, :UTURN, :ENCORE],
        evs: { HP: 252, SPEED: 252, DEFENSE: 4 } },
    ]

    # --- Sunflora ---
    s[:SUNFLORA] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :MODEST, item: :LIFEORB,
        moves: [:SOLARBEAM, :EARTHPOWER, :SLUDGEBOMB, :SYNTHESIS],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :TIMID, item: :LIFEORB,
        moves: [:LEAFSTORM, :EARTHPOWER, :SLUDGEBOMB, :HIDDENPOWERFIRE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Quagsire ---
    s[:QUAGSIRE] = [
      { tier: 3, ability: :UNAWARE, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :SCALD, :RECOVER, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :UNAWARE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :EARTHQUAKE, :RECOVER, :HAZE],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Slowking ---
    s[:SLOWKING] = [
      { tier: 3, ability: :REGENERATOR, nature: :CALM, item: :ASSAULTVEST,
        moves: [:SCALD, :PSYCHIC, :ICEBEAM, :FLAMETHROWER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :BOLD, item: :HEAVYDUTYBOOTS,
        moves: [:SCALD, :FUTURESIGHT, :SLACKOFF, :TELEPORT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Stantler ---
    s[:STANTLER] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:RETURN, :EARTHQUAKE, :JUMPKICK, :SUCKERPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:RETURN, :EARTHQUAKE, :JUMPKICK, :MEGAHORN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Delibird ---
    s[:DELIBIRD] = [
      { tier: 3, ability: :HUSTLE, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:ICESHARD, :AERIALACE, :RAPIDSPIN, :SPIKES],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :HUSTLE, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:ICESHARD, :BRAVEBIRD, :ICEPUNCH, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mantine ---
    s[:MANTINE] = [
      { tier: 3, ability: :WATERABSORB, nature: :CALM, item: :LEFTOVERS,
        moves: [:SCALD, :ROOST, :HAZE, :DEFOG],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :WATERABSORB, nature: :CALM, item: :HEAVYDUTYBOOTS,
        moves: [:SCALD, :ROOST, :HAZE, :TOXIC],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    #=========================================================================
    # GENERATION 5 — UNOVA
    #=========================================================================

    # --- Serperior ---
    s[:SERPERIOR] = [
      { tier: 3, ability: :CONTRARY, nature: :TIMID, item: :LIFEORB,
        moves: [:LEAFSTORM, :DRAGONPULSE, :HIDDENPOWERFIRE, :SUBSTITUTE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CONTRARY, nature: :TIMID, item: :LEFTOVERS,
        moves: [:LEAFSTORM, :DRAGONPULSE, :SUBSTITUTE, :LEECHSEED],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Emboar ---
    s[:EMBOAR] = [
      { tier: 3, ability: :RECKLESS, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:FLAREBLITZ, :SUPERPOWER, :WILDCHARGE, :HEADSMASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :RECKLESS, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:FLAREBLITZ, :SUPERPOWER, :WILDCHARGE, :HEADSMASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Samurott ---
    s[:SAMUROTT] = [
      { tier: 3, ability: :TORRENT, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :ICEBEAM, :GRASSKNOT, :SWORDSDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHELLARMOR, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LIQUIDATION, :MEGAHORN, :AQUAJET, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Stoutland ---
    s[:STOUTLAND] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:RETURN, :SUPERPOWER, :CRUNCH, :WILDCHARGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SANDRUSH, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:RETURN, :SUPERPOWER, :CRUNCH, :WILDCHARGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Unfezant ---
    s[:UNFEZANT] = [
      { tier: 3, ability: :SUPERLUCK, nature: :JOLLY, item: :SCOPELENS,
        moves: [:BRAVEBIRD, :RETURN, :UTURN, :NIGHTSLASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SUPERLUCK, nature: :ADAMANT, item: :SCOPELENS,
        moves: [:BRAVEBIRD, :RETURN, :UTURN, :NIGHTSLASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gigalith ---
    s[:GIGALITH] = [
      { tier: 3, ability: :SANDSTREAM, nature: :BRAVE, item: :LEFTOVERS,
        moves: [:STONEEDGE, :EARTHQUAKE, :STEALTHROCK, :EXPLOSION],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SANDSTREAM, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:STONEEDGE, :EARTHQUAKE, :HEAVYSLAM, :SUPERPOWER],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Excadrill ---
    s[:EXCADRILL] = [
      { tier: 3, ability: :SANDRUSH, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :IRONHEAD, :ROCKSLIDE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOLDBREAKER, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:EARTHQUAKE, :IRONHEAD, :RAPIDSPIN, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SANDRUSH, nature: :ADAMANT, item: :LIFEORB,
        moves: [:EARTHQUAKE, :IRONHEAD, :ROCKSLIDE, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Conkeldurr ---
    s[:CONKELDURR] = [
      { tier: 3, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:DRAINPUNCH, :MACHPUNCH, :KNOCKOFF, :FACADE],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :IRONFIST, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:DRAINPUNCH, :MACHPUNCH, :ICEPUNCH, :THUNDERPUNCH],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :IRONFIST, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:DRAINPUNCH, :MACHPUNCH, :ICEPUNCH, :KNOCKOFF],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Scolipede ---
    s[:SCOLIPEDE] = [
      { tier: 3, ability: :SPEEDBOOST, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:MEGAHORN, :POISONJAB, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SPEEDBOOST, nature: :JOLLY, item: :LIFEORB,
        moves: [:MEGAHORN, :POISONJAB, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Whimsicott ---
    s[:WHIMSICOTT] = [
      { tier: 3, ability: :PRANKSTER, nature: :TIMID, item: :LEFTOVERS,
        moves: [:MOONBLAST, :ENCORE, :LEECHSEED, :SUBSTITUTE],
        evs: { HP: 252, SPEED: 252, SPECIAL_ATTACK: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :BOLD, item: :LEFTOVERS,
        moves: [:MOONBLAST, :ENCORE, :LEECHSEED, :UTURN],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :TIMID, item: :FOCUSSASH,
        moves: [:MOONBLAST, :TAILWIND, :ENCORE, :HELPINGHAND],
        evs: { HP: 252, SPEED: 252, SPECIAL_ATTACK: 4 }, format: :doubles },
    ]

    # --- Lilligant ---
    s[:LILLIGANT] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :TIMID, item: :LIFEORB,
        moves: [:LEAFSTORM, :SLEEPPOWDER, :QUIVERDANCE, :GIGADRAIN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :MODEST, item: :LIFEORB,
        moves: [:LEAFSTORM, :SLEEPPOWDER, :QUIVERDANCE, :HIDDENPOWERFIRE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Darmanitan ---
    s[:DARMANITAN] = [
      { tier: 3, ability: :SHEERFORCE, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:FLAREBLITZ, :EARTHQUAKE, :UTURN, :ROCKSLIDE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:FLAREBLITZ, :EARTHQUAKE, :UTURN, :SUPERPOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Krookodile ---
    s[:KROOKODILE] = [
      { tier: 3, ability: :INTIMIDATE, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:EARTHQUAKE, :KNOCKOFF, :STONEEDGE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :KNOCKOFF, :SUPERPOWER, :STEALTHROCK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Zoroark ---
    s[:ZOROARK] = [
      { tier: 3, ability: :ILLUSION, nature: :TIMID, item: :LIFEORB,
        moves: [:DARKPULSE, :FLAMETHROWER, :FOCUSBLAST, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ILLUSION, nature: :TIMID, item: :CHOICESPECS,
        moves: [:DARKPULSE, :FLAMETHROWER, :FOCUSBLAST, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Reuniclus ---
    s[:REUNICLUS] = [
      { tier: 3, ability: :MAGICGUARD, nature: :BOLD, item: :LIFEORB,
        moves: [:PSYCHIC, :FOCUSBLAST, :RECOVER, :CALMMIND],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_ATTACK: 4 } },
      { tier: 4, ability: :MAGICGUARD, nature: :QUIET, item: :LIFEORB,
        moves: [:PSYCHIC, :FOCUSBLAST, :SHADOWBALL, :TRICKROOM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :MAGICGUARD, nature: :QUIET, item: :LIFEORB,
        moves: [:PSYCHIC, :FOCUSBLAST, :TRICKROOM, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Cinccino ---
    s[:CINCCINO] = [
      { tier: 3, ability: :SKILLLINK, nature: :JOLLY, item: :LIFEORB,
        moves: [:TAILSLAP, :ROCKBLAST, :BULLETSEED, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SKILLLINK, nature: :JOLLY, item: :KINGSROCK,
        moves: [:TAILSLAP, :ROCKBLAST, :BULLETSEED, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gothitelle ---
    s[:GOTHITELLE] = [
      { tier: 3, ability: :SHADOWTAG, nature: :CALM, item: :LEFTOVERS,
        moves: [:PSYCHIC, :THUNDERBOLT, :CALMMIND, :REST],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :SHADOWTAG, nature: :BOLD, item: :LEFTOVERS,
        moves: [:PSYCHIC, :THUNDERBOLT, :TRICK, :CALMMIND],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Ferrothorn ---
    s[:FERROTHORN] = [
      { tier: 3, ability: :IRONBARBS, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :LEECHSEED, :GYROBALL, :POWERWHIP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :IRONBARBS, nature: :SASSY, item: :LEFTOVERS,
        moves: [:SPIKES, :LEECHSEED, :GYROBALL, :KNOCKOFF],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Chandelure ---
    s[:CHANDELURE] = [
      { tier: 3, ability: :FLASHFIRE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:SHADOWBALL, :FIREBLAST, :ENERGYBALL, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :MODEST, item: :CHOICESPECS,
        moves: [:SHADOWBALL, :FIREBLAST, :ENERGYBALL, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :MODEST, item: :FOCUSSASH,
        moves: [:HEATWAVE, :SHADOWBALL, :TRICKROOM, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Haxorus ---
    s[:HAXORUS] = [
      { tier: 3, ability: :MOLDBREAKER, nature: :JOLLY, item: :LIFEORB,
        moves: [:OUTRAGE, :EARTHQUAKE, :CLOSECOMBAT, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOLDBREAKER, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:OUTRAGE, :EARTHQUAKE, :CLOSECOMBAT, :FIRSTIMPRESSION],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mienshao ---
    s[:MIENSHAO] = [
      { tier: 3, ability: :REGENERATOR, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:HIGHJUMPKICK, :UTURN, :KNOCKOFF, :STONEEDGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :JOLLY, item: :LIFEORB,
        moves: [:HIGHJUMPKICK, :UTURN, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Bisharp ---
    s[:BISHARP] = [
      { tier: 3, ability: :DEFIANT, nature: :ADAMANT, item: :LIFEORB,
        moves: [:KNOCKOFF, :IRONHEAD, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :ADAMANT, item: :FOCUSSASH,
        moves: [:KNOCKOFF, :IRONHEAD, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Hydreigon ---
    s[:HYDREIGON] = [
      { tier: 3, ability: :LEVITATE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:DRACOMETEOR, :DARKPULSE, :FLAMETHROWER, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :MODEST, item: :LIFEORB,
        moves: [:DRACOMETEOR, :DARKPULSE, :FLASHCANNON, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :MODEST, item: :LIFEORB,
        moves: [:DRACOMETEOR, :DARKPULSE, :HEATWAVE, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Volcarona ---
    s[:VOLCARONA] = [
      { tier: 3, ability: :FLAMEBODY, nature: :TIMID, item: :LIFEORB,
        moves: [:FIREBLAST, :BUGBUZZ, :QUIVERDANCE, :GIGADRAIN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLAMEBODY, nature: :MODEST, item: :HEAVYDUTYBOOTS,
        moves: [:FIREBLAST, :BUGBUZZ, :QUIVERDANCE, :PSYCHIC],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLAMEBODY, nature: :TIMID, item: :CHARTIBERRY,
        moves: [:HEATWAVE, :BUGBUZZ, :QUIVERDANCE, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Braviary ---
    s[:BRAVIARY] = [
      { tier: 3, ability: :DEFIANT, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:BRAVEBIRD, :CLOSECOMBAT, :UTURN, :RETURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :JOLLY, item: :LIFEORB,
        moves: [:BRAVEBIRD, :CLOSECOMBAT, :UTURN, :BULKUP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mandibuzz ---
    s[:MANDIBUZZ] = [
      { tier: 3, ability: :OVERCOAT, nature: :IMPISH, item: :HEAVYDUTYBOOTS,
        moves: [:FOULPLAY, :UTURN, :DEFOG, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :OVERCOAT, nature: :BOLD, item: :ROCKYHELMET,
        moves: [:FOULPLAY, :UTURN, :DEFOG, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Durant ---
    s[:DURANT] = [
      { tier: 3, ability: :HUSTLE, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:IRONHEAD, :XSCISSOR, :SUPERPOWER, :ROCKSLIDE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :HUSTLE, nature: :JOLLY, item: :LIFEORB,
        moves: [:IRONHEAD, :XSCISSOR, :SUPERPOWER, :FIRSTIMPRESSION],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Eelektross ---
    s[:EELEKTROSS] = [
      { tier: 3, ability: :LEVITATE, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :FLAMETHROWER, :GIGADRAIN, :UTURN],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:WILDCHARGE, :DRAINPUNCH, :KNOCKOFF, :FLAMETHROWER],
        evs: { HP: 252, ATTACK: 252, SPECIAL_ATTACK: 4 } },
    ]

    # --- Galvantula ---
    s[:GALVANTULA] = [
      { tier: 3, ability: :COMPOUNDEYES, nature: :TIMID, item: :FOCUSSASH,
        moves: [:THUNDER, :BUGBUZZ, :STICKYWEB, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :COMPOUNDEYES, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDER, :BUGBUZZ, :ENERGYBALL, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Jellicent ---
    s[:JELLICENT] = [
      { tier: 3, ability: :WATERABSORB, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :SHADOWBALL, :RECOVER, :WILLOWISP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :WATERABSORB, nature: :CALM, item: :LEFTOVERS,
        moves: [:SCALD, :SHADOWBALL, :RECOVER, :TAUNT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Amoonguss ---
    s[:AMOONGUSS] = [
      { tier: 3, ability: :REGENERATOR, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:SPORE, :GIGADRAIN, :SLUDGEBOMB, :CLEARSMOG],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :CALM, item: :ROCKYHELMET,
        moves: [:SPORE, :GIGADRAIN, :SLUDGEBOMB, :CLEARSMOG],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:SPORE, :RAGEPOWDER, :GIGADRAIN, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Klinklang ---
    s[:KLINKLANG] = [
      { tier: 3, ability: :CLEARBODY, nature: :ADAMANT, item: :LIFEORB,
        moves: [:GEARGRIND, :WILDCHARGE, :SHIFTGEAR, :SUBSTITUTE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CLEARBODY, nature: :JOLLY, item: :LIFEORB,
        moves: [:GEARGRIND, :WILDCHARGE, :SHIFTGEAR, :SUBSTITUTE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Golurk ---
    s[:GOLURK] = [
      { tier: 3, ability: :IRONFIST, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:EARTHQUAKE, :SHADOWPUNCH, :ICEPUNCH, :DYNAMICPUNCH],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :NOGUARD, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:EARTHQUAKE, :POLTERGEIST, :DYNAMICPUNCH, :STONEEDGE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Escavalier ---
    s[:ESCAVALIER] = [
      { tier: 3, ability: :OVERCOAT, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:MEGAHORN, :IRONHEAD, :KNOCKOFF, :DRILLRUN],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :OVERCOAT, nature: :BRAVE, item: :LIFEORB,
        moves: [:MEGAHORN, :IRONHEAD, :KNOCKOFF, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Accelgor ---
    s[:ACCELGOR] = [
      { tier: 3, ability: :STICKYHOLD, nature: :TIMID, item: :FOCUSSASH,
        moves: [:BUGBUZZ, :FOCUSBLAST, :SPIKES, :FINALGAMBIT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :UNBURDEN, nature: :MODEST, item: :GRASSYSEED,
        moves: [:BUGBUZZ, :FOCUSBLAST, :ENERGYBALL, :ENCORE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Seismitoad ---
    s[:SEISMITOAD] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :EARTHPOWER, :SLUDGEWAVE, :RAINDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :WATERABSORB, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :EARTHPOWER, :STEALTHROCK, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Leavanny ---
    s[:LEAVANNY] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :JOLLY, item: :LIFEORB,
        moves: [:LEAFBLADE, :XSCISSOR, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LEAFBLADE, :XSCISSOR, :KNOCKOFF, :STICKYWEB],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Crustle ---
    s[:CRUSTLE] = [
      { tier: 3, ability: :STURDY, nature: :ADAMANT, item: :CUSTAPBERRY,
        moves: [:SHELLSMASH, :STONEEDGE, :XSCISSOR, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :STURDY, nature: :JOLLY, item: :WHITEHERB,
        moves: [:SHELLSMASH, :STONEEDGE, :XSCISSOR, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Cofagrigus ---
    s[:COFAGRIGUS] = [
      { tier: 3, ability: :MUMMY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SHADOWBALL, :WILLOWISP, :HAZE, :PAINSPLIT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :MUMMY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SHADOWBALL, :BODYPRESS, :WILLOWISP, :TRICKROOM],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    #=========================================================================
    # GENERATION 6 — KALOS
    #=========================================================================

    # --- Chesnaught ---
    s[:CHESNAUGHT] = [
      { tier: 3, ability: :BULLETPROOF, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:DRAINPUNCH, :WOODHAMMER, :SPIKYSHIELD, :LEECHSEED],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :BULLETPROOF, nature: :IMPISH, item: :ROCKYHELMET,
        moves: [:DRAINPUNCH, :WOODHAMMER, :SPIKYSHIELD, :STEALTHROCK],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
    ]

    # --- Delphox ---
    s[:DELPHOX] = [
      { tier: 3, ability: :BLAZE, nature: :TIMID, item: :LIFEORB,
        moves: [:FIREBLAST, :PSYCHIC, :GRASSKNOT, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MAGICIAN, nature: :TIMID, item: :CHOICESCARF,
        moves: [:FIREBLAST, :PSYCHIC, :DAZZLINGGLEAM, :SWITCHEROO],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Greninja ---
    s[:GRENINJA] = [
      { tier: 3, ability: :PROTEAN, nature: :TIMID, item: :LIFEORB,
        moves: [:HYDROPUMP, :DARKPULSE, :ICEBEAM, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTEAN, nature: :HASTY, item: :LIFEORB,
        moves: [:HYDROPUMP, :DARKPULSE, :ICEBEAM, :GRASSKNOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, ATTACK: 4 } },
    ]

    # --- Talonflame ---
    s[:TALONFLAME] = [
      { tier: 3, ability: :GALEWINGS, nature: :ADAMANT, item: :SHARPBEAK,
        moves: [:BRAVEBIRD, :FLAREBLITZ, :SWORDSDANCE, :ROOST],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GALEWINGS, nature: :JOLLY, item: :HEAVYDUTYBOOTS,
        moves: [:BRAVEBIRD, :FLAREBLITZ, :SWORDSDANCE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GALEWINGS, nature: :ADAMANT, item: :SHARPBEAK,
        moves: [:BRAVEBIRD, :FLAREBLITZ, :TAILWIND, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Vivillon ---
    s[:VIVILLON] = [
      { tier: 3, ability: :COMPOUNDEYES, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SLEEPPOWDER, :QUIVERDANCE, :HURRICANE, :BUGBUZZ],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :COMPOUNDEYES, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SLEEPPOWDER, :QUIVERDANCE, :HURRICANE, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Pyroar ---
    s[:PYROAR] = [
      { tier: 3, ability: :UNNERVE, nature: :TIMID, item: :CHOICESPECS,
        moves: [:FIREBLAST, :HYPERVOICE, :DARKPULSE, :WILLOWISP],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :JOLLY, item: :LIFEORB,
        moves: [:FLAREBLITZ, :WILDCHARGE, :RETURN, :WILLOWISP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Florges ---
    s[:FLORGES] = [
      { tier: 3, ability: :FLOWERVEIL, nature: :CALM, item: :LEFTOVERS,
        moves: [:MOONBLAST, :WISH, :PROTECT, :AROMATHERAPY],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :FLOWERVEIL, nature: :BOLD, item: :LEFTOVERS,
        moves: [:MOONBLAST, :CALMMIND, :WISH, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Aegislash ---
    s[:AEGISLASH] = [
      { tier: 3, ability: :STANCECHANGE, nature: :BRAVE, item: :LEFTOVERS,
        moves: [:SHADOWBALL, :FLASHCANNON, :SHADOWSNEAK, :KINGSSHIELD],
        evs: { HP: 252, ATTACK: 128, SPECIAL_ATTACK: 128 } },
      { tier: 4, ability: :STANCECHANGE, nature: :QUIET, item: :WEAKNESSPOLICY,
        moves: [:SHADOWBALL, :FLASHCANNON, :SHADOWSNEAK, :KINGSSHIELD],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :STANCECHANGE, nature: :QUIET, item: :WEAKNESSPOLICY,
        moves: [:SHADOWBALL, :FLASHCANNON, :KINGSSHIELD, :WIDEGUARD],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Diggersby ---
    s[:DIGGERSBY] = [
      { tier: 3, ability: :HUGEPOWER, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:EARTHQUAKE, :RETURN, :UTURN, :QUICKATTACK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :HUGEPOWER, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :RETURN, :SWORDSDANCE, :QUICKATTACK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Pangoro ---
    s[:PANGORO] = [
      { tier: 3, ability: :IRONFIST, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:DRAINPUNCH, :KNOCKOFF, :ICEPUNCH, :GUNKSHOT],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :ADAMANT, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :ICEPUNCH, :SUCKERPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dragalge ---
    s[:DRAGALGE] = [
      { tier: 3, ability: :ADAPTABILITY, nature: :MODEST, item: :LIFEORB,
        moves: [:DRACOMETEOR, :SLUDGEWAVE, :THUNDERBOLT, :TOXICSPIKES],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :ADAPTABILITY, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:DRACOMETEOR, :SLUDGEWAVE, :FOCUSBLAST, :DRAGONPULSE],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Clawitzer ---
    s[:CLAWITZER] = [
      { tier: 3, ability: :MEGALAUNCHER, nature: :MODEST, item: :CHOICESPECS,
        moves: [:WATERPULSE, :DARKPULSE, :AURASPHERE, :DRAGONCLAW],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MEGALAUNCHER, nature: :MODEST, item: :LIFEORB,
        moves: [:WATERPULSE, :DARKPULSE, :AURASPHERE, :ICEBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Heliolisk ---
    s[:HELIOLISK] = [
      { tier: 3, ability: :DRYSKIN, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :SURF, :GRASSKNOT, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DRYSKIN, nature: :TIMID, item: :CHOICESPECS,
        moves: [:THUNDERBOLT, :SURF, :DARKPULSE, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Tyrantrum ---
    s[:TYRANTRUM] = [
      { tier: 3, ability: :ROCKHEAD, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:HEADSMASH, :OUTRAGE, :EARTHQUAKE, :SUPERPOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ROCKHEAD, nature: :JOLLY, item: :LIFEORB,
        moves: [:HEADSMASH, :OUTRAGE, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Aurorus ---
    s[:AURORUS] = [
      { tier: 3, ability: :REFRIGERATE, nature: :MODEST, item: :CHOICESPECS,
        moves: [:HYPERVOICE, :FREEZEDRY, :EARTHPOWER, :ANCIENTPOWER],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :SNOWWARNING, nature: :MODEST, item: :FOCUSSASH,
        moves: [:BLIZZARD, :FREEZEDRY, :EARTHPOWER, :STEALTHROCK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Hawlucha ---
    s[:HAWLUCHA] = [
      { tier: 3, ability: :UNBURDEN, nature: :ADAMANT, item: :ELECTRICSEED,
        moves: [:CLOSECOMBAT, :ACROBATICS, :SWORDSDANCE, :ROOST],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :UNBURDEN, nature: :JOLLY, item: :ELECTRICSEED,
        moves: [:CLOSECOMBAT, :ACROBATICS, :SWORDSDANCE, :TAUNT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Goodra ---
    s[:GOODRA] = [
      { tier: 3, ability: :SAPSIPPER, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:DRACOMETEOR, :SLUDGEBOMB, :FLAMETHROWER, :THUNDERBOLT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :SAPSIPPER, nature: :CALM, item: :ASSAULTVEST,
        moves: [:DRACOMETEOR, :SLUDGEBOMB, :FLAMETHROWER, :ICEBEAM],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPECIAL_ATTACK: 4 } },
    ]

    # --- Klefki ---
    s[:KLEFKI] = [
      { tier: 3, ability: :PRANKSTER, nature: :BOLD, item: :LEFTOVERS,
        moves: [:THUNDERWAVE, :DAZZLINGGLEAM, :FOULPLAY, :SPIKES],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :CALM, item: :LIGHTCLAY,
        moves: [:REFLECT, :LIGHTSCREEN, :FOULPLAY, :THUNDERWAVE],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:THUNDERWAVE, :DAZZLINGGLEAM, :FOULPLAY, :CRAFTYSHIELD],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Trevenant ---
    s[:TREVENANT] = [
      { tier: 3, ability: :HARVEST, nature: :CAREFUL, item: :SITRUSBERRY,
        moves: [:HORNLEECH, :SHADOWCLAW, :WILLOWISP, :REST],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :HARVEST, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:HORNLEECH, :POLTERGEIST, :WILLOWISP, :SUBSTITUTE],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Gourgeist ---
    s[:GOURGEIST] = [
      { tier: 3, ability: :FRISK, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:BULLETSSEED, :SHADOWSNEAK, :WILLOWISP, :SYNTHESIS],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :FRISK, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:SEEDBOMB, :POLTERGEIST, :WILLOWISP, :SYNTHESIS],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Noivern ---
    s[:NOIVERN] = [
      { tier: 3, ability: :INFILTRATOR, nature: :TIMID, item: :CHOICESPECS,
        moves: [:DRACOMETEOR, :AIRSLASH, :FLAMETHROWER, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INFILTRATOR, nature: :TIMID, item: :LIFEORB,
        moves: [:DRACOMETEOR, :HURRICANE, :FLAMETHROWER, :ROOST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INFILTRATOR, nature: :TIMID, item: :LIFEORB,
        moves: [:DRACOMETEOR, :AIRSLASH, :TAILWIND, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Sylveon ---
    s[:SYLVEON] = [
      { tier: 3, ability: :PIXILATE, nature: :MODEST, item: :CHOICESPECS,
        moves: [:HYPERVOICE, :PSYSHOCK, :SHADOWBALL, :MYSTICALFIRE],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :PIXILATE, nature: :CALM, item: :LEFTOVERS,
        moves: [:HYPERVOICE, :CALMMIND, :WISH, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PIXILATE, nature: :MODEST, item: :THROATSPRAY,
        moves: [:HYPERVOICE, :MYSTICALFIRE, :QUICKATTACK, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Barbaracle ---
    s[:BARBARACLE] = [
      { tier: 3, ability: :TOUGHCLAWS, nature: :JOLLY, item: :LIFEORB,
        moves: [:SHELLSMASH, :LIQUIDATION, :STONEEDGE, :CROSSCHOP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TOUGHCLAWS, nature: :ADAMANT, item: :WHITEHERB,
        moves: [:SHELLSMASH, :LIQUIDATION, :STONEEDGE, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Malamar ---
    s[:MALAMAR] = [
      { tier: 3, ability: :CONTRARY, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:SUPERPOWER, :KNOCKOFF, :PSYCHOCUT, :REST],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :CONTRARY, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:SUPERPOWER, :KNOCKOFF, :REST, :SLEEPTALK],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, ATTACK: 4 } },
    ]

    # --- Carbink ---
    s[:CARBINK] = [
      { tier: 3, ability: :STURDY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :MOONBLAST, :BODYPRESS, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :CLEARBODY, nature: :BOLD, item: :LIGHTCLAY,
        moves: [:REFLECT, :LIGHTSCREEN, :MOONBLAST, :STEALTHROCK],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

  end
end
