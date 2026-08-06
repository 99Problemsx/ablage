#=============================================================================
# Tyrogue - FIGHTING Type
#=============================================================================

GameData::Species.define :"TYROGUE" do |pkmn|
  pkmn.name "Tyrogue"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 35, attack: 35, defense: 35,
                  sp_atk: 35, sp_def: 35, speed: 35
  pkmn.abilities :"GUTS", :"STEADFAST"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 42
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.7
  pkmn.weight 21.0
  pkmn.category "Scuffle"
  pkmn.pokedex_entry "Tyrogue become stressed out if they do not get to train every day. When raising this Pokémon, the trainer must establish a regular training schedule."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"FAKEOUT"
    m.at 1, :"FORESIGHT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"TOXIC", :"UPROAR", :"VACUUMWAVE", :"WORKUP"
  pkmn.egg_moves :"BULLETPUNCH", :"COUNTER", :"ENDURE", :"FEINT", :"HELPINGHAND", :"HIGHJUMPKICK", :"MACHPUNCH", :"MINDREADER", :"PURSUIT", :"RAPIDSPIN", :"VACUUMWAVE"
end

GameData::SpeciesMetrics.define :"TYROGUE" do |m|
  m.back_sprite 4, 0
  m.front_sprite -1, 19
  m.shadow_sprite 0, 0, 1
end