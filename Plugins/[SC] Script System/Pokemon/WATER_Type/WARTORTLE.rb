#=============================================================================
# Wartortle - WATER Type
#=============================================================================

GameData::Species.define :"WARTORTLE" do |pkmn|
  pkmn.name "Wartortle"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 59, attack: 63, defense: 80,
                  sp_atk: 58, sp_def: 65, speed: 80
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 22.5
  pkmn.category "Turtle"
  pkmn.pokedex_entry "Its large tail is covered with rich, thick fur that deepens in color with age. The scratches on its shell are evidence of this Pokémon's toughness in battle."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"BUBBLE"
    m.at 4, :"TAILWHIP"
    m.at 7, :"BUBBLE"
    m.at 10, :"WITHDRAW"
    m.at 13, :"WATERGUN"
    m.at 16, :"BITE"
    m.at 20, :"RAPIDSPIN"
    m.at 24, :"PROTECT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"AQUATAIL"
    m.at 36, :"SKULLBASH"
    m.at 40, :"IRONDEFENSE"
    m.at 44, :"RAINDANCE"
    m.at 48, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WARTORTLE" do |m|
  m.back_sprite -2, 0
  m.front_sprite -4, 16
  m.shadow_sprite 0, 0, 2
end