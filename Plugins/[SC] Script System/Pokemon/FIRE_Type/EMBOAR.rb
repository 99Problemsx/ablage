#=============================================================================
# Emboar - FIRE Type
#=============================================================================

GameData::Species.define :"EMBOAR" do |pkmn|
  pkmn.name "Emboar"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 110, attack: 123, defense: 65,
                  sp_atk: 65, sp_def: 100, speed: 65
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 238
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 150.0
  pkmn.category "Mega Fire Pig"
  pkmn.pokedex_entry "It can throw a fire punch by setting its fists on fire with its fiery chin. It cares deeply about its friends."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HAMMERARM"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 1, :"ODORSLEUTH"
    m.at 3, :"TAILWHIP"
    m.at 7, :"EMBER"
    m.at 9, :"ODORSLEUTH"
    m.at 13, :"DEFENSECURL"
    m.at 15, :"FLAMECHARGE"
    m.at 17, :"ARMTHRUST"
    m.at 20, :"SMOG"
    m.at 23, :"ROLLOUT"
    m.at 28, :"TAKEDOWN"
    m.at 31, :"HEATCRASH"
    m.at 38, :"ASSURANCE"
    m.at 43, :"FLAMETHROWER"
    m.at 50, :"HEADSMASH"
    m.at 55, :"ROAR"
    m.at 62, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLASTBURN", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WILDCHARGE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"EMBOAR" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 14
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Emboar
GameData::Species.define :"EMBOAR_1" do |pkmn|
  pkmn.species :"EMBOAR"
  pkmn.form 1
  pkmn.name "Emboar"
  pkmn.form_name "Mega Emboar"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 110, attack: 148, defense: 75,
                  sp_atk: 110, sp_def: 110, speed: 75
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 238
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 180.3
  pkmn.category "Mega Fire Pig"
  pkmn.pokedex_entry "Brandishing a blazing flame shaped like a serpentine spear, it rushes in to rescue its imperiled allies."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HAMMERARM"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 1, :"ODORSLEUTH"
    m.at 3, :"TAILWHIP"
    m.at 7, :"EMBER"
    m.at 9, :"ODORSLEUTH"
    m.at 13, :"DEFENSECURL"
    m.at 15, :"FLAMECHARGE"
    m.at 17, :"ARMTHRUST"
    m.at 20, :"SMOG"
    m.at 23, :"ROLLOUT"
    m.at 28, :"TAKEDOWN"
    m.at 31, :"HEATCRASH"
    m.at 38, :"ASSURANCE"
    m.at 43, :"FLAMETHROWER"
    m.at 50, :"HEADSMASH"
    m.at 55, :"ROAR"
    m.at 62, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLASTBURN", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WILDCHARGE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"EMBOAR_1" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 14
  m.shadow_sprite 0, 0, 3
end