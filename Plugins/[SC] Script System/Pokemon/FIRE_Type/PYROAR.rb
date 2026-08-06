#=============================================================================
# Pyroar - FIRE Type
#=============================================================================

GameData::Species.define :"PYROAR" do |pkmn|
  pkmn.name "Pyroar"
  pkmn.types :"FIRE", :"NORMAL"
  pkmn.base_stats hp: 86, attack: 68, defense: 72,
                  sp_atk: 106, sp_def: 109, speed: 66
  pkmn.abilities :"RIVALRY", :"UNNERVE"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleSevenEighths"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 177
  pkmn.catch_rate 65
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 81.5
  pkmn.category "Royal"
  pkmn.pokedex_entry "With fiery breath of more than 6,000 degrees Celsius, they viciously threaten any challenger. The females protect the pride's cubs."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HYPERBEAM"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"WORKUP"
    m.at 5, :"EMBER"
    m.at 8, :"WORKUP"
    m.at 11, :"HEADBUTT"
    m.at 15, :"NOBLEROAR"
    m.at 20, :"TAKEDOWN"
    m.at 23, :"FIREFANG"
    m.at 28, :"ENDEAVOR"
    m.at 33, :"ECHOEDVOICE"
    m.at 38, :"FLAMETHROWER"
    m.at 42, :"CRUNCH"
    m.at 48, :"HYPERVOICE"
    m.at 51, :"INCINERATE"
    m.at 57, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"WILDCHARGE", :"WILLOWISP", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"PYROAR" do |m|
  m.back_sprite -6, 34
  m.front_sprite 5, 7
end

# Form 1 - Mega PYROAR
GameData::Species.define :"PYROAR_1" do |pkmn|
  pkmn.species :"PYROAR"
  pkmn.form 1
  pkmn.name "Pyroar"
  pkmn.form_name "Mega PYROAR"
  pkmn.types :"FIRE", :"NORMAL"
  pkmn.base_stats hp: 86, attack: 88, defense: 92,
                  sp_atk: 129, sp_def: 86, speed: 126
  pkmn.abilities :"RIVALRY", :"UNNERVE"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleSevenEighths"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 177
  pkmn.catch_rate 65
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 93.3
  pkmn.category "Royal"
  pkmn.pokedex_entry "This Pokémon spews flames hotter than 18,000 degrees Fahrenheit. It swings around its grand, blazing mane as it protects its allies."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HYPERBEAM"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"WORKUP"
    m.at 5, :"EMBER"
    m.at 8, :"WORKUP"
    m.at 11, :"HEADBUTT"
    m.at 15, :"NOBLEROAR"
    m.at 20, :"TAKEDOWN"
    m.at 23, :"FIREFANG"
    m.at 28, :"ENDEAVOR"
    m.at 33, :"ECHOEDVOICE"
    m.at 38, :"FLAMETHROWER"
    m.at 42, :"CRUNCH"
    m.at 48, :"HYPERVOICE"
    m.at 51, :"INCINERATE"
    m.at 57, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"WILDCHARGE", :"WILLOWISP", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"PYROAR_1" do |m|
  m.back_sprite -6, 34
  m.front_sprite 5, 7
end