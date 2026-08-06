#=============================================================================
# Sceptile - GRASS Type
#=============================================================================

GameData::Species.define :"SCEPTILE" do |pkmn|
  pkmn.name "Sceptile"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 70, attack: 85, defense: 65,
                  sp_atk: 120, sp_def: 105, speed: 85
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 52.2
  pkmn.category "Forest"
  pkmn.pokedex_entry "In the jungle, its power is without equal. This Pokémon carefully grows trees and plants. It regulates its body temperature by basking in sunlight."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"POUND"
    m.at 1, :"LEER"
    m.at 1, :"ABSORB"
    m.at 1, :"QUICKATTACK"
    m.at 6, :"ABSORB"
    m.at 11, :"QUICKATTACK"
    m.at 16, :"XSCISSOR"
    m.at 17, :"PURSUIT"
    m.at 23, :"SCREECH"
    m.at 29, :"LEAFBLADE"
    m.at 35, :"AGILITY"
    m.at 43, :"SLAM"
    m.at 51, :"DETECT"
    m.at 59, :"FALSESWIPE"
    m.at 67, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAINPUNCH", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRENZYPLANT", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERPUNCH", :"TOXIC", :"WORRYSEED", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SCEPTILE" do |m|
  m.back_sprite 4, 0
  m.front_sprite 1, 9
  m.shadow_sprite 0, 0, 3
end