#=============================================================================
# Grimmsnarl - DARK Type
#=============================================================================

GameData::Species.define :"GRIMMSNARL" do |pkmn|
  pkmn.name "Grimmsnarl"
  pkmn.types :"DARK", :"FAIRY"
  pkmn.base_stats hp: 95, attack: 120, defense: 65,
                  sp_atk: 60, sp_def: 95, speed: 75
  pkmn.abilities :"PRANKSTER", :"FRISK"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 255
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 61.0
  pkmn.category "Bulk Up"
  pkmn.pokedex_entry "Its hairs work like muscle fibers. When its hairs unfurl, they latch on to opponents, ensnaring them as tentacles would."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Fairy", :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"SPIRITBREAK"
    m.at 1, :"FALSESURRENDER"
    m.at 1, :"BULKUP"
    m.at 1, :"POWERUPPUNCH"
    m.at 1, :"FAKEOUT"
    m.at 1, :"CONFIDE"
    m.at 1, :"BITE"
    m.at 1, :"FLATTER"
    m.at 12, :"FAKETEARS"
    m.at 16, :"ASSURANCE"
    m.at 20, :"SWAGGER"
    m.at 24, :"SUCKERPUNCH"
    m.at 28, :"TORMENT"
    m.at 35, :"DARKPULSE"
    m.at 40, :"NASTYPLOT"
    m.at 48, :"PLAYROUGH"
    m.at 56, :"FOULPLAY"
    m.at 64, :"HAMMERARM"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DARKESTLARIAT", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREPUNCH", :"FOCUSBLAST", :"FOCUSENERGY", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"LASHOUT", :"LEECHLIFE", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PLAYROUGH", :"POWERSWAP", :"POWERWHIP", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GRIMMSNARL" do |m|
  m.back_sprite 7, 47
  m.front_sprite -1, 12
end