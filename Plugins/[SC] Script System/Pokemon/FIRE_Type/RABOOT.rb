#=============================================================================
# Raboot - FIRE Type
#=============================================================================

GameData::Species.define :"RABOOT" do |pkmn|
  pkmn.name "Raboot"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 86, defense: 60,
                  sp_atk: 94, sp_def: 55, speed: 60
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"LIBERO"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 9.0
  pkmn.category "Rabbit"
  pkmn.pokedex_entry "It kicks berries right off the branches of trees and then juggles them with its feet, practicing its footwork."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"EMBER"
    m.at 1, :"QUICKATTACK"
    m.at 12, :"DOUBLEKICK"
    m.at 19, :"FLAMECHARGE"
    m.at 24, :"AGILITY"
    m.at 30, :"HEADBUTT"
    m.at 36, :"COUNTER"
    m.at 42, :"BOUNCE"
    m.at 48, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BLAZEKICK", :"BOUNCE", :"BULKUP", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FOCUSENERGY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HIDDENPOWER", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"RABOOT" do |m|
  m.back_sprite 0, 13
  m.front_sprite 5, 3
end