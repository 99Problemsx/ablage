#=============================================================================
# Magmar - FIRE Type
#=============================================================================

GameData::Species.define :"MAGMAR" do |pkmn|
  pkmn.name "Magmar"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 95, defense: 57,
                  sp_atk: 93, sp_def: 100, speed: 85
  pkmn.abilities :"FLAMEBODY"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.3
  pkmn.weight 44.5
  pkmn.category "Spitfire"
  pkmn.pokedex_entry "In battle, it blows out intense flames from all over its body to intimidate its foe. These fiery bursts create heat waves that ignite grass and trees."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"SMOG"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
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
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"MAGMAR" do |m|
  m.back_sprite -1, 0
  m.front_sprite -7, 11
  m.shadow_sprite 0, 0, 3
end