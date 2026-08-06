#=============================================================================
# Bellsprout - GRASS Type
#=============================================================================

GameData::Species.define :"BELLSPROUT" do |pkmn|
  pkmn.name "Bellsprout"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 50, attack: 75, defense: 35,
                  sp_atk: 40, sp_def: 70, speed: 30
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 4.0
  pkmn.category "Flower"
  pkmn.pokedex_entry "A Bellsprout's thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, it leaks a fluid that melts even iron."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"VINEWHIP"
    m.at 7, :"GROWTH"
    m.at 11, :"WRAP"
    m.at 13, :"SLEEPPOWDER"
    m.at 15, :"POISONPOWDER"
    m.at 17, :"STUNSPORE"
    m.at 23, :"ACID"
    m.at 27, :"KNOCKOFF"
    m.at 29, :"SWEETSCENT"
    m.at 35, :"GASTROACID"
    m.at 39, :"RAZORLEAF"
    m.at 41, :"SLAM"
    m.at 47, :"WRINGOUT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"BULLETSEED", :"CLEARSMOG", :"ENCORE", :"GIGADRAIN", :"INGRAIN", :"LEECHLIFE", :"MAGICALLEAF", :"NATURALGIFT", :"POWERWHIP", :"SYNTHESIS", :"TICKLE", :"WEATHERBALL", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"BELLSPROUT" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 21
  m.shadow_sprite 0, 0, 1
end