#=============================================================================
# Thwackey - GRASS Type
#=============================================================================

GameData::Species.define :"THWACKEY" do |pkmn|
  pkmn.name "Thwackey"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 70, attack: 85, defense: 70,
                  sp_atk: 80, sp_def: 55, speed: 60
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"GRASSYSURGE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 14.0
  pkmn.category "Beat"
  pkmn.pokedex_entry "When it's drumming out rapid beats in battle, it gets so caught up in the rhythm that it won't even notice that it's already knocked out its opponent."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 0, :"DOUBLEHIT"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"BRANCHPOKE"
    m.at 1, :"TAUNT"
    m.at 12, :"RAZORLEAF"
    m.at 19, :"SCREECH"
    m.at 24, :"KNOCKOFF"
    m.at 30, :"SLAM"
    m.at 36, :"UPROAR"
    m.at 42, :"WOODHAMMER"
    m.at 48, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ASSURANCE", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSENERGY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"HIDDENPOWER", :"LOWKICK", :"MAGICALLEAF", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"THWACKEY" do |m|
  m.back_sprite 8, 17
  m.front_sprite -4, 3
end