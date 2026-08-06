#=============================================================================
# Poliwag - WATER Type
#=============================================================================

GameData::Species.define :"POLIWAG" do |pkmn|
  pkmn.name "Poliwag"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 40, attack: 50, defense: 40,
                  sp_atk: 90, sp_def: 40, speed: 40
  pkmn.abilities :"WATERABSORB", :"DAMP"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 12.4
  pkmn.category "Tadpole"
  pkmn.pokedex_entry "It is possible to see this Pokémon's spiral innards right through its thin skin. However, the skin is also very flexible. Even sharp fangs bounce right off it."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"WATERSPORT"
    m.at 5, :"BUBBLE"
    m.at 8, :"HYPNOSIS"
    m.at 11, :"WATERGUN"
    m.at 15, :"DOUBLESLAP"
    m.at 18, :"RAINDANCE"
    m.at 21, :"BODYSLAM"
    m.at 25, :"BUBBLEBEAM"
    m.at 28, :"MUDSHOT"
    m.at 31, :"BELLYDRUM"
    m.at 35, :"WAKEUPSLAP"
    m.at 38, :"HYDROPUMP"
    m.at 41, :"MUDBOMB"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"BUBBLEBEAM", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"HAZE", :"ICEBALL", :"MINDREADER", :"MIST", :"MUDSHOT", :"REFRESH", :"SPLASH", :"WATERPULSE", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"POLIWAG" do |m|
  m.back_sprite 0, 0
  m.front_sprite 9, 23
  m.shadow_sprite 0, 0, 1
end