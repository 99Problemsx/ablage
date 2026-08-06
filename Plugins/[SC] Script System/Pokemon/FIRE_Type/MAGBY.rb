#=============================================================================
# Magby - FIRE Type
#=============================================================================

GameData::Species.define :"MAGBY" do |pkmn|
  pkmn.name "Magby"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 45, attack: 75, defense: 37,
                  sp_atk: 83, sp_def: 70, speed: 55
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 73
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.7
  pkmn.weight 21.4
  pkmn.category "Live Coal"
  pkmn.pokedex_entry "If a Magby is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SMOG"
    m.at 1, :"LEER"
    m.at 5, :"EMBER"
    m.at 8, :"SMOKESCREEN"
    m.at 12, :"FEINTATTACK"
    m.at 15, :"FIRESPIN"
    m.at 19, :"CLEARSMOG"
    m.at 22, :"FLAMEBURST"
    m.at 26, :"CONFUSERAY"
    m.at 29, :"FIREPUNCH"
    m.at 33, :"LAVAPLUME"
    m.at 36, :"SUNNYDAY"
    m.at 40, :"FLAMETHROWER"
    m.at 43, :"FIREBLAST"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WILLOWISP"
  pkmn.egg_moves :"BARRIER", :"BELLYDRUM", :"CROSSCHOP", :"DYNAMICPUNCH", :"FLAREBLITZ", :"FOCUSENERGY", :"IRONTAIL", :"KARATECHOP", :"MACHPUNCH", :"MEGAPUNCH", :"SCREECH", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"MAGBY" do |m|
  m.back_sprite -1, 0
  m.front_sprite 4, 21
  m.shadow_sprite 0, 0, 1
end