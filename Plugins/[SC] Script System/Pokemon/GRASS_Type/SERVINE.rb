#=============================================================================
# Servine - GRASS Type
#=============================================================================

GameData::Species.define :"SERVINE" do |pkmn|
  pkmn.name "Servine"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 60, attack: 60, defense: 75,
                  sp_atk: 83, sp_def: 60, speed: 75
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 145
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 16.0
  pkmn.category "Grass Snake"
  pkmn.pokedex_entry "They avoid attacks by sinking into the shadows of thick foliage. They retaliate with masterful whipping techniques."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"VINEWHIP"
    m.at 1, :"WRAP"
    m.at 4, :"LEER"
    m.at 7, :"VINEWHIP"
    m.at 10, :"WRAP"
    m.at 13, :"GROWTH"
    m.at 16, :"LEAFTORNADO"
    m.at 20, :"LEECHSEED"
    m.at 24, :"MEGADRAIN"
    m.at 28, :"SLAM"
    m.at 32, :"LEAFBLADE"
    m.at 36, :"COIL"
    m.at 40, :"GIGADRAIN"
    m.at 44, :"WRINGOUT"
    m.at 48, :"GASTROACID"
    m.at 52, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"TORMENT", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SERVINE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 4, 20
  m.shadow_sprite 0, 0, 2
end