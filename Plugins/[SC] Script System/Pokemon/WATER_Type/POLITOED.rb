#=============================================================================
# Politoed - WATER Type
#=============================================================================

GameData::Species.define :"POLITOED" do |pkmn|
  pkmn.name "Politoed"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 90, attack: 75, defense: 75,
                  sp_atk: 70, sp_def: 90, speed: 100
  pkmn.abilities :"WATERABSORB", :"DAMP"
  pkmn.hidden_abilities :"DRIZZLE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 225
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 33.9
  pkmn.category "Frog"
  pkmn.pokedex_entry "The curled hair on its head proves its status as a king. It is said that the longer and curlier the hair, the more respect it earns from its peers."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"BUBBLEBEAM"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"DOUBLESLAP"
    m.at 1, :"PERISHSONG"
    m.at 27, :"SWAGGER"
    m.at 37, :"BOUNCE"
    m.at 48, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"POLITOED" do |m|
  m.back_sprite 4, 0
  m.front_sprite 3, 15
  m.shadow_sprite 0, 0, 2
end