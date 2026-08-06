#=============================================================================
# Scovillain - GRASS Type
#=============================================================================

GameData::Species.define :"SCOVILLAIN" do |pkmn|
  pkmn.name "Scovillain"
  pkmn.types :"GRASS", :"FIRE"
  pkmn.base_stats hp: 65, attack: 108, defense: 65,
                  sp_atk: 75, sp_def: 108, speed: 65
  pkmn.abilities :"CHLOROPHYLL", :"INSOMNIA"
  pkmn.hidden_abilities :"MOODY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 170
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.9
  pkmn.weight 15.0
  pkmn.category "Spicy Pepper"
  pkmn.pokedex_entry "The red head converts spicy chemicals into fire energy and blasts the surrounding area with a super spicy stream of flame."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 0, :"SPICYEXTRACT"
    m.at 0, :"FLAMETHROWER"
    m.at 1, :"LEER"
    m.at 1, :"FIREFANG"
    m.at 1, :"LEAFAGE"
    m.at 4, :"BITE"
    m.at 10, :"GROWTH"
    m.at 13, :"RAZORLEAF"
    m.at 17, :"SUNNYDAY"
    m.at 21, :"BULLETSEED"
    m.at 24, :"HEADBUTT"
    m.at 28, :"ZENHEADBUTT"
    m.at 33, :"WORRYSEED"
    m.at 38, :"CRUNCH"
    m.at 44, :"SEEDBOMB"
    m.at 48, :"SOLARBEAM"
    m.at 48, :"OVERHEAT"
  end
  pkmn.tutor_moves :"BULLETSEED", :"BURNINGJEALOUSY", :"CRUNCH", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FLAMETHROWER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"HYPERBEAM", :"LASHOUT", :"LEAFSTORM", :"MAGICALLEAF", :"OVERHEAT", :"PROTECT", :"REST", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"TAKEDOWN", :"TEMPERFLARE", :"THIEF", :"TRAILBLAZE", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SCOVILLAIN" do |m|
  m.back_sprite 0, 51
  m.front_sprite -7, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Scovillain
GameData::Species.define :"SCOVILLAIN_1" do |pkmn|
  pkmn.species :"SCOVILLAIN"
  pkmn.form 1
  pkmn.name "Scovillain"
  pkmn.form_name "Mega Scovillain"
  pkmn.types :"GRASS", :"FIRE"
  pkmn.base_stats hp: 65, attack: 138, defense: 85,
                  sp_atk: 75, sp_def: 138, speed: 85
  pkmn.abilities :"CHLOROPHYLL", :"INSOMNIA"
  pkmn.hidden_abilities :"MOODY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 170
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 22.0
  pkmn.category "Spicy Pepper"
  pkmn.pokedex_entry "Mega Evolution has dialed up this Pokémon's spiciness. It swings its \"necktie\" around to wallop its foes."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 0, :"SPICYEXTRACT"
    m.at 0, :"FLAMETHROWER"
    m.at 1, :"LEER"
    m.at 1, :"FIREFANG"
    m.at 1, :"LEAFAGE"
    m.at 4, :"BITE"
    m.at 10, :"GROWTH"
    m.at 13, :"RAZORLEAF"
    m.at 17, :"SUNNYDAY"
    m.at 21, :"BULLETSEED"
    m.at 24, :"HEADBUTT"
    m.at 28, :"ZENHEADBUTT"
    m.at 33, :"WORRYSEED"
    m.at 38, :"CRUNCH"
    m.at 44, :"SEEDBOMB"
    m.at 48, :"SOLARBEAM"
    m.at 48, :"OVERHEAT"
  end
  pkmn.tutor_moves :"BULLETSEED", :"BURNINGJEALOUSY", :"CRUNCH", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FLAMETHROWER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"HYPERBEAM", :"LASHOUT", :"LEAFSTORM", :"MAGICALLEAF", :"OVERHEAT", :"PROTECT", :"REST", :"SANDSTORM", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"TAKEDOWN", :"TEMPERFLARE", :"THIEF", :"TRAILBLAZE", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SCOVILLAIN_1" do |m|
  m.back_sprite 0, 51
  m.front_sprite -7, 18
  m.shadow_sprite 0, 0, 2
end