#===============================================================================
# Dynamic Difficulty System — Competitive Sets: Generation 1–3
# Kanto (#001–#151) + Johto (#152–#251) + Hoenn (#252–#386)
#
# Each species has a Pro (tier 3) and Extreme (tier 4) singles set.
# Some meta-relevant species also have doubles sets.
# Sets are validated at apply-time; missing moves/items are safe.
#===============================================================================

module DynamicDifficulty
  module CompetitiveSets
    s = SETS   # short alias for readability

    #=========================================================================
    # GENERATION 1 — KANTO
    #=========================================================================

    # --- Venusaur ---
    s[:VENUSAUR] = [
      { tier: 3, ability: :OVERGROW, nature: :MODEST, item: :BLACKSLUDGE,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :SLEEPPOWDER, :SYNTHESIS],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :TIMID, item: :LIFEORB,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :EARTHPOWER, :SLEEPPOWDER],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :MODEST, item: :LIFEORB,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :EARTHPOWER, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Charizard ---
    s[:CHARIZARD] = [
      { tier: 3, ability: :BLAZE, nature: :TIMID, item: :CHOICESPECS,
        moves: [:FLAMETHROWER, :AIRSLASH, :FOCUSBLAST, :DRAGONCLAW],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SOLARPOWER, nature: :TIMID, item: :CHOICESPECS,
        moves: [:FIREBLAST, :AIRSLASH, :FOCUSBLAST, :DRAGONCLAW],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SOLARPOWER, nature: :TIMID, item: :LIFEORB,
        moves: [:HEATWAVE, :AIRSLASH, :PROTECT, :TAILWIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Blastoise ---
    s[:BLASTOISE] = [
      { tier: 3, ability: :TORRENT, nature: :MODEST, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :RAPIDSPIN, :ROAR],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :RAINDISH, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :RAPIDSPIN, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Butterfree ---
    s[:BUTTERFREE] = [
      { tier: 3, ability: :COMPOUNDEYES, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SLEEPPOWDER, :BUGBUZZ, :QUIVERDANCE, :AIRSLASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :COMPOUNDEYES, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SLEEPPOWDER, :QUIVERDANCE, :BUGBUZZ, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Beedrill ---
    s[:BEEDRILL] = [
      { tier: 3, ability: :SWARM, nature: :JOLLY, item: :LIFEORB,
        moves: [:POISONJAB, :UTURN, :DRILLRUN, :XSCISSOR],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWARM, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:POISONJAB, :UTURN, :DRILLRUN, :XSCISSOR],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Pidgeot ---
    s[:PIDGEOT] = [
      { tier: 3, ability: :KEENEYE, nature: :TIMID, item: :CHOICESPECS,
        moves: [:HURRICANE, :HEATWAVE, :UTURN, :AIRSLASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :KEENEYE, nature: :TIMID, item: :LIFEORB,
        moves: [:HURRICANE, :HEATWAVE, :UTURN, :ROOST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Raticate ---
    s[:RATICATE] = [
      { tier: 3, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:FACADE, :SUCKERPUNCH, :UTURN, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:FACADE, :SUCKERPUNCH, :UTURN, :CRUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Fearow ---
    s[:FEAROW] = [
      { tier: 3, ability: :SNIPER, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:DRILLPECK, :RETURN, :UTURN, :DRILLRUN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SNIPER, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:DRILLPECK, :RETURN, :UTURN, :DRILLRUN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Arbok ---
    s[:ARBOK] = [
      { tier: 3, ability: :INTIMIDATE, nature: :JOLLY, item: :BLACKSLUDGE,
        moves: [:GUNKSHOT, :EARTHQUAKE, :SUCKERPUNCH, :COIL],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :JOLLY, item: :LIFEORB,
        moves: [:GUNKSHOT, :EARTHQUAKE, :SUCKERPUNCH, :COIL],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Raichu ---
    s[:RAICHU] = [
      { tier: 3, ability: :LIGHTNINGROD, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :GRASSKNOT, :NASTYPLOT, :SURF],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LIGHTNINGROD, nature: :TIMID, item: :FOCUSSASH,
        moves: [:THUNDERBOLT, :GRASSKNOT, :NASTYPLOT, :ENCORE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LIGHTNINGROD, nature: :TIMID, item: :FOCUSSASH,
        moves: [:THUNDERBOLT, :FAKEOUT, :NUZZLE, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Sandslash ---
    s[:SANDSLASH] = [
      { tier: 3, ability: :SANDRUSH, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:EARTHQUAKE, :STONEEDGE, :RAPIDSPIN, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SANDRUSH, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :STONEEDGE, :SWORDSDANCE, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Nidoqueen ---
    s[:NIDOQUEEN] = [
      { tier: 3, ability: :SHEERFORCE, nature: :MODEST, item: :LIFEORB,
        moves: [:EARTHPOWER, :SLUDGEWAVE, :ICEBEAM, :THUNDERBOLT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :MODEST, item: :LIFEORB,
        moves: [:EARTHPOWER, :SLUDGEWAVE, :ICEBEAM, :STEALTHROCK],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
    ]

    # --- Nidoking ---
    s[:NIDOKING] = [
      { tier: 3, ability: :SHEERFORCE, nature: :MODEST, item: :LIFEORB,
        moves: [:EARTHPOWER, :SLUDGEWAVE, :ICEBEAM, :THUNDERBOLT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :TIMID, item: :LIFEORB,
        moves: [:EARTHPOWER, :SLUDGEWAVE, :ICEBEAM, :FIREBLAST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Clefable ---
    s[:CLEFABLE] = [
      { tier: 3, ability: :MAGICGUARD, nature: :BOLD, item: :LEFTOVERS,
        moves: [:MOONBLAST, :FLAMETHROWER, :CALMMIND, :SOFTBOILED],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :UNAWARE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:MOONBLAST, :FLAMETHROWER, :STEALTHROCK, :SOFTBOILED],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :MAGICGUARD, nature: :BOLD, item: :LEFTOVERS,
        moves: [:MOONBLAST, :HELPINGHAND, :FOLLOWME, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Ninetales ---
    s[:NINETALES] = [
      { tier: 3, ability: :DROUGHT, nature: :TIMID, item: :HEATROCK,
        moves: [:FLAMETHROWER, :SOLARBEAM, :WILLOWISP, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DROUGHT, nature: :TIMID, item: :HEATROCK,
        moves: [:FIREBLAST, :SOLARBEAM, :NASTYPLOT, :WILLOWISP],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DROUGHT, nature: :TIMID, item: :HEATROCK,
        moves: [:HEATWAVE, :SOLARBEAM, :WILLOWISP, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Wigglytuff ---
    s[:WIGGLYTUFF] = [
      { tier: 3, ability: :COMPETITIVE, nature: :MODEST, item: :LEFTOVERS,
        moves: [:DAZZLINGGLEAM, :FIREBLAST, :STEALTHROCK, :WISH],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :COMPETITIVE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:DAZZLINGGLEAM, :FIREBLAST, :WISH, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Vileplume ---
    s[:VILEPLUME] = [
      { tier: 3, ability: :EFFECTSPORE, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :SLEEPPOWDER, :STRENGTHSAP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :EFFECTSPORE, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :SLEEPPOWDER, :STRENGTHSAP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Parasect ---
    s[:PARASECT] = [
      { tier: 3, ability: :DRYSKIN, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:SPORE, :XSCISSOR, :SEEDBOMB, :KNOCKOFF],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :DRYSKIN, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:SPORE, :LEECHLIFE, :SEEDBOMB, :KNOCKOFF],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Venomoth ---
    s[:VENOMOTH] = [
      { tier: 3, ability: :TINTEDLENS, nature: :TIMID, item: :LIFEORB,
        moves: [:BUGBUZZ, :SLUDGEBOMB, :SLEEPPOWDER, :QUIVERDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TINTEDLENS, nature: :TIMID, item: :FOCUSSASH,
        moves: [:BUGBUZZ, :SLUDGEBOMB, :SLEEPPOWDER, :QUIVERDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dugtrio ---
    s[:DUGTRIO] = [
      { tier: 3, ability: :ARENATRAP, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:EARTHQUAKE, :STONEEDGE, :SUCKERPUNCH, :STEALTHROCK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ARENATRAP, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:EARTHQUAKE, :STONEEDGE, :SUCKERPUNCH, :MEMENTO],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Persian ---
    s[:PERSIAN] = [
      { tier: 3, ability: :TECHNICIAN, nature: :JOLLY, item: :SILKSCARF,
        moves: [:FAKEOUT, :RETURN, :UTURN, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :JOLLY, item: :LIFEORB,
        moves: [:FAKEOUT, :RETURN, :UTURN, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Golduck ---
    s[:GOLDUCK] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :ICEBEAM, :PSYSHOCK, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :TIMID, item: :LIFEORB,
        moves: [:HYDROPUMP, :ICEBEAM, :PSYSHOCK, :ENCORE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Primeape ---
    s[:PRIMEAPE] = [
      { tier: 3, ability: :DEFIANT, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:CLOSECOMBAT, :UTURN, :STONEEDGE, :ICEPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:CLOSECOMBAT, :UTURN, :STONEEDGE, :ICEPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Arcanine ---
    s[:ARCANINE] = [
      { tier: 3, ability: :INTIMIDATE, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:FLAREBLITZ, :WILDCHARGE, :CLOSECOMBAT, :EXTREMESPEED],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:FLAREBLITZ, :EXTREMESPEED, :CLOSECOMBAT, :WILDCHARGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:FLAREBLITZ, :EXTREMESPEED, :SNARL, :PROTECT],
        evs: { HP: 252, ATTACK: 128, SPEED: 128 }, format: :doubles },
    ]

    # --- Poliwrath ---
    s[:POLIWRATH] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :ADAMANT, item: :LIFEORB,
        moves: [:WATERFALL, :CLOSECOMBAT, :ICEPUNCH, :RAINDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :JOLLY, item: :LIFEORB,
        moves: [:WATERFALL, :CLOSECOMBAT, :ICEPUNCH, :POISONJAB],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Alakazam ---
    s[:ALAKAZAM] = [
      { tier: 3, ability: :MAGICGUARD, nature: :TIMID, item: :LIFEORB,
        moves: [:PSYCHIC, :SHADOWBALL, :FOCUSBLAST, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MAGICGUARD, nature: :TIMID, item: :FOCUSSASH,
        moves: [:PSYCHIC, :SHADOWBALL, :FOCUSBLAST, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Machamp ---
    s[:MACHAMP] = [
      { tier: 3, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :FACADE, :BULLETPUNCH],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :NOGUARD, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:DYNAMICPUNCH, :STONEEDGE, :KNOCKOFF, :BULLETPUNCH],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :NOGUARD, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:DYNAMICPUNCH, :KNOCKOFF, :STONEEDGE, :BULLETPUNCH],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Victreebel ---
    s[:VICTREEBEL] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :MODEST, item: :LIFEORB,
        moves: [:SOLARBEAM, :SLUDGEBOMB, :WEATHERBALL, :SLEEPPOWDER],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :TIMID, item: :LIFEORB,
        moves: [:LEAFSTORM, :SLUDGEBOMB, :WEATHERBALL, :SLEEPPOWDER],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Tentacruel ---
    s[:TENTACRUEL] = [
      { tier: 3, ability: :LIQUIDOOZE, nature: :TIMID, item: :BLACKSLUDGE,
        moves: [:SCALD, :SLUDGEBOMB, :RAPIDSPIN, :TOXIC],
        evs: { HP: 252, SPEED: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :LIQUIDOOZE, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:SCALD, :SLUDGEBOMB, :RAPIDSPIN, :TOXICSPIKES],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Golem ---
    s[:GOLEM] = [
      { tier: 3, ability: :STURDY, nature: :ADAMANT, item: :CUSTAPBERRY,
        moves: [:EARTHQUAKE, :STONEEDGE, :STEALTHROCK, :EXPLOSION],
        evs: { ATTACK: 252, HP: 252, DEFENSE: 4 } },
      { tier: 4, ability: :STURDY, nature: :ADAMANT, item: :WEAKNESSPOLICY,
        moves: [:EARTHQUAKE, :STONEEDGE, :STEALTHROCK, :SUCKERPUNCH],
        evs: { ATTACK: 252, HP: 252, DEFENSE: 4 } },
    ]

    # --- Rapidash ---
    s[:RAPIDASH] = [
      { tier: 3, ability: :FLASHFIRE, nature: :JOLLY, item: :LIFEORB,
        moves: [:FLAREBLITZ, :WILDCHARGE, :HIGHHORSEPOWER, :MORNINGSUN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:FLAREBLITZ, :WILDCHARGE, :HIGHHORSEPOWER, :DRILLRUN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Slowbro ---
    s[:SLOWBRO] = [
      { tier: 3, ability: :REGENERATOR, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :PSYCHIC, :SLACKOFF, :THUNDERWAVE],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :BOLD, item: :HEAVYDUTYBOOTS,
        moves: [:SCALD, :PSYSHOCK, :SLACKOFF, :FUTURESIGHT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:SCALD, :PSYCHIC, :TRICKROOM, :SLACKOFF],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Magneton ---
    s[:MAGNETON] = [
      { tier: 3, ability: :MAGNETPULL, nature: :MODEST, item: :EVIOLITE,
        moves: [:THUNDERBOLT, :FLASHCANNON, :VOLTSWITCH, :HIDDENPOWREFIRE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MAGNETPULL, nature: :TIMID, item: :EVIOLITE,
        moves: [:THUNDERBOLT, :FLASHCANNON, :VOLTSWITCH, :BODYPRESS],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Farfetchd ---
    s[:FARFETCHD] = [
      { tier: 3, ability: :DEFIANT, nature: :ADAMANT, item: :LEEK,
        moves: [:BRAVEBIRD, :LEAFBLADE, :CLOSECOMBAT, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :JOLLY, item: :LEEK,
        moves: [:BRAVEBIRD, :LEAFBLADE, :CLOSECOMBAT, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dodrio ---
    s[:DODRIO] = [
      { tier: 3, ability: :EARLYBIRD, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:BRAVEBIRD, :RETURN, :KNOCKOFF, :JUMPKICK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :EARLYBIRD, nature: :JOLLY, item: :LIFEORB,
        moves: [:BRAVEBIRD, :RETURN, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dewgong ---
    s[:DEWGONG] = [
      { tier: 3, ability: :THICKFAT, nature: :CALM, item: :LEFTOVERS,
        moves: [:SURF, :ICEBEAM, :TOXIC, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :THICKFAT, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SURF, :ICEBEAM, :TOXIC, :REST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Muk ---
    s[:MUK] = [
      { tier: 3, ability: :POISONTOUCH, nature: :ADAMANT, item: :BLACKSLUDGE,
        moves: [:GUNKSHOT, :KNOCKOFF, :ICEPUNCH, :SHADOWSNEAK],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :POISONTOUCH, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:GUNKSHOT, :KNOCKOFF, :ICEPUNCH, :FIREPUNCH],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Cloyster ---
    s[:CLOYSTER] = [
      { tier: 3, ability: :SKILLLINK, nature: :NAIVE, item: :FOCUSSASH,
        moves: [:SHELLSMASH, :ICICLESPEAR, :ROCKBLAST, :HYDROPUMP],
        evs: { ATTACK: 252, SPEED: 252, SPECIAL_ATTACK: 4 } },
      { tier: 4, ability: :SKILLLINK, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:SHELLSMASH, :ICICLESPEAR, :ROCKBLAST, :ICESHARD],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SKILLLINK, nature: :JOLLY, item: :KINGROCK,
        moves: [:SHELLSMASH, :ICICLESPEAR, :ROCKBLAST, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Gengar ---
    s[:GENGAR] = [
      { tier: 3, ability: :CURSEDBODY, nature: :TIMID, item: :LIFEORB,
        moves: [:SHADOWBALL, :SLUDGEWAVE, :FOCUSBLAST, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CURSEDBODY, nature: :TIMID, item: :CHOICESPECS,
        moves: [:SHADOWBALL, :SLUDGEWAVE, :FOCUSBLAST, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CURSEDBODY, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SHADOWBALL, :SLUDGEBOMB, :WILLOWISP, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Hypno ---
    s[:HYPNO] = [
      { tier: 3, ability: :INSOMNIA, nature: :CALM, item: :LEFTOVERS,
        moves: [:PSYCHIC, :THUNDERWAVE, :WISH, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :INSOMNIA, nature: :BOLD, item: :LEFTOVERS,
        moves: [:PSYCHIC, :FOCUSBLAST, :NASTYPLOT, :HYPNOSIS],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Kingler ---
    s[:KINGLER] = [
      { tier: 3, ability: :SHEERFORCE, nature: :JOLLY, item: :LIFEORB,
        moves: [:LIQUIDATION, :XSCISSOR, :KNOCKOFF, :AGILITY],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LIQUIDATION, :XSCISSOR, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Electrode ---
    s[:ELECTRODE] = [
      { tier: 3, ability: :STATIC, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :SIGNALBEAM, :TAUNT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :AFTERMATH, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :SIGNALBEAM, :EXPLOSION],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Exeggutor ---
    s[:EXEGGUTOR] = [
      { tier: 3, ability: :HARVEST, nature: :MODEST, item: :SITRUSBERRY,
        moves: [:PSYCHIC, :GIGADRAIN, :SLEEPPOWDER, :LEAFSTORM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :MODEST, item: :LIFEORB,
        moves: [:PSYCHIC, :LEAFSTORM, :HIDDENPOWERFIRE, :SLEEPPOWDER],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Marowak ---
    s[:MAROWAK] = [
      { tier: 3, ability: :BATTLEARMOR, nature: :ADAMANT, item: :THICKCLUB,
        moves: [:EARTHQUAKE, :STONEEDGE, :KNOCKOFF, :STEALTHROCK],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :BATTLEARMOR, nature: :BRAVE, item: :THICKCLUB,
        moves: [:EARTHQUAKE, :STONEEDGE, :KNOCKOFF, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Hitmonlee ---
    s[:HITMONLEE] = [
      { tier: 3, ability: :RECKLESS, nature: :ADAMANT, item: :LIFEORB,
        moves: [:HIGHJUMPKICK, :KNOCKOFF, :MACHPUNCH, :POISONJAB],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :UNBURDEN, nature: :ADAMANT, item: :NORMALGEM,
        moves: [:FAKEOUT, :HIGHJUMPKICK, :KNOCKOFF, :STONEEDGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Hitmonchan ---
    s[:HITMONCHAN] = [
      { tier: 3, ability: :IRONFIST, nature: :ADAMANT, item: :LIFEORB,
        moves: [:DRAINPUNCH, :ICEPUNCH, :MACHPUNCH, :THUNDERPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :IRONFIST, nature: :JOLLY, item: :LIFEORB,
        moves: [:DRAINPUNCH, :ICEPUNCH, :MACHPUNCH, :FIREPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Weezing ---
    s[:WEEZING] = [
      { tier: 3, ability: :LEVITATE, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:SLUDGEBOMB, :WILLOWISP, :PAINSPLIT, :TOXICSPIKES],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:SLUDGEBOMB, :FLAMETHROWER, :WILLOWISP, :TOXICSPIKES],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Kangaskhan ---
    s[:KANGASKHAN] = [
      { tier: 3, ability: :SCRAPPY, nature: :JOLLY, item: :SILKSCARF,
        moves: [:FAKEOUT, :RETURN, :SUCKERPUNCH, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:RETURN, :SUCKERPUNCH, :EARTHQUAKE, :CRUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :ADAMANT, item: :SILKSCARF,
        moves: [:FAKEOUT, :RETURN, :SUCKERPUNCH, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Mr. Mime ---
    s[:MR_MIME] = [
      { tier: 3, ability: :FILTER, nature: :TIMID, item: :FOCUSSASH,
        moves: [:PSYCHIC, :DAZZLINGGLEAM, :NASTYPLOT, :HEALINGWISH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FILTER, nature: :TIMID, item: :LIFEORB,
        moves: [:PSYCHIC, :DAZZLINGGLEAM, :FOCUSBLAST, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Scyther ---
    s[:SCYTHER] = [
      { tier: 3, ability: :TECHNICIAN, nature: :JOLLY, item: :EVIOLITE,
        moves: [:UTURN, :AERIALACE, :BUGBITE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :JOLLY, item: :EVIOLITE,
        moves: [:UTURN, :DUALWINGBEAT, :CLOSECOMBAT, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Jynx ---
    s[:JYNX] = [
      { tier: 3, ability: :DRYSKIN, nature: :TIMID, item: :FOCUSSASH,
        moves: [:ICEBEAM, :PSYCHIC, :LOVELYKISS, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DRYSKIN, nature: :TIMID, item: :CHOICESCARF,
        moves: [:ICEBEAM, :PSYCHIC, :FOCUSBLAST, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Pinsir ---
    s[:PINSIR] = [
      { tier: 3, ability: :MOLDBREAKER, nature: :JOLLY, item: :LIFEORB,
        moves: [:XSCISSOR, :CLOSECOMBAT, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOLDBREAKER, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:XSCISSOR, :CLOSECOMBAT, :EARTHQUAKE, :STONEEDGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Tauros ---
    s[:TAUROS] = [
      { tier: 3, ability: :SHEERFORCE, nature: :JOLLY, item: :LIFEORB,
        moves: [:BODYSLAM, :EARTHQUAKE, :ROCKSLIDE, :CLOSECOMBAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :JOLLY, item: :LIFEORB,
        moves: [:BODYSLAM, :EARTHQUAKE, :ZENHEADBUTT, :CLOSECOMBAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gyarados ---
    s[:GYARADOS] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:WATERFALL, :EARTHQUAKE, :BOUNCE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :JOLLY, item: :LIFEORB,
        moves: [:WATERFALL, :EARTHQUAKE, :ICEFANG, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:WATERFALL, :ICEFANG, :THUNDERWAVE, :PROTECT],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Lapras ---
    s[:LAPRAS] = [
      { tier: 3, ability: :WATERABSORB, nature: :MODEST, item: :LEFTOVERS,
        moves: [:SURF, :ICEBEAM, :THUNDERBOLT, :HEALBELL],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :WATERABSORB, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:SURF, :FREEZEDRY, :THUNDERBOLT, :ICESHARD],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Vaporeon ---
    s[:VAPOREON] = [
      { tier: 3, ability: :WATERABSORB, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :WISH, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :WATERABSORB, nature: :CALM, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :WISH, :HEALBELL],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Jolteon ---
    s[:JOLTEON] = [
      { tier: 3, ability: :VOLTABSORB, nature: :TIMID, item: :CHOICESPECS,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :SHADOWBALL, :SIGNALBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :VOLTABSORB, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :SHADOWBALL, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Flareon ---
    s[:FLAREON] = [
      { tier: 3, ability: :FLASHFIRE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:FLAREBLITZ, :SUPERPOWER, :QUICKATTACK, :FACADE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:FACADE, :FLAREBLITZ, :SUPERPOWER, :QUICKATTACK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Omastar ---
    s[:OMASTAR] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :ICEBEAM, :EARTHPOWER, :SHELLSMASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :MODEST, item: :FOCUSSASH,
        moves: [:HYDROPUMP, :ICEBEAM, :EARTHPOWER, :SHELLSMASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Kabutops ---
    s[:KABUTOPS] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :ADAMANT, item: :LIFEORB,
        moves: [:WATERFALL, :STONEEDGE, :AQUAJET, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :JOLLY, item: :LIFEORB,
        moves: [:LIQUIDATION, :STONEEDGE, :SUPERPOWER, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Aerodactyl ---
    s[:AERODACTYL] = [
      { tier: 3, ability: :UNNERVE, nature: :JOLLY, item: :LIFEORB,
        moves: [:STONEEDGE, :EARTHQUAKE, :BRAVEBIRD, :STEALTHROCK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :UNNERVE, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:STONEEDGE, :EARTHQUAKE, :DUALWINGBEAT, :AQUATAIL],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Snorlax ---
    s[:SNORLAX] = [
      { tier: 3, ability: :THICKFAT, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:BODYSLAM, :EARTHQUAKE, :CURSE, :REST],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :THICKFAT, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:BODYSLAM, :EARTHQUAKE, :CURSE, :REST],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :GLUTTONY, nature: :BRAVE, item: :AGUAVBERRY,
        moves: [:BODYSLAM, :HIGHHORSEPOWER, :CURSE, :PROTECT],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Dragonite ---
    s[:DRAGONITE] = [
      { tier: 3, ability: :MULTISCALE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:OUTRAGE, :EARTHQUAKE, :EXTREMESPEED, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MULTISCALE, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:DRAGONCLAW, :EARTHQUAKE, :EXTREMESPEED, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INNERFOCUS, nature: :ADAMANT, item: :WEAKNESSPOLICY,
        moves: [:DRAGONCLAW, :EXTREMESPEED, :ICEPUNCH, :PROTECT],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    #=========================================================================
    # GENERATION 2 — JOHTO
    #=========================================================================

    # --- Meganium ---
    s[:MEGANIUM] = [
      { tier: 3, ability: :OVERGROW, nature: :BOLD, item: :LEFTOVERS,
        moves: [:GIGADRAIN, :LEECHSEED, :TOXIC, :SYNTHESIS],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :OVERGROW, nature: :CALM, item: :LEFTOVERS,
        moves: [:GIGADRAIN, :LEECHSEED, :AROMATHERAPY, :SYNTHESIS],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Typhlosion ---
    s[:TYPHLOSION] = [
      { tier: 3, ability: :BLAZE, nature: :TIMID, item: :CHOICESPECS,
        moves: [:ERUPTION, :FLAMETHROWER, :FOCUSBLAST, :HIDDENPOWERGRASS],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:ERUPTION, :FIREBLAST, :FOCUSBLAST, :EXTRASENSORY],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Feraligatr ---
    s[:FERALIGATR] = [
      { tier: 3, ability: :SHEERFORCE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LIQUIDATION, :ICEPUNCH, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :JOLLY, item: :LIFEORB,
        moves: [:LIQUIDATION, :ICEPUNCH, :CRUNCH, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Noctowl ---
    s[:NOCTOWL] = [
      { tier: 3, ability: :INSOMNIA, nature: :CALM, item: :LEFTOVERS,
        moves: [:HURRICANE, :HEATWAVE, :ROOST, :DEFOG],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :TINTEDLENS, nature: :MODEST, item: :LIFEORB,
        moves: [:HURRICANE, :HEATWAVE, :ROOST, :NASTYPLOT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
    ]

    # --- Crobat ---
    s[:CROBAT] = [
      { tier: 3, ability: :INNERFOCUS, nature: :JOLLY, item: :BLACKSLUDGE,
        moves: [:BRAVEBIRD, :CROSSPOISON, :UTURN, :DEFOG],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INFILTRATOR, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:BRAVEBIRD, :CROSSPOISON, :UTURN, :SUCKERPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Lanturn ---
    s[:LANTURN] = [
      { tier: 3, ability: :VOLTABSORB, nature: :CALM, item: :LEFTOVERS,
        moves: [:SCALD, :THUNDERBOLT, :VOLTSWITCH, :HEALBELL],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :VOLTABSORB, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:SCALD, :THUNDERBOLT, :ICEBEAM, :VOLTSWITCH],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
    ]

    # --- Togetic ---
    s[:TOGETIC] = [
      { tier: 3, ability: :SERENEGRACE, nature: :BOLD, item: :EVIOLITE,
        moves: [:DAZZLINGGLEAM, :ROOST, :THUNDERWAVE, :DEFOG],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SERENEGRACE, nature: :CALM, item: :EVIOLITE,
        moves: [:DAZZLINGGLEAM, :ROOST, :NASTYPLOT, :HEALBELL],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Xatu ---
    s[:XATU] = [
      { tier: 3, ability: :MAGICBOUNCE, nature: :TIMID, item: :LEFTOVERS,
        moves: [:PSYCHIC, :HEATWAVE, :UTURN, :ROOST],
        evs: { HP: 252, SPEED: 252, DEFENSE: 4 } },
      { tier: 4, ability: :MAGICBOUNCE, nature: :BOLD, item: :LIGHTCLAY,
        moves: [:PSYCHIC, :REFLECT, :LIGHTSCREEN, :UTURN],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Ampharos ---
    s[:AMPHAROS] = [
      { tier: 3, ability: :STATIC, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :FOCUSBLAST, :DRAGONPULSE, :VOLTSWITCH],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :STATIC, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :FOCUSBLAST, :DRAGONPULSE, :VOLTSWITCH],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Bellossom ---
    s[:BELLOSSOM] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :MODEST, item: :LIFEORB,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :SLEEPPOWDER, :QUIVERDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :TIMID, item: :LIFEORB,
        moves: [:LEAFSTORM, :SLUDGEBOMB, :SLEEPPOWDER, :MOONBLAST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Azumarill ---
    s[:AZUMARILL] = [
      { tier: 3, ability: :HUGEPOWER, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:AQUAJET, :PLAYROUGH, :KNOCKOFF, :BELLYDRUM],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :HUGEPOWER, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:AQUAJET, :PLAYROUGH, :KNOCKOFF, :BELLYDRUM],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :HUGEPOWER, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:AQUAJET, :PLAYROUGH, :PROTECT, :BELLYDRUM],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Politoed ---
    s[:POLITOED] = [
      { tier: 3, ability: :DRIZZLE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :TOXIC, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :DRIZZLE, nature: :MODEST, item: :DAMPROCK,
        moves: [:SCALD, :ICEBEAM, :PERISHSONG, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :DRIZZLE, nature: :CALM, item: :SITRUSBERRY,
        moves: [:SCALD, :ICYWIND, :HELPINGHAND, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Sudowoodo ---
    s[:SUDOWOODO] = [
      { tier: 3, ability: :STURDY, nature: :ADAMANT, item: :LIFEORB,
        moves: [:STONEEDGE, :EARTHQUAKE, :WOODHAMMER, :STEALTHROCK],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :STURDY, nature: :ADAMANT, item: :CUSTAPBERRY,
        moves: [:STONEEDGE, :EARTHQUAKE, :WOODHAMMER, :EXPLOSION],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Espeon ---
    s[:ESPEON] = [
      { tier: 3, ability: :MAGICBOUNCE, nature: :TIMID, item: :LIFEORB,
        moves: [:PSYCHIC, :SHADOWBALL, :MORNINGSUN, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MAGICBOUNCE, nature: :TIMID, item: :CHOICESPECS,
        moves: [:PSYCHIC, :SHADOWBALL, :DAZZLINGGLEAM, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Umbreon ---
    s[:UMBREON] = [
      { tier: 3, ability: :SYNCHRONIZE, nature: :CALM, item: :LEFTOVERS,
        moves: [:FOULPLAY, :TOXIC, :WISH, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SYNCHRONIZE, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:FOULPLAY, :TOXIC, :WISH, :HEALBELL],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :INNERFOCUS, nature: :CALM, item: :LEFTOVERS,
        moves: [:FOULPLAY, :SNARL, :HELPINGHAND, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Wobbuffet ---
    s[:WOBBUFFET] = [
      { tier: 3, ability: :SHADOWTAG, nature: :BOLD, item: :LEFTOVERS,
        moves: [:COUNTER, :MIRRORCOAT, :ENCORE, :SAFEGUARD],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
      { tier: 4, ability: :SHADOWTAG, nature: :CALM, item: :LEFTOVERS,
        moves: [:COUNTER, :MIRRORCOAT, :ENCORE, :DESTINYBOND],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
    ]

    # --- Forretress ---
    s[:FORRETRESS] = [
      { tier: 3, ability: :STURDY, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :SPIKES, :RAPIDSPIN, :VOLTSWITCH],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :STURDY, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :SPIKES, :RAPIDSPIN, :BODYPRESS],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Steelix ---
    s[:STEELIX] = [
      { tier: 3, ability: :STURDY, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :IRONHEAD, :STEALTHROCK, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :STURDY, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :IRONHEAD, :STEALTHROCK, :BODYPRESS],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
    ]

    # --- Granbull ---
    s[:GRANBULL] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:PLAYROUGH, :CLOSECOMBAT, :CRUNCH, :EARTHQUAKE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:PLAYROUGH, :CLOSECOMBAT, :CRUNCH, :HEALBELL],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Scizor ---
    s[:SCIZOR] = [
      { tier: 3, ability: :TECHNICIAN, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:BULLETPUNCH, :UTURN, :SUPERPOWER, :KNOCKOFF],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :ADAMANT, item: :LIFEORB,
        moves: [:BULLETPUNCH, :UTURN, :SUPERPOWER, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:BULLETPUNCH, :UTURN, :BUGBITE, :SUPERPOWER],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Shuckle ---
    s[:SHUCKLE] = [
      { tier: 3, ability: :STURDY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :STICKYWEB, :TOXIC, :ENCORE],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
      { tier: 4, ability: :CONTRARY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:STICKYWEB, :STEALTHROCK, :SHELLSMASH, :ENCORE],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
    ]

    # --- Heracross ---
    s[:HERACROSS] = [
      { tier: 3, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:CLOSECOMBAT, :MEGAHORN, :FACADE, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:CLOSECOMBAT, :MEGAHORN, :KNOCKOFF, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Ursaring ---
    s[:URSARING] = [
      { tier: 3, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:FACADE, :CLOSECOMBAT, :CRUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:FACADE, :CLOSECOMBAT, :CRUNCH, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Skarmory ---
    s[:SKARMORY] = [
      { tier: 3, ability: :STURDY, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:STEALTHROCK, :DEFOG, :BRAVEBIRD, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :STURDY, nature: :IMPISH, item: :ROCKYHELMET,
        moves: [:STEALTHROCK, :SPIKES, :BRAVEBIRD, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Houndoom ---
    s[:HOUNDOOM] = [
      { tier: 3, ability: :FLASHFIRE, nature: :TIMID, item: :LIFEORB,
        moves: [:DARKPULSE, :FIREBLAST, :SLUDGEBOMB, :NASTYPLOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:DARKPULSE, :FIREBLAST, :SLUDGEBOMB, :OVERHEAT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Kingdra ---
    s[:KINGDRA] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :DRACOMETEOR, :ICEBEAM, :RAINDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :DRACOMETEOR, :ICEBEAM, :FLASHCANNON],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:MUDDYWATER, :DRACOMETEOR, :ICEBEAM, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Donphan ---
    s[:DONPHAN] = [
      { tier: 3, ability: :STURDY, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :ICESHARD, :RAPIDSPIN, :STEALTHROCK],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :STURDY, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:EARTHQUAKE, :ICESHARD, :KNOCKOFF, :RAPIDSPIN],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Porygon2 ---
    s[:PORYGON2] = [
      { tier: 3, ability: :TRACE, nature: :BOLD, item: :EVIOLITE,
        moves: [:ICEBEAM, :THUNDERBOLT, :RECOVER, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :DOWNLOAD, nature: :QUIET, item: :EVIOLITE,
        moves: [:ICEBEAM, :THUNDERBOLT, :TRIATTACK, :RECOVER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :DOWNLOAD, nature: :QUIET, item: :EVIOLITE,
        moves: [:ICEBEAM, :TRICKROOM, :TRIATTACK, :RECOVER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Hitmontop ---
    s[:HITMONTOP] = [
      { tier: 3, ability: :INTIMIDATE, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:CLOSECOMBAT, :RAPIDSPIN, :SUCKERPUNCH, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :IMPISH, item: :EJECTBUTTON,
        moves: [:CLOSECOMBAT, :RAPIDSPIN, :SUCKERPUNCH, :MACHPUNCH],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:CLOSECOMBAT, :FAKEOUT, :SUCKERPUNCH, :WIDEGUARD],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Miltank ---
    s[:MILTANK] = [
      { tier: 3, ability: :THICKFAT, nature: :JOLLY, item: :LEFTOVERS,
        moves: [:BODYSLAM, :EARTHQUAKE, :MILKDRINK, :STEALTHROCK],
        evs: { HP: 252, SPEED: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :JOLLY, item: :LEFTOVERS,
        moves: [:BODYSLAM, :EARTHQUAKE, :THUNDERWAVE, :MILKDRINK],
        evs: { HP: 252, SPEED: 252, DEFENSE: 4 } },
    ]

    # --- Blissey ---
    s[:BLISSEY] = [
      { tier: 3, ability: :NATURALCURE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SEISMICTOSS, :SOFTBOILED, :STEALTHROCK, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :NATURALCURE, nature: :BOLD, item: :HEAVYDUTYBOOTS,
        moves: [:SEISMICTOSS, :SOFTBOILED, :TELEPORT, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Tyranitar ---
    s[:TYRANITAR] = [
      { tier: 3, ability: :SANDSTREAM, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:STONEEDGE, :CRUNCH, :EARTHQUAKE, :PURSUIT],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :SANDSTREAM, nature: :JOLLY, item: :WEAKNESSPOLICY,
        moves: [:STONEEDGE, :CRUNCH, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SANDSTREAM, nature: :ADAMANT, item: :CHOPLEBERRY,
        moves: [:ROCKSLIDE, :CRUNCH, :ICEPUNCH, :PROTECT],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    #=========================================================================
    # GENERATION 3 — HOENN
    #=========================================================================

    # --- Sceptile ---
    s[:SCEPTILE] = [
      { tier: 3, ability: :OVERGROW, nature: :TIMID, item: :LIFEORB,
        moves: [:LEAFSTORM, :FOCUSBLAST, :GIGADRAIN, :LEECHSEED],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :UNBURDEN, nature: :TIMID, item: :GRASSYSEED,
        moves: [:LEAFSTORM, :FOCUSBLAST, :DRAGONPULSE, :GIGADRAIN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Blaziken ---
    s[:BLAZIKEN] = [
      { tier: 3, ability: :SPEEDBOOST, nature: :ADAMANT, item: :LIFEORB,
        moves: [:FLAREBLITZ, :CLOSECOMBAT, :KNOCKOFF, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SPEEDBOOST, nature: :JOLLY, item: :LIFEORB,
        moves: [:FLAREBLITZ, :CLOSECOMBAT, :THUNDERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SPEEDBOOST, nature: :ADAMANT, item: :FOCUSSASH,
        moves: [:FLAREBLITZ, :CLOSECOMBAT, :KNOCKOFF, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Swampert ---
    s[:SWAMPERT] = [
      { tier: 3, ability: :TORRENT, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :WATERFALL, :ICEPUNCH, :STEALTHROCK],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :ADAMANT, item: :LIFEORB,
        moves: [:EARTHQUAKE, :WATERFALL, :ICEPUNCH, :RAINDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mightyena ---
    s[:MIGHTYENA] = [
      { tier: 3, ability: :MOXIE, nature: :JOLLY, item: :LIFEORB,
        moves: [:CRUNCH, :SUCKERPUNCH, :PLAYROUGH, :FIREFANG],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:CRUNCH, :SUCKERPUNCH, :PLAYROUGH, :FIREFANG],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Linoone ---
    s[:LINOONE] = [
      { tier: 3, ability: :GLUTTONY, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:EXTREMESPEED, :SEEDBOMB, :BELLYDRUM, :SHADOWCLAW],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GLUTTONY, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:EXTREMESPEED, :SEEDBOMB, :BELLYDRUM, :STOMPINGTANTRUM],
        evs: { HP: 128, ATTACK: 252, SPEED: 128 } },
    ]

    # --- Ludicolo ---
    s[:LUDICOLO] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :GIGADRAIN, :ICEBEAM, :RAINDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :GIGADRAIN, :ICEBEAM, :FOCUSBLAST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:MUDDYWATER, :GIGADRAIN, :ICEBEAM, :FAKEOUT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Shiftry ---
    s[:SHIFTRY] = [
      { tier: 3, ability: :CHLOROPHYLL, nature: :ADAMANT, item: :LIFEORB,
        moves: [:KNOCKOFF, :LEAFBLADE, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CHLOROPHYLL, nature: :JOLLY, item: :LIFEORB,
        moves: [:KNOCKOFF, :LEAFBLADE, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Swellow ---
    s[:SWELLOW] = [
      { tier: 3, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:FACADE, :BRAVEBIRD, :UTURN, :QUICKATTACK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:FACADE, :BRAVEBIRD, :UTURN, :QUICKATTACK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Pelipper ---
    s[:PELIPPER] = [
      { tier: 3, ability: :DRIZZLE, nature: :BOLD, item: :DAMPROCK,
        moves: [:SCALD, :HURRICANE, :UTURN, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :DRIZZLE, nature: :BOLD, item: :DAMPROCK,
        moves: [:SCALD, :HURRICANE, :UTURN, :DEFOG],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :DRIZZLE, nature: :MODEST, item: :FOCUSSASH,
        moves: [:SCALD, :HURRICANE, :TAILWIND, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Gardevoir ---
    s[:GARDEVOIR] = [
      { tier: 3, ability: :TRACE, nature: :TIMID, item: :CHOICESCARF,
        moves: [:PSYCHIC, :MOONBLAST, :FOCUSBLAST, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TRACE, nature: :TIMID, item: :LIFEORB,
        moves: [:PSYCHIC, :MOONBLAST, :FOCUSBLAST, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TELEPATHY, nature: :TIMID, item: :FOCUSSASH,
        moves: [:MOONBLAST, :PSYCHIC, :TRICKROOM, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Breloom ---
    s[:BRELOOM] = [
      { tier: 3, ability: :TECHNICIAN, nature: :JOLLY, item: :LIFEORB,
        moves: [:MACHPUNCH, :BULLETSEED, :SPORE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :ADAMANT, item: :FOCUSSASH,
        moves: [:MACHPUNCH, :BULLETSEED, :SPORE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Slaking ---
    s[:SLAKING] = [
      { tier: 3, ability: :TRUANT, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:RETURN, :EARTHQUAKE, :FIREPUNCH, :SUCKERPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TRUANT, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:RETURN, :EARTHQUAKE, :FIREPUNCH, :NIGHTSLASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Ninjask ---
    s[:NINJASK] = [
      { tier: 3, ability: :SPEEDBOOST, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:SWORDSDANCE, :XSCISSOR, :LEECHLIFE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SPEEDBOOST, nature: :ADAMANT, item: :LIFEORB,
        moves: [:SWORDSDANCE, :LEECHLIFE, :AERIALACE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Shedinja ---
    s[:SHEDINJA] = [
      { tier: 3, ability: :WONDERGUARD, nature: :ADAMANT, item: :FOCUSSASH,
        moves: [:SHADOWSNEAK, :XSCISSOR, :SWORDSDANCE, :WILLOWISP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :WONDERGUARD, nature: :ADAMANT, item: :HEAVYDUTYBOOTS,
        moves: [:SHADOWSNEAK, :POLTERGEIST, :SWORDSDANCE, :WILLOWISP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Exploud ---
    s[:EXPLOUD] = [
      { tier: 3, ability: :SCRAPPY, nature: :MODEST, item: :CHOICESPECS,
        moves: [:BOOMBURST, :FIREBLAST, :FOCUSBLAST, :SURF],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :MODEST, item: :CHOICESPECS,
        moves: [:BOOMBURST, :FIREBLAST, :FOCUSBLAST, :ICEBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Hariyama ---
    s[:HARIYAMA] = [
      { tier: 3, ability: :THICKFAT, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :BULLETPUNCH, :HEAVYSLAM],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :FACADE, :BULLETPUNCH],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :GUTS, nature: :BRAVE, item: :FLAMEORB,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :FAKEOUT, :PROTECT],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Sableye ---
    s[:SABLEYE] = [
      { tier: 3, ability: :PRANKSTER, nature: :CALM, item: :LEFTOVERS,
        moves: [:WILLOWISP, :RECOVER, :FOULPLAY, :KNOCKOFF],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :BOLD, item: :LEFTOVERS,
        moves: [:WILLOWISP, :RECOVER, :FOULPLAY, :TAUNT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :CALM, item: :LEFTOVERS,
        moves: [:WILLOWISP, :QUASH, :FAKEOUT, :RECOVER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Mawile ---
    s[:MAWILE] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:PLAYROUGH, :IRONHEAD, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:PLAYROUGH, :IRONHEAD, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Aggron ---
    s[:AGGRON] = [
      { tier: 3, ability: :STURDY, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:IRONHEAD, :EARTHQUAKE, :STONEEDGE, :HEAVYSLAM],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :ROCKHEAD, nature: :ADAMANT, item: :LIFEORB,
        moves: [:HEADSMASH, :HEAVYSLAM, :EARTHQUAKE, :ICEPUNCH],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Medicham ---
    s[:MEDICHAM] = [
      { tier: 3, ability: :PUREPOWER, nature: :JOLLY, item: :LIFEORB,
        moves: [:HIGHJUMPKICK, :ZENHEADBUTT, :ICEPUNCH, :BULLETPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PUREPOWER, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:HIGHJUMPKICK, :ZENHEADBUTT, :ICEPUNCH, :TRICK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Manectric ---
    s[:MANECTRIC] = [
      { tier: 3, ability: :LIGHTNINGROD, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :FLAMETHROWER, :HIDDENPOWERICE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LIGHTNINGROD, nature: :TIMID, item: :CHOICESPECS,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :FLAMETHROWER, :OVERHEAT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Sharpedo ---
    s[:SHARPEDO] = [
      { tier: 3, ability: :SPEEDBOOST, nature: :ADAMANT, item: :LIFEORB,
        moves: [:CRUNCH, :WATERFALL, :ICEFANG, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SPEEDBOOST, nature: :JOLLY, item: :LIFEORB,
        moves: [:CRUNCH, :LIQUIDATION, :ICEFANG, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Camerupt ---
    s[:CAMERUPT] = [
      { tier: 3, ability: :SOLIDROCK, nature: :MODEST, item: :LEFTOVERS,
        moves: [:FIREBLAST, :EARTHPOWER, :STEALTHROCK, :WILLOWISP],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SOLIDROCK, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:FIREBLAST, :EARTHPOWER, :FLASHCANNON, :ANCIENTPOWER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Torkoal ---
    s[:TORKOAL] = [
      { tier: 3, ability: :DROUGHT, nature: :BOLD, item: :HEATROCK,
        moves: [:LAVAPLUME, :STEALTHROCK, :RAPIDSPIN, :YAWN],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :DROUGHT, nature: :QUIET, item: :HEATROCK,
        moves: [:ERUPTION, :SOLARBEAM, :BODYPRESS, :STEALTHROCK],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :DROUGHT, nature: :QUIET, item: :CHARCOAL,
        moves: [:ERUPTION, :HEATWAVE, :BODYPRESS, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Flygon ---
    s[:FLYGON] = [
      { tier: 3, ability: :LEVITATE, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:EARTHQUAKE, :OUTRAGE, :UTURN, :STONEEDGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :NAIVE, item: :CHOICESCARF,
        moves: [:EARTHQUAKE, :DRACOMETEOR, :UTURN, :FIREBLAST],
        evs: { ATTACK: 128, SPECIAL_ATTACK: 128, SPEED: 252 } },
    ]

    # --- Altaria ---
    s[:ALTARIA] = [
      { tier: 3, ability: :NATURALCURE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:DRACOMETEOR, :FLAMETHROWER, :ROOST, :DEFOG],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :NATURALCURE, nature: :MODEST, item: :LIFEORB,
        moves: [:DRACOMETEOR, :FIREBLAST, :ROOST, :DEFOG],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Zangoose ---
    s[:ZANGOOSE] = [
      { tier: 3, ability: :TOXICBOOST, nature: :JOLLY, item: :TOXICORB,
        moves: [:FACADE, :CLOSECOMBAT, :KNOCKOFF, :QUICKATTACK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TOXICBOOST, nature: :JOLLY, item: :TOXICORB,
        moves: [:FACADE, :CLOSECOMBAT, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Crawdaunt ---
    s[:CRAWDAUNT] = [
      { tier: 3, ability: :ADAPTABILITY, nature: :ADAMANT, item: :LIFEORB,
        moves: [:CRABHAMMER, :KNOCKOFF, :AQUAJET, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ADAPTABILITY, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:CRABHAMMER, :KNOCKOFF, :AQUAJET, :CLOSECOMBAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Claydol ---
    s[:CLAYDOL] = [
      { tier: 3, ability: :LEVITATE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :PSYCHIC, :RAPIDSPIN, :STEALTHROCK],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :CALM, item: :LEFTOVERS,
        moves: [:EARTHPOWER, :PSYCHIC, :RAPIDSPIN, :STEALTHROCK],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Milotic ---
    s[:MILOTIC] = [
      { tier: 3, ability: :MARVELSCALE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :RECOVER, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :COMPETITIVE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SCALD, :ICEBEAM, :RECOVER, :HAZE],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :COMPETITIVE, nature: :MODEST, item: :SITRUSBERRY,
        moves: [:MUDDYWATER, :ICEBEAM, :RECOVER, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Banette ---
    s[:BANETTE] = [
      { tier: 3, ability: :INSOMNIA, nature: :ADAMANT, item: :LIFEORB,
        moves: [:SHADOWCLAW, :KNOCKOFF, :SUCKERPUNCH, :WILLOWISP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INSOMNIA, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:SHADOWSNEAK, :KNOCKOFF, :DESTINYBOND, :WILLOWISP],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Absol ---
    s[:ABSOL] = [
      { tier: 3, ability: :SUPERLUCK, nature: :JOLLY, item: :LIFEORB,
        moves: [:KNOCKOFF, :SUCKERPUNCH, :SUPERPOWER, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SUPERLUCK, nature: :JOLLY, item: :SCOPELENS,
        moves: [:NIGHTSLASH, :PSYCHOCUT, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Glalie ---
    s[:GLALIE] = [
      { tier: 3, ability: :INNERFOCUS, nature: :HASTY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :ICEBEAM, :EXPLOSION, :SPIKES],
        evs: { ATTACK: 128, SPECIAL_ATTACK: 128, SPEED: 252 } },
      { tier: 4, ability: :MOODY, nature: :TIMID, item: :LEFTOVERS,
        moves: [:PROTECT, :SUBSTITUTE, :ICEBEAM, :FREEZEDRY],
        evs: { HP: 252, SPEED: 252, SPECIAL_ATTACK: 4 } },
    ]

    # --- Walrein ---
    s[:WALREIN] = [
      { tier: 3, ability: :THICKFAT, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SURF, :ICEBEAM, :TOXIC, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :ICEBODY, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SUBSTITUTE, :PROTECT, :SURF, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Salamence ---
    s[:SALAMENCE] = [
      { tier: 3, ability: :INTIMIDATE, nature: :JOLLY, item: :LIFEORB,
        moves: [:OUTRAGE, :EARTHQUAKE, :DRAGONDANCE, :ROOST],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :JOLLY, item: :LIFEORB,
        moves: [:DRAGONCLAW, :EARTHQUAKE, :DRAGONDANCE, :ROOST],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :NAIVE, item: :LIFEORB,
        moves: [:DRACOMETEOR, :HEATWAVE, :EARTHQUAKE, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, ATTACK: 4 }, format: :doubles },
    ]

    # --- Metagross ---
    s[:METAGROSS] = [
      { tier: 3, ability: :CLEARBODY, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:METEORMASH, :EARTHQUAKE, :BULLETPUNCH, :ICEPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CLEARBODY, nature: :JOLLY, item: :LIFEORB,
        moves: [:METEORMASH, :EARTHQUAKE, :BULLETPUNCH, :AGILITY],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CLEARBODY, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:IRONHEAD, :EARTHQUAKE, :BULLETPUNCH, :ICEPUNCH],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Cradily ---
    s[:CRADILY] = [
      { tier: 3, ability: :STORMDRAIN, nature: :CALM, item: :LEFTOVERS,
        moves: [:GIGADRAIN, :ANCIENTPOWER, :TOXIC, :RECOVER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :STORMDRAIN, nature: :CALM, item: :LEFTOVERS,
        moves: [:GIGADRAIN, :STEALTHROCK, :TOXIC, :RECOVER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Armaldo ---
    s[:ARMALDO] = [
      { tier: 3, ability: :BATTLEARMOR, nature: :ADAMANT, item: :LIFEORB,
        moves: [:STONEEDGE, :XSCISSOR, :EARTHQUAKE, :RAPIDSPIN],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :BATTLEARMOR, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:STONEEDGE, :XSCISSOR, :EARTHQUAKE, :KNOCKOFF],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Dusclops ---
    s[:DUSCLOPS] = [
      { tier: 3, ability: :PRESSURE, nature: :BOLD, item: :EVIOLITE,
        moves: [:NIGHTSHADE, :WILLOWISP, :PAINSPLIT, :TAUNT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :PRESSURE, nature: :RELAXED, item: :EVIOLITE,
        moves: [:NIGHTSHADE, :WILLOWISP, :TRICKROOM, :PAINSPLIT],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 } },
      { tier: 4, ability: :PRESSURE, nature: :RELAXED, item: :EVIOLITE,
        moves: [:NIGHTSHADE, :WILLOWISP, :TRICKROOM, :ALLYSWITCH],
        evs: { HP: 252, DEFENSE: 128, SPECIAL_DEFENSE: 128 }, format: :doubles },
    ]

    # --- Chimecho ---
    s[:CHIMECHO] = [
      { tier: 3, ability: :LEVITATE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:PSYCHIC, :HEALBELL, :WISH, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :CALM, item: :LEFTOVERS,
        moves: [:PSYCHIC, :HEALBELL, :WISH, :THUNDERWAVE],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Tropius ---
    s[:TROPIUS] = [
      { tier: 3, ability: :HARVEST, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:AIRSLASH, :GIGADRAIN, :LEECHSEED, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :HARVEST, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:AIRSLASH, :SUBSTITUTE, :LEECHSEED, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Relicanth ---
    s[:RELICANTH] = [
      { tier: 3, ability: :ROCKHEAD, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:HEADSMASH, :WATERFALL, :EARTHQUAKE, :DOUBLEEDGE],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :ROCKHEAD, nature: :ADAMANT, item: :LIFEORB,
        moves: [:HEADSMASH, :WATERFALL, :EARTHQUAKE, :STEALTHROCK],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Huntail ---
    s[:HUNTAIL] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :ADAMANT, item: :LIFEORB,
        moves: [:WATERFALL, :CRUNCH, :ICEFANG, :SHELLSMASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :JOLLY, item: :WHITEHERB,
        moves: [:WATERFALL, :CRUNCH, :ICEFANG, :SHELLSMASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Gorebyss ---
    s[:GOREBYSS] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :MODEST, item: :LIFEORB,
        moves: [:HYDROPUMP, :ICEBEAM, :PSYCHIC, :SHELLSMASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :TIMID, item: :WHITEHERB,
        moves: [:HYDROPUMP, :ICEBEAM, :PSYCHIC, :SHELLSMASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Swalot ---
    s[:SWALOT] = [
      { tier: 3, ability: :LIQUIDOOZE, nature: :CALM, item: :BLACKSLUDGE,
        moves: [:SLUDGEBOMB, :EARTHQUAKE, :TOXIC, :PAINSPLIT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :LIQUIDOOZE, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:SLUDGEBOMB, :ICEBEAM, :TOXIC, :PAINSPLIT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Whiscash ---
    s[:WHISCASH] = [
      { tier: 3, ability: :OBLIVIOUS, nature: :ADAMANT, item: :LIFEORB,
        moves: [:EARTHQUAKE, :WATERFALL, :ZENHEADBUTT, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :OBLIVIOUS, nature: :JOLLY, item: :LIFEORB,
        moves: [:EARTHQUAKE, :LIQUIDATION, :STONEEDGE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Cacturne ---
    s[:CACTURNE] = [
      { tier: 3, ability: :WATERABSORB, nature: :ADAMANT, item: :LIFEORB,
        moves: [:SUCKERPUNCH, :SEEDBOMB, :DRAINPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :WATERABSORB, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:SUCKERPUNCH, :SEEDBOMB, :DRAINPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Lunatone ---
    s[:LUNATONE] = [
      { tier: 3, ability: :LEVITATE, nature: :MODEST, item: :LIFEORB,
        moves: [:PSYCHIC, :EARTHPOWER, :ICEBEAM, :ROCKPOLISH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :TIMID, item: :LIFEORB,
        moves: [:PSYCHIC, :EARTHPOWER, :POWERGEM, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Solrock ---
    s[:SOLROCK] = [
      { tier: 3, ability: :LEVITATE, nature: :JOLLY, item: :LIFEORB,
        moves: [:STONEEDGE, :EARTHQUAKE, :ZENHEADBUTT, :STEALTHROCK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :JOLLY, item: :LIFEORB,
        moves: [:STONEEDGE, :EARTHQUAKE, :ZENHEADBUTT, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Masquerain ---
    s[:MASQUERAIN] = [
      { tier: 3, ability: :INTIMIDATE, nature: :MODEST, item: :LIFEORB,
        moves: [:BUGBUZZ, :AIRSLASH, :HYDROPUMP, :QUIVERDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :TIMID, item: :LIFEORB,
        moves: [:BUGBUZZ, :AIRSLASH, :HYDROPUMP, :QUIVERDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Seviper ---
    s[:SEVIPER] = [
      { tier: 3, ability: :INFILTRATOR, nature: :MODEST, item: :LIFEORB,
        moves: [:SLUDGEWAVE, :FLAMETHROWER, :DARKPULSE, :SWITCHEROO],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INFILTRATOR, nature: :TIMID, item: :LIFEORB,
        moves: [:SLUDGEWAVE, :FLAMETHROWER, :DARKPULSE, :GIGADRAIN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Grumpig ---
    s[:GRUMPIG] = [
      { tier: 3, ability: :THICKFAT, nature: :BOLD, item: :LEFTOVERS,
        moves: [:PSYCHIC, :FOCUSBLAST, :THUNDERWAVE, :HEALBELL],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
      { tier: 4, ability: :THICKFAT, nature: :CALM, item: :LEFTOVERS,
        moves: [:PSYCHIC, :FOCUSBLAST, :CALMMIND, :RECOVER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Wailord ---
    s[:WAILORD] = [
      { tier: 3, ability: :WATERVELIL, nature: :MODEST, item: :LIFEORB,
        moves: [:WATERSPOUT, :ICEBEAM, :HYDROPUMP, :SURF],
        evs: { HP: 4, SPECIAL_ATTACK: 252, SPEED: 252 } },
      { tier: 4, ability: :PRESSURE, nature: :MODEST, item: :CHOICESCARF,
        moves: [:WATERSPOUT, :ICEBEAM, :HYDROPUMP, :SURF],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Spinda ---
    s[:SPINDA] = [
      { tier: 3, ability: :CONTRARY, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:RETURN, :SUCKERPUNCH, :FAKEOUT, :TEETERDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CONTRARY, nature: :ADAMANT, item: :FOCUSSASH,
        moves: [:SUPERPOWER, :RETURN, :SUCKERPUNCH, :FAKEOUT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Kecleon ---
    s[:KECLEON] = [
      { tier: 3, ability: :PROTEAN, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:SUCKERPUNCH, :SHADOWSNEAK, :DRAINPUNCH, :RETURN],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :PROTEAN, nature: :ADAMANT, item: :LIFEORB,
        moves: [:SUCKERPUNCH, :SHADOWSNEAK, :DRAINPUNCH, :FAKEOUT],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Castform ---
    s[:CASTFORM] = [
      { tier: 3, ability: :FORECAST, nature: :MODEST, item: :LIFEORB,
        moves: [:WEATHERBALL, :ICEBEAM, :THUNDERBOLT, :FLAMETHROWER],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FORECAST, nature: :TIMID, item: :LIFEORB,
        moves: [:WEATHERBALL, :ICEBEAM, :THUNDERBOLT, :FIREBLAST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Luvdisc ---
    s[:LUVDISC] = [
      { tier: 3, ability: :SWIFTSWIM, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SURF, :ICEBEAM, :SWEETKISS, :RAINDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SWIFTSWIM, nature: :TIMID, item: :FOCUSSASH,
        moves: [:HYDROPUMP, :ICEBEAM, :SWEETKISS, :RAINDANCE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

  end
end
