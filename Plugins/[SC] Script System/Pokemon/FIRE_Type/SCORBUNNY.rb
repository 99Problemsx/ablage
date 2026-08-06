#=============================================================================
# Scorbunny - FIRE Type
#=============================================================================

GameData::Species.define :"SCORBUNNY" do |pkmn|
  pkmn.name "Scorbunny"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 50, attack: 71, defense: 40,
                  sp_atk: 69, sp_def: 40, speed: 40
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"LIBERO"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 4.5
  pkmn.category "Rabbit"
  pkmn.pokedex_entry "A warm-up of running around gets fire energy coursing through this Pokémon's body. Once that happens, it's ready to fight at full power."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 6, :"EMBER"
    m.at 8, :"QUICKATTACK"
    m.at 12, :"DOUBLEKICK"
    m.at 17, :"FLAMECHARGE"
    m.at 20, :"AGILITY"
    m.at 24, :"HEADBUTT"
    m.at 28, :"COUNTER"
    m.at 32, :"BOUNCE"
    m.at 36, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BLAZEKICK", :"BOUNCE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FLAMETHROWER", :"FOCUSENERGY", :"FRUSTRATION", :"GUNKSHOT", :"HEATWAVE", :"HIDDENPOWER", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"HIGHJUMPKICK", :"SANDATTACK", :"SUCKERPUNCH", :"SUPERFANG"
end

GameData::SpeciesMetrics.define :"SCORBUNNY" do |m|
  m.back_sprite 0, 35
  m.front_sprite 2, 15
end