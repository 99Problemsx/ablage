#=============================================================================
# Cinderace - FIRE Type
#=============================================================================

GameData::Species.define :"CINDERACE" do |pkmn|
  pkmn.name "Cinderace"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 80, attack: 116, defense: 75,
                  sp_atk: 119, sp_def: 65, speed: 75
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"LIBERO"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.4
  pkmn.weight 33.0
  pkmn.category "Striker"
  pkmn.pokedex_entry "It juggles a pebble with its feet, turning it into a burning soccer ball. Its shots strike opponents hard and leave them scorched."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"PYROBALL"
    m.at 1, :"FEINT"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"EMBER"
    m.at 1, :"QUICKATTACK"
    m.at 12, :"DOUBLEKICK"
    m.at 19, :"FLAMECHARGE"
    m.at 24, :"AGILITY"
    m.at 30, :"HEADBUTT"
    m.at 38, :"COUNTER"
    m.at 46, :"BOUNCE"
    m.at 54, :"DOUBLEEDGE"
    m.at 62, :"COURTCHANGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BLASTBURN", :"BLAZEKICK", :"BOUNCE", :"BULKUP", :"CAPTIVATE", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIREPUNCH", :"FIRESPIN", :"FLAMETHROWER", :"FLAREBLITZ", :"FOCUSBLAST", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CINDERACE" do |m|
  m.back_sprite 3, 48
  m.front_sprite 0, 12
end