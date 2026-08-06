#=============================================================================
# Turtwig - GRASS Type
#=============================================================================

GameData::Species.define :"TURTWIG" do |pkmn|
  pkmn.name "Turtwig"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 55, attack: 68, defense: 64,
                  sp_atk: 31, sp_def: 45, speed: 55
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 10.2
  pkmn.category "Tiny Leaf"
  pkmn.pokedex_entry "Made from soil, the shell on its back hardens when it drinks water. It lives along lakes."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"WITHDRAW"
    m.at 9, :"ABSORB"
    m.at 13, :"RAZORLEAF"
    m.at 17, :"CURSE"
    m.at 21, :"BITE"
    m.at 25, :"MEGADRAIN"
    m.at 29, :"LEECHSEED"
    m.at 33, :"SYNTHESIS"
    m.at 37, :"CRUNCH"
    m.at 41, :"GIGADRAIN"
    m.at 45, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"AMNESIA", :"BODYSLAM", :"DOUBLEEDGE", :"EARTHPOWER", :"GROWTH", :"SANDTOMB", :"SEEDBOMB", :"SPITUP", :"STOCKPILE", :"SUPERPOWER", :"SWALLOW", :"THRASH", :"TICKLE", :"WIDEGUARD", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"TURTWIG" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, 20
  m.shadow_sprite 0, 0, 2
end