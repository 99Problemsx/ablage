#=============================================================================
# Revavroom - STEEL Type
#=============================================================================

GameData::Species.define :"REVAVROOM" do |pkmn|
  pkmn.name "Revavroom"
  pkmn.types :"STEEL", :"POISON"
  pkmn.base_stats hp: 80, attack: 119, defense: 90,
                  sp_atk: 90, sp_def: 54, speed: 67
  pkmn.abilities :"OVERCOAT"
  pkmn.hidden_abilities :"FILTER"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 120.0
  pkmn.category "Multi-Cyl"
  pkmn.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SHIFTGEAR"
    m.at 1, :"LICK"
    m.at 1, :"POISONGAS"
    m.at 1, :"MAGNETRISE"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 46, :"UPROAR"
    m.at 52, :"SPINOUT"
    m.at 58, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HARDPRESS", :"HAZE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"METALSOUND", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REVAVROOM" do |m|
  m.back_sprite -3, 55
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"REVAVROOM_1" do |pkmn|
  pkmn.species :"REVAVROOM"
  pkmn.form 1
  pkmn.name "Revavroom"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 80, attack: 119, defense: 90,
                  sp_atk: 90, sp_def: 54, speed: 67
  pkmn.abilities :"SPEEDBOOST"
  pkmn.hidden_abilities :"FILTER"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 0
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 120.0
  pkmn.category "Multi-Cyl"
  pkmn.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SHIFTGEAR"
    m.at 1, :"LICK"
    m.at 1, :"POISONGAS"
    m.at 1, :"MAGNETRISE"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 46, :"UPROAR"
    m.at 52, :"SPINOUT"
    m.at 58, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HARDPRESS", :"HAZE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"METALSOUND", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REVAVROOM_1" do |m|
  m.back_sprite -3, 55
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Unknown Form
GameData::Species.define :"REVAVROOM_2" do |pkmn|
  pkmn.species :"REVAVROOM"
  pkmn.form 2
  pkmn.name "Revavroom"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 80, attack: 119, defense: 90,
                  sp_atk: 90, sp_def: 54, speed: 67
  pkmn.abilities :"MISTYSURGE"
  pkmn.hidden_abilities :"FILTER"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 0
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 120.0
  pkmn.category "Multi-Cyl"
  pkmn.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SHIFTGEAR"
    m.at 1, :"LICK"
    m.at 1, :"POISONGAS"
    m.at 1, :"MAGNETRISE"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 46, :"UPROAR"
    m.at 52, :"SPINOUT"
    m.at 58, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HARDPRESS", :"HAZE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"METALSOUND", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REVAVROOM_2" do |m|
  m.back_sprite -3, 55
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 3
end

# Form 3 - Unknown Form
GameData::Species.define :"REVAVROOM_3" do |pkmn|
  pkmn.species :"REVAVROOM"
  pkmn.form 3
  pkmn.name "Revavroom"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 80, attack: 119, defense: 90,
                  sp_atk: 90, sp_def: 54, speed: 67
  pkmn.abilities :"STAMINA"
  pkmn.hidden_abilities :"FILTER"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 0
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 120.0
  pkmn.category "Multi-Cyl"
  pkmn.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SHIFTGEAR"
    m.at 1, :"LICK"
    m.at 1, :"POISONGAS"
    m.at 1, :"MAGNETRISE"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 46, :"UPROAR"
    m.at 52, :"SPINOUT"
    m.at 58, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HARDPRESS", :"HAZE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"METALSOUND", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REVAVROOM_3" do |m|
  m.back_sprite -3, 55
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 3
end

# Form 4 - Unknown Form
GameData::Species.define :"REVAVROOM_4" do |pkmn|
  pkmn.species :"REVAVROOM"
  pkmn.form 4
  pkmn.name "Revavroom"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 80, attack: 119, defense: 90,
                  sp_atk: 90, sp_def: 54, speed: 67
  pkmn.abilities :"TOXICDEBRIS"
  pkmn.hidden_abilities :"FILTER"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 0
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 120.0
  pkmn.category "Multi-Cyl"
  pkmn.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SHIFTGEAR"
    m.at 1, :"LICK"
    m.at 1, :"POISONGAS"
    m.at 1, :"MAGNETRISE"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 46, :"UPROAR"
    m.at 52, :"SPINOUT"
    m.at 58, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HARDPRESS", :"HAZE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"METALSOUND", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REVAVROOM_4" do |m|
  m.back_sprite -3, 55
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 3
end

# Form 5 - Unknown Form
GameData::Species.define :"REVAVROOM_5" do |pkmn|
  pkmn.species :"REVAVROOM"
  pkmn.form 5
  pkmn.name "Revavroom"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 80, attack: 119, defense: 90,
                  sp_atk: 90, sp_def: 54, speed: 67
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"FILTER"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 0
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 120.0
  pkmn.category "Multi-Cyl"
  pkmn.pokedex_entry "It creates a gas out of poison and minerals from rocks. It then detonates the gas in its cylinders— now numbering eight—to generate energy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SHIFTGEAR"
    m.at 1, :"LICK"
    m.at 1, :"POISONGAS"
    m.at 1, :"MAGNETRISE"
    m.at 4, :"SMOG"
    m.at 7, :"TAUNT"
    m.at 10, :"ASSURANCE"
    m.at 13, :"SLUDGE"
    m.at 17, :"GYROBALL"
    m.at 21, :"HEADBUTT"
    m.at 25, :"SCREECH"
    m.at 28, :"IRONHEAD"
    m.at 32, :"SWAGGER"
    m.at 36, :"POISONJAB"
    m.at 46, :"UPROAR"
    m.at 52, :"SPINOUT"
    m.at 58, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HARDPRESS", :"HAZE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"METALSOUND", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"VENOSHOCK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REVAVROOM_5" do |m|
  m.back_sprite -3, 55
  m.front_sprite -3, 24
  m.shadow_sprite 0, 0, 3
end