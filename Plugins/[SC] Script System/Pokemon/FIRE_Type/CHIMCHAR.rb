#=============================================================================
# Chimchar - FIRE Type
#=============================================================================

GameData::Species.define :"CHIMCHAR" do |pkmn|
  pkmn.name "Chimchar"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 44, attack: 58, defense: 44,
                  sp_atk: 61, sp_def: 58, speed: 44
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 6.2
  pkmn.category "Chimp"
  pkmn.pokedex_entry "It agilely scales sheer cliffs to live atop craggy mountains. Its fire is put out when it sleeps."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 7, :"EMBER"
    m.at 9, :"TAUNT"
    m.at 15, :"FURYSWIPES"
    m.at 17, :"FLAMEWHEEL"
    m.at 23, :"NASTYPLOT"
    m.at 25, :"TORMENT"
    m.at 31, :"FACADE"
    m.at 33, :"FIRESPIN"
    m.at 39, :"ACROBATICS"
    m.at 41, :"SLACKOFF"
    m.at 47, :"FLAMETHROWER"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"VACUUMWAVE", :"WILLOWISP"
  pkmn.egg_moves :"ASSIST", :"BLAZEKICK", :"COUNTER", :"DOUBLEKICK", :"ENCORE", :"FAKEOUT", :"FIREPUNCH", :"FOCUSENERGY", :"FOCUSPUNCH", :"HEATWAVE", :"HELPINGHAND", :"QUICKGUARD", :"SUBMISSION", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"CHIMCHAR" do |m|
  m.back_sprite 4, 0
  m.front_sprite 2, 20
  m.shadow_sprite 0, 0, 2
end