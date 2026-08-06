#=============================================================================
# Castform - NORMAL Type
#=============================================================================

GameData::Species.define :"CASTFORM" do |pkmn|
  pkmn.name "Castform"
  pkmn.form_name "Normal Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 70, defense: 70,
                  sp_atk: 70, sp_def: 70, speed: 70
  pkmn.abilities :"FORECAST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.3
  pkmn.weight 0.8
  pkmn.category "Weather"
  pkmn.pokedex_entry "It alters its form depending on the weather. Changes in the climate such as the temperature and humidity appear to affect its cellular structure."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 10, :"WATERGUN"
    m.at 10, :"EMBER"
    m.at 10, :"POWDERSNOW"
    m.at 15, :"HEADBUTT"
    m.at 20, :"RAINDANCE"
    m.at 20, :"SUNNYDAY"
    m.at 20, :"HAIL"
    m.at 30, :"WEATHERBALL"
    m.at 40, :"HYDROPUMP"
    m.at 40, :"FIREBLAST"
    m.at 40, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"CLEARSMOG", :"DISABLE", :"FUTURESIGHT", :"HEX", :"LUCKYCHANT", :"OMINOUSWIND"
end

GameData::SpeciesMetrics.define :"CASTFORM" do |m|
  m.back_sprite 1, 0
  m.front_sprite -2, 11
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Normal Form
GameData::Species.define :"CASTFORM_1" do |pkmn|
  pkmn.species :"CASTFORM"
  pkmn.form 1
  pkmn.name "Castform"
  pkmn.form_name "Normal Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 70, defense: 70,
                  sp_atk: 70, sp_def: 70, speed: 70
  pkmn.abilities :"FORECAST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.3
  pkmn.weight 0.8
  pkmn.category "Weather"
  pkmn.pokedex_entry "It alters its form depending on the weather. Changes in the climate such as the temperature and humidity appear to affect its cellular structure."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 10, :"WATERGUN"
    m.at 10, :"EMBER"
    m.at 10, :"POWDERSNOW"
    m.at 15, :"HEADBUTT"
    m.at 20, :"RAINDANCE"
    m.at 20, :"SUNNYDAY"
    m.at 20, :"HAIL"
    m.at 30, :"WEATHERBALL"
    m.at 40, :"HYDROPUMP"
    m.at 40, :"FIREBLAST"
    m.at 40, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"CLEARSMOG", :"DISABLE", :"FUTURESIGHT", :"HEX", :"LUCKYCHANT", :"OMINOUSWIND"
end

GameData::SpeciesMetrics.define :"CASTFORM_1" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 2
end

# Form 2 - Normal Form
GameData::Species.define :"CASTFORM_2" do |pkmn|
  pkmn.species :"CASTFORM"
  pkmn.form 2
  pkmn.name "Castform"
  pkmn.form_name "Normal Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 70, defense: 70,
                  sp_atk: 70, sp_def: 70, speed: 70
  pkmn.abilities :"FORECAST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.3
  pkmn.weight 0.8
  pkmn.category "Weather"
  pkmn.pokedex_entry "It alters its form depending on the weather. Changes in the climate such as the temperature and humidity appear to affect its cellular structure."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 10, :"WATERGUN"
    m.at 10, :"EMBER"
    m.at 10, :"POWDERSNOW"
    m.at 15, :"HEADBUTT"
    m.at 20, :"RAINDANCE"
    m.at 20, :"SUNNYDAY"
    m.at 20, :"HAIL"
    m.at 30, :"WEATHERBALL"
    m.at 40, :"HYDROPUMP"
    m.at 40, :"FIREBLAST"
    m.at 40, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"CLEARSMOG", :"DISABLE", :"FUTURESIGHT", :"HEX", :"LUCKYCHANT", :"OMINOUSWIND"
end

GameData::SpeciesMetrics.define :"CASTFORM_2" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 2
end

# Form 3 - Normal Form
GameData::Species.define :"CASTFORM_3" do |pkmn|
  pkmn.species :"CASTFORM"
  pkmn.form 3
  pkmn.name "Castform"
  pkmn.form_name "Normal Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 70, defense: 70,
                  sp_atk: 70, sp_def: 70, speed: 70
  pkmn.abilities :"FORECAST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.3
  pkmn.weight 0.8
  pkmn.category "Weather"
  pkmn.pokedex_entry "It alters its form depending on the weather. Changes in the climate such as the temperature and humidity appear to affect its cellular structure."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 10, :"WATERGUN"
    m.at 10, :"EMBER"
    m.at 10, :"POWDERSNOW"
    m.at 15, :"HEADBUTT"
    m.at 20, :"RAINDANCE"
    m.at 20, :"SUNNYDAY"
    m.at 20, :"HAIL"
    m.at 30, :"WEATHERBALL"
    m.at 40, :"HYDROPUMP"
    m.at 40, :"FIREBLAST"
    m.at 40, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"CLEARSMOG", :"DISABLE", :"FUTURESIGHT", :"HEX", :"LUCKYCHANT", :"OMINOUSWIND"
end

GameData::SpeciesMetrics.define :"CASTFORM_3" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 2
end