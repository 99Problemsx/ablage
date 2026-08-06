#=============================================================================
# Poliwrath - WATER Type
#=============================================================================

GameData::Species.define :"POLIWRATH" do |pkmn|
  pkmn.name "Poliwrath"
  pkmn.types :"WATER", :"FIGHTING"
  pkmn.base_stats hp: 90, attack: 85, defense: 95,
                  sp_atk: 70, sp_def: 70, speed: 90
  pkmn.abilities :"WATERABSORB", :"DAMP"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 225
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 54.0
  pkmn.category "Tadpole"
  pkmn.pokedex_entry "Its highly developed muscles never grow fatigued, however much it exercises. This Pokémon can swim back and forth across the Pacific Ocean without effort."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"BUBBLEBEAM"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"DOUBLESLAP"
    m.at 1, :"SUBMISSION"
    m.at 32, :"DYNAMICPUNCH"
    m.at 43, :"MINDREADER"
    m.at 53, :"CIRCLETHROW"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"VACUUMWAVE", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"POLIWRATH" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 15
  m.shadow_sprite 0, 0, 3
end