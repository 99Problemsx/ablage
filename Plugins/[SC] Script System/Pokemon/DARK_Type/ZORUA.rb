#=============================================================================
# Zorua - DARK Type
#=============================================================================

GameData::Species.define :"ZORUA" do |pkmn|
  pkmn.name "Zorua"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 40, attack: 65, defense: 40,
                  sp_atk: 65, sp_def: 80, speed: 40
  pkmn.abilities :"ILLUSION"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.7
  pkmn.weight 12.5
  pkmn.category "Tricky Fox"
  pkmn.pokedex_entry "To protect themselves from danger, they hide their true identities by transforming into people and Pokémon."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 5, :"PURSUIT"
    m.at 9, :"FAKETEARS"
    m.at 13, :"FURYSWIPES"
    m.at 17, :"FEINTATTACK"
    m.at 21, :"SCARYFACE"
    m.at 25, :"TAUNT"
    m.at 29, :"FOULPLAY"
    m.at 33, :"TORMENT"
    m.at 37, :"AGILITY"
    m.at 41, :"EMBARGO"
    m.at 45, :"PUNISHMENT"
    m.at 49, :"NASTYPLOT"
    m.at 53, :"IMPRISON"
    m.at 57, :"NIGHTDAZE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BOUNCE", :"CALMMIND", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"INCINERATE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TRICK", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"CAPTIVATE", :"COUNTER", :"DARKPULSE", :"DETECT", :"EXTRASENSORY", :"MEMENTO", :"SNATCH", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"ZORUA" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 26
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Hisuian
GameData::Species.define :"ZORUA_1" do |pkmn|
  pkmn.species :"ZORUA"
  pkmn.form 1
  pkmn.name "Zorua"
  pkmn.form_name "Hisuian"
  pkmn.types :"NORMAL", :"GHOST"
  pkmn.base_stats hp: 35, attack: 60, defense: 40,
                  sp_atk: 70, sp_def: 85, speed: 40
  pkmn.abilities :"ILLUSION"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.7
  pkmn.weight 12.5
  pkmn.category "Spiteful Fox"
  pkmn.pokedex_entry "A once-departed soul, returned to life in Hisui. Derives power from resentment, which rises as energy atop its head and takes on the forms of foes. In this way, Zorua vents lingering malice."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"SCRATCH"
    m.at 4, :"TORMENT"
    m.at 8, :"HONECLAWS"
    m.at 12, :"SHADOWSNEAK"
    m.at 16, :"CURSE"
    m.at 20, :"TAUNT"
    m.at 24, :"KNOCKOFF"
    m.at 28, :"SPITE"
    m.at 32, :"AGILITY"
    m.at 36, :"SHADOWBALL"
    m.at 40, :"BITTERMALICE"
    m.at 44, :"NASTYPLOT"
    m.at 48, :"FOULPLAY"
  end
  pkmn.tutor_moves :"AGILITY", :"BURNINGJEALOUSY", :"CALMMIND", :"CONFUSERAY", :"CURSE", :"DARKPULSE", :"DIG", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"GIGAIMPACT", :"HEX", :"HYPERBEAM", :"ICYWIND", :"IMPRISON", :"KNOCKOFF", :"LASHOUT", :"NASTYPLOT", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROAR", :"SHADOWBALL", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNOWSCAPE", :"SPITE", :"SUBSTITUTE", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"TRICK", :"UTURN", :"WILLOWISP"
  pkmn.egg_moves :"COMEUPPANCE", :"DETECT", :"EXTRASENSORY", :"MEMENTO"
end

GameData::SpeciesMetrics.define :"ZORUA_1" do |m|
  m.back_sprite 4, 24
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 2
end