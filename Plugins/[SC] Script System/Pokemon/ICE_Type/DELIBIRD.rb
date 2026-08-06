#=============================================================================
# Delibird - ICE Type
#=============================================================================

GameData::Species.define :"DELIBIRD" do |pkmn|
  pkmn.name "Delibird"
  pkmn.types :"ICE", :"FLYING"
  pkmn.base_stats hp: 45, attack: 55, defense: 45,
                  sp_atk: 75, sp_def: 65, speed: 45
  pkmn.abilities :"VITALSPIRIT", :"HUSTLE"
  pkmn.hidden_abilities :"INSOMNIA"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 116
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 16.0
  pkmn.category "Delivery"
  pkmn.pokedex_entry "It carries food bundled up in its tail. There was a famous explorer who managed to scale Mt. Everest thanks to a Delibird sharing its food."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"PRESENT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLING", :"FLY", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"GUNKSHOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SIGNALBEAM", :"SKYATTACK", :"SLEEPTALK", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"WATERPULSE"
  pkmn.egg_moves :"AURORABEAM", :"BESTOW", :"FAKEOUT", :"FUTURESIGHT", :"ICEBALL", :"ICEPUNCH", :"ICESHARD", :"ICYWIND", :"QUICKATTACK", :"RAPIDSPIN", :"SPLASH"
end

GameData::SpeciesMetrics.define :"DELIBIRD" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 17
  m.shadow_sprite 0, 0, 2
end