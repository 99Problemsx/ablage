#=============================================================================
# Electivire - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ELECTIVIRE" do |pkmn|
  pkmn.name "Electivire"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 75, attack: 123, defense: 67,
                  sp_atk: 95, sp_def: 95, speed: 85
  pkmn.abilities :"MOTORDRIVE"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 243
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.8
  pkmn.weight 138.6
  pkmn.category "Thunderbolt"
  pkmn.pokedex_entry "It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"LOWKICK"
    m.at 5, :"THUNDERSHOCK"
    m.at 8, :"LOWKICK"
    m.at 12, :"SWIFT"
    m.at 15, :"SHOCKWAVE"
    m.at 19, :"THUNDERWAVE"
    m.at 22, :"ELECTROBALL"
    m.at 26, :"LIGHTSCREEN"
    m.at 29, :"THUNDERPUNCH"
    m.at 36, :"DISCHARGE"
    m.at 42, :"SCREECH"
    m.at 49, :"THUNDERBOLT"
    m.at 55, :"THUNDER"
    m.at 62, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ELECTIVIRE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 11
  m.shadow_sprite 0, 0, 3
end