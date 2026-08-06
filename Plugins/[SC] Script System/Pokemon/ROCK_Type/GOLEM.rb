#=============================================================================
# Golem - ROCK Type
#=============================================================================

GameData::Species.define :"GOLEM" do |pkmn|
  pkmn.name "Golem"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 80, attack: 110, defense: 130,
                  sp_atk: 45, sp_def: 55, speed: 65
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 218
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.4
  pkmn.weight 300.0
  pkmn.category "Megaton"
  pkmn.pokedex_entry "It is said to live in volcanic craters on mountain peaks. Once a year, it sheds its hide and grows larger. The shed hide crumbles and returns to the soil."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"MUDSPORT"
    m.at 1, :"ROCKPOLISH"
    m.at 4, :"MUDSPORT"
    m.at 8, :"ROCKPOLISH"
    m.at 11, :"ROCKTHROW"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"STEAMROLLER"
    m.at 22, :"ROCKBLAST"
    m.at 27, :"SMACKDOWN"
    m.at 31, :"SELFDESTRUCT"
    m.at 36, :"BULLDOZE"
    m.at 42, :"STEALTHROCK"
    m.at 47, :"EARTHQUAKE"
    m.at 53, :"EXPLOSION"
    m.at 58, :"DOUBLEEDGE"
    m.at 64, :"STONEEDGE"
    m.at 69, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GOLEM" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 16
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"GOLEM_1" do |pkmn|
  pkmn.species :"GOLEM"
  pkmn.form 1
  pkmn.name "Golem"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 80, attack: 110, defense: 130,
                  sp_atk: 45, sp_def: 55, speed: 65
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 218
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.4
  pkmn.weight 300.0
  pkmn.category "Megaton"
  pkmn.pokedex_entry "It is said to live in volcanic craters on mountain peaks. Once a year, it sheds its hide and grows larger. The shed hide crumbles and returns to the soil."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"MUDSPORT"
    m.at 1, :"ROCKPOLISH"
    m.at 4, :"MUDSPORT"
    m.at 8, :"ROCKPOLISH"
    m.at 11, :"ROCKTHROW"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"STEAMROLLER"
    m.at 22, :"ROCKBLAST"
    m.at 27, :"SMACKDOWN"
    m.at 31, :"SELFDESTRUCT"
    m.at 36, :"BULLDOZE"
    m.at 42, :"STEALTHROCK"
    m.at 47, :"EARTHQUAKE"
    m.at 53, :"EXPLOSION"
    m.at 58, :"DOUBLEEDGE"
    m.at 64, :"STONEEDGE"
    m.at 69, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GOLEM_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 16
  m.shadow_sprite 0, 0, 3
end