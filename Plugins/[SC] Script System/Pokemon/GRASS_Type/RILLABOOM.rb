#=============================================================================
# Rillaboom - GRASS Type
#=============================================================================

GameData::Species.define :"RILLABOOM" do |pkmn|
  pkmn.name "Rillaboom"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 100, attack: 125, defense: 90,
                  sp_atk: 85, sp_def: 60, speed: 70
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"GRASSYSURGE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.1
  pkmn.weight 90.0
  pkmn.category "Drummer"
  pkmn.pokedex_entry "By drumming, it taps into the power of its special tree stump. The roots of the stump follow its direction in battle."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 0, :"DRUMBEATING"
    m.at 1, :"DOUBLEHIT"
    m.at 1, :"GRASSYTERRAIN"
    m.at 1, :"NOBLEROAR"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"BRANCHPOKE"
    m.at 1, :"TAUNT"
    m.at 12, :"RAZORLEAF"
    m.at 19, :"SCREECH"
    m.at 24, :"KNOCKOFF"
    m.at 30, :"SLAM"
    m.at 38, :"UPROAR"
    m.at 46, :"WOODHAMMER"
    m.at 54, :"ENDEAVOR"
    m.at 62, :"BOOMBURST"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"DARKESTLARIAT", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOCUSENERGY", :"FRENZYPLANT", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"LEAFSTORM", :"LOWKICK", :"MAGICALLEAF", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"RILLABOOM" do |m|
  m.back_sprite 6, 62
  m.front_sprite 1, 14
end