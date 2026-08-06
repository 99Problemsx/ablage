#=============================================================================
# Quilava - FIRE Type
#=============================================================================

GameData::Species.define :"QUILAVA" do |pkmn|
  pkmn.name "Quilava"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 58, attack: 64, defense: 58,
                  sp_atk: 80, sp_def: 80, speed: 65
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 19.0
  pkmn.category "Volcano"
  pkmn.pokedex_entry "It intimidates foes with intense gusts of flames and superheated air. Its quick nimbleness lets it dodge attacks even while scorching an enemy."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"SMOKESCREEN"
    m.at 6, :"SMOKESCREEN"
    m.at 10, :"EMBER"
    m.at 13, :"QUICKATTACK"
    m.at 20, :"FLAMEWHEEL"
    m.at 24, :"DEFENSECURL"
    m.at 31, :"SWIFT"
    m.at 35, :"FLAMECHARGE"
    m.at 42, :"LAVAPLUME"
    m.at 46, :"FLAMETHROWER"
    m.at 53, :"INFERNO"
    m.at 57, :"ROLLOUT"
    m.at 64, :"DOUBLEEDGE"
    m.at 68, :"ERUPTION"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FLAMECHARGE", :"FLAMETHROWER", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"QUILAVA" do |m|
  m.back_sprite -8, 0
  m.front_sprite 3, 19
  m.shadow_sprite 0, 0, 3
end