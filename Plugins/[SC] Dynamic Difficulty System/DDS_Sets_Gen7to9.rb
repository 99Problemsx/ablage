#===============================================================================
# Dynamic Difficulty System — Competitive Sets: Generation 7–9
# Alola (#722–#809) + Galar (#810–#905) + Paldea (#906–#1025)
#===============================================================================

module DynamicDifficulty
  module CompetitiveSets
    s = SETS

    #=========================================================================
    # GENERATION 7 — ALOLA
    #=========================================================================

    # --- Decidueye ---
    s[:DECIDUEYE] = [
      { tier: 3, ability: :OVERGROW, nature: :JOLLY, item: :LIFEORB,
        moves: [:SPIRITSHACKLE, :LEAFBLADE, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LONGREACH, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:SPIRITSHACKLE, :LEAFBLADE, :UTURN, :BRAVEBIRD],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Incineroar ---
    s[:INCINEROAR] = [
      { tier: 3, ability: :INTIMIDATE, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:FLAREBLITZ, :KNOCKOFF, :UTURN, :EARTHQUAKE],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :CAREFUL, item: :SITRUSBERRY,
        moves: [:FLAREBLITZ, :KNOCKOFF, :UTURN, :FAKEOUT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :INTIMIDATE, nature: :CAREFUL, item: :SITRUSBERRY,
        moves: [:FLAREBLITZ, :KNOCKOFF, :FAKEOUT, :PROTECT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, ATTACK: 4 }, format: :doubles },
    ]

    # --- Primarina ---
    s[:PRIMARINA] = [
      { tier: 3, ability: :TORRENT, nature: :MODEST, item: :CHOICESPECS,
        moves: [:SPARKLINGARIA, :MOONBLAST, :PSYCHIC, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LIQUIDVOICE, nature: :MODEST, item: :LIFEORB,
        moves: [:HYPERVOICE, :MOONBLAST, :PSYCHIC, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Toucannon ---
    s[:TOUCANNON] = [
      { tier: 3, ability: :SKILLLINK, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:BRAVEBIRD, :BULLETSEED, :ROCKBLAST, :RETURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:BEAKBLAST, :BRAVEBIRD, :ROCKBLAST, :OVERHEAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Vikavolt ---
    s[:VIKAVOLT] = [
      { tier: 3, ability: :LEVITATE, nature: :MODEST, item: :CHOICESPECS,
        moves: [:THUNDERBOLT, :BUGBUZZ, :ENERGYBALL, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :LEVITATE, nature: :QUIET, item: :LIFEORB,
        moves: [:THUNDERBOLT, :BUGBUZZ, :ENERGYBALL, :AGILITY],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Lycanroc ---
    s[:LYCANROC] = [
      { tier: 3, ability: :SANDRUSH, nature: :JOLLY, item: :LIFEORB,
        moves: [:STONEEDGE, :CLOSECOMBAT, :ACCELEROCK, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SANDRUSH, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:STONEEDGE, :CLOSECOMBAT, :ACCELEROCK, :DRILLRUN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Toxapex ---
    s[:TOXAPEX] = [
      { tier: 3, ability: :REGENERATOR, nature: :BOLD, item: :BLACKSLUDGE,
        moves: [:SCALD, :TOXIC, :RECOVER, :HAZE],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :CALM, item: :BLACKSLUDGE,
        moves: [:SCALD, :TOXICSPIKES, :RECOVER, :KNOCKOFF],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Araquanid ---
    s[:ARAQUANID] = [
      { tier: 3, ability: :WATERBUBBLE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LIQUIDATION, :LEECHLIFE, :MIRRORCOAT, :STICKYWEB],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :WATERBUBBLE, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:LIQUIDATION, :LEECHLIFE, :ICEFANG, :POISONJAB],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :WATERBUBBLE, nature: :BRAVE, item: :LIFEORB,
        moves: [:LIQUIDATION, :LEECHLIFE, :WIDEGUARD, :PROTECT],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Lurantis ---
    s[:LURANTIS] = [
      { tier: 3, ability: :CONTRARY, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LEAFSTORM, :SUPERPOWER, :KNOCKOFF, :SYNTHESIS],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :CONTRARY, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:LEAFSTORM, :SUPERPOWER, :KNOCKOFF, :POISONJAB],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Shiinotic ---
    s[:SHIINOTIC] = [
      { tier: 3, ability: :EFFECTSPORE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:SPORE, :MOONBLAST, :GIGADRAIN, :STRENGTHSAP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :RAINEDISH, nature: :CALM, item: :LEFTOVERS,
        moves: [:SPORE, :MOONBLAST, :GIGADRAIN, :STRENGTHSAP],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Salazzle ---
    s[:SALAZZLE] = [
      { tier: 3, ability: :CORROSION, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SLUDGEWAVE, :FIREBLAST, :NASTYPLOT, :TOXIC],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CORROSION, nature: :TIMID, item: :LIFEORB,
        moves: [:SLUDGEWAVE, :FIREBLAST, :NASTYPLOT, :ENCORE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Bewear ---
    s[:BEWEAR] = [
      { tier: 3, ability: :FLUFFY, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:CLOSECOMBAT, :RETURN, :ICEPUNCH, :EARTHQUAKE],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :FLUFFY, nature: :ADAMANT, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :RETURN, :SWORDSDANCE, :ICEPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Tsareena ---
    s[:TSAREENA] = [
      { tier: 3, ability: :QUEENLYMAJESTY, nature: :JOLLY, item: :LIFEORB,
        moves: [:POWERWHIP, :HIGHJUMPKICK, :KNOCKOFF, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :QUEENLYMAJESTY, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:POWERWHIP, :HIGHJUMPKICK, :KNOCKOFF, :UTURN],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
    ]

    # --- Oranguru ---
    s[:ORANGURU] = [
      { tier: 3, ability: :INNERFOCUS, nature: :QUIET, item: :LEFTOVERS,
        moves: [:PSYCHIC, :THUNDERWAVE, :NASTYPLOT, :RECOVER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :TELEPATHY, nature: :QUIET, item: :SITRUSBERRY,
        moves: [:PSYCHIC, :TRICKROOM, :INSTRUCT, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Passimian ---
    s[:PASSIMIAN] = [
      { tier: 3, ability: :DEFIANT, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:CLOSECOMBAT, :UTURN, :KNOCKOFF, :ROCKSLIDE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:CLOSECOMBAT, :UTURN, :KNOCKOFF, :EARTHQUAKE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Golisopod ---
    s[:GOLISOPOD] = [
      { tier: 3, ability: :EMERGENCYEXIT, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:FIRSTIMPRESSION, :LIQUIDATION, :LEECHLIFE, :AQUAJET],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :EMERGENCYEXIT, nature: :BRAVE, item: :LIFEORB,
        moves: [:FIRSTIMPRESSION, :LIQUIDATION, :LEECHLIFE, :SUCKERPUNCH],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Palossand ---
    s[:PALOSSAND] = [
      { tier: 3, ability: :WATERCOMPACTION, nature: :BOLD, item: :LEFTOVERS,
        moves: [:EARTHPOWER, :SHADOWBALL, :SHOREUP, :STEALTHROCK],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :WATERCOMPACTION, nature: :BOLD, item: :LEFTOVERS,
        moves: [:EARTHPOWER, :SHADOWBALL, :SHOREUP, :TOXIC],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_ATTACK: 4 } },
    ]

    # --- Minior ---
    s[:MINIOR] = [
      { tier: 3, ability: :SHIELDSDOWN, nature: :JOLLY, item: :WHITEHERB,
        moves: [:SHELLSMASH, :ACROBATICS, :EARTHQUAKE, :STONEEDGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHIELDSDOWN, nature: :ADAMANT, item: :WHITEHERB,
        moves: [:SHELLSMASH, :ACROBATICS, :EARTHQUAKE, :EXPLOSION],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mimikyu ---
    s[:MIMIKYU] = [
      { tier: 3, ability: :DISGUISE, nature: :JOLLY, item: :LIFEORB,
        moves: [:PLAYROUGH, :SHADOWCLAW, :SHADOWSNEAK, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DISGUISE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:PLAYROUGH, :SHADOWSNEAK, :SWORDSDANCE, :TAUNT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DISGUISE, nature: :JOLLY, item: :REDCARD,
        moves: [:PLAYROUGH, :SHADOWCLAW, :TRICKROOM, :PROTECT],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 }, format: :doubles },
    ]

    # --- Kommo-o ---
    s[:KOMMOO] = [
      { tier: 3, ability: :BULLETPROOF, nature: :TIMID, item: :THROATSPRAY,
        moves: [:CLANGINGSCALES, :FLAMETHROWER, :AURASPHERE, :FLASHCANNON],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SOUNDPROOF, nature: :JOLLY, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :DRAGONCLAW, :POISONJAB, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :BULLETPROOF, nature: :TIMID, item: :THROATSPRAY,
        moves: [:CLANGINGSCALES, :FOCUSBLAST, :FLASHCANNON, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Turtonator ---
    s[:TURTONATOR] = [
      { tier: 3, ability: :SHELLARMOR, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:FIREBLAST, :DRAGONPULSE, :FLASHCANNON, :FOCUSBLAST],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SHELLARMOR, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:FIREBLAST, :DRAGONPULSE, :FLASHCANNON, :BODYPRESS],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Togedemaru ---
    s[:TOGEDEMARU] = [
      { tier: 3, ability: :LIGHTNINGROD, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:IRONHEAD, :ZINGZAP, :NUZZLE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LIGHTNINGROD, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:IRONHEAD, :ZINGZAP, :FAKEOUT, :SPIKYSHIELD],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Komala ---
    s[:KOMALA] = [
      { tier: 3, ability: :COMATOSE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:RETURN, :SUCKERPUNCH, :EARTHQUAKE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :COMATOSE, nature: :JOLLY, item: :LIFEORB,
        moves: [:RETURN, :SUCKERPUNCH, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dhelmise ---
    s[:DHELMISE] = [
      { tier: 3, ability: :STEELWORKER, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:POWERWHIP, :SHADOWCLAW, :ANCHORSHOT, :EARTHQUAKE],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :STEELWORKER, nature: :BRAVE, item: :LIFEORB,
        moves: [:POWERWHIP, :POLTERGEIST, :ANCHORSHOT, :RAPIDSPIN],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Ribombee ---
    s[:RIBOMBEE] = [
      { tier: 3, ability: :SHIELDDUST, nature: :TIMID, item: :FOCUSSASH,
        moves: [:MOONBLAST, :BUGBUZZ, :STICKYWEB, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SHIELDDUST, nature: :TIMID, item: :FOCUSSASH,
        moves: [:MOONBLAST, :BUGBUZZ, :QUIVERDANCE, :ENERGYBALL],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mudsdale ---
    s[:MUDSDALE] = [
      { tier: 3, ability: :STAMINA, nature: :ADAMANT, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :CLOSECOMBAT, :HEAVYSLAM, :STEALTHROCK],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :STAMINA, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :BODYPRESS, :HEAVYSLAM, :REST],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
    ]

    # --- Wishiwashi ---
    s[:WISHIWASHI] = [
      { tier: 3, ability: :SCHOOLING, nature: :ADAMANT, item: :LIFEORB,
        moves: [:LIQUIDATION, :EARTHQUAKE, :ICESHARD, :UTURN],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :SCHOOLING, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:HYDROPUMP, :ICEBEAM, :EARTHQUAKE, :UTURN],
        evs: { HP: 252, SPECIAL_ATTACK: 252, ATTACK: 4 } },
    ]

    # --- Ninetales-Alola ---
    s[:NINETALES_1] = [
      { tier: 3, ability: :SNOWWARNING, nature: :TIMID, item: :LIGHTCLAY,
        moves: [:BLIZZARD, :FREEZEDRY, :AURORAVEIL, :MOONBLAST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SNOWWARNING, nature: :TIMID, item: :LIGHTCLAY,
        moves: [:BLIZZARD, :MOONBLAST, :AURORAVEIL, :ENCORE],
        evs: { HP: 252, SPEED: 252, SPECIAL_ATTACK: 4 } },
      { tier: 4, ability: :SNOWWARNING, nature: :TIMID, item: :LIGHTCLAY,
        moves: [:BLIZZARD, :MOONBLAST, :AURORAVEIL, :PROTECT],
        evs: { HP: 252, SPEED: 252, SPECIAL_ATTACK: 4 }, format: :doubles },
    ]

    # --- Sandslash-Alola ---
    s[:SANDSLASH_1] = [
      { tier: 3, ability: :SLUSHRUSH, nature: :ADAMANT, item: :LIFEORB,
        moves: [:ICICLECRASH, :IRONHEAD, :EARTHQUAKE, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SLUSHRUSH, nature: :JOLLY, item: :LIFEORB,
        moves: [:ICICLECRASH, :IRONHEAD, :EARTHQUAKE, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Muk-Alola ---
    s[:MUK_1] = [
      { tier: 3, ability: :POISONTOUCH, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:KNOCKOFF, :GUNKSHOT, :FIREPUNCH, :ICEPUNCH],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :POISONTOUCH, nature: :CAREFUL, item: :ASSAULTVEST,
        moves: [:KNOCKOFF, :GUNKSHOT, :FIREPUNCH, :PURSUIT],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, ATTACK: 4 } },
    ]

    # --- Raichu-Alola ---
    s[:RAICHU_1] = [
      { tier: 3, ability: :SURGESURFER, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :PSYSHOCK, :NASTYPLOT, :GRASSKNOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SURGESURFER, nature: :TIMID, item: :FOCUSSASH,
        moves: [:THUNDERBOLT, :PSYSHOCK, :FAKEOUT, :ENCORE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SURGESURFER, nature: :TIMID, item: :FOCUSSASH,
        moves: [:THUNDERBOLT, :PSYSHOCK, :FAKEOUT, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Marowak-Alola ---
    s[:MAROWAK_1] = [
      { tier: 3, ability: :LIGHTNINGROD, nature: :ADAMANT, item: :THICKCLUB,
        moves: [:FLAREBLITZ, :SHADOWBONE, :BONEMERANG, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :LIGHTNINGROD, nature: :BRAVE, item: :THICKCLUB,
        moves: [:FLAREBLITZ, :SHADOWBONE, :BONEMERANG, :WILLOWISP],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Exeggutor-Alola ---
    s[:EXEGGUTOR_1] = [
      { tier: 3, ability: :FRISK, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:DRACOMETEOR, :LEAFSTORM, :FLAMETHROWER, :DRAGONHAMMER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, ATTACK: 4 } },
      { tier: 4, ability: :HARVEST, nature: :QUIET, item: :SITRUSBERRY,
        moves: [:DRACOMETEOR, :LEAFSTORM, :FLAMETHROWER, :TRICKROOM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    #=========================================================================
    # GENERATION 8 — GALAR
    #=========================================================================

    # --- Rillaboom ---
    s[:RILLABOOM] = [
      { tier: 3, ability: :GRASSYSURGE, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:GRASSYGLIDE, :KNOCKOFF, :UTURN, :SUPERPOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GRASSYSURGE, nature: :ADAMANT, item: :MIRACLESEED,
        moves: [:GRASSYGLIDE, :KNOCKOFF, :UTURN, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GRASSYSURGE, nature: :ADAMANT, item: :MIRACLESEED,
        moves: [:GRASSYGLIDE, :KNOCKOFF, :FAKEOUT, :PROTECT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Cinderace ---
    s[:CINDERACE] = [
      { tier: 3, ability: :LIBERO, nature: :JOLLY, item: :LIFEORB,
        moves: [:PYROBALL, :HIGHJUMPKICK, :UTURN, :SUCKERPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :LIBERO, nature: :JOLLY, item: :HEAVYDUTYBOOTS,
        moves: [:PYROBALL, :HIGHJUMPKICK, :UTURN, :COURTCHANGE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Intelleon ---
    s[:INTELEON] = [
      { tier: 3, ability: :TORRENT, nature: :TIMID, item: :CHOICESPECS,
        moves: [:HYDROPUMP, :ICEBEAM, :DARKPULSE, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SNIPER, nature: :TIMID, item: :SCOPELENS,
        moves: [:HYDROPUMP, :ICEBEAM, :FOCUSENERGY, :AIRSLASH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Corviknight ---
    s[:CORVIKNIGHT] = [
      { tier: 3, ability: :PRESSURE, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:BRAVEBIRD, :BODYPRESS, :DEFOG, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :MIRRORARMOR, nature: :IMPISH, item: :ROCKYHELMET,
        moves: [:BRAVEBIRD, :BODYPRESS, :UTURN, :ROOST],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Orbeetle ---
    s[:ORBEETLE] = [
      { tier: 3, ability: :FRISK, nature: :BOLD, item: :LIGHTCLAY,
        moves: [:PSYCHIC, :BUGBUZZ, :REFLECT, :LIGHTSCREEN],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :FRISK, nature: :CALM, item: :LEFTOVERS,
        moves: [:PSYCHIC, :BUGBUZZ, :RECOVER, :CALMMIND],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Thievul ---
    s[:THIEVUL] = [
      { tier: 3, ability: :STAKEOUT, nature: :TIMID, item: :CHOICESPECS,
        moves: [:DARKPULSE, :PSYCHIC, :GRASSKNOT, :FOULPLAY],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :STAKEOUT, nature: :TIMID, item: :LIFEORB,
        moves: [:DARKPULSE, :PSYCHIC, :NASTYPLOT, :GRASSKNOT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Eldegoss ---
    s[:ELDEGOSS] = [
      { tier: 3, ability: :REGENERATOR, nature: :BOLD, item: :HEAVYDUTYBOOTS,
        moves: [:GIGADRAIN, :LEECHSEED, :RAPIDSPIN, :SYNTHESIS],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :CALM, item: :LEFTOVERS,
        moves: [:GIGADRAIN, :LEECHSEED, :COTTONGUARD, :SYNTHESIS],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Coalossal ---
    s[:COALOSSAL] = [
      { tier: 3, ability: :FLASHFIRE, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:FIREBLAST, :EARTHPOWER, :ANCIENTPOWER, :SCALD],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :STEAMENGINE, nature: :MODEST, item: :WEAKNESSPOLICY,
        moves: [:FIREBLAST, :EARTHPOWER, :SOLARBEAM, :METEORBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Sandaconda ---
    s[:SANDACONDA] = [
      { tier: 3, ability: :SHEDSKIN, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :STONEEDGE, :COIL, :REST],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :SANDSPIT, nature: :ADAMANT, item: :LIFEORB,
        moves: [:EARTHQUAKE, :STONEEDGE, :COIL, :GLARE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Centiskorch ---
    s[:CENTISKORCH] = [
      { tier: 3, ability: :FLASHFIRE, nature: :ADAMANT, item: :HEAVYDUTYBOOTS,
        moves: [:FIRELASH, :LEECHLIFE, :KNOCKOFF, :COIL],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :JOLLY, item: :LIFEORB,
        moves: [:FIRELASH, :LEECHLIFE, :KNOCKOFF, :POWERWHIP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Grimmsnarl ---
    s[:GRIMMSNARL] = [
      { tier: 3, ability: :PRANKSTER, nature: :CAREFUL, item: :LIGHTCLAY,
        moves: [:REFLECT, :LIGHTSCREEN, :SPIRITBREAK, :THUNDERWAVE],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :ADAMANT, item: :LIGHTCLAY,
        moves: [:REFLECT, :LIGHTSCREEN, :SPIRITBREAK, :TAUNT],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :CAREFUL, item: :LIGHTCLAY,
        moves: [:REFLECT, :LIGHTSCREEN, :FAKEOUT, :SPIRITBREAK],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 }, format: :doubles },
    ]

    # --- Obstagoon ---
    s[:OBSTAGOON] = [
      { tier: 3, ability: :GUTS, nature: :JOLLY, item: :FLAMEORB,
        moves: [:FACADE, :KNOCKOFF, :CLOSECOMBAT, :OBSTRUCT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :GUTS, nature: :ADAMANT, item: :FLAMEORB,
        moves: [:FACADE, :KNOCKOFF, :CLOSECOMBAT, :SWITCHEROO],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Perrserker ---
    s[:PERRSERKER] = [
      { tier: 3, ability: :STEELYFIST, nature: :ADAMANT, item: :LIFEORB,
        moves: [:IRONHEAD, :CLOSECOMBAT, :CRUNCH, :UTURN],
        evs: { ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :STEELYFIST, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:IRONHEAD, :CLOSECOMBAT, :CRUNCH, :SEEDBOMB],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Cursola ---
    s[:CURSOLA] = [
      { tier: 3, ability: :PERISH_BODY, nature: :MODEST, item: :EVIOLITE,
        moves: [:SHADOWBALL, :EARTHPOWER, :ICEBEAM, :STRENGTHSAP],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :PERISH_BODY, nature: :QUIET, item: :EVIOLITE,
        moves: [:SHADOWBALL, :EARTHPOWER, :STRENGTHSAP, :TRICKROOM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Sirfetchd ---
    s[:SIRFETCHD] = [
      { tier: 3, ability: :SCRAPPY, nature: :ADAMANT, item: :LEEK,
        moves: [:CLOSECOMBAT, :BRAVEBIRD, :KNOCKOFF, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:CLOSECOMBAT, :BRAVEBIRD, :KNOCKOFF, :FIRSTIMPRESSION],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Mr. Rime ---
    s[:MR_RIME] = [
      { tier: 3, ability: :SCREENCLEANER, nature: :TIMID, item: :LIFEORB,
        moves: [:FREEZEDRY, :PSYCHIC, :FOCUSBLAST, :RAPIDSPIN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SCREENCLEANER, nature: :MODEST, item: :CHOICESPECS,
        moves: [:FREEZEDRY, :PSYCHIC, :FOCUSBLAST, :TRICK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Runerigus ---
    s[:RUNERIGUS] = [
      { tier: 3, ability: :WANDERINGSPIRIT, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :SHADOWCLAW, :STEALTHROCK, :WILLOWISP],
        evs: { HP: 252, DEFENSE: 252, ATTACK: 4 } },
      { tier: 4, ability: :WANDERINGSPIRIT, nature: :RELAXED, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :BODYPRESS, :TRICKROOM, :WILLOWISP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Alcremie ---
    s[:ALCREMIE] = [
      { tier: 3, ability: :SWEETVEIL, nature: :BOLD, item: :LEFTOVERS,
        moves: [:DAZZLINGGLEAM, :PSYCHIC, :CALMMIND, :RECOVER],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SWEETVEIL, nature: :CALM, item: :LEFTOVERS,
        moves: [:DAZZLINGGLEAM, :MYSTICALFIRE, :CALMMIND, :RECOVER],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SWEETVEIL, nature: :BOLD, item: :SITRUSBERRY,
        moves: [:DAZZLINGGLEAM, :DECORATE, :HELPINGHAND, :PROTECT],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Falinks ---
    s[:FALINKS] = [
      { tier: 3, ability: :DEFIANT, nature: :JOLLY, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :THROATCHOP, :MEGAHORN, :NORETREAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :ADAMANT, item: :LIFEORB,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :MEGAHORN, :NORETREAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Pincurchin ---
    s[:PINCURCHIN] = [
      { tier: 3, ability: :ELECTRICSURGE, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :SURF, :SUCKERPUNCH, :RECOVER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :ELECTRICSURGE, nature: :MODEST, item: :TERRAINEXTENDER,
        moves: [:THUNDERBOLT, :SURF, :TOXICSPIKES, :RECOVER],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
    ]

    # --- Frosmoth ---
    s[:FROSMOTH] = [
      { tier: 3, ability: :ICESCALES, nature: :TIMID, item: :HEAVYDUTYBOOTS,
        moves: [:ICEBEAM, :BUGBUZZ, :QUIVERDANCE, :GIGADRAIN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ICESCALES, nature: :MODEST, item: :HEAVYDUTYBOOTS,
        moves: [:BLIZZARD, :BUGBUZZ, :QUIVERDANCE, :HURRICANE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Stonjourner ---
    s[:STONJOURNER] = [
      { tier: 3, ability: :POWERSPOT, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:STONEEDGE, :EARTHQUAKE, :BODYPRESS, :HEAVYSLAM],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :POWERSPOT, nature: :JOLLY, item: :LIFEORB,
        moves: [:STONEEDGE, :EARTHQUAKE, :ROCKPOLISH, :HEAVYSLAM],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Eiscue ---
    s[:EISCUE] = [
      { tier: 3, ability: :ICEFACE, nature: :JOLLY, item: :LIFEORB,
        moves: [:ICICLECRASH, :BELLYDRUM, :LIQUIDATION, :ZENHEADBUTT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ICEFACE, nature: :ADAMANT, item: :SITRUSBERRY,
        moves: [:ICICLECRASH, :BELLYDRUM, :LIQUIDATION, :HEADSMASH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Copperajah ---
    s[:COPPERAJAH] = [
      { tier: 3, ability: :SHEERFORCE, nature: :BRAVE, item: :LIFEORB,
        moves: [:IRONHEAD, :EARTHQUAKE, :STONEEDGE, :STEALTHROCK],
        evs: { HP: 252, ATTACK: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SHEERFORCE, nature: :BRAVE, item: :ASSAULTVEST,
        moves: [:IRONHEAD, :EARTHQUAKE, :ROCKSLIDE, :HEAVYSLAM],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Dracozolt ---
    s[:DRACOZOLT] = [
      { tier: 3, ability: :HUSTLE, nature: :JOLLY, item: :LIFEORB,
        moves: [:BOLTBEAK, :OUTRAGE, :EARTHQUAKE, :DRAGONCLAW],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :HUSTLE, nature: :ADAMANT, item: :CHOICESCARF,
        moves: [:BOLTBEAK, :OUTRAGE, :EARTHQUAKE, :FIREPUNCH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dracovish ---
    s[:DRACOVISH] = [
      { tier: 3, ability: :STRONGJAW, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:FISHIOUSREND, :OUTRAGE, :CRUNCH, :ICEFANG],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :STRONGJAW, nature: :ADAMANT, item: :CHOICESCARF,
        moves: [:FISHIOUSREND, :OUTRAGE, :CRUNCH, :ICEFANG],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dragapult ---
    s[:DRAGAPULT] = [
      { tier: 3, ability: :INFILTRATOR, nature: :TIMID, item: :CHOICESPECS,
        moves: [:SHADOWBALL, :DRACOMETEOR, :FIREBLAST, :THUNDERBOLT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :INFILTRATOR, nature: :JOLLY, item: :LIFEORB,
        moves: [:DRAGONDARTS, :PHANTOMFORCE, :UTURN, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :CLEARBODY, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SHADOWBALL, :DRACOMETEOR, :THUNDERBOLT, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Toxtricity ---
    s[:TOXTRICITY] = [
      { tier: 3, ability: :PUNKROCK, nature: :MODEST, item: :THROATSPRAY,
        moves: [:OVERDRIVE, :BOOMBURST, :SLUDGEWAVE, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PUNKROCK, nature: :TIMID, item: :CHOICESPECS,
        moves: [:OVERDRIVE, :BOOMBURST, :SLUDGEWAVE, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Hatterene ---
    s[:HATTERENE] = [
      { tier: 3, ability: :MAGICBOUNCE, nature: :QUIET, item: :LIFEORB,
        moves: [:PSYCHIC, :DAZZLINGGLEAM, :MYSTICALFIRE, :TRICKROOM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :MAGICBOUNCE, nature: :QUIET, item: :LIFEORB,
        moves: [:EXPANDINGFORCE, :DAZZLINGGLEAM, :MYSTICALFIRE, :TRICKROOM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :MAGICBOUNCE, nature: :QUIET, item: :FOCUSSASH,
        moves: [:DAZZLINGGLEAM, :PSYCHIC, :TRICKROOM, :HEALINGWISH],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Duraludon ---
    s[:DURALUDON] = [
      { tier: 3, ability: :STALWART, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:FLASHCANNON, :DRACOMETEOR, :THUNDERBOLT, :BODYPRESS],
        evs: { SPECIAL_ATTACK: 252, HP: 252, SPEED: 4 } },
      { tier: 4, ability: :STALWART, nature: :TIMID, item: :CHOICESPECS,
        moves: [:FLASHCANNON, :DRACOMETEOR, :THUNDERBOLT, :DARKPULSE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    #=========================================================================
    # GENERATION 9 — PALDEA
    #=========================================================================

    # --- Meowscarada ---
    s[:MEOWSCARADA] = [
      { tier: 3, ability: :OVERGROW, nature: :JOLLY, item: :LIFEORB,
        moves: [:FLOWERTRICK, :KNOCKOFF, :UTURN, :PLAYROUGH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTEAN, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:FLOWERTRICK, :KNOCKOFF, :UTURN, :TRICKFLOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Skeledirge ---
    s[:SKELEDIRGE] = [
      { tier: 3, ability: :UNAWARE, nature: :BOLD, item: :LEFTOVERS,
        moves: [:TORCHSONG, :SHADOWBALL, :SLACKOFF, :WILLOWISP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :UNAWARE, nature: :MODEST, item: :HEAVYDUTYBOOTS,
        moves: [:TORCHSONG, :SHADOWBALL, :SLACKOFF, :HEXE],
        evs: { HP: 252, SPECIAL_ATTACK: 252, DEFENSE: 4 } },
    ]

    # --- Quaquaval ---
    s[:QUAQUAVAL] = [
      { tier: 3, ability: :MOXIE, nature: :JOLLY, item: :LIFEORB,
        moves: [:AQUASTEP, :CLOSECOMBAT, :BRAVEBIRD, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MOXIE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:AQUASTEP, :CLOSECOMBAT, :ICESPINNER, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Arboliva ---
    s[:ARBOLIVA] = [
      { tier: 3, ability: :SEEDSOWER, nature: :CALM, item: :LEFTOVERS,
        moves: [:GIGADRAIN, :EARTHPOWER, :LEECHSEED, :STRENGTHSAP],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :SEEDSOWER, nature: :MODEST, item: :LIFEORB,
        moves: [:ENERGYBALL, :EARTHPOWER, :DAZZLINGGLEAM, :CALMMIND],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPEED: 4 } },
    ]

    # --- Garganacl ---
    s[:GARGANACL] = [
      { tier: 3, ability: :PURIFYINGSALT, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:SALTCURE, :BODYPRESS, :RECOVER, :STEALTHROCK],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :PURIFYINGSALT, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:SALTCURE, :BODYPRESS, :RECOVER, :IRONDEFENSE],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Armarouge ---
    s[:ARMAROUGE] = [
      { tier: 3, ability: :FLASHFIRE, nature: :MODEST, item: :LIFEORB,
        moves: [:ARMORCANON, :PSYCHIC, :ENERGYBALL, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :QUIET, item: :LIFEORB,
        moves: [:ARMORCANON, :EXPANDINGFORCE, :ENERGYBALL, :TRICKROOM],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :QUIET, item: :LIFEORB,
        moves: [:ARMORCANON, :PSYCHIC, :WIDEGUARD, :PROTECT],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Ceruledge ---
    s[:CERULEDGE] = [
      { tier: 3, ability: :FLASHFIRE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:BITTERBLADE, :SHADOWCLAW, :CLOSECOMBAT, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FLASHFIRE, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:BITTERBLADE, :SHADOWSNEAK, :CLOSECOMBAT, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Kilowattrel ---
    s[:KILOWATTREL] = [
      { tier: 3, ability: :VOLTABSORB, nature: :TIMID, item: :CHOICESPECS,
        moves: [:THUNDERBOLT, :HURRICANE, :UTURN, :VOLTSWITCH],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :VOLTABSORB, nature: :TIMID, item: :LIFEORB,
        moves: [:THUNDERBOLT, :HURRICANE, :UTURN, :ROOST],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Bellibolt ---
    s[:BELLIBOLT] = [
      { tier: 3, ability: :ELECTROMORPHOSIS, nature: :MODEST, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :MUDDYWATER, :VOLTSWITCH, :ACIDSPRAY],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :ELECTROMORPHOSIS, nature: :QUIET, item: :ASSAULTVEST,
        moves: [:THUNDERBOLT, :MUDDYWATER, :VOLTSWITCH, :WEATHERBALL],
        evs: { HP: 252, SPECIAL_ATTACK: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Maushold ---
    s[:MAUSHOLD] = [
      { tier: 3, ability: :TECHNICIAN, nature: :JOLLY, item: :WIDELENS,
        moves: [:POPULATIONBOMB, :TIDYUP, :ENCORE, :UTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TECHNICIAN, nature: :JOLLY, item: :WIDELENS,
        moves: [:POPULATIONBOMB, :TIDYUP, :LOWSWEEP, :PLAYROUGH],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FRIENDGUARD, nature: :JOLLY, item: :FOCUSSASH,
        moves: [:FOLLOWME, :HELPINGHAND, :POPULATIONBOMB, :PROTECT],
        evs: { HP: 252, SPEED: 252, ATTACK: 4 }, format: :doubles },
    ]

    # --- Grafaiai ---
    s[:GRAFAIAI] = [
      { tier: 3, ability: :PRANKSTER, nature: :JOLLY, item: :BLACKSLUDGE,
        moves: [:KNOCKOFF, :GUNKSHOT, :UTURN, :TOXIC],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PRANKSTER, nature: :JOLLY, item: :LIFEORB,
        moves: [:KNOCKOFF, :GUNKSHOT, :UTURN, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Brambleghast ---
    s[:BRAMBLEGHAST] = [
      { tier: 3, ability: :WINDRIDER, nature: :JOLLY, item: :LIFEORB,
        moves: [:POLTERGEIST, :POWERWHIP, :STRENGTHSAP, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :WINDRIDER, nature: :ADAMANT, item: :FOCUSSASH,
        moves: [:POLTERGEIST, :SEEDBOMB, :SWORDSDANCE, :SHADOWSNEAK],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Toedscruel ---
    s[:TOEDSCRUEL] = [
      { tier: 3, ability: :MYCELIUMNIGHT, nature: :TIMID, item: :FOCUSSASH,
        moves: [:SPORE, :GIGADRAIN, :EARTHPOWER, :STEALTHROCK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :MYCELIUMNIGHT, nature: :BOLD, item: :HEAVYDUTYBOOTS,
        moves: [:SPORE, :GIGADRAIN, :EARTHPOWER, :RAPIDSPIN],
        evs: { HP: 252, DEFENSE: 252, SPEED: 4 } },
    ]

    # --- Palafin ---
    s[:PALAFIN] = [
      { tier: 3, ability: :ZEROTOHERO, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:WAVECRASH, :JETPUNCH, :CLOSECOMBAT, :FLIPTURN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :ZEROTOHERO, nature: :JOLLY, item: :LIFEORB,
        moves: [:WAVECRASH, :JETPUNCH, :CLOSECOMBAT, :BULKUP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Revavroom ---
    s[:REVAVROOM] = [
      { tier: 3, ability: :FILTERGAS, nature: :JOLLY, item: :LIFEORB,
        moves: [:IRONHEAD, :GUNKSHOT, :SHIFTGEAR, :HIGHHORSEPOWER],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :FILTERGAS, nature: :ADAMANT, item: :LIFEORB,
        moves: [:IRONHEAD, :GUNKSHOT, :SHIFTGEAR, :OVERHEAT],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Cyclizar ---
    s[:CYCLIZAR] = [
      { tier: 3, ability: :REGENERATOR, nature: :JOLLY, item: :HEAVYDUTYBOOTS,
        moves: [:SHEDTAIL, :DRAGONCLAW, :KNOCKOFF, :RAPIDSPIN],
        evs: { HP: 252, SPEED: 252, DEFENSE: 4 } },
      { tier: 4, ability: :REGENERATOR, nature: :NAIVE, item: :HEAVYDUTYBOOTS,
        moves: [:SHEDTAIL, :DRACOMETEOR, :KNOCKOFF, :RAPIDSPIN],
        evs: { SPEED: 252, SPECIAL_ATTACK: 128, ATTACK: 128 } },
    ]

    # --- Orthworm ---
    s[:ORTHWORM] = [
      { tier: 3, ability: :EARTHEATER, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:IRONHEAD, :BODYPRESS, :STEALTHROCK, :SHOREUP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :EARTHEATER, nature: :IMPISH, item: :ROCKYHELMET,
        moves: [:IRONHEAD, :BODYPRESS, :IRONDEFENSE, :SHOREUP],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Glimmora ---
    s[:GLIMMORA] = [
      { tier: 3, ability: :TOXICDEBRIS, nature: :TIMID, item: :FOCUSSASH,
        moves: [:POWERGEM, :SLUDGEWAVE, :EARTHPOWER, :STEALTHROCK],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :TOXICDEBRIS, nature: :TIMID, item: :FOCUSSASH,
        moves: [:POWERGEM, :SLUDGEWAVE, :EARTHPOWER, :SPIKES],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Clodsire ---
    s[:CLODSIRE] = [
      { tier: 3, ability: :UNAWARE, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :GUNKSHOT, :RECOVER, :TOXIC],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
      { tier: 4, ability: :UNAWARE, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :GUNKSHOT, :RECOVER, :STEALTHROCK],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
    ]

    # --- Tinkaton ---
    s[:TINKATON] = [
      { tier: 3, ability: :MOLDBREAKER, nature: :JOLLY, item: :LEFTOVERS,
        moves: [:GIGATONHAMMER, :PLAYROUGH, :KNOCKOFF, :STEALTHROCK],
        evs: { HP: 252, SPEED: 252, ATTACK: 4 } },
      { tier: 4, ability: :MOLDBREAKER, nature: :JOLLY, item: :LEFTOVERS,
        moves: [:GIGATONHAMMER, :PLAYROUGH, :KNOCKOFF, :THUNDERWAVE],
        evs: { HP: 252, SPEED: 252, ATTACK: 4 } },
    ]

    # --- Annihilape ---
    s[:ANNIHILAPE] = [
      { tier: 3, ability: :DEFIANT, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:RAGEFIST, :CLOSECOMBAT, :UTURN, :KNOCKOFF],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :DEFIANT, nature: :ADAMANT, item: :LIFEORB,
        moves: [:RAGEFIST, :CLOSECOMBAT, :BULKUP, :DRAINPUNCH],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Kingambit ---
    s[:KINGAMBIT] = [
      { tier: 3, ability: :DEFIANT, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:KOWTOWCLEAVE, :IRONHEAD, :SUCKERPUNCH, :LOWKICK],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SUPREMEOVERLORD, nature: :ADAMANT, item: :BLACKGLASSES,
        moves: [:KOWTOWCLEAVE, :IRONHEAD, :SUCKERPUNCH, :SWORDSDANCE],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
    ]

    # --- Great Tusk ---
    s[:GREATTUSK] = [
      { tier: 3, ability: :PROTOSYNTHESIS, nature: :JOLLY, item: :BOOSTERENERGY,
        moves: [:HEADLONGRUSH, :CLOSECOMBAT, :ICESPINNER, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTOSYNTHESIS, nature: :JOLLY, item: :BOOSTERENERGY,
        moves: [:HEADLONGRUSH, :CLOSECOMBAT, :KNOCKOFF, :RAPIDSPIN],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Iron Valiant ---
    s[:IRONVALIANT] = [
      { tier: 3, ability: :QUARKDRIVE, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:MOONBLAST, :AURASPHERE, :THUNDERBOLT, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :NAIVE, item: :BOOSTERENERGY,
        moves: [:CLOSECOMBAT, :KNOCKOFF, :MOONBLAST, :SWORDSDANCE],
        evs: { ATTACK: 252, SPEED: 252, SPECIAL_ATTACK: 4 } },
    ]

    # --- Iron Hands ---
    s[:IRONHANDS] = [
      { tier: 3, ability: :QUARKDRIVE, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:CLOSECOMBAT, :WILDCHARGE, :ICEPUNCH, :FAKEOUT],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :ADAMANT, item: :BOOSTERENERGY,
        moves: [:CLOSECOMBAT, :WILDCHARGE, :ICEPUNCH, :BELLYDRUM],
        evs: { HP: 252, ATTACK: 252, SPEED: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:DRAINPUNCH, :WILDCHARGE, :FAKEOUT, :HEAVYSLAM],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 }, format: :doubles },
    ]

    # --- Iron Thorns ---
    s[:IRONTHORNS] = [
      { tier: 3, ability: :QUARKDRIVE, nature: :JOLLY, item: :BOOSTERENERGY,
        moves: [:STONEEDGE, :IRONHEAD, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :ADAMANT, item: :BOOSTERENERGY,
        moves: [:STONEEDGE, :IRONHEAD, :ICEPUNCH, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Iron Bundle ---
    s[:IRONBUNDLE] = [
      { tier: 3, ability: :QUARKDRIVE, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:FREEZEDRY, :HYDROPUMP, :FLIPTURN, :ICEBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :TIMID, item: :CHOICESPECS,
        moves: [:FREEZEDRY, :HYDROPUMP, :FLIPTURN, :ICEBEAM],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Iron Moth ---
    s[:IRONMOTH] = [
      { tier: 3, ability: :QUARKDRIVE, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:FIREBLAST, :ENERGYBALL, :PSYCHIC, :SLUDGEWAVE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :MODEST, item: :BOOSTERENERGY,
        moves: [:FIREBLAST, :ENERGYBALL, :PSYCHIC, :CALMMIND],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Baxcalibur ---
    s[:BAXCALIBUR] = [
      { tier: 3, ability: :THERMALEXCHANGE, nature: :ADAMANT, item: :LIFEORB,
        moves: [:GLAIVERUSH, :ICICLECRASH, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :THERMALEXCHANGE, nature: :JOLLY, item: :LOADEDDICE,
        moves: [:ICICLESPEAR, :EARTHQUAKE, :ICESHARD, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Flamigo ---
    s[:FLAMIGO] = [
      { tier: 3, ability: :SCRAPPY, nature: :JOLLY, item: :CHOICEBAND,
        moves: [:CLOSECOMBAT, :BRAVEBIRD, :UTURN, :THROATCHOP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :SCRAPPY, nature: :JOLLY, item: :CHOICESCARF,
        moves: [:CLOSECOMBAT, :BRAVEBIRD, :UTURN, :THROATCHOP],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Cetitan ---
    s[:CETITAN] = [
      { tier: 3, ability: :THICKFAT, nature: :ADAMANT, item: :ASSAULTVEST,
        moves: [:ICICLECRASH, :CLOSECOMBAT, :EARTHQUAKE, :ICESHARD],
        evs: { HP: 252, ATTACK: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :SLUSHRUSH, nature: :ADAMANT, item: :CHOICEBAND,
        moves: [:ICICLECRASH, :CLOSECOMBAT, :EARTHQUAKE, :ICESHARD],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Dondozo ---
    s[:DONDOZO] = [
      { tier: 3, ability: :UNAWARE, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:WATERFALL, :EARTHQUAKE, :CURSE, :REST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :UNAWARE, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:WATERFALL, :EARTHQUAKE, :CURSE, :REST],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Ting-Lu ---
    s[:TINGLU] = [
      { tier: 3, ability: :VESSELOFRUIN, nature: :IMPISH, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :STEALTHROCK, :WHIRLWIND, :REST],
        evs: { HP: 252, DEFENSE: 252, SPECIAL_DEFENSE: 4 } },
      { tier: 4, ability: :VESSELOFRUIN, nature: :CAREFUL, item: :LEFTOVERS,
        moves: [:EARTHQUAKE, :STEALTHROCK, :SPIKES, :RUINATION],
        evs: { HP: 252, SPECIAL_DEFENSE: 252, DEFENSE: 4 } },
    ]

    # --- Flutter Mane ---
    s[:FLUTTERMANE] = [
      { tier: 3, ability: :PROTOSYNTHESIS, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:MOONBLAST, :SHADOWBALL, :MYSTICALFIRE, :THUNDERBOLT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTOSYNTHESIS, nature: :MODEST, item: :CHOICESPECS,
        moves: [:MOONBLAST, :SHADOWBALL, :MYSTICALFIRE, :PSYCHIC],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTOSYNTHESIS, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:MOONBLAST, :SHADOWBALL, :DAZZLINGGLEAM, :PROTECT],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 }, format: :doubles },
    ]

    # --- Iron Jugulis ---
    s[:IRONJUGULIS] = [
      { tier: 3, ability: :QUARKDRIVE, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:DARKPULSE, :AIRSLASH, :FLAMETHROWER, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :QUARKDRIVE, nature: :MODEST, item: :CHOICESPECS,
        moves: [:DARKPULSE, :AIRSLASH, :FLAMETHROWER, :UTURN],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Roaring Moon ---
    s[:ROARINGMOON] = [
      { tier: 3, ability: :PROTOSYNTHESIS, nature: :JOLLY, item: :BOOSTERENERGY,
        moves: [:CRUNCH, :DRAGONCLAW, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTOSYNTHESIS, nature: :ADAMANT, item: :BOOSTERENERGY,
        moves: [:KNOCKOFF, :DRAGONCLAW, :EARTHQUAKE, :DRAGONDANCE],
        evs: { ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

    # --- Walking Wake ---
    s[:WALKINGWAKE] = [
      { tier: 3, ability: :PROTOSYNTHESIS, nature: :TIMID, item: :BOOSTERENERGY,
        moves: [:HYDROPUMP, :DRACOMETEOR, :FLAMETHROWER, :DRAGONPULSE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
      { tier: 4, ability: :PROTOSYNTHESIS, nature: :MODEST, item: :CHOICESPECS,
        moves: [:HYDROPUMP, :DRACOMETEOR, :FLAMETHROWER, :DRAGONPULSE],
        evs: { SPECIAL_ATTACK: 252, SPEED: 252, HP: 4 } },
    ]

  end
end
