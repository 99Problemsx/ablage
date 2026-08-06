#=============================================================================
# Elekid - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ELEKID" do |pkmn|
  pkmn.name "Elekid"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 45, attack: 63, defense: 37,
                  sp_atk: 95, sp_def: 65, speed: 55
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 72
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.6
  pkmn.weight 23.5
  pkmn.category "Electric"
  pkmn.pokedex_entry "If it touches metal and discharges the electricity it has stored in its body, an Elekid begins swinging its arms in circles to recharge itself."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 5, :"THUNDERSHOCK"
    m.at 8, :"LOWKICK"
    m.at 12, :"SWIFT"
    m.at 15, :"SHOCKWAVE"
    m.at 19, :"THUNDERWAVE"
    m.at 22, :"ELECTROBALL"
    m.at 26, :"LIGHTSCREEN"
    m.at 29, :"THUNDERPUNCH"
    m.at 33, :"DISCHARGE"
    m.at 36, :"SCREECH"
    m.at 40, :"THUNDERBOLT"
    m.at 43, :"THUNDER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"LIGHTSCREEN", :"LOWKICK", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"BARRIER", :"CROSSCHOP", :"DYNAMICPUNCH", :"FEINT", :"FIREPUNCH", :"FOCUSPUNCH", :"HAMMERARM", :"ICEPUNCH", :"KARATECHOP", :"MEDITATE", :"ROLLINGKICK"
end

GameData::SpeciesMetrics.define :"ELEKID" do |m|
  m.back_sprite 9, 0
  m.front_sprite 2, 22
  m.shadow_sprite 0, 0, 2
end