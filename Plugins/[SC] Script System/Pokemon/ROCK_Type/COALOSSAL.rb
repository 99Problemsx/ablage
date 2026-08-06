#=============================================================================
# Coalossal - ROCK Type
#=============================================================================

GameData::Species.define :"COALOSSAL" do |pkmn|
  pkmn.name "Coalossal"
  pkmn.types :"ROCK", :"FIRE"
  pkmn.base_stats hp: 110, attack: 80, defense: 120,
                  sp_atk: 30, sp_def: 80, speed: 90
  pkmn.abilities :"STEAMENGINE", :"FLAMEBODY"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 255
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 2.8
  pkmn.weight 310.5
  pkmn.category "Coal"
  pkmn.pokedex_entry "While it's engaged in battle, its mountain of coal will burn bright red, sending off sparks that scorch the surrounding area."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"TARSHOT"
    m.at 1, :"FLAMECHARGE"
    m.at 1, :"TACKLE"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"SMACKDOWN"
    m.at 15, :"ROCKPOLISH"
    m.at 20, :"ANCIENTPOWER"
    m.at 27, :"INCINERATE"
    m.at 37, :"STEALTHROCK"
    m.at 45, :"HEATCRASH"
    m.at 54, :"ROCKBLAST"
    m.at 63, :"BURNUP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FIRESPIN", :"FLAMETHROWER", :"FLAREBLITZ", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MEGAPUNCH", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCALD", :"SCORCHINGSANDS", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPIKES", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"COALOSSAL" do |m|
  m.back_sprite -4, 40
  m.front_sprite 5, 7
end