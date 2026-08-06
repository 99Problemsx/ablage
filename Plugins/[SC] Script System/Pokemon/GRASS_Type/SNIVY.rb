#=============================================================================
# Snivy - GRASS Type
#=============================================================================

GameData::Species.define :"SNIVY" do |pkmn|
  pkmn.name "Snivy"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 45, attack: 45, defense: 55,
                  sp_atk: 63, sp_def: 45, speed: 55
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 8.1
  pkmn.category "Grass Snake"
  pkmn.pokedex_entry "They photosynthesize by bathing their tails in sunlight. When they are not feeling well, their tails droop."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"LEER"
    m.at 7, :"VINEWHIP"
    m.at 10, :"WRAP"
    m.at 13, :"GROWTH"
    m.at 16, :"LEAFTORNADO"
    m.at 19, :"LEECHSEED"
    m.at 22, :"MEGADRAIN"
    m.at 25, :"SLAM"
    m.at 28, :"LEAFBLADE"
    m.at 31, :"COIL"
    m.at 34, :"GIGADRAIN"
    m.at 37, :"WRINGOUT"
    m.at 40, :"GASTROACID"
    m.at 43, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HIDDENPOWER", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"TORMENT", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"CAPTIVATE", :"GLARE", :"IRONTAIL", :"MAGICALLEAF", :"MEANLOOK", :"MIRRORCOAT", :"NATURALGIFT", :"PURSUIT", :"SWEETSCENT", :"TWISTER"
end

GameData::SpeciesMetrics.define :"SNIVY" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, 30
  m.shadow_sprite 0, 0, 1
end