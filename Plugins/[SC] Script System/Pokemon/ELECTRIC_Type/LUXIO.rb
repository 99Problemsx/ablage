#=============================================================================
# Luxio - ELECTRIC Type
#=============================================================================

GameData::Species.define :"LUXIO" do |pkmn|
  pkmn.name "Luxio"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 85, defense: 49,
                  sp_atk: 60, sp_def: 60, speed: 49
  pkmn.abilities :"RIVALRY", :"INTIMIDATE"
  pkmn.hidden_abilities :"GUTS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 127
  pkmn.catch_rate 120
  pkmn.happiness 100
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 30.5
  pkmn.category "Spark"
  pkmn.pokedex_entry "Its claws loose electricity with enough amperage to cause fainting. They live in small groups."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 5, :"LEER"
    m.at 9, :"CHARGE"
    m.at 13, :"SPARK"
    m.at 18, :"BITE"
    m.at 23, :"ROAR"
    m.at 28, :"SWAGGER"
    m.at 33, :"THUNDERFANG"
    m.at 38, :"CRUNCH"
    m.at 43, :"SCARYFACE"
    m.at 48, :"DISCHARGE"
    m.at 53, :"WILDCHARGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"LUXIO" do |m|
  m.back_sprite 1, 0
  m.front_sprite 5, 17
  m.shadow_sprite 0, 0, 2
end