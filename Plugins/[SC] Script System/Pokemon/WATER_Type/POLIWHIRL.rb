#=============================================================================
# Poliwhirl - WATER Type
#=============================================================================

GameData::Species.define :"POLIWHIRL" do |pkmn|
  pkmn.name "Poliwhirl"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 65, attack: 65, defense: 65,
                  sp_atk: 90, sp_def: 50, speed: 50
  pkmn.abilities :"WATERABSORB", :"DAMP"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 135
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 20.0
  pkmn.category "Tadpole"
  pkmn.pokedex_entry "Its body surface is always wet and slick with an oily fluid. Because of this greasy covering, it can easily slip and slide out of the clutches of any enemy in battle."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"WATERSPORT"
    m.at 1, :"BUBBLE"
    m.at 1, :"HYPNOSIS"
    m.at 5, :"BUBBLE"
    m.at 8, :"HYPNOSIS"
    m.at 11, :"WATERGUN"
    m.at 15, :"DOUBLESLAP"
    m.at 18, :"RAINDANCE"
    m.at 21, :"BODYSLAM"
    m.at 27, :"BUBBLEBEAM"
    m.at 32, :"MUDSHOT"
    m.at 37, :"BELLYDRUM"
    m.at 43, :"WAKEUPSLAP"
    m.at 48, :"HYDROPUMP"
    m.at 53, :"MUDBOMB"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"POLIWHIRL" do |m|
  m.back_sprite 10, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 3
end