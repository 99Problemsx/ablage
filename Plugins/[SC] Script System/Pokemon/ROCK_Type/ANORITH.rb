#=============================================================================
# Anorith - ROCK Type
#=============================================================================

GameData::Species.define :"ANORITH" do |pkmn|
  pkmn.name "Anorith"
  pkmn.types :"ROCK", :"BUG"
  pkmn.base_stats hp: 45, attack: 95, defense: 50,
                  sp_atk: 75, sp_def: 40, speed: 50
  pkmn.abilities :"BATTLEARMOR"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Gray"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 71
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.7
  pkmn.weight 12.5
  pkmn.category "Old Shrimp"
  pkmn.pokedex_entry "It was resurrected from a fossil using the power of science. It swims by undulating the wings at its sides. They were feet that adapted to life in the sea."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 7, :"MUDSPORT"
    m.at 13, :"WATERGUN"
    m.at 19, :"METALCLAW"
    m.at 25, :"PROTECT"
    m.at 31, :"ANCIENTPOWER"
    m.at 37, :"FURYCUTTER"
    m.at 43, :"SLASH"
    m.at 49, :"ROCKBLAST"
    m.at 55, :"CRUSHCLAW"
    m.at 61, :"XSCISSOR"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"WATERPULSE", :"XSCISSOR"
  pkmn.egg_moves :"CROSSPOISON", :"CURSE", :"IRONDEFENSE", :"KNOCKOFF", :"RAPIDSPIN", :"SANDATTACK", :"SCREECH", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"ANORITH" do |m|
  m.back_sprite 10, 0
  m.front_sprite 1, 23
  m.shadow_sprite 0, 0, 2
end