#===============================================================================
# [SC] Dex Mode - Shattered Crowns Limited Dex (curated species list)
#===============================================================================
# ~600 species across Gen 1-9, hand-picked to fit the Shattered Crowns
# palette: nordic mythology, dragons, ghosts, ancient/fossil, weather,
# steel knights, cosmic horror, and every line that any story character
# actually uses. Route-filler rodents/birds/normal-types are cut.
#
# Inclusion rules:
#   1. EVERY species used by a named story trainer (Generals, Marcus,
#      Aurora, Lyra, Kael, Ragnar, Viktor, gym leaders, Champion teams)
#   2. The three Guardian lines + their canonical antagonists
#   3. Both starter sets (Asgheim-region + classic 27 starter lines)
#   4. Astoria-region exclusives (already defined in the
#      Astoria Expansion arc — Relicanth, Aerodactyl, Cranidos, etc.)
#   5. Themed selections per gen biased toward dragon / ghost / ice /
#      steel / dark / ancient
#   6. Crowd favourites you'd be sad not to bring (Eevee, Lapras,
#      Lucario, Mimikyu, Garchomp, etc.)
#
# Lines are listed by their base form — each entry's evolutions are
# auto-added via expand_lines! at load time, so we keep the data file
# readable.
#
# To toggle whole gens off (e.g. classic-only run) edit ENABLED_GENS
# in 000_Config.rb — defaults to all-on.
#===============================================================================

module SCLimitedDex
  #-----------------------------------------------------------------------------
  # Story-mandatory species (always included regardless of gen toggles)
  #-----------------------------------------------------------------------------
  STORY_MANDATORY = [
    # Guardians + final boss + key legendaries
    :ZACIAN, :ZAMAZENTA, :XERNEAS, :YVELTAL, :ETERNATUS, :HOOPA,
    :ARCEUS, :GIRATINA, :DIALGA, :PALKIA,
    :MEWTWO, :MEW,
    :LATIAS, :LATIOS, :SUICUNE, :ENTEI, :RAIKOU,
    :COBALION, :VIRIZION, :TERRAKION, :KELDEO,
    :RESHIRAM, :ZEKROM, :KYUREM,
    :LUGIA, :HOOH, :CELEBI,
    :JIRACHI, :DEOXYS, :DARKRAI, :CRESSELIA,
    :REGIGIGAS, :REGIROCK, :REGICE, :REGISTEEL,
    # Marcus's team
    :CHARMANDER, :CHARMELEON, :CHARIZARD,
    :GIBLE, :GABITE, :GARCHOMP,
    :BAGON, :SHELGON, :SALAMENCE,
    :LARVITAR, :PUPITAR, :TYRANITAR,
    :BELDUM, :METANG, :METAGROSS,
    :DRATINI, :DRAGONAIR, :DRAGONITE,
    # Aurora's team
    :RALTS, :KIRLIA, :GARDEVOIR, :GALLADE,
    :ABRA, :KADABRA, :ALAKAZAM,
    :STARYU, :STARMIE,
    # Companion Pokemon (Willow, Shadow)
    :EEVEE, :SYLVEON, :ESPEON, :UMBREON, :VAPOREON, :FLAREON, :JOLTEON, :LEAFEON, :GLACEON,
    :ZORUA, :ZOROARK,
    # Generals' aces
    :SPIRITOMB, :SABLEYE, :DUSKULL, :DUSCLOPS, :DUSKNOIR,
    :MAWILE, :AEGISLASH, :HONEDGE, :DOUBLADE,
    :CHANDELURE, :LITWICK, :LAMPENT,
    :HYDREIGON, :ZWEILOUS, :DEINO,
    :GRIMMSNARL, :IMPIDIMP, :MORGREM,
    # Subject Zero referenced via MEWTWO
    # Festival mask gen-1 reference
    :PIKACHU, :RAICHU, :PICHU,
    # Astoria coast pool
    :CORSOLA, :STARYU, :KRABBY, :KINGLER, :WINGULL, :PELIPPER,
    :RELICANTH, :CHINCHOU, :LANTURN, :LAPRAS,
    # Astoria cliffs pool
    :SKARMORY, :RHYHORN, :RHYDON, :RHYPERIOR,
    :LARVITAR, :PUPITAR, :TYRANITAR,
    :GLIGAR, :GLISCOR, :NOSEPASS, :PROBOPASS,
    :ANORITH, :ARMALDO, :AERODACTYL,
    :CRANIDOS, :RAMPARDOS,
    # Astoria forgotten groves
    :SNORUNT, :GLALIE, :FROSLASS,
    :ROSELIA, :ROSERADE, :BUDEW,
    :ABSOL,
    :BAGON, :SHELGON, :SALAMENCE,
    :JANGMOO, :HAKAMOO, :KOMMOO,
    :DEINO, :ZWEILOUS, :HYDREIGON,
    # Spirit Realm ambush pool
    :GASTLY, :HAUNTER, :GENGAR,
    :MISDREAVUS, :MISMAGIUS,
    :SHUPPET, :BANETTE,
    :YAMASK, :COFAGRIGUS,
    # Liberation arc reunion Pokémon (named)
    :PIDGEOT, :PIDGEY, :PIDGEOTTO,        # Scout
    :GRANBULL, :SNUBBULL,                  # named
    :LINOONE, :ZIGZAGOON,                  # named
    :BISHARP, :KINGAMBIT, :PAWNIARD,       # liberation 3
    :FURFROU,                              # Pip's tribute
    # Hilde's orphanage Houndoom
    :HOUNDOUR, :HOUNDOOM,
  ].freeze

  #-----------------------------------------------------------------------------
  # All 9 generations of starters (every starter line, all stages)
  #-----------------------------------------------------------------------------
  STARTER_LINES = [
    # Gen 1
    :BULBASAUR, :IVYSAUR, :VENUSAUR,
    :CHARMANDER, :CHARMELEON, :CHARIZARD,
    :SQUIRTLE, :WARTORTLE, :BLASTOISE,
    # Gen 2
    :CHIKORITA, :BAYLEEF, :MEGANIUM,
    :CYNDAQUIL, :QUILAVA, :TYPHLOSION,
    :TOTODILE, :CROCONAW, :FERALIGATR,
    # Gen 3
    :TREECKO, :GROVYLE, :SCEPTILE,
    :TORCHIC, :COMBUSKEN, :BLAZIKEN,
    :MUDKIP, :MARSHTOMP, :SWAMPERT,
    # Gen 4
    :TURTWIG, :GROTLE, :TORTERRA,
    :CHIMCHAR, :MONFERNO, :INFERNAPE,
    :PIPLUP, :PRINPLUP, :EMPOLEON,
    # Gen 5
    :SNIVY, :SERVINE, :SERPERIOR,
    :TEPIG, :PIGNITE, :EMBOAR,
    :OSHAWOTT, :DEWOTT, :SAMUROTT,
    # Gen 6
    :CHESPIN, :QUILLADIN, :CHESNAUGHT,
    :FENNEKIN, :BRAIXEN, :DELPHOX,
    :FROAKIE, :FROGADIER, :GRENINJA,
    # Gen 7
    :ROWLET, :DARTRIX, :DECIDUEYE,
    :LITTEN, :TORRACAT, :INCINEROAR,
    :POPPLIO, :BRIONNE, :PRIMARINA,
    # Gen 8
    :GROOKEY, :THWACKEY, :RILLABOOM,
    :SCORBUNNY, :RABOOT, :CINDERACE,
    :SOBBLE, :DRIZZILE, :INTELEON,
    # Gen 9
    :SPRIGATITO, :FLORAGATO, :MEOWSCARADA,
    :FUECOCO, :CROCALOR, :SKELEDIRGE,
    :QUAXLY, :QUAXWELL, :QUAQUAVAL,
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 1 - thematic selection (dragons, ghosts, ice, steel, fossil,
  # warriors, weather) — filler routes mons cut.
  #-----------------------------------------------------------------------------
  GEN1 = [
    :VULPIX, :NINETALES,                       # nordic fox spirit
    :ZUBAT, :GOLBAT, :CROBAT,                  # cave staple
    :GROWLITHE, :ARCANINE,                     # heroic hound
    :MACHOP, :MACHOKE, :MACHAMP,               # warrior
    :GEODUDE, :GRAVELER, :GOLEM,               # rock golem
    :PONYTA, :RAPIDASH,                        # fire steed
    :SLOWPOKE, :SLOWBRO, :SLOWKING,            # mysterious oracle
    :MAGNEMITE, :MAGNETON, :MAGNEZONE,         # steel cluster
    :SHELLDER, :CLOYSTER,                      # ice
    :ONIX, :STEELIX,                           # rock+steel serpent
    :CUBONE, :MAROWAK,                         # bone warrior (Alolan ghost flavour)
    :KOFFING, :WEEZING,                        # poison
    :KANGASKHAN,                               # heavy bruiser
    :HORSEA, :SEADRA, :KINGDRA,                # sea dragon
    :SCYTHER, :SCIZOR,                         # steel mantis
    :ELECTABUZZ, :ELECTIVIRE,                  # electric warrior
    :MAGMAR, :MAGMORTAR,                       # fire warrior
    :PINSIR, :HERACROSS,                       # rival beetles
    :TAUROS,                                   # heavy bruiser
    :MAGIKARP, :GYARADOS,                      # rage-dragon
    :PORYGON, :PORYGON2, :PORYGONZ,            # synthetic
    :OMANYTE, :OMASTAR,                        # fossil
    :KABUTO, :KABUTOPS,                        # fossil
    :SNORLAX, :MUNCHLAX,                       # heavy
    :ARTICUNO, :ZAPDOS, :MOLTRES,              # legendary trio
    :DRATINI, :DRAGONAIR, :DRAGONITE,          # classic dragon
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 2 - nordic-heavy (owls, ravens, ice bears, steel knight, mareep)
  #-----------------------------------------------------------------------------
  GEN2 = [
    :HOOTHOOT, :NOCTOWL,                       # nordic owl
    :MAREEP, :FLAAFFY, :AMPHAROS,              # electric ram
    :MURKROW, :HONCHKROW,                      # raven (Huginn/Muninn)
    :SWINUB, :PILOSWINE, :MAMOSWINE,           # ice tusker
    :SKARMORY,                                 # steel knight bird
    :SNEASEL, :WEAVILE,                        # ice dark
    :TEDDIURSA, :URSARING,                     # great bear
    :HITMONLEE, :HITMONCHAN, :HITMONTOP,       # combat masters
    :MILTANK,                                  # heavy
    :PHANPY, :DONPHAN,                         # heavy
    :LUGIA, :HOOH, :CELEBI,                    # legendaries
    :SUICUNE, :ENTEI, :RAIKOU,                 # beast trio
    :PICHU, :PIKACHU, :RAICHU,                 # mascot (story tribute)
    :CLEFFA, :CLEFAIRY, :CLEFABLE,             # fairy / cosmic
    :IGGLYBUFF, :JIGGLYPUFF, :WIGGLYTUFF,      # fairy
    :TOGEPI, :TOGETIC, :TOGEKISS,              # fairy
    :MARILL, :AZUMARILL, :AZURILL,             # fairy
    :CHINCHOU, :LANTURN,                       # deep-sea (already mandatory but kept here too)
    :LARVITAR, :PUPITAR, :TYRANITAR,           # pseudo-legendary (mandatory)
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 3 - dragons, weather, fossils, ghosts, ancient artifacts
  #-----------------------------------------------------------------------------
  GEN3 = [
    :MIGHTYENA, :POOCHYENA,                    # dark hound
    :NINCADA, :NINJASK, :SHEDINJA,             # ghost husk
    :ARON, :LAIRON, :AGGRON,                   # steel knight
    :TRAPINCH, :VIBRAVA, :FLYGON,              # desert dragon
    :SWABLU, :ALTARIA,                         # cloud dragon
    :LUNATONE, :SOLROCK,                       # cosmic
    :LILEEP, :CRADILY,                         # fossil
    :ANORITH, :ARMALDO,                        # fossil (mandatory)
    :CASTFORM,                                 # weather
    :SHUPPET, :BANETTE,                        # ghost (mandatory)
    :DUSKULL, :DUSCLOPS, :DUSKNOIR,            # ghost (mandatory)
    :ABSOL,                                    # disaster
    :SNORUNT, :GLALIE, :FROSLASS,              # ice ghost (mandatory)
    :RELICANTH,                                # living fossil (mandatory)
    :BAGON, :SHELGON, :SALAMENCE,              # dragon (mandatory)
    :BELDUM, :METANG, :METAGROSS,              # steel (mandatory)
    :REGIROCK, :REGICE, :REGISTEEL,            # golem trio (mandatory)
    :LATIAS, :LATIOS,                          # eon (mandatory)
    :KYOGRE, :GROUDON, :RAYQUAZA,              # weather trio
    :JIRACHI, :DEOXYS,                         # cosmic (mandatory)
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 4 - dragons, fossils, steel knights, ghosts, cosmic legends
  #-----------------------------------------------------------------------------
  GEN4 = [
    :STARLY, :STARAVIA, :STARAPTOR,            # boss bird
    :SHINX, :LUXIO, :LUXRAY,                   # electric lion
    :CRANIDOS, :RAMPARDOS,                     # fossil (mandatory)
    :SHIELDON, :BASTIODON,                     # fossil knight
    :DRIFLOON, :DRIFBLIM,                      # ghost
    :BRONZOR, :BRONZONG,                       # ancient bell
    :SPIRITOMB,                                # ghost (mandatory)
    :GIBLE, :GABITE, :GARCHOMP,                # dragon (mandatory)
    :RIOLU, :LUCARIO,                          # aura warrior
    :HIPPOPOTAS, :HIPPOWDON,                   # sandstorm
    :SKORUPI, :DRAPION,                        # dark scorpion
    :SNOVER, :ABOMASNOW,                       # ice giant
    :ROTOM,                                    # ghost electric spirit
    :UXIE, :MESPRIT, :AZELF,                   # cosmic trio
    :DIALGA, :PALKIA, :HEATRAN,                # cosmic / underworld
    :REGIGIGAS, :GIRATINA, :CRESSELIA,         # legendaries
    :PHIONE, :MANAPHY, :DARKRAI,               # legendaries
    :SHAYMIN, :ARCEUS,                         # legendaries
    # Cross-gen evolutions (their base lines are kept in Gen1/Gen2)
    :TOGEKISS, :MAMOSWINE, :GALLADE,           # fairy / ice / steel knight
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 5 - dragons, ghosts, steel knights, cosmic horror, fossils
  #-----------------------------------------------------------------------------
  GEN5 = [
    :LILLIPUP, :HERDIER, :STOUTLAND,           # nordic war hound
    :DRILBUR, :EXCADRILL,                      # steel mole
    :SANDILE, :KROKOROK, :KROOKODILE,          # dark crocodile
    :DARUMAKA, :DARMANITAN,                    # fire (Galarian ice form fits)
    :DWEBBLE, :CRUSTLE,                        # rock dwelling
    :SIGILYPH,                                 # ancient artifact bird
    :YAMASK, :COFAGRIGUS,                      # ghost (mandatory)
    :TIRTOUGA, :CARRACOSTA,                    # fossil
    :ARCHEN, :ARCHEOPS,                        # fossil
    :ZORUA, :ZOROARK,                          # illusion (mandatory)
    :GOTHITA, :GOTHORITA, :GOTHITELLE,         # witch psychic
    :KARRABLAST, :ESCAVALIER,                  # steel knight bug
    :FRILLISH, :JELLICENT,                     # ghost jelly
    :JOLTIK, :GALVANTULA,                      # electric spider
    :FERROSEED, :FERROTHORN,                   # steel
    :KLINK, :KLANG, :KLINKLANG,                # steel cluster
    :LITWICK, :LAMPENT, :CHANDELURE,           # ghost (mandatory)
    :AXEW, :FRAXURE, :HAXORUS,                 # dragon
    :CUBCHOO, :BEARTIC,                        # ice bear
    :CRYOGONAL,                                # ice
    :MIENFOO, :MIENSHAO,                       # martial arts
    :DRUDDIGON,                                # dragon
    :GOLETT, :GOLURK,                          # ghost golem
    :PAWNIARD, :BISHARP, :KINGAMBIT,           # dark knight (mandatory)
    :RUFFLET, :BRAVIARY,                       # nordic eagle
    :VULLABY, :MANDIBUZZ,                      # dark vulture
    :DURANT,                                   # steel
    :DEINO, :ZWEILOUS, :HYDREIGON,             # dragon (mandatory)
    :LARVESTA, :VOLCARONA,                     # fire moth
    :COBALION, :TERRAKION, :VIRIZION, :KELDEO, # swords of justice (mandatory)
    :TORNADUS, :THUNDURUS, :LANDORUS,          # weather trio
    :RESHIRAM, :ZEKROM, :KYUREM,               # tao dragons (mandatory)
    :MELOETTA, :GENESECT,                      # legendaries
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 6 - knights, dragons, fossils, ghosts, ice, fairy garden
  #-----------------------------------------------------------------------------
  GEN6 = [
    :FLETCHLING, :FLETCHINDER, :TALONFLAME,    # phoenix bird
    :LITLEO, :PYROAR,                          # lion
    :FLABEBE, :FLOETTE, :FLORGES,              # fairy garden
    :FURFROU,                                  # tribute (Pip)
    :HONEDGE, :DOUBLADE, :AEGISLASH,           # sword knight (mandatory)
    :INKAY, :MALAMAR,                          # dark psychic
    :SKRELP, :DRAGALGE,                        # poison dragon
    :TYRUNT, :TYRANTRUM,                       # fossil dragon
    :AMAURA, :AURORUS,                         # fossil ice
    :CARBINK,                                  # rock fairy
    :GOOMY, :SLIGGOO, :GOODRA,                 # dragon
    :KLEFKI,                                   # steel fairy
    :PHANTUMP, :TREVENANT,                     # ghost tree
    :PUMPKABOO, :GOURGEIST,                    # halloween ghost
    :BERGMITE, :AVALUGG,                       # ice giant
    :NOIBAT, :NOIVERN,                         # dragon bat
    :XERNEAS, :YVELTAL, :ZYGARDE,              # legendaries (mandatory)
    :DIANCIE, :HOOPA, :VOLCANION,              # legendaries (mandatory)
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 7 - dragons, ghosts, island guardians, cosmic horror (Ultra Beasts)
  #-----------------------------------------------------------------------------
  GEN7 = [
    :GRUBBIN, :CHARJABUG, :VIKAVOLT,           # electric beetle
    :ROCKRUFF, :LYCANROC,                      # wolf (Nordic)
    :MAREANIE, :TOXAPEX,                       # eldritch sea horror
    :MUDBRAY, :MUDSDALE,                       # heavy war-horse
    :SALANDIT, :SALAZZLE,                      # fire lizard
    :SANDYGAST, :PALOSSAND,                    # ghost sand-castle
    :TYPENULL, :SILVALLY,                      # synthetic guardian
    :MINIOR,                                   # cosmic
    :TURTONATOR,                               # fire dragon turtle
    :MIMIKYU,                                  # ghost (mandatory)
    :DRAMPA,                                   # dragon
    :DHELMISE,                                 # ghost-steel anchor
    :JANGMOO, :HAKAMOO, :KOMMOO,               # dragon (mandatory)
    :TAPUKOKO, :TAPULELE, :TAPUBULU, :TAPUFINI,# island guardians
    :COSMOG, :COSMOEM, :SOLGALEO, :LUNALA,     # cosmic legendaries
    :NIHILEGO, :BUZZWOLE, :PHEROMOSA,          # ultra beasts
    :XURKITREE, :CELESTEELA, :KARTANA, :GUZZLORD,
    :POIPOLE, :NAGANADEL,                      # ultra beast dragon
    :STAKATAKA, :BLACEPHALON,                  # ultra beasts
    :NECROZMA, :MAGEARNA, :MARSHADOW,          # legendaries
    :ZERAORA, :MELTAN, :MELMETAL,              # legendaries / steel
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 8 - steel knights, dragons, fossils, fairy witches, Nordic standing
  # stones, cursed objects. This is the strongest thematic gen for SC.
  #-----------------------------------------------------------------------------
  GEN8 = [
    :ROOKIDEE, :CORVISQUIRE, :CORVIKNIGHT,     # steel knight crow
    :CHEWTLE, :DREDNAW,                        # turtle warrior
    :ROLYCOLY, :CARKOL, :COALOSSAL,            # rock/fire colossus
    :APPLIN, :FLAPPLE, :APPLETUN, :DIPPLIN,    # dragon
    :TOXEL, :TOXTRICITY,                       # electric/poison
    :SIZZLIPEDE, :CENTISKORCH,                 # fire centipede
    :SINISTEA, :POLTEAGEIST,                   # cursed teacup
    :HATENNA, :HATTREM, :HATTERENE,            # witch
    :IMPIDIMP, :MORGREM, :GRIMMSNARL,          # fairy ogre (mandatory)
    :OBSTAGOON,                                # dark gangster
    :PERRSERKER,                               # viking cat
    :CURSOLA,                                  # cursed coral
    :SIRFETCHD,                                # leek knight
    :RUNERIGUS,                                # cursed runestone (Norse!)
    :FALINKS,                                  # phalanx knights
    :SNOM, :FROSMOTH,                          # ice moth
    :STONJOURNER,                              # standing stone (Norse!)
    :DRACOZOLT, :ARCTOZOLT,                    # fossil
    :DRACOVISH, :ARCTOVISH,                    # fossil
    :DURALUDON, :ARCHALUDON,                   # steel dragon
    :DREEPY, :DRAKLOAK, :DRAGAPULT,            # ghost dragon
    :ZACIAN, :ZAMAZENTA, :ETERNATUS,           # guardians + boss (mandatory)
    :KUBFU, :URSHIFU,                          # martial dragon
    :ZARUDE,                                   # rogue dragon
    :REGIELEKI, :REGIDRAGO,                    # regi
    :GLASTRIER, :SPECTRIER, :CALYREX,          # ice/ghost king (Norse winter king!)
    :ENAMORUS,                                 # weather quartet
  ].freeze

  #-----------------------------------------------------------------------------
  # Gen 9 - Paradox Pokemon, knights, dragons, cursed objects, treasures
  #-----------------------------------------------------------------------------
  GEN9 = [
    :FIDOUGH, :DACHSBUN,                       # bread hound (cute Norse)
    :NACLI, :NACLSTACK, :GARGANACL,            # salt knight
    :CHARCADET, :ARMAROUGE, :CERULEDGE,        # knight (mandatory)
    :MASCHIFF, :MABOSSTIFF,                    # mastiff
    :BRAMBLIN, :BRAMBLEGHAST,                  # ghost tumbleweed
    :TINKATINK, :TINKATUFF, :TINKATON,         # steel-fairy hammer
    :VAROOM, :REVAVROOM,                       # steel vehicle
    :CYCLIZAR,                                 # dragon
    :ORTHWORM,                                 # steel worm
    :GLIMMET, :GLIMMORA,                       # poison crystal
    :GREAVARD, :HOUNDSTONE,                    # ghost dog
    :CETODDLE, :CETITAN,                       # ice whale (Norse leviathan)
    :ANNIHILAPE,                               # rage spirit
    :GREATTUSK, :SCREAMTAIL, :BRUTEBONNET,     # ancient paradoxes
    :FLUTTERMANE, :SLITHERWING, :SANDYSHOCKS,  # ancient paradoxes
    :IRONTREADS, :IRONBUNDLE, :IRONHANDS,      # future paradoxes
    :IRONJUGULIS, :IRONMOTH, :IRONTHORNS,      # future paradoxes
    :FRIGIBAX, :ARCTIBAX, :BAXCALIBUR,         # ice dragon (mandatory)
    :GIMMIGHOUL, :GHOLDENGO,                   # cursed coin
    :WOCHIEN, :CHIENPAO, :TINGLU, :CHIYU,      # treasures of ruin
    :ROARINGMOON, :IRONVALIANT,                # paradoxes
    :KORAIDON, :MIRAIDON,                      # legendaries (mandatory)
    :WALKINGWAKE, :IRONLEAVES,                 # paradoxes
    :POLTCHAGEIST, :SINISTCHA,                 # cursed teapot
    :OKIDOGI, :MUNKIDORI, :FEZANDIPITI,        # loyal three
    :OGERPON,                                  # mask wearer
    :HYDRAPPLE,                                # dragon
    :GOUGINGFIRE, :RAGINGBOLT,                 # paradoxes
    :IRONBOULDER, :IRONCROWN,                  # paradoxes
    :TERAPAGOS,                                # legendary (mandatory)
    :PECHARUNT,                                # mythical (mandatory)
  ].freeze

  #-----------------------------------------------------------------------------
  # Final assembled list — flatten, normalize, dedupe, drop unknowns
  #-----------------------------------------------------------------------------
  def self.species
    @species_cache ||= begin
      all = STORY_MANDATORY + STARTER_LINES +
            GEN1 + GEN2 + GEN3 + GEN4 + GEN5 + GEN6 + GEN7 + GEN8 + GEN9
      list = all.map { |s| s.is_a?(Symbol) ? s : s.to_s.upcase.to_sym }
      list.uniq!
      # Drop any species that aren't actually registered in the
      # SC Script System (handles typos and species not yet defined).
      list.select! { |s| GameData::Species.exists?(s) } if defined?(GameData::Species)
      list
    end
  end

  def self.count
    species.length
  end

  def self.include?(sym)
    species.include?(sym)
  end
end
