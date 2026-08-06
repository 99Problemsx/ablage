#=============================================================================
# Serperior - GRASS Type
#=============================================================================

GameData::Species.define :"SERPERIOR" do |pkmn|
  pkmn.name "Serperior"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 75, attack: 75, defense: 95,
                  sp_atk: 113, sp_def: 75, speed: 95
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 238
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 3.3
  pkmn.weight 63.0
  pkmn.category "Regal"
  pkmn.pokedex_entry "They raise their heads to intimidate opponents, but only give it their all when fighting a powerful opponent."
  pkmn.evs speed: 3
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
    m.at 38, :"COIL"
    m.at 44, :"GIGADRAIN"
    m.at 50, :"WRINGOUT"
    m.at 56, :"GASTROACID"
    m.at 62, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRENZYPLANT", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"TORMENT", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SERPERIOR" do |m|
  m.back_sprite -3, 0
  m.front_sprite -1, 17
  m.shadow_sprite 0, 0, 3
end