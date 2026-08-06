#=============================================================================
# Squirtle - WATER Type
#=============================================================================

GameData::Species.define :"SQUIRTLE" do |pkmn|
  pkmn.name "Squirtle"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 44, attack: 48, defense: 65,
                  sp_atk: 43, sp_def: 50, speed: 64
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 63
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.0
  pkmn.category "Tiny Turtle"
  pkmn.pokedex_entry "Its shell is not just for protection. Its rounded shape and the grooves on its surface minimize resistance in water, enabling Squirtle to swim at high speeds."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"TAILWHIP"
    m.at 7, :"BUBBLE"
    m.at 10, :"WITHDRAW"
    m.at 13, :"WATERGUN"
    m.at 16, :"BITE"
    m.at 19, :"RAPIDSPIN"
    m.at 22, :"PROTECT"
    m.at 25, :"WATERPULSE"
    m.at 28, :"AQUATAIL"
    m.at 31, :"SKULLBASH"
    m.at 34, :"IRONDEFENSE"
    m.at 37, :"RAINDANCE"
    m.at 40, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"AQUAJET", :"AQUARING", :"BRINE", :"FAKEOUT", :"FLAIL", :"FORESIGHT", :"HAZE", :"MIRRORCOAT", :"MIST", :"MUDDYWATER", :"MUDSPORT", :"REFRESH", :"WATERSPOUT", :"YAWN"
end

GameData::SpeciesMetrics.define :"SQUIRTLE" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 20
  m.shadow_sprite 0, 0, 1
end