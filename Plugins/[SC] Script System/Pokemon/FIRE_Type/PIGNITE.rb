#=============================================================================
# Pignite - FIRE Type
#=============================================================================

GameData::Species.define :"PIGNITE" do |pkmn|
  pkmn.name "Pignite"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 90, attack: 93, defense: 55,
                  sp_atk: 55, sp_def: 70, speed: 55
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 146
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 55.5
  pkmn.category "Fire Pig"
  pkmn.pokedex_entry "Whatever it eats becomes fuel for the flame in its stomach. When it is angered, the intensity of the flame increases."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
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
    m.at 36, :"ASSURANCE"
    m.at 39, :"FLAMETHROWER"
    m.at 44, :"HEADSMASH"
    m.at 47, :"ROAR"
    m.at 52, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WILDCHARGE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PIGNITE" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 2
end