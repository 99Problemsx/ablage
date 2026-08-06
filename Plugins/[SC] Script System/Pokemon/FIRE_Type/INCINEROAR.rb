#=============================================================================
# Incineroar - FIRE Type
#=============================================================================

GameData::Species.define :"INCINEROAR" do |pkmn|
  pkmn.name "Incineroar"
  pkmn.types :"FIRE", :"DARK"
  pkmn.base_stats hp: 95, attack: 115, defense: 90,
                  sp_atk: 60, sp_def: 80, speed: 90
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.8
  pkmn.weight 83.0
  pkmn.category "Heel"
  pkmn.pokedex_entry "Although it's rough mannered and egotistical, it finds beating down unworthy opponents boring. It gets motivated for stronger opponents."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"DARKESTLARIAT"
    m.at 1, :"CROSSCHOP"
    m.at 1, :"THROATCHOP"
    m.at 1, :"BULKUP"
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
    m.at 32, :"SWAGGER"
    m.at 44, :"FLAMETHROWER"
    m.at 51, :"THRASH"
    m.at 58, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"ATTRACT", :"BIND", :"BLASTBURN", :"BLAZEKICK", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"COVET", :"CRUNCH", :"DARKESTLARIAT", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIREPUNCH", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"KNOCKOFF", :"LASHOUT", :"LEECHLIFE", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYDAY", :"PROTECT", :"QUASH", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"ROAR", :"ROUND", :"SCARYFACE", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THROATCHOP", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UTURN", :"WILLOWISP", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"INCINEROAR" do |m|
  m.back_sprite 4, 40
  m.front_sprite -2, 6
end