#=============================================================================
# Charmeleon - FIRE Type
#=============================================================================

GameData::Species.define :"CHARMELEON" do |pkmn|
  pkmn.name "Charmeleon"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 58, attack: 64, defense: 58,
                  sp_atk: 80, sp_def: 80, speed: 65
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"SOLARPOWER"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 19.0
  pkmn.category "Flame"
  pkmn.pokedex_entry "Without pity, its sharp claws destroy foes. If it encounters a strong enemy, it becomes agitated, and the flame on its tail flares with a bluish white color."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"EMBER"
    m.at 7, :"EMBER"
    m.at 10, :"SMOKESCREEN"
    m.at 17, :"DRAGONRAGE"
    m.at 21, :"SCARYFACE"
    m.at 28, :"FIREFANG"
    m.at 32, :"FLAMEBURST"
    m.at 39, :"SLASH"
    m.at 43, :"FLAMETHROWER"
    m.at 50, :"FIRESPIN"
    m.at 54, :"INFERNO"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"CHARMELEON" do |m|
  m.back_sprite -3, 0
  m.front_sprite -2, 18
  m.shadow_sprite 0, 0, 2
end