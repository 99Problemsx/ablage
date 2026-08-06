#=============================================================================
# Cufant - STEEL Type
#=============================================================================

GameData::Species.define :"CUFANT" do |pkmn|
  pkmn.name "Cufant"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 72, attack: 80, defense: 49,
                  sp_atk: 40, sp_def: 40, speed: 49
  pkmn.abilities :"SHEERFORCE"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.2
  pkmn.weight 100.0
  pkmn.category "Copperderm"
  pkmn.pokedex_entry "It digs up the ground with its trunk. It's also very strong, being able to carry loads of over five tons without any problem at all."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"ROLLOUT"
    m.at 10, :"ROCKSMASH"
    m.at 15, :"BULLDOZE"
    m.at 20, :"STOMP"
    m.at 25, :"IRONDEFENSE"
    m.at 30, :"DIG"
    m.at 35, :"STRENGTH"
    m.at 40, :"IRONHEAD"
    m.at 45, :"PLAYROUGH"
    m.at 50, :"HIGHHORSEPOWER"
    m.at 55, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PLAYROUGH", :"POWERWHIP", :"PROTECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STEELBEAM", :"STEELROLLER", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"BELCH", :"CURSE", :"DEFENSECURL", :"DOUBLEEDGE", :"FISSURE", :"SLAM", :"SWAGGER", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"CUFANT" do |m|
  m.back_sprite 13, 38
  m.front_sprite -10, 16
end