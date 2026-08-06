#===============================================================================
# Dynamic Difficulty System — Competitive Sets: Early & Mid Game
# Tier 1 (Beginner) and Tier 2 (Mid) sets for NFE and early-route Pokémon.
#
# These are intentionally simpler than the Pro/Extreme builds:
#   Tier 1 — basic moves, no competitive items, minimal/no EVs
#   Tier 2 — decent coverage, Oran/Sitrus berries, light EV investment
#
# Nobody wants to fight a 252/252 Jolly Garchomp on Route 1.
#===============================================================================

module DynamicDifficulty
  module CompetitiveSets
    s = SETS

    #=========================================================================
    # NORMAL / COMMON — Route 1-3 encounters
    #=========================================================================

    # --- Rattata ---
    s[:RATTATA] = [
      { tier: 1, ability: :GUTS, nature: :HASTY, item: nil,
        moves: [:TACKLE, :TAILWHIP, :QUICKATTACK, :BITE],
        evs: {} },
      { tier: 2, ability: :GUTS, nature: :JOLLY, item: :ORANBERRY,
        moves: [:QUICKATTACK, :BITE, :PURSUIT, :ENDEAVOR],
        evs: { ATTACK: 100, SPEED: 100 } },
    ]

    # --- Raticate ---
    s[:RATICATE] = [
      { tier: 2, ability: :GUTS, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:HYPERFANG, :CRUNCH, :SUCKERPUNCH, :UTURN],
        evs: { ATTACK: 160, SPEED: 160 } },
    ]

    # --- Pidgey ---
    s[:PIDGEY] = [
      { tier: 1, ability: :KEENEYE, nature: :DOCILE, item: nil,
        moves: [:TACKLE, :GUST, :SANDATTACK, :QUICKATTACK],
        evs: {} },
      { tier: 2, ability: :TANGLEDFEET, nature: :JOLLY, item: :ORANBERRY,
        moves: [:GUST, :QUICKATTACK, :TWISTER, :SANDATTACK],
        evs: { SPEED: 100, ATTACK: 60 } },
    ]

    # --- Pidgeotto ---
    s[:PIDGEOTTO] = [
      { tier: 2, ability: :KEENEYE, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:AERIALACE, :QUICKATTACK, :TWISTER, :FEATHERDANCE],
        evs: { ATTACK: 120, SPEED: 120 } },
    ]

    # --- Sentret ---
    s[:SENTRET] = [
      { tier: 1, ability: :RUNAWAY, nature: :DOCILE, item: nil,
        moves: [:SCRATCH, :QUICKATTACK, :DEFENSECURL, :FURYSWIPES],
        evs: {} },
    ]

    # --- Furret ---
    s[:FURRET] = [
      { tier: 2, ability: :FRISK, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:QUICKATTACK, :SUCKERPUNCH, :UTURN, :SLAM],
        evs: { ATTACK: 120, SPEED: 120 } },
    ]

    # --- Zigzagoon ---
    s[:ZIGZAGOON] = [
      { tier: 1, ability: :PICKUP, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :HEADBUTT, :SANDATTACK, :TAILWHIP],
        evs: {} },
    ]

    # --- Linoone ---
    s[:LINOONE] = [
      { tier: 2, ability: :PICKUP, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:HEADBUTT, :SLASH, :SHADOWCLAW, :BELLYDRUM],
        evs: { ATTACK: 160, SPEED: 120 } },
    ]

    # --- Bidoof ---
    s[:BIDOOF] = [
      { tier: 1, ability: :SIMPLE, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :DEFENSECURL, :ROLLOUT, :HEADBUTT],
        evs: {} },
    ]

    # --- Bibarel ---
    s[:BIBAREL] = [
      { tier: 2, ability: :SIMPLE, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:WATERFALL, :HEADBUTT, :CURSE, :QUICKATTACK],
        evs: { ATTACK: 160, HP: 80 } },
    ]

    # --- Spearow ---
    s[:SPEAROW] = [
      { tier: 1, ability: :KEENEYE, nature: :HASTY, item: nil,
        moves: [:PECK, :LEER, :FURYATTACK, :PURSUIT],
        evs: {} },
      { tier: 2, ability: :KEENEYE, nature: :JOLLY, item: :ORANBERRY,
        moves: [:AERIALACE, :PURSUIT, :FURYATTACK, :STEELWING],
        evs: { ATTACK: 100, SPEED: 100 } },
    ]

    # --- Fearow ---
    s[:FEAROW] = [
      { tier: 2, ability: :KEENEYE, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:DRILLPECK, :PURSUIT, :RETURN, :UTURN],
        evs: { ATTACK: 160, SPEED: 140 } },
    ]

    # --- Meowth ---
    s[:MEOWTH] = [
      { tier: 1, ability: :PICKUP, nature: :JOLLY, item: nil,
        moves: [:SCRATCH, :BITE, :FAKEOUT, :PAYDAY],
        evs: {} },
      { tier: 2, ability: :TECHNICIAN, nature: :JOLLY, item: :ORANBERRY,
        moves: [:FAKEOUT, :BITE, :AERIALACE, :SLASH],
        evs: { ATTACK: 100, SPEED: 100 } },
    ]

    # --- Eevee ---
    s[:EEVEE] = [
      { tier: 1, ability: :ADAPTABILITY, nature: :DOCILE, item: nil,
        moves: [:TACKLE, :SANDATTACK, :QUICKATTACK, :BITE],
        evs: {} },
      { tier: 2, ability: :ADAPTABILITY, nature: :JOLLY, item: :ORANBERRY,
        moves: [:QUICKATTACK, :BITE, :COVET, :BABYDOLLEYES],
        evs: { ATTACK: 100, SPEED: 100 } },
    ]

    #=========================================================================
    # BUGS — Bug Catcher basics
    #=========================================================================

    # --- Caterpie ---
    s[:CATERPIE] = [
      { tier: 1, ability: :SHIELDDUST, nature: :DOCILE, item: nil,
        moves: [:TACKLE, :STRINGSHOT, :BUGBITE],
        evs: {} },
    ]

    # --- Metapod ---
    s[:METAPOD] = [
      { tier: 1, ability: :SHEDSKIN, nature: :BOLD, item: nil,
        moves: [:TACKLE, :HARDEN, :STRINGSHOT, :BUGBITE],
        evs: {} },
    ]

    # --- Butterfree ---
    s[:BUTTERFREE] = [
      { tier: 1, ability: :COMPOUNDEYES, nature: :MODEST, item: nil,
        moves: [:CONFUSION, :SLEEPPOWDER, :GUST, :POISONPOWDER],
        evs: {} },
      { tier: 2, ability: :COMPOUNDEYES, nature: :TIMID, item: :SITRUSBERRY,
        moves: [:SLEEPPOWDER, :PSYBEAM, :BUGBUZZ, :AIRCUTTER],
        evs: { SPECIAL_ATTACK: 120, SPEED: 120 } },
    ]

    # --- Weedle ---
    s[:WEEDLE] = [
      { tier: 1, ability: :SHIELDDUST, nature: :DOCILE, item: nil,
        moves: [:POISONSTING, :STRINGSHOT, :BUGBITE],
        evs: {} },
    ]

    # --- Kakuna ---
    s[:KAKUNA] = [
      { tier: 1, ability: :SHEDSKIN, nature: :IMPISH, item: nil,
        moves: [:POISONSTING, :HARDEN, :STRINGSHOT, :BUGBITE],
        evs: {} },
    ]

    # --- Beedrill ---
    s[:BEEDRILL] = [
      { tier: 1, ability: :SWARM, nature: :JOLLY, item: nil,
        moves: [:TWINEEDLE, :POISONSTING, :FURYATTACK, :FOCUSENERGY],
        evs: {} },
      { tier: 2, ability: :SWARM, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:TWINEEDLE, :POISONJAB, :PURSUIT, :BRICKBREAK],
        evs: { ATTACK: 140, SPEED: 120 } },
    ]

    # --- Ledyba ---
    s[:LEDYBA] = [
      { tier: 1, ability: :SWARM, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :SUPERSONIC, :COMETPUNCH, :LIGHTSCREEN],
        evs: {} },
    ]

    # --- Spinarak ---
    s[:SPINARAK] = [
      { tier: 1, ability: :INSOMNIA, nature: :ADAMANT, item: nil,
        moves: [:POISONSTING, :STRINGSHOT, :LEECHLIFE, :NIGHTSHADE],
        evs: {} },
    ]

    # --- Wurmple ---
    s[:WURMPLE] = [
      { tier: 1, ability: :SHIELDDUST, nature: :DOCILE, item: nil,
        moves: [:TACKLE, :STRINGSHOT, :POISONSTING, :BUGBITE],
        evs: {} },
    ]

    # --- Scyther ---
    s[:SCYTHER] = [
      { tier: 2, ability: :TECHNICIAN, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:WINGATTACK, :FURYCUTTER, :QUICKATTACK, :AGILITY],
        evs: { ATTACK: 160, SPEED: 140 } },
    ]

    # --- Pinsir ---
    s[:PINSIR] = [
      { tier: 2, ability: :MOLDBREAKER, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:XSCISSOR, :BRICKBREAK, :STORMTHROW, :SWORDSDANCE],
        evs: { ATTACK: 160, SPEED: 120 } },
    ]

    # --- Heracross ---
    s[:HERACROSS] = [
      { tier: 2, ability: :GUTS, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:BRICKBREAK, :MEGAHORN, :AERIALACE, :ENDURE],
        evs: { ATTACK: 160, SPEED: 140 } },
    ]

    #=========================================================================
    # WATER — Fisherman / Swimmer basics
    #=========================================================================

    # --- Magikarp ---
    s[:MAGIKARP] = [
      { tier: 1, ability: :SWIFTSWIM, nature: :JOLLY, item: nil,
        moves: [:SPLASH, :TACKLE, :FLAIL],
        evs: {} },
    ]

    # --- Goldeen ---
    s[:GOLDEEN] = [
      { tier: 1, ability: :SWIFTSWIM, nature: :ADAMANT, item: nil,
        moves: [:PECK, :WATERFALL, :TAILWHIP, :HORNATTACK],
        evs: {} },
      { tier: 2, ability: :SWIFTSWIM, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:WATERFALL, :HORNATTACK, :AQUARING, :MEGAHORN],
        evs: { ATTACK: 120, SPEED: 80 } },
    ]

    # --- Poliwag ---
    s[:POLIWAG] = [
      { tier: 1, ability: :WATERABSORB, nature: :MODEST, item: nil,
        moves: [:WATERGUN, :HYPNOSIS, :BUBBLE, :DOUBLESLAP],
        evs: {} },
      { tier: 2, ability: :WATERABSORB, nature: :MODEST, item: :ORANBERRY,
        moves: [:WATERGUN, :HYPNOSIS, :BUBBLEBEAM, :BODYSLAM],
        evs: { SPECIAL_ATTACK: 100, SPEED: 80 } },
    ]

    # --- Poliwhirl ---
    s[:POLIWHIRL] = [
      { tier: 2, ability: :WATERABSORB, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:SURF, :HYPNOSIS, :BODYSLAM, :RAINDANCE],
        evs: { HP: 120, DEFENSE: 80, SPECIAL_ATTACK: 80 } },
    ]

    # --- Tentacool ---
    s[:TENTACOOL] = [
      { tier: 1, ability: :LIQUIDOOZE, nature: :CALM, item: nil,
        moves: [:POISONSTING, :WATERGUN, :SUPERSONIC, :WRAP],
        evs: {} },
      { tier: 2, ability: :LIQUIDOOZE, nature: :CALM, item: :ORANBERRY,
        moves: [:SURF, :ACIDSPRAY, :TOXIC, :BARRIER],
        evs: { SPECIAL_DEFENSE: 100, HP: 80 } },
    ]

    # --- Staryu ---
    s[:STARYU] = [
      { tier: 1, ability: :NATURALCURE, nature: :TIMID, item: nil,
        moves: [:WATERGUN, :RAPIDSPIN, :HARDEN, :SWIFT],
        evs: {} },
      { tier: 2, ability: :NATURALCURE, nature: :TIMID, item: :ORANBERRY,
        moves: [:WATERGUN, :SWIFT, :RAPIDSPIN, :RECOVER],
        evs: { SPECIAL_ATTACK: 100, SPEED: 100 } },
    ]

    # --- Psyduck ---
    s[:PSYDUCK] = [
      { tier: 1, ability: :DAMP, nature: :MODEST, item: nil,
        moves: [:WATERGUN, :SCRATCH, :CONFUSION, :DISABLE],
        evs: {} },
      { tier: 2, ability: :CLOUDNINE, nature: :MODEST, item: :ORANBERRY,
        moves: [:WATERGUN, :CONFUSION, :FURYSWIPES, :SCREECH],
        evs: { SPECIAL_ATTACK: 100, SPEED: 60 } },
    ]

    # --- Golduck ---
    s[:GOLDUCK] = [
      { tier: 2, ability: :CLOUDNINE, nature: :MODEST, item: :SITRUSBERRY,
        moves: [:SURF, :PSYCHIC, :ICEBEAM, :CALMMIND],
        evs: { SPECIAL_ATTACK: 160, SPEED: 120 } },
    ]

    # --- Shellder ---
    s[:SHELLDER] = [
      { tier: 1, ability: :SHELLARMOR, nature: :BOLD, item: nil,
        moves: [:TACKLE, :WATERGUN, :WITHDRAW, :ICICLESPEAR],
        evs: {} },
    ]

    # --- Horsea ---
    s[:HORSEA] = [
      { tier: 1, ability: :SWIFTSWIM, nature: :MODEST, item: nil,
        moves: [:WATERGUN, :SMOKESCREEN, :TWISTER, :BUBBLE],
        evs: {} },
      { tier: 2, ability: :SWIFTSWIM, nature: :MODEST, item: :ORANBERRY,
        moves: [:WATERGUN, :TWISTER, :AGILITY, :FOCUSENERGY],
        evs: { SPECIAL_ATTACK: 100, SPEED: 80 } },
    ]

    # --- Seadra ---
    s[:SEADRA] = [
      { tier: 2, ability: :POISONPOINT, nature: :MODEST, item: :SITRUSBERRY,
        moves: [:SURF, :DRAGONPULSE, :AGILITY, :FOCUSENERGY],
        evs: { SPECIAL_ATTACK: 160, SPEED: 120 } },
    ]

    # --- Lotad ---
    s[:LOTAD] = [
      { tier: 1, ability: :SWIFTSWIM, nature: :MODEST, item: nil,
        moves: [:ABSORB, :WATERGUN, :ASTONISH, :GROWL],
        evs: {} },
    ]

    # --- Lombre ---
    s[:LOMBRE] = [
      { tier: 2, ability: :SWIFTSWIM, nature: :MODEST, item: :SITRUSBERRY,
        moves: [:BUBBLEBEAM, :MEGADRAIN, :FAKEOUT, :RAINDANCE],
        evs: { SPECIAL_ATTACK: 120, SPEED: 80 } },
    ]

    #=========================================================================
    # ROCK / GROUND — Hiker basics
    #=========================================================================

    # --- Geodude ---
    s[:GEODUDE] = [
      { tier: 1, ability: :ROCKHEAD, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :DEFENSECURL, :ROCKTHROW, :MUDSLAP],
        evs: {} },
      { tier: 2, ability: :STURDY, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:ROCKTHROW, :MAGNITUDE, :ROLLOUT, :SELFDESTRUCT],
        evs: { ATTACK: 120, DEFENSE: 60 } },
    ]

    # --- Graveler ---
    s[:GRAVELER] = [
      { tier: 2, ability: :STURDY, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:ROCKSLIDE, :EARTHQUAKE, :SELFDESTRUCT, :BULLDOZE],
        evs: { ATTACK: 160, DEFENSE: 80 } },
    ]

    # --- Onix ---
    s[:ONIX] = [
      { tier: 1, ability: :STURDY, nature: :IMPISH, item: nil,
        moves: [:TACKLE, :ROCKTHROW, :BIND, :HARDEN],
        evs: {} },
      { tier: 2, ability: :STURDY, nature: :IMPISH, item: :ORANBERRY,
        moves: [:ROCKSLIDE, :DRAGONTAIL, :STEALTHROCK, :SCREECH],
        evs: { DEFENSE: 120, HP: 60 } },
    ]

    # --- Sandshrew ---
    s[:SANDSHREW] = [
      { tier: 1, ability: :SANDVEIL, nature: :ADAMANT, item: nil,
        moves: [:SCRATCH, :SANDATTACK, :POISONSTING, :ROLLOUT],
        evs: {} },
      { tier: 2, ability: :SANDVEIL, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:SLASH, :ROLLOUT, :RAPIDSPIN, :SANDSTORM],
        evs: { ATTACK: 120, SPEED: 60 } },
    ]

    # --- Diglett ---
    s[:DIGLETT] = [
      { tier: 1, ability: :ARENATRAP, nature: :JOLLY, item: nil,
        moves: [:SCRATCH, :SANDATTACK, :MUDSLAP, :ASTONISH],
        evs: {} },
      { tier: 2, ability: :ARENATRAP, nature: :JOLLY, item: :ORANBERRY,
        moves: [:DIG, :MUDSLAP, :SUCKERPUNCH, :SLASH],
        evs: { ATTACK: 80, SPEED: 100 } },
    ]

    # --- Cubone ---
    s[:CUBONE] = [
      { tier: 1, ability: :ROCKHEAD, nature: :ADAMANT, item: nil,
        moves: [:BONECLUB, :HEADBUTT, :LEER, :TAILWHIP],
        evs: {} },
      { tier: 2, ability: :ROCKHEAD, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:BONEMERANG, :HEADBUTT, :RETALIATE, :IRONDEFENSE],
        evs: { ATTACK: 120, DEFENSE: 60 } },
    ]

    # --- Rhyhorn ---
    s[:RHYHORN] = [
      { tier: 1, ability: :ROCKHEAD, nature: :ADAMANT, item: nil,
        moves: [:HORNATTACK, :STOMP, :ROCKBLAST, :TAILWHIP],
        evs: {} },
      { tier: 2, ability: :ROCKHEAD, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:ROCKSLIDE, :BULLDOZE, :HORNATTACK, :SCARYFACE],
        evs: { ATTACK: 140, HP: 60 } },
    ]

    # --- Roggenrola ---
    s[:ROGGENROLA] = [
      { tier: 1, ability: :STURDY, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :HEADBUTT, :ROCKBLAST, :SANDATTACK],
        evs: {} },
    ]

    # --- Boldore ---
    s[:BOLDORE] = [
      { tier: 2, ability: :STURDY, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:ROCKSLIDE, :IRONDEFENSE, :MUDSLAP, :HEADBUTT],
        evs: { ATTACK: 140, DEFENSE: 80 } },
    ]

    # --- Nosepass ---
    s[:NOSEPASS] = [
      { tier: 1, ability: :STURDY, nature: :BOLD, item: nil,
        moves: [:TACKLE, :THUNDERWAVE, :ROCKTHROW, :HARDEN],
        evs: {} },
      { tier: 2, ability: :STURDY, nature: :BOLD, item: :ORANBERRY,
        moves: [:ROCKSLIDE, :THUNDERWAVE, :POWERGEM, :REST],
        evs: { DEFENSE: 100, SPECIAL_DEFENSE: 80 } },
    ]

    #=========================================================================
    # FLYING — Bird Keeper basics
    #=========================================================================

    # --- Zubat ---
    s[:ZUBAT] = [
      { tier: 1, ability: :INNERFOCUS, nature: :JOLLY, item: nil,
        moves: [:LEECHLIFE, :SUPERSONIC, :ASTONISH, :BITE],
        evs: {} },
      { tier: 2, ability: :INNERFOCUS, nature: :JOLLY, item: :ORANBERRY,
        moves: [:WINGATTACK, :BITE, :CONFUSERAY, :POISONFANG],
        evs: { SPEED: 100, ATTACK: 60 } },
    ]

    # --- Golbat ---
    s[:GOLBAT] = [
      { tier: 2, ability: :INNERFOCUS, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:CROSSPOISON, :ACROBATICS, :CONFUSERAY, :HAZE],
        evs: { SPEED: 140, ATTACK: 120 } },
    ]

    # --- Hoothoot ---
    s[:HOOTHOOT] = [
      { tier: 1, ability: :INSOMNIA, nature: :CALM, item: nil,
        moves: [:PECK, :HYPNOSIS, :CONFUSION, :REFLECT],
        evs: {} },
    ]

    # --- Noctowl ---
    s[:NOCTOWL] = [
      { tier: 2, ability: :INSOMNIA, nature: :CALM, item: :SITRUSBERRY,
        moves: [:AIRSLASH, :HYPNOSIS, :PSYCHIC, :ROOST],
        evs: { SPECIAL_ATTACK: 120, HP: 100 } },
    ]

    # --- Taillow ---
    s[:TAILLOW] = [
      { tier: 1, ability: :GUTS, nature: :JOLLY, item: nil,
        moves: [:PECK, :QUICKATTACK, :FOCUSENERGY, :WINGATTACK],
        evs: {} },
    ]

    # --- Starly ---
    s[:STARLY] = [
      { tier: 1, ability: :KEENEYE, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :QUICKATTACK, :WINGATTACK, :GROWL],
        evs: {} },
    ]

    # --- Staravia ---
    s[:STARAVIA] = [
      { tier: 2, ability: :INTIMIDATE, nature: :JOLLY, item: :ORANBERRY,
        moves: [:WINGATTACK, :QUICKATTACK, :ENDEAVOR, :DOUBLETEAM],
        evs: { ATTACK: 120, SPEED: 120 } },
    ]

    # --- Doduo ---
    s[:DODUO] = [
      { tier: 1, ability: :EARLYBIRD, nature: :JOLLY, item: nil,
        moves: [:PECK, :PURSUIT, :QUICKATTACK, :FURYATTACK],
        evs: {} },
    ]

    # --- Dodrio ---
    s[:DODRIO] = [
      { tier: 2, ability: :EARLYBIRD, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:DRILLPECK, :PURSUIT, :RETURN, :SWORDSDANCE],
        evs: { ATTACK: 160, SPEED: 140 } },
    ]

    # --- Murkrow ---
    s[:MURKROW] = [
      { tier: 1, ability: :INSOMNIA, nature: :JOLLY, item: nil,
        moves: [:PECK, :ASTONISH, :PURSUIT, :HAZE],
        evs: {} },
      { tier: 2, ability: :PRANKSTER, nature: :JOLLY, item: :ORANBERRY,
        moves: [:WINGATTACK, :FOULPLAY, :THUNDERWAVE, :TAUNT],
        evs: { SPEED: 120, ATTACK: 60 } },
    ]

    # --- Wingull ---
    s[:WINGULL] = [
      { tier: 1, ability: :KEENEYE, nature: :MODEST, item: nil,
        moves: [:WATERGUN, :WINGATTACK, :GROWL, :QUICKATTACK],
        evs: {} },
    ]

    #=========================================================================
    # FIGHTING — early martial artists
    #=========================================================================

    # --- Machop ---
    s[:MACHOP] = [
      { tier: 1, ability: :GUTS, nature: :ADAMANT, item: nil,
        moves: [:LOWKICK, :LEER, :KARATECHOP, :FOCUSENERGY],
        evs: {} },
      { tier: 2, ability: :GUTS, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:KARATECHOP, :KNOCKOFF, :SEISMICTOSS, :SCARYFACE],
        evs: { ATTACK: 120, HP: 60 } },
    ]

    # --- Machoke ---
    s[:MACHOKE] = [
      { tier: 2, ability: :GUTS, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:BRICKBREAK, :KNOCKOFF, :ROCKSLIDE, :BULKUP],
        evs: { ATTACK: 160, HP: 100 } },
    ]

    # --- Mankey ---
    s[:MANKEY] = [
      { tier: 1, ability: :VITALSPIRIT, nature: :JOLLY, item: nil,
        moves: [:SCRATCH, :LOWKICK, :KARATECHOP, :LEER],
        evs: {} },
    ]

    # --- Tyrogue ---
    s[:TYROGUE] = [
      { tier: 1, ability: :STEADFAST, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :HELPINGHAND, :FAKEOUT, :COUNTER],
        evs: {} },
    ]

    # --- Meditite ---
    s[:MEDITITE] = [
      { tier: 1, ability: :PUREPOWER, nature: :JOLLY, item: nil,
        moves: [:CONFUSION, :MEDITATE, :FORCEPALM, :DETECT],
        evs: {} },
      { tier: 2, ability: :PUREPOWER, nature: :JOLLY, item: :ORANBERRY,
        moves: [:FORCEPALM, :ZENHEADBUTT, :FAKEOUT, :DETECT],
        evs: { ATTACK: 100, SPEED: 100 } },
    ]

    # --- Makuhita ---
    s[:MAKUHITA] = [
      { tier: 1, ability: :THICKFAT, nature: :ADAMANT, item: nil,
        moves: [:ARMTHRUST, :SANDATTACK, :FAKEOUT, :VITALTHROW],
        evs: {} },
    ]

    # --- Riolu ---
    s[:RIOLU] = [
      { tier: 1, ability: :STEADFAST, nature: :JOLLY, item: nil,
        moves: [:QUICKATTACK, :FORCEPALM, :COUNTER, :METALCLAW],
        evs: {} },
      { tier: 2, ability: :INNERFOCUS, nature: :JOLLY, item: :ORANBERRY,
        moves: [:FORCEPALM, :METALCLAW, :QUICKATTACK, :SWORDSDANCE],
        evs: { ATTACK: 100, SPEED: 100 } },
    ]

    # --- Timburr ---
    s[:TIMBURR] = [
      { tier: 1, ability: :GUTS, nature: :ADAMANT, item: nil,
        moves: [:POUND, :LOWKICK, :ROCKTHROW, :FOCUSENERGY],
        evs: {} },
    ]

    #=========================================================================
    # PSYCHIC / GHOST — early mystics
    #=========================================================================

    # --- Abra ---
    s[:ABRA] = [
      { tier: 1, ability: :SYNCHRONIZE, nature: :TIMID, item: nil,
        moves: [:TELEPORT, :HIDDENPOWER],
        evs: {} },
      { tier: 2, ability: :INNERFOCUS, nature: :TIMID, item: :FOCUSSASH,
        moves: [:PSYCHIC, :SHADOWBALL, :HIDDENPOWER, :ENCORE],
        evs: { SPECIAL_ATTACK: 120, SPEED: 120 } },
    ]

    # --- Kadabra ---
    s[:KADABRA] = [
      { tier: 2, ability: :INNERFOCUS, nature: :TIMID, item: :TWISTEDSPOON,
        moves: [:PSYCHIC, :SHADOWBALL, :CHARGEBEAM, :RECOVER],
        evs: { SPECIAL_ATTACK: 160, SPEED: 140 } },
    ]

    # --- Drowzee ---
    s[:DROWZEE] = [
      { tier: 1, ability: :INSOMNIA, nature: :CALM, item: nil,
        moves: [:CONFUSION, :HYPNOSIS, :DISABLE, :HEADBUTT],
        evs: {} },
    ]

    # --- Ralts ---
    s[:RALTS] = [
      { tier: 1, ability: :SYNCHRONIZE, nature: :TIMID, item: nil,
        moves: [:CONFUSION, :GROWL, :DOUBLETEAM, :DISARMINGVOICE],
        evs: {} },
    ]

    # --- Kirlia ---
    s[:KIRLIA] = [
      { tier: 2, ability: :SYNCHRONIZE, nature: :TIMID, item: :ORANBERRY,
        moves: [:PSYCHIC, :DISARMINGVOICE, :CALMMIND, :TELEPORT],
        evs: { SPECIAL_ATTACK: 120, SPEED: 100 } },
    ]

    # --- Natu ---
    s[:NATU] = [
      { tier: 1, ability: :EARLYBIRD, nature: :TIMID, item: nil,
        moves: [:PECK, :NIGHTSHADE, :LEER, :TELEPORT],
        evs: {} },
    ]

    # --- Spoink ---
    s[:SPOINK] = [
      { tier: 1, ability: :THICKFAT, nature: :MODEST, item: nil,
        moves: [:PSYWAVE, :CONFUSION, :ODORSLEUTH, :MAGICCOAT],
        evs: {} },
    ]

    # --- Gastly ---
    s[:GASTLY] = [
      { tier: 1, ability: :LEVITATE, nature: :TIMID, item: nil,
        moves: [:LICK, :HYPNOSIS, :NIGHTSHADE, :CONFUSERAY],
        evs: {} },
      { tier: 2, ability: :LEVITATE, nature: :TIMID, item: :ORANBERRY,
        moves: [:SHADOWBALL, :SLUDGEBOMB, :HYPNOSIS, :DREAMEATER],
        evs: { SPECIAL_ATTACK: 120, SPEED: 100 } },
    ]

    # --- Haunter ---
    s[:HAUNTER] = [
      { tier: 2, ability: :LEVITATE, nature: :TIMID, item: :SITRUSBERRY,
        moves: [:SHADOWBALL, :SLUDGEBOMB, :HYPNOSIS, :WILLOWISP],
        evs: { SPECIAL_ATTACK: 160, SPEED: 140 } },
    ]

    # --- Shuppet ---
    s[:SHUPPET] = [
      { tier: 1, ability: :INSOMNIA, nature: :ADAMANT, item: nil,
        moves: [:ASTONISH, :NIGHTSHADE, :SCREECH, :WILLOWISP],
        evs: {} },
    ]

    # --- Duskull ---
    s[:DUSKULL] = [
      { tier: 1, ability: :LEVITATE, nature: :BOLD, item: nil,
        moves: [:NIGHTSHADE, :DISABLE, :WILLOWISP, :CONFUSERAY],
        evs: {} },
    ]

    # --- Litwick ---
    s[:LITWICK] = [
      { tier: 1, ability: :FLASHFIRE, nature: :MODEST, item: nil,
        moves: [:EMBER, :ASTONISH, :CONFUSERAY, :WILLOWISP],
        evs: {} },
      { tier: 2, ability: :FLASHFIRE, nature: :MODEST, item: :ORANBERRY,
        moves: [:FIRESPIN, :HEX, :WILLOWISP, :CONFUSERAY],
        evs: { SPECIAL_ATTACK: 100, HP: 60 } },
    ]

    # --- Lampent ---
    s[:LAMPENT] = [
      { tier: 2, ability: :FLASHFIRE, nature: :MODEST, item: :SITRUSBERRY,
        moves: [:FLAMETHROWER, :SHADOWBALL, :WILLOWISP, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 160, SPEED: 100 } },
    ]

    # --- Misdreavus ---
    s[:MISDREAVUS] = [
      { tier: 1, ability: :LEVITATE, nature: :TIMID, item: nil,
        moves: [:CONFUSERAY, :ASTONISH, :PSYWAVE, :SPITE],
        evs: {} },
      { tier: 2, ability: :LEVITATE, nature: :TIMID, item: :ORANBERRY,
        moves: [:SHADOWBALL, :THUNDERBOLT, :WILLOWISP, :PAINSPLIT],
        evs: { SPECIAL_ATTACK: 120, SPEED: 100 } },
    ]

    # --- Drifloon ---
    s[:DRIFLOON] = [
      { tier: 1, ability: :UNBURDEN, nature: :MODEST, item: nil,
        moves: [:GUST, :ASTONISH, :MINIMIZE, :CONSTRICT],
        evs: {} },
    ]

    # --- Phantump ---
    s[:PHANTUMP] = [
      { tier: 1, ability: :NATURALCURE, nature: :CAREFUL, item: nil,
        moves: [:ASTONISH, :LEECHSEED, :CONFUSERAY, :INGRAIN],
        evs: {} },
    ]

    #=========================================================================
    # FIRE / DARK — early Bikers & Burglars
    #=========================================================================

    # --- Growlithe ---
    s[:GROWLITHE] = [
      { tier: 1, ability: :INTIMIDATE, nature: :ADAMANT, item: nil,
        moves: [:EMBER, :BITE, :LEER, :ROAR],
        evs: {} },
      { tier: 2, ability: :INTIMIDATE, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:FLAMEWHEEL, :BITE, :REVERSAL, :AGILITY],
        evs: { ATTACK: 120, SPEED: 80 } },
    ]

    # --- Vulpix ---
    s[:VULPIX] = [
      { tier: 1, ability: :FLASHFIRE, nature: :TIMID, item: nil,
        moves: [:EMBER, :QUICKATTACK, :CONFUSERAY, :TAILWHIP],
        evs: {} },
      { tier: 2, ability: :FLASHFIRE, nature: :TIMID, item: :ORANBERRY,
        moves: [:FLAMETHROWER, :CONFUSERAY, :WILLOWISP, :EXTRASENSORY],
        evs: { SPECIAL_ATTACK: 120, SPEED: 80 } },
    ]

    # --- Houndour ---
    s[:HOUNDOUR] = [
      { tier: 1, ability: :EARLYBIRD, nature: :MODEST, item: nil,
        moves: [:EMBER, :BITE, :LEER, :SMOG],
        evs: {} },
      { tier: 2, ability: :FLASHFIRE, nature: :MODEST, item: :ORANBERRY,
        moves: [:FLAMETHROWER, :CRUNCH, :SUCKERPUNCH, :WILLOWISP],
        evs: { SPECIAL_ATTACK: 100, SPEED: 80 } },
    ]

    # --- Poochyena ---
    s[:POOCHYENA] = [
      { tier: 1, ability: :RUNAWAY, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :BITE, :HOWL, :SANDATTACK],
        evs: {} },
    ]

    # --- Mightyena ---
    s[:MIGHTYENA] = [
      { tier: 2, ability: :INTIMIDATE, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:CRUNCH, :SUCKERPUNCH, :FIREFANG, :ICEFANG],
        evs: { ATTACK: 160, SPEED: 100 } },
    ]

    # --- Stunky ---
    s[:STUNKY] = [
      { tier: 1, ability: :STENCH, nature: :JOLLY, item: nil,
        moves: [:SCRATCH, :POISONGAS, :FURYCUTTER, :SMOKESCREEN],
        evs: {} },
    ]

    # --- Sandile ---
    s[:SANDILE] = [
      { tier: 1, ability: :INTIMIDATE, nature: :JOLLY, item: nil,
        moves: [:BITE, :SANDATTACK, :MUDSLAP, :RAGE],
        evs: {} },
      { tier: 2, ability: :INTIMIDATE, nature: :JOLLY, item: :ORANBERRY,
        moves: [:CRUNCH, :DIG, :SANDTOMB, :SCARYFACE],
        evs: { ATTACK: 100, SPEED: 80 } },
    ]

    # --- Krokorok ---
    s[:KROKOROK] = [
      { tier: 2, ability: :INTIMIDATE, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:CRUNCH, :DIG, :ROCKSLIDE, :HONECLAWS],
        evs: { ATTACK: 140, SPEED: 120 } },
    ]

    # --- Litleo ---
    s[:LITLEO] = [
      { tier: 1, ability: :RIVALRY, nature: :TIMID, item: nil,
        moves: [:EMBER, :TACKLE, :WORKUP, :HEADBUTT],
        evs: {} },
    ]

    #=========================================================================
    # ELECTRIC — early scientists / nerds
    #=========================================================================

    # --- Magnemite ---
    s[:MAGNEMITE] = [
      { tier: 1, ability: :MAGNETPULL, nature: :MODEST, item: nil,
        moves: [:THUNDERSHOCK, :TACKLE, :SUPERSONIC, :SONICBOOM],
        evs: {} },
      { tier: 2, ability: :MAGNETPULL, nature: :MODEST, item: :ORANBERRY,
        moves: [:THUNDERBOLT, :FLASHCANNON, :LIGHTSCREEN, :SONICBOOM],
        evs: { SPECIAL_ATTACK: 120, SPEED: 60 } },
    ]

    # --- Voltorb ---
    s[:VOLTORB] = [
      { tier: 1, ability: :SOUNDPROOF, nature: :TIMID, item: nil,
        moves: [:THUNDERSHOCK, :SCREECH, :SONICBOOM, :ROLLOUT],
        evs: {} },
      { tier: 2, ability: :STATIC, nature: :TIMID, item: :ORANBERRY,
        moves: [:THUNDERBOLT, :VOLTSWITCH, :SCREECH, :LIGHTSCREEN],
        evs: { SPECIAL_ATTACK: 100, SPEED: 100 } },
    ]

    # --- Pikachu ---
    s[:PIKACHU] = [
      { tier: 1, ability: :STATIC, nature: :HASTY, item: nil,
        moves: [:THUNDERSHOCK, :QUICKATTACK, :TAILWHIP, :DOUBLETEAM],
        evs: {} },
      { tier: 2, ability: :STATIC, nature: :TIMID, item: :ORANBERRY,
        moves: [:THUNDERBOLT, :QUICKATTACK, :IRONTAIL, :GRASSKNOT],
        evs: { SPECIAL_ATTACK: 120, SPEED: 120 } },
    ]

    # --- Elekid ---
    s[:ELEKID] = [
      { tier: 1, ability: :STATIC, nature: :JOLLY, item: nil,
        moves: [:THUNDERPUNCH, :QUICKATTACK, :LEER, :SWIFT],
        evs: {} },
    ]

    # --- Shinx ---
    s[:SHINX] = [
      { tier: 1, ability: :INTIMIDATE, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :SPARK, :BITE, :CHARGE],
        evs: {} },
    ]

    # --- Luxio ---
    s[:LUXIO] = [
      { tier: 2, ability: :INTIMIDATE, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:SPARK, :BITE, :ICEFANG, :ROAR],
        evs: { ATTACK: 120, SPEED: 80 } },
    ]

    # --- Beldum ---
    s[:BELDUM] = [
      { tier: 1, ability: :CLEARBODY, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :TAKEDOWN],
        evs: {} },
    ]

    # --- Metang ---
    s[:METANG] = [
      { tier: 2, ability: :CLEARBODY, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:METEORMASH, :ZENHEADBUTT, :BULLETPUNCH, :AGILITY],
        evs: { ATTACK: 160, SPEED: 80 } },
    ]

    # --- Klink ---
    s[:KLINK] = [
      { tier: 1, ability: :CLEARBODY, nature: :ADAMANT, item: nil,
        moves: [:GEARGRIND, :CHARGE, :BIND, :THUNDERSHOCK],
        evs: {} },
    ]

    # --- Grubbin ---
    s[:GRUBBIN] = [
      { tier: 1, ability: :SWARM, nature: :MODEST, item: nil,
        moves: [:BUGBITE, :SPARK, :MUDSLAP, :STRINGSHOT],
        evs: {} },
    ]

    #=========================================================================
    # GRASS — Aroma Lady basics
    #=========================================================================

    # --- Oddish ---
    s[:ODDISH] = [
      { tier: 1, ability: :CHLOROPHYLL, nature: :MODEST, item: nil,
        moves: [:ABSORB, :POISONPOWDER, :STUNSPORE, :ACID],
        evs: {} },
    ]

    # --- Bellsprout ---
    s[:BELLSPROUT] = [
      { tier: 1, ability: :CHLOROPHYLL, nature: :MODEST, item: nil,
        moves: [:VINEWHIP, :WRAP, :POISONPOWDER, :SLEEPPOWDER],
        evs: {} },
    ]

    # --- Budew ---
    s[:BUDEW] = [
      { tier: 1, ability: :NATURALCURE, nature: :TIMID, item: nil,
        moves: [:ABSORB, :STUNSPORE, :WATERGUN, :GROWTH],
        evs: {} },
    ]

    # --- Roselia ---
    s[:ROSELIA] = [
      { tier: 2, ability: :NATURALCURE, nature: :TIMID, item: :ORANBERRY,
        moves: [:GIGADRAIN, :SLUDGEBOMB, :LEECHSEED, :STUNSPORE],
        evs: { SPECIAL_ATTACK: 120, SPEED: 100 } },
    ]

    # --- Cherubi ---
    s[:CHERUBI] = [
      { tier: 1, ability: :CHLOROPHYLL, nature: :MODEST, item: nil,
        moves: [:TACKLE, :GROWTH, :LEECHSEED, :MAGICLEAF],
        evs: {} },
    ]

    # --- Petilil ---
    s[:PETILIL] = [
      { tier: 1, ability: :CHLOROPHYLL, nature: :MODEST, item: nil,
        moves: [:ABSORB, :GROWTH, :SLEEPPOWDER, :MAGICLEAF],
        evs: {} },
    ]

    # --- Sunkern ---
    s[:SUNKERN] = [
      { tier: 1, ability: :CHLOROPHYLL, nature: :MODEST, item: nil,
        moves: [:ABSORB, :GROWTH, :MEGADRAIN, :INGRAIN],
        evs: {} },
    ]

    # --- Hoppip ---
    s[:HOPPIP] = [
      { tier: 1, ability: :CHLOROPHYLL, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :POISONPOWDER, :STUNSPORE, :LEECHSEED],
        evs: {} },
    ]

    # --- Cottonee ---
    s[:COTTONEE] = [
      { tier: 1, ability: :PRANKSTER, nature: :BOLD, item: nil,
        moves: [:ABSORB, :STUNSPORE, :LEECHSEED, :FAIRYWIND],
        evs: {} },
      { tier: 2, ability: :PRANKSTER, nature: :BOLD, item: :ORANBERRY,
        moves: [:GIGADRAIN, :LEECHSEED, :STUNSPORE, :ENCORE],
        evs: { HP: 80, DEFENSE: 80 } },
    ]

    #=========================================================================
    # FAIRY / CUTE — Lass / Beauty basics
    #=========================================================================

    # --- Jigglypuff ---
    s[:JIGGLYPUFF] = [
      { tier: 1, ability: :CUTECHARM, nature: :BOLD, item: nil,
        moves: [:POUND, :SING, :DISARMINGVOICE, :DEFENSECURL],
        evs: {} },
    ]

    # --- Clefairy ---
    s[:CLEFAIRY] = [
      { tier: 1, ability: :MAGICGUARD, nature: :BOLD, item: nil,
        moves: [:POUND, :SING, :DISARMINGVOICE, :FOLLOWME],
        evs: {} },
      { tier: 2, ability: :MAGICGUARD, nature: :BOLD, item: :EVIOLITE,
        moves: [:MOONBLAST, :THUNDERWAVE, :FOLLOWME, :SOFTBOILED],
        evs: { HP: 120, DEFENSE: 100 } },
      { tier: 2, ability: :FRIENDGUARD, nature: :BOLD, item: :EVIOLITE,
        moves: [:FOLLOWME, :THUNDERWAVE, :MOONBLAST, :PROTECT],
        evs: { HP: 120, DEFENSE: 100 }, format: :doubles },
    ]

    # --- Igglybuff ---
    s[:IGGLYBUFF] = [
      { tier: 1, ability: :CUTECHARM, nature: :CALM, item: nil,
        moves: [:POUND, :SING, :CHARM, :SWEETKISS],
        evs: {} },
    ]

    # --- Skitty ---
    s[:SKITTY] = [
      { tier: 1, ability: :CUTECHARM, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :SING, :FAKEOUT, :COPYCAT],
        evs: {} },
    ]

    # --- Togepi ---
    s[:TOGEPI] = [
      { tier: 1, ability: :SERENEGRACE, nature: :CALM, item: nil,
        moves: [:METRONOME, :CHARM, :SWEETKISS, :YAWN],
        evs: {} },
    ]

    # --- Togetic ---
    s[:TOGETIC] = [
      { tier: 2, ability: :SERENEGRACE, nature: :BOLD, item: :EVIOLITE,
        moves: [:DAZZLINGGLEAM, :AIRSLASH, :THUNDERWAVE, :ROOST],
        evs: { HP: 120, DEFENSE: 100 } },
    ]

    # --- Azurill ---
    s[:AZURILL] = [
      { tier: 1, ability: :HUGEPOWER, nature: :ADAMANT, item: nil,
        moves: [:TACKLE, :CHARM, :TAILWHIP, :BUBBLE],
        evs: {} },
    ]

    # --- Marill ---
    s[:MARILL] = [
      { tier: 2, ability: :HUGEPOWER, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:AQUAJET, :PLAYROUGH, :BODYSLAM, :BELLYDRUM],
        evs: { HP: 120, ATTACK: 120 } },
    ]

    # --- Buneary ---
    s[:BUNEARY] = [
      { tier: 1, ability: :RUNAWAY, nature: :JOLLY, item: nil,
        moves: [:POUND, :QUICKATTACK, :FORESIGHT, :ENDURE],
        evs: {} },
    ]

    # --- Happiny ---
    s[:HAPPINY] = [
      { tier: 1, ability: :NATURALCURE, nature: :CALM, item: nil,
        moves: [:POUND, :CHARM, :SWEETKISS, :COPYCAT],
        evs: {} },
    ]

    # --- Chansey ---
    s[:CHANSEY] = [
      { tier: 2, ability: :NATURALCURE, nature: :BOLD, item: :EVIOLITE,
        moves: [:SEISMICTOSS, :THUNDERWAVE, :SOFTBOILED, :TOXIC],
        evs: { HP: 120, DEFENSE: 120 } },
    ]

    #=========================================================================
    # POISON / DARK — Team Rocket grunts
    #=========================================================================

    # --- Ekans ---
    s[:EKANS] = [
      { tier: 1, ability: :INTIMIDATE, nature: :JOLLY, item: nil,
        moves: [:WRAP, :LEER, :POISONSTING, :BITE],
        evs: {} },
      { tier: 2, ability: :INTIMIDATE, nature: :JOLLY, item: :ORANBERRY,
        moves: [:POISONFANG, :BITE, :GLARE, :ACIDSPRAY],
        evs: { ATTACK: 100, SPEED: 80 } },
    ]

    # --- Arbok ---
    s[:ARBOK] = [
      { tier: 2, ability: :INTIMIDATE, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:POISONFANG, :CRUNCH, :GLARE, :COIL],
        evs: { ATTACK: 160, SPEED: 100 } },
    ]

    # --- Koffing ---
    s[:KOFFING] = [
      { tier: 1, ability: :LEVITATE, nature: :BOLD, item: nil,
        moves: [:TACKLE, :SMOG, :SMOKESCREEN, :SELFDESTRUCT],
        evs: {} },
      { tier: 2, ability: :LEVITATE, nature: :BOLD, item: :ORANBERRY,
        moves: [:SLUDGE, :WILLOWISP, :PAINSPLIT, :TOXIC],
        evs: { HP: 80, DEFENSE: 100 } },
    ]

    # --- Grimer ---
    s[:GRIMER] = [
      { tier: 1, ability: :STENCH, nature: :ADAMANT, item: nil,
        moves: [:POUND, :POISONGAS, :MUDSLAP, :SLUDGE],
        evs: {} },
    ]

    # --- Trubbish ---
    s[:TRUBBISH] = [
      { tier: 1, ability: :STENCH, nature: :IMPISH, item: nil,
        moves: [:POUND, :POISONGAS, :TOXIC, :ACIDSPRAY],
        evs: {} },
    ]

    # --- Inkay ---
    s[:INKAY] = [
      { tier: 1, ability: :CONTRARY, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :PECK, :FOULPLAY, :HYPNOSIS],
        evs: {} },
      { tier: 2, ability: :CONTRARY, nature: :JOLLY, item: :ORANBERRY,
        moves: [:FOULPLAY, :PSYCHOCUT, :SUPERPOWER, :HYPNOSIS],
        evs: { ATTACK: 100, SPEED: 80 } },
    ]

    #=========================================================================
    # MISC — other pool Pokémon that lack sets
    #=========================================================================

    # --- Nidoran M/F ---
    s[:NIDORAN_M] = [
      { tier: 1, ability: :POISONPOINT, nature: :JOLLY, item: nil,
        moves: [:HORNATTACK, :POISONSTING, :LEER, :FOCUSENERGY],
        evs: {} },
      { tier: 2, ability: :POISONPOINT, nature: :JOLLY, item: :ORANBERRY,
        moves: [:HORNATTACK, :DOUBLEKICK, :POISONJAB, :HELPINGHAND],
        evs: { ATTACK: 100, SPEED: 80 } },
    ]

    s[:NIDORAN_F] = [
      { tier: 1, ability: :POISONPOINT, nature: :BOLD, item: nil,
        moves: [:SCRATCH, :POISONSTING, :TAILWHIP, :BITE],
        evs: {} },
      { tier: 2, ability: :POISONPOINT, nature: :BOLD, item: :ORANBERRY,
        moves: [:BITE, :DOUBLEKICK, :POISONJAB, :HELPINGHAND],
        evs: { ATTACK: 80, HP: 80 } },
    ]

    # --- Nidorino ---
    s[:NIDORINO] = [
      { tier: 2, ability: :POISONPOINT, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:POISONJAB, :HORNATTACK, :DOUBLEKICK, :HELPINGHAND],
        evs: { ATTACK: 140, SPEED: 100 } },
    ]

    # --- Nidorina ---
    s[:NIDORINA] = [
      { tier: 2, ability: :POISONPOINT, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:POISONJAB, :BITE, :CRUNCH, :HELPINGHAND],
        evs: { HP: 120, DEFENSE: 80, ATTACK: 60 } },
    ]

    # --- Slowpoke ---
    s[:SLOWPOKE] = [
      { tier: 1, ability: :OBLIVIOUS, nature: :RELAXED, item: nil,
        moves: [:WATERGUN, :CONFUSION, :YAWN, :TACKLE],
        evs: {} },
      { tier: 2, ability: :REGENERATOR, nature: :RELAXED, item: :ORANBERRY,
        moves: [:SURF, :PSYCHIC, :YAWN, :SLACKOFF],
        evs: { HP: 100, DEFENSE: 80 } },
    ]

    # --- Wobbuffet ---
    s[:WOBBUFFET] = [
      { tier: 2, ability: :SHADOWTAG, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:COUNTER, :MIRRORCOAT, :SAFEGUARD, :DESTINYBOND],
        evs: { HP: 200, DEFENSE: 60 } },
    ]

    # --- Espurr ---
    s[:ESPURR] = [
      { tier: 1, ability: :OWNTEMPO, nature: :TIMID, item: nil,
        moves: [:CONFUSION, :LEER, :COVET, :DISARMINGVOICE],
        evs: {} },
    ]

    # --- Dratini ---
    s[:DRATINI] = [
      { tier: 1, ability: :SHEDSKIN, nature: :ADAMANT, item: nil,
        moves: [:WRAP, :TWISTER, :THUNDERWAVE, :DRAGONRAGE],
        evs: {} },
      { tier: 2, ability: :SHEDSKIN, nature: :ADAMANT, item: :ORANBERRY,
        moves: [:DRAGONRAGE, :AQUATAIL, :SLAM, :AGILITY],
        evs: { ATTACK: 100, SPEED: 60 } },
    ]

    # --- Dragonair ---
    s[:DRAGONAIR] = [
      { tier: 2, ability: :SHEDSKIN, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:DRAGONTAIL, :AQUATAIL, :SLAM, :THUNDERWAVE],
        evs: { ATTACK: 140, SPEED: 100 } },
    ]

    # --- Larvitar ---
    s[:LARVITAR] = [
      { tier: 1, ability: :GUTS, nature: :ADAMANT, item: nil,
        moves: [:BITE, :SANDSTORM, :ROCKSLIDE, :LEER],
        evs: {} },
    ]

    # --- Pupitar ---
    s[:PUPITAR] = [
      { tier: 2, ability: :SHEDSKIN, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:ROCKSLIDE, :CRUNCH, :EARTHQUAKE, :IRONDEFENSE],
        evs: { ATTACK: 140, SPEED: 80 } },
    ]

    # --- Bagon ---
    s[:BAGON] = [
      { tier: 1, ability: :ROCKHEAD, nature: :ADAMANT, item: nil,
        moves: [:BITE, :DRAGONDANCE, :EMBER, :HEADBUTT],
        evs: {} },
    ]

    # --- Shelgon ---
    s[:SHELGON] = [
      { tier: 2, ability: :ROCKHEAD, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:DRAGONCLAW, :HEADBUTT, :PROTECT, :ZENHEADBUTT],
        evs: { ATTACK: 140, HP: 80 } },
    ]

    # --- Gible ---
    s[:GIBLE] = [
      { tier: 1, ability: :ROUGHSKIN, nature: :JOLLY, item: nil,
        moves: [:TACKLE, :SANDATTACK, :DRAGONDANCE, :BITE],
        evs: {} },
      { tier: 2, ability: :ROUGHSKIN, nature: :JOLLY, item: :ORANBERRY,
        moves: [:DRAGONCLAW, :DIG, :ROCKSLIDE, :SANDTOMB],
        evs: { ATTACK: 100, SPEED: 80 } },
    ]

    # --- Gabite ---
    s[:GABITE] = [
      { tier: 2, ability: :ROUGHSKIN, nature: :JOLLY, item: :SITRUSBERRY,
        moves: [:DRAGONCLAW, :DIG, :ROCKSLIDE, :SWORDSDANCE],
        evs: { ATTACK: 160, SPEED: 120 } },
    ]

  end
end
