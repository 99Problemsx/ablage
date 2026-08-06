#=============================================================================
# Magmortar - FIRE Type
#=============================================================================

GameData::Species.define :"MAGMORTAR" do |pkmn|
  pkmn.name "Magmortar"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 75, attack: 95, defense: 67,
                  sp_atk: 83, sp_def: 125, speed: 95
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 243
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.6
  pkmn.weight 68.0
  pkmn.category "Blast"
  pkmn.pokedex_entry "It blasts fireballs of over 3,600 degrees F from the ends of its arms. It lives in volcanic craters."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"SMOG"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"SMOKESCREEN"
    m.at 5, :"EMBER"
    m.at 8, :"SMOKESCREEN"
    m.at 12, :"FEINTATTACK"
    m.at 15, :"FIRESPIN"
    m.at 19, :"CLEARSMOG"
    m.at 22, :"FLAMEBURST"
    m.at 26, :"CONFUSERAY"
    m.at 29, :"FIREPUNCH"
    m.at 36, :"LAVAPLUME"
    m.at 42, :"SUNNYDAY"
    m.at 49, :"FLAMETHROWER"
    m.at 55, :"FIREBLAST"
    m.at 62, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"MAGMORTAR" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 3
end