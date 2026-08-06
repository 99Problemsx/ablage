#=============================================================================
# Geodude - ROCK Type
#=============================================================================

GameData::Species.define :"GEODUDE" do |pkmn|
  pkmn.name "Geodude"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 40, attack: 80, defense: 100,
                  sp_atk: 20, sp_def: 30, speed: 30
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 20.0
  pkmn.category "Rock"
  pkmn.pokedex_entry "It climbs mountain paths using only the power of its arms. Because they look just like boulders lining paths, hikers may step on them without noticing."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"MUDSPORT"
    m.at 8, :"ROCKPOLISH"
    m.at 11, :"ROCKTHROW"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"ROLLOUT"
    m.at 22, :"ROCKBLAST"
    m.at 25, :"SMACKDOWN"
    m.at 29, :"SELFDESTRUCT"
    m.at 32, :"BULLDOZE"
    m.at 36, :"STEALTHROCK"
    m.at 39, :"EARTHQUAKE"
    m.at 43, :"EXPLOSION"
    m.at 46, :"DOUBLEEDGE"
    m.at 50, :"STONEEDGE"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"INCINERATE", :"IRONDEFENSE", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC"
  pkmn.egg_moves :"AUTOTOMIZE", :"BLOCK", :"CURSE", :"ENDURE", :"FLAIL", :"FOCUSPUNCH", :"HAMMERARM", :"MEGAPUNCH", :"ROCKCLIMB"
end

GameData::SpeciesMetrics.define :"GEODUDE" do |m|
  m.back_sprite -6, 0
  m.front_sprite -2, 7
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Unknown Form
GameData::Species.define :"GEODUDE_1" do |pkmn|
  pkmn.species :"GEODUDE"
  pkmn.form 1
  pkmn.name "Geodude"
  pkmn.types :"ROCK", :"GROUND"
  pkmn.base_stats hp: 40, attack: 80, defense: 100,
                  sp_atk: 20, sp_def: 30, speed: 30
  pkmn.abilities :"ROCKHEAD", :"STURDY"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 20.0
  pkmn.category "Rock"
  pkmn.pokedex_entry "It climbs mountain paths using only the power of its arms. Because they look just like boulders lining paths, hikers may step on them without noticing."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"MUDSPORT"
    m.at 8, :"ROCKPOLISH"
    m.at 11, :"ROCKTHROW"
    m.at 15, :"MAGNITUDE"
    m.at 18, :"ROLLOUT"
    m.at 22, :"ROCKBLAST"
    m.at 25, :"SMACKDOWN"
    m.at 29, :"SELFDESTRUCT"
    m.at 32, :"BULLDOZE"
    m.at 36, :"STEALTHROCK"
    m.at 39, :"EARTHQUAKE"
    m.at 43, :"EXPLOSION"
    m.at 46, :"DOUBLEEDGE"
    m.at 50, :"STONEEDGE"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"INCINERATE", :"IRONDEFENSE", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC"
  pkmn.egg_moves :"AUTOTOMIZE", :"BLOCK", :"CURSE", :"ENDURE", :"FLAIL", :"FOCUSPUNCH", :"HAMMERARM", :"MEGAPUNCH", :"ROCKCLIMB"
end

GameData::SpeciesMetrics.define :"GEODUDE_1" do |m|
  m.back_sprite -6, 0
  m.front_sprite -2, 7
  m.shadow_sprite 0, 0, 1
end