#=============================================================================
# Graveler - ROCK Type
#=============================================================================

GameData::Species.define :"GRAVELER" do |pkmn|
  pkmn.name "Graveler"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 55, attack: 95, defense: 115,
                  sp_atk: 35, sp_def: 45, speed: 45
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 137
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 105.0
  pkmn.category "Rock"
  pkmn.pokedex_entry "They descend from mountains by tumbling down steep slopes. They are so brutal, they smash aside obstructing trees and huge boulders with thunderous tackles."
  pkmn.evs defense: 2
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
    m.at 18, :"ROLLOUT"
    m.at 22, :"ROCKBLAST"
    m.at 27, :"SMACKDOWN"
    m.at 31, :"SELFDESTRUCT"
    m.at 36, :"BULLDOZE"
    m.at 42, :"STEALTHROCK"
    m.at 47, :"EARTHQUAKE"
    m.at 53, :"EXPLOSION"
    m.at 58, :"DOUBLEEDGE"
    m.at 64, :"STONEEDGE"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"INCINERATE", :"IRONDEFENSE", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GRAVELER" do |m|
  m.back_sprite -4, 0
  m.front_sprite -1, 20
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"GRAVELER_1" do |pkmn|
  pkmn.species :"GRAVELER"
  pkmn.form 1
  pkmn.name "Graveler"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 55, attack: 95, defense: 115,
                  sp_atk: 35, sp_def: 45, speed: 45
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 137
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 105.0
  pkmn.category "Rock"
  pkmn.pokedex_entry "They descend from mountains by tumbling down steep slopes. They are so brutal, they smash aside obstructing trees and huge boulders with thunderous tackles."
  pkmn.evs defense: 2
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
    m.at 18, :"ROLLOUT"
    m.at 22, :"ROCKBLAST"
    m.at 27, :"SMACKDOWN"
    m.at 31, :"SELFDESTRUCT"
    m.at 36, :"BULLDOZE"
    m.at 42, :"STEALTHROCK"
    m.at 47, :"EARTHQUAKE"
    m.at 53, :"EXPLOSION"
    m.at 58, :"DOUBLEEDGE"
    m.at 64, :"STONEEDGE"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"INCINERATE", :"IRONDEFENSE", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GRAVELER_1" do |m|
  m.back_sprite -4, 0
  m.front_sprite -1, 20
  m.shadow_sprite 0, 0, 3
end