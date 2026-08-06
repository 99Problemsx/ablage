#=============================================================================
# Electabuzz - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ELECTABUZZ" do |pkmn|
  pkmn.name "Electabuzz"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 65, attack: 83, defense: 57,
                  sp_atk: 105, sp_def: 95, speed: 85
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"VITALSPIRIT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.1
  pkmn.weight 30.0
  pkmn.category "Electric"
  pkmn.pokedex_entry "When a storm approaches, it competes with others to scale heights that are likely to be stricken by lightning. Some towns use Electabuzz as lightning rods."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 1, :"THUNDERSHOCK"
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
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"ELECTABUZZ" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 13
  m.shadow_sprite 0, 0, 3
end