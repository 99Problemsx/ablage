#=============================================================================
# Raichu - ELECTRIC Type
#=============================================================================

GameData::Species.define :"RAICHU" do |pkmn|
  pkmn.name "Raichu"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 90, defense: 55,
                  sp_atk: 100, sp_def: 90, speed: 80
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 214
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.8
  pkmn.weight 30.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "If it stores too much electricity, its behavior turns aggressive. To avoid this, it occasionally discharges excess energy and calms itself down."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"THUNDERBOLT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"RAICHU" do |m|
  m.back_sprite -5, 0
  m.front_sprite 11, 10
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Mega Raichu X
GameData::Species.define :"RAICHU_2" do |pkmn|
  pkmn.species :"RAICHU"
  pkmn.form 2
  pkmn.name "Raichu"
  pkmn.form_name "Mega Raichu X"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 135, defense: 95,
                  sp_atk: 110, sp_def: 90, speed: 95
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 214
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 1.2
  pkmn.weight 38.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "It resembles an X as it flies through the air with 50 million volts of electricity sparking from its ears and forked tail."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"THUNDERBOLT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"RAICHU_2" do |m|
  m.back_sprite -5, 0
  m.front_sprite 11, 10
  m.shadow_sprite 0, 0, 3
end

# Form 3 - Mega Raichu Y
GameData::Species.define :"RAICHU_3" do |pkmn|
  pkmn.species :"RAICHU"
  pkmn.form 3
  pkmn.name "Raichu"
  pkmn.form_name "Mega Raichu Y"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 135, defense: 95,
                  sp_atk: 110, sp_def: 90, speed: 95
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 214
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 1.0
  pkmn.weight 26.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "It fires bolts of electricity from the tip of its tail and from the spiky tufts of fur growing out of its temples. This electricity forms the letter Y."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"THUNDERBOLT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"RAICHU_3" do |m|
  m.back_sprite -5, 0
  m.front_sprite 11, 10
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"RAICHU_1" do |pkmn|
  pkmn.species :"RAICHU"
  pkmn.form 1
  pkmn.name "Raichu"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 60, attack: 90, defense: 55,
                  sp_atk: 100, sp_def: 90, speed: 80
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 214
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.8
  pkmn.weight 30.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "If it stores too much electricity, its behavior turns aggressive. To avoid this, it occasionally discharges excess energy and calms itself down."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"THUNDERBOLT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"RAICHU_1" do |m|
  m.back_sprite -5, 0
  m.front_sprite 11, 10
  m.shadow_sprite 0, 0, 3
end