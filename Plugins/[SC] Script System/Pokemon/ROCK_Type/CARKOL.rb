#=============================================================================
# Carkol - ROCK Type
#=============================================================================

GameData::Species.define :"CARKOL" do |pkmn|
  pkmn.name "Carkol"
  pkmn.types :"ROCK", :"FIRE"
  pkmn.base_stats hp: 80, attack: 60, defense: 90,
                  sp_atk: 50, sp_def: 60, speed: 70
  pkmn.abilities :"STEAMENGINE", :"FLAMEBODY"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 144
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.1
  pkmn.weight 78.0
  pkmn.category "Coal"
  pkmn.pokedex_entry "By rapidly rolling its legs, it can travel at over 18 mph. The temperature of the flames it breathes exceeds 1,000 degrees Celsius."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"FLAMECHARGE"
    m.at 1, :"TACKLE"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"SMACKDOWN"
    m.at 15, :"ROCKPOLISH"
    m.at 20, :"ANCIENTPOWER"
    m.at 27, :"INCINERATE"
    m.at 35, :"STEALTHROCK"
    m.at 41, :"HEATCRASH"
    m.at 48, :"ROCKBLAST"
    m.at 55, :"BURNUP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMETHROWER", :"FLAREBLITZ", :"FRUSTRATION", :"GYROBALL", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCALD", :"SCORCHINGSANDS", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SPIKES", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CARKOL" do |m|
  m.back_sprite 0, 23
  m.front_sprite -2, 6
end