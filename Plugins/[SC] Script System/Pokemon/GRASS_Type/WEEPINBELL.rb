#=============================================================================
# Weepinbell - GRASS Type
#=============================================================================

GameData::Species.define :"WEEPINBELL" do |pkmn|
  pkmn.name "Weepinbell"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 65, attack: 90, defense: 50,
                  sp_atk: 55, sp_def: 85, speed: 45
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 137
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 6.4
  pkmn.category "Flycatcher"
  pkmn.pokedex_entry "At night, a Weepinbell hangs on to a tree branch with its hooked rear and sleeps. If it moves around in its sleep, it may wake up to find itself on the ground."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"VINEWHIP"
    m.at 1, :"GROWTH"
    m.at 1, :"WRAP"
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
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BUGBITE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"WEEPINBELL" do |m|
  m.back_sprite 4, 0
  m.front_sprite 5, 19
  m.shadow_sprite 0, 0, 2
end