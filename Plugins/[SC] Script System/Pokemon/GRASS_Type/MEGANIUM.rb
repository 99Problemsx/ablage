#=============================================================================
# Meganium - GRASS Type
#=============================================================================

GameData::Species.define :"MEGANIUM" do |pkmn|
  pkmn.name "Meganium"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 80, attack: 82, defense: 100,
                  sp_atk: 80, sp_def: 83, speed: 100
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 236
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 100.5
  pkmn.category "Herb"
  pkmn.pokedex_entry "The fragrance of a Meganium's flower soothes and calms emotions. In battle, it gives off more of its becalming scent to blunt the foe's fighting spirit."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"RAZORLEAF"
    m.at 1, :"POISONPOWDER"
    m.at 6, :"RAZORLEAF"
    m.at 9, :"POISONPOWDER"
    m.at 12, :"SYNTHESIS"
    m.at 18, :"REFLECT"
    m.at 22, :"MAGICALLEAF"
    m.at 26, :"NATURALGIFT"
    m.at 32, :"PETALDANCE"
    m.at 34, :"SWEETSCENT"
    m.at 40, :"LIGHTSCREEN"
    m.at 46, :"BODYSLAM"
    m.at 54, :"SAFEGUARD"
    m.at 60, :"AROMATHERAPY"
    m.at 66, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRENZYPLANT", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"MEGANIUM" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Meganium
GameData::Species.define :"MEGANIUM_1" do |pkmn|
  pkmn.species :"MEGANIUM"
  pkmn.form 1
  pkmn.name "Meganium"
  pkmn.form_name "Mega Meganium"
  pkmn.types :"GRASS", :"FAIRY"
  pkmn.base_stats hp: 80, attack: 92, defense: 115,
                  sp_atk: 143, sp_def: 115, speed: 80
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 236
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.4
  pkmn.weight 201.0
  pkmn.category "Herb"
  pkmn.pokedex_entry "This Pokémon can fire a tremendously powerful Solar Beam from its four flowers. Another name for this is Mega Sol Cannon."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"RAZORLEAF"
    m.at 1, :"POISONPOWDER"
    m.at 6, :"RAZORLEAF"
    m.at 9, :"POISONPOWDER"
    m.at 12, :"SYNTHESIS"
    m.at 18, :"REFLECT"
    m.at 22, :"MAGICALLEAF"
    m.at 26, :"NATURALGIFT"
    m.at 32, :"PETALDANCE"
    m.at 34, :"SWEETSCENT"
    m.at 40, :"LIGHTSCREEN"
    m.at 46, :"BODYSLAM"
    m.at 54, :"SAFEGUARD"
    m.at 60, :"AROMATHERAPY"
    m.at 66, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRENZYPLANT", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"MEGANIUM_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 3
end