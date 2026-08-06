#=============================================================================
# Copperajah - STEEL Type
#=============================================================================

GameData::Species.define :"COPPERAJAH" do |pkmn|
  pkmn.name "Copperajah"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 122, attack: 130, defense: 69,
                  sp_atk: 30, sp_def: 80, speed: 69
  pkmn.abilities :"SHEERFORCE"
  pkmn.hidden_abilities :"HEAVYMETAL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 175
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 3.0
  pkmn.weight 650.0
  pkmn.category "Copperderm"
  pkmn.pokedex_entry "These Pokémon live in herds. Their trunks have incredible grip strength, strong enough to crush giant rocks into powder."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"HEAVYSLAM"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"ROLLOUT"
    m.at 1, :"ROCKSMASH"
    m.at 15, :"BULLDOZE"
    m.at 20, :"STOMP"
    m.at 25, :"IRONDEFENSE"
    m.at 30, :"DIG"
    m.at 37, :"STRENGTH"
    m.at 44, :"IRONHEAD"
    m.at 51, :"PLAYROUGH"
    m.at 58, :"HIGHHORSEPOWER"
    m.at 65, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"HEATCRASH", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MEGAKICK", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PLAYROUGH", :"POWERWHIP", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"STEALTHROCK", :"STEELBEAM", :"STEELROLLER", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"COPPERAJAH" do |m|
  m.back_sprite 3, 54
  m.front_sprite -5, 20
end