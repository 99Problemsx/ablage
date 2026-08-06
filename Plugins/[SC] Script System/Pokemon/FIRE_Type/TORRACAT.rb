#=============================================================================
# Torracat - FIRE Type
#=============================================================================

GameData::Species.define :"TORRACAT" do |pkmn|
  pkmn.name "Torracat"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 85, defense: 50,
                  sp_atk: 90, sp_def: 80, speed: 50
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.7
  pkmn.weight 25.0
  pkmn.category "Fire Cat"
  pkmn.pokedex_entry "It can act spoiled if it grows close to its Trainer. A powerful Pokémon, its sharp claws can leave its Trainer's whole body covered in scratches."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"EMBER"
    m.at 1, :"LICK"
    m.at 9, :"ROAR"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"BITE"
    m.at 20, :"DOUBLEKICK"
    m.at 25, :"FIREFANG"
    m.at 30, :"SCARYFACE"
    m.at 35, :"SWAGGER"
    m.at 40, :"FLAMETHROWER"
    m.at 45, :"THRASH"
    m.at 50, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BODYSLAM", :"BULKUP", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CRUNCH", :"DOUBLETEAM", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"LEECHLIFE", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYDAY", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"ROAR", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TORMENT", :"TOXIC", :"UTURN", :"WILLOWISP", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TORRACAT" do |m|
  m.back_sprite 6, 47
  m.front_sprite 0, 16
end