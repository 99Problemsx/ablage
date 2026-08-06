#=============================================================================
# Litten - FIRE Type
#=============================================================================

GameData::Species.define :"LITTEN" do |pkmn|
  pkmn.name "Litten"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 45, attack: 65, defense: 40,
                  sp_atk: 70, sp_def: 60, speed: 40
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 4.3
  pkmn.category "Fire Cat"
  pkmn.pokedex_entry "Its coat regrows twice a year. When the time comes, Litten sets its own body on fire and burns away the old fur."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 3, :"EMBER"
    m.at 6, :"LICK"
    m.at 9, :"ROAR"
    m.at 12, :"FURYSWIPES"
    m.at 15, :"BITE"
    m.at 18, :"DOUBLEKICK"
    m.at 21, :"FIREFANG"
    m.at 24, :"SCARYFACE"
    m.at 27, :"SWAGGER"
    m.at 30, :"FLAMETHROWER"
    m.at 33, :"THRASH"
    m.at 36, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BODYSLAM", :"BULKUP", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CRUNCH", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"LEECHLIFE", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYDAY", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"ROAR", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TORMENT", :"TOXIC", :"UTURN", :"WILLOWISP", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"FAKEOUT", :"PARTINGSHOT", :"POWERTRIP"
end

GameData::SpeciesMetrics.define :"LITTEN" do |m|
  m.back_sprite 0, 53
  m.front_sprite -1, 31
end