#=============================================================================
# Electrike - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ELECTRIKE" do |pkmn|
  pkmn.name "Electrike"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 40, attack: 45, defense: 40,
                  sp_atk: 65, sp_def: 65, speed: 40
  pkmn.abilities :"STATIC", :"LIGHTNINGROD"
  pkmn.hidden_abilities :"MINUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 59
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 15.2
  pkmn.category "Lightning"
  pkmn.pokedex_entry "It generates electricity using friction from the atmosphere. In seasons with especially arid air, its entire body blazes with violent showers of sparks."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"THUNDERWAVE"
    m.at 9, :"LEER"
    m.at 12, :"HOWL"
    m.at 17, :"QUICKATTACK"
    m.at 20, :"SPARK"
    m.at 25, :"ODORSLEUTH"
    m.at 28, :"BITE"
    m.at 33, :"THUNDERFANG"
    m.at 36, :"ROAR"
    m.at 41, :"DISCHARGE"
    m.at 44, :"CHARGE"
    m.at 49, :"WILDCHARGE"
    m.at 52, :"THUNDER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"CRUNCH", :"CURSE", :"DISCHARGE", :"ELECTROBALL", :"FIREFANG", :"FLAMEBURST", :"HEADBUTT", :"ICEFANG", :"SHOCKWAVE", :"SWIFT", :"SWITCHEROO", :"THUNDERFANG", :"UPROAR"
end

GameData::SpeciesMetrics.define :"ELECTRIKE" do |m|
  m.back_sprite -2, 0
  m.front_sprite -3, 26
  m.shadow_sprite 0, 0, 2
end