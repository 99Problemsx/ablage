#=============================================================================
# Trapinch - GROUND Type
#=============================================================================

GameData::Species.define :"TRAPINCH" do |pkmn|
  pkmn.name "Trapinch"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 45, attack: 100, defense: 45,
                  sp_atk: 10, sp_def: 45, speed: 45
  pkmn.abilities :"HYPERCUTTER", :"ARENATRAP"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 15.0
  pkmn.category "Ant Pit"
  pkmn.pokedex_entry "Its big jaws crunch through boulders. Because its head is so big, it has a hard time getting back upright if it tips over onto its back."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 4, :"SANDATTACK"
    m.at 7, :"FEINTATTACK"
    m.at 10, :"SANDTOMB"
    m.at 13, :"MUDSLAP"
    m.at 17, :"BIDE"
    m.at 21, :"BULLDOZE"
    m.at 25, :"ROCKSLIDE"
    m.at 29, :"DIG"
    m.at 34, :"CRUNCH"
    m.at 39, :"EARTHPOWER"
    m.at 44, :"SANDSTORM"
    m.at 49, :"HYPERBEAM"
    m.at 55, :"EARTHQUAKE"
    m.at 61, :"FEINT"
    m.at 67, :"SUPERPOWER"
    m.at 73, :"FISSURE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
  pkmn.egg_moves :"BUGBITE", :"EARTHPOWER", :"ENDURE", :"FLAIL", :"FOCUSENERGY", :"FURYCUTTER", :"GUST", :"MUDSHOT", :"QUICKATTACK", :"SIGNALBEAM"
end

GameData::SpeciesMetrics.define :"TRAPINCH" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 25
  m.shadow_sprite 0, 0, 2
end