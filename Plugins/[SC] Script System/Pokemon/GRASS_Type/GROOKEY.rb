#=============================================================================
# Grookey - GRASS Type
#=============================================================================

GameData::Species.define :"GROOKEY" do |pkmn|
  pkmn.name "Grookey"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 50, attack: 65, defense: 50,
                  sp_atk: 65, sp_def: 40, speed: 40
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"GRASSYSURGE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 5.0
  pkmn.category "Chimp"
  pkmn.pokedex_entry "When it uses its special stick to strike up a beat, the sound waves produced carry revitalizing energy to the plants and flowers in the area."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 6, :"BRANCHPOKE"
    m.at 8, :"TAUNT"
    m.at 12, :"RAZORLEAF"
    m.at 17, :"SCREECH"
    m.at 20, :"KNOCKOFF"
    m.at 24, :"SLAM"
    m.at 28, :"UPROAR"
    m.at 32, :"WOODHAMMER"
    m.at 36, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSENERGY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"HIDDENPOWER", :"LOWKICK", :"MAGICALLEAF", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"FAKEOUT", :"GROWTH", :"HAMMERARM", :"LEECHSEED", :"NATUREPOWER", :"STRENGTH", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"GROOKEY" do |m|
  m.back_sprite 0, 22
  m.front_sprite 0, 14
end