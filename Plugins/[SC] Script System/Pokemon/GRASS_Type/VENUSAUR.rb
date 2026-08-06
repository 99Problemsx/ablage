#=============================================================================
# Venusaur - GRASS Type
#=============================================================================

GameData::Species.define :"VENUSAUR" do |pkmn|
  pkmn.name "Venusaur"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 80, attack: 82, defense: 83,
                  sp_atk: 80, sp_def: 100, speed: 100
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"CHLOROPHYLL"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 236
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 100.0
  pkmn.category "Seed"
  pkmn.pokedex_entry "Venusaur's flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"LEECHSEED"
    m.at 1, :"VINEWHIP"
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
    m.at 32, :"PETALDANCE"
    m.at 39, :"WORRYSEED"
    m.at 45, :"SYNTHESIS"
    m.at 53, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRENZYPLANT", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"VENUSAUR" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 11
  m.shadow_sprite 0, 0, 3
end