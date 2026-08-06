#=============================================================================
# Ivysaur - GRASS Type
#=============================================================================

GameData::Species.define :"IVYSAUR" do |pkmn|
  pkmn.name "Ivysaur"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 60, attack: 62, defense: 63,
                  sp_atk: 60, sp_def: 80, speed: 80
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"CHLOROPHYLL"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 13.0
  pkmn.category "Seed"
  pkmn.pokedex_entry "To support its bulb, Ivysaur's legs grow sturdy. If it spends more time lying in the sunlight, the bud will soon bloom into a large flower."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"LEECHSEED"
    m.at 3, :"GROWL"
    m.at 7, :"LEECHSEED"
    m.at 9, :"VINEWHIP"
    m.at 13, :"POISONPOWDER"
    m.at 13, :"SLEEPPOWDER"
    m.at 15, :"TAKEDOWN"
    m.at 20, :"RAZORLEAF"
    m.at 23, :"SWEETSCENT"
    m.at 28, :"GROWTH"
    m.at 31, :"DOUBLEEDGE"
    m.at 36, :"WORRYSEED"
    m.at 39, :"SYNTHESIS"
    m.at 44, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"IVYSAUR" do |m|
  m.back_sprite -9, 0
  m.front_sprite 2, 22
  m.shadow_sprite 0, 0, 2
end