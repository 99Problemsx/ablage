#=============================================================================
# Flareon - FIRE Type
#=============================================================================

GameData::Species.define :"FLAREON" do |pkmn|
  pkmn.name "Flareon"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 130, defense: 60,
                  sp_atk: 65, sp_def: 95, speed: 110
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"GUTS"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 8995
  pkmn.height 0.9
  pkmn.weight 25.0
  pkmn.category "Flame"
  pkmn.pokedex_entry "Flareon's fluffy fur releases heat into the air so that its body does not get excessively hot. Its body temperature can rise to a maximum of 1,650 degrees F."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"EMBER"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"BITE"
    m.at 21, :"FIREFANG"
    m.at 25, :"FIRESPIN"
    m.at 29, :"SCARYFACE"
    m.at 33, :"SMOG"
    m.at 37, :"LAVAPLUME"
    m.at 41, :"LASTRESORT"
    m.at 45, :"FIREBLAST"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"FLAREON" do |m|
  m.back_sprite -7, 0
  m.front_sprite 4, 17
  m.shadow_sprite 0, 0, 2
end