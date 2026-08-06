#=============================================================================
# Luxray - ELECTRIC Type
#=============================================================================

GameData::Species.define :"LUXRAY" do |pkmn|
  pkmn.name "Luxray"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 80, attack: 120, defense: 79,
                  sp_atk: 70, sp_def: 95, speed: 79
  pkmn.abilities :"RIVALRY", :"INTIMIDATE"
  pkmn.hidden_abilities :"GUTS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 235
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 42.0
  pkmn.category "Gleam Eyes"
  pkmn.pokedex_entry "It has eyes that can see through anything. It spots and captures prey hiding behind objects."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"CHARGE"
    m.at 5, :"LEER"
    m.at 9, :"CHARGE"
    m.at 13, :"SPARK"
    m.at 18, :"BITE"
    m.at 23, :"ROAR"
    m.at 28, :"SWAGGER"
    m.at 35, :"THUNDERFANG"
    m.at 42, :"CRUNCH"
    m.at 49, :"SCARYFACE"
    m.at 56, :"DISCHARGE"
    m.at 63, :"WILDCHARGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"LUXRAY" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 3
end