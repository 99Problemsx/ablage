#=============================================================================
# Magcargo - FIRE Type
#=============================================================================

GameData::Species.define :"MAGCARGO" do |pkmn|
  pkmn.name "Magcargo"
  pkmn.types :"FIRE", :"ROCK"
  pkmn.base_stats hp: 50, attack: 50, defense: 120,
                  sp_atk: 30, sp_def: 80, speed: 80
  pkmn.abilities :"MAGMAARMOR", :"FLAMEBODY"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 144
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 55.0
  pkmn.category "Lava"
  pkmn.pokedex_entry "The shell on its back is made of hardened magma. Tens of thousands of years spent living in volcanic craters have turned Magcargo's bodies into magma."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"YAWN"
    m.at 1, :"SMOG"
    m.at 1, :"EMBER"
    m.at 1, :"ROCKTHROW"
    m.at 5, :"EMBER"
    m.at 10, :"ROCKTHROW"
    m.at 14, :"HARDEN"
    m.at 19, :"RECOVER"
    m.at 23, :"FLAMEBURST"
    m.at 28, :"ANCIENTPOWER"
    m.at 32, :"AMNESIA"
    m.at 37, :"LAVAPLUME"
    m.at 38, :"SHELLSMASH"
    m.at 44, :"ROCKSLIDE"
    m.at 52, :"BODYSLAM"
    m.at 59, :"FLAMETHROWER"
    m.at 67, :"EARTHPOWER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"MAGCARGO" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 16
  m.shadow_sprite 0, 0, 3
end