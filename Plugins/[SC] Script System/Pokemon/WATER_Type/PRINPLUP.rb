#=============================================================================
# Prinplup - WATER Type
#=============================================================================

GameData::Species.define :"PRINPLUP" do |pkmn|
  pkmn.name "Prinplup"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 64, attack: 66, defense: 68,
                  sp_atk: 50, sp_def: 81, speed: 76
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 23.0
  pkmn.category "Penguin"
  pkmn.pokedex_entry "It lives alone, away from others. Apparently, every one of them believes it is the most important."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 4, :"GROWL"
    m.at 8, :"BUBBLE"
    m.at 11, :"WATERSPORT"
    m.at 15, :"PECK"
    m.at 16, :"METALCLAW"
    m.at 19, :"BUBBLEBEAM"
    m.at 24, :"BIDE"
    m.at 28, :"FURYATTACK"
    m.at 33, :"BRINE"
    m.at 37, :"WHIRLPOOL"
    m.at 42, :"MIST"
    m.at 46, :"DRILLPECK"
    m.at 51, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"COVET", :"CUT", :"DEFOG", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"PRINPLUP" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 13
  m.shadow_sprite 0, 0, 2
end