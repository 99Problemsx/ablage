#=============================================================================
# Bulbasaur - GRASS Type
#=============================================================================

GameData::Species.define :"BULBASAUR" do |pkmn|
  pkmn.name "Bulbasaur"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 45, attack: 49, defense: 49,
                  sp_atk: 45, sp_def: 65, speed: 65
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"CHLOROPHYLL"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 6.9
  pkmn.category "Seed"
  pkmn.pokedex_entry "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"GROWL"
    m.at 7, :"LEECHSEED"
    m.at 9, :"VINEWHIP"
    m.at 13, :"POISONPOWDER"
    m.at 13, :"SLEEPPOWDER"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"RAZORLEAF"
    m.at 21, :"SWEETSCENT"
    m.at 25, :"GROWTH"
    m.at 27, :"DOUBLEEDGE"
    m.at 31, :"WORRYSEED"
    m.at 33, :"SYNTHESIS"
    m.at 37, :"SEEDBOMB"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"AMNESIA", :"CHARM", :"CURSE", :"ENDURE", :"GIGADRAIN", :"GRASSWHISTLE", :"INGRAIN", :"LEAFSTORM", :"MAGICALLEAF", :"NATUREPOWER", :"PETALDANCE", :"POWERWHIP", :"SKULLBASH", :"SLUDGE"
end

GameData::SpeciesMetrics.define :"BULBASAUR" do |m|
  m.back_sprite -4, 0
  m.front_sprite -1, 26
  m.shadow_sprite 0, 0, 2
end