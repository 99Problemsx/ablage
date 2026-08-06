#=============================================================================
# Eelektross - ELECTRIC Type
#=============================================================================

GameData::Species.define :"EELEKTROSS" do |pkmn|
  pkmn.name "Eelektross"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 85, attack: 115, defense: 80,
                  sp_atk: 50, sp_def: 105, speed: 80
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 232
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.1
  pkmn.weight 80.5
  pkmn.category "EleFish"
  pkmn.pokedex_entry "With their sucker mouths, they suck in prey. Then they use their fangs to shock the prey with electricity."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"CRUSHCLAW"
    m.at 1, :"HEADBUTT"
    m.at 1, :"ACID"
    m.at 1, :"DISCHARGE"
    m.at 1, :"CRUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AQUATAIL", :"ATTRACT", :"BIND", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONTAIL", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"EELEKTROSS" do |m|
  m.back_sprite -5, 0
  m.front_sprite -7, 20
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Eelektross
GameData::Species.define :"EELEKTROSS_1" do |pkmn|
  pkmn.species :"EELEKTROSS"
  pkmn.form 1
  pkmn.name "Eelektross"
  pkmn.form_name "Mega Eelektross"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 85, attack: 145, defense: 80,
                  sp_atk: 135, sp_def: 90, speed: 80
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 232
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 3.0
  pkmn.weight 180.0
  pkmn.category "EleFish"
  pkmn.pokedex_entry "It now generates 10 times the electricity it did before Mega Evolving. It discharges this electricity from its false Eelektrik, which are made of mucus."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"CRUSHCLAW"
    m.at 1, :"HEADBUTT"
    m.at 1, :"ACID"
    m.at 1, :"DISCHARGE"
    m.at 1, :"CRUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AQUATAIL", :"ATTRACT", :"BIND", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONTAIL", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"EELEKTROSS_1" do |m|
  m.back_sprite -5, 0
  m.front_sprite -7, 20
  m.shadow_sprite 0, 0, 3
end