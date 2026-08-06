#=============================================================================
# Shinx - ELECTRIC Type
#=============================================================================

GameData::Species.define :"SHINX" do |pkmn|
  pkmn.name "Shinx"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 45, attack: 65, defense: 34,
                  sp_atk: 45, sp_def: 40, speed: 34
  pkmn.abilities :"RIVALRY", :"INTIMIDATE"
  pkmn.hidden_abilities :"GUTS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 53
  pkmn.catch_rate 235
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.5
  pkmn.category "Flash"
  pkmn.pokedex_entry "All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"LEER"
    m.at 9, :"CHARGE"
    m.at 13, :"SPARK"
    m.at 17, :"BITE"
    m.at 21, :"ROAR"
    m.at 25, :"SWAGGER"
    m.at 29, :"THUNDERFANG"
    m.at 33, :"CRUNCH"
    m.at 37, :"SCARYFACE"
    m.at 41, :"DISCHARGE"
    m.at 45, :"WILDCHARGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"DOUBLEKICK", :"FIREFANG", :"HELPINGHAND", :"HOWL", :"ICEFANG", :"NIGHTSLASH", :"QUICKATTACK", :"SHOCKWAVE", :"SIGNALBEAM", :"SWIFT", :"TAKEDOWN", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"SHINX" do |m|
  m.back_sprite -9, 0
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 2
end