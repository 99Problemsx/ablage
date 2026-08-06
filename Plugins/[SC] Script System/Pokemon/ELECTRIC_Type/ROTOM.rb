#=============================================================================
# Rotom - ELECTRIC Type
#=============================================================================

GameData::Species.define :"ROTOM" do |pkmn|
  pkmn.name "Rotom"
  pkmn.form_name "Normal Rotom"
  pkmn.types :"ELECTRIC", :"GHOST"
  pkmn.base_stats hp: 50, attack: 50, defense: 77,
                  sp_atk: 91, sp_def: 95, speed: 77
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Plasma"
  pkmn.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICK"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CONFUSERAY"
    m.at 8, :"UPROAR"
    m.at 15, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 29, :"OMINOUSWIND"
    m.at 36, :"SUBSTITUTE"
    m.at 43, :"ELECTROBALL"
    m.at 50, :"HEX"
    m.at 57, :"CHARGE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"VOLTSWITCH", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ROTOM" do |m|
  m.back_sprite 5, 0
  m.front_sprite 0, -1
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Normal Rotom
GameData::Species.define :"ROTOM_1" do |pkmn|
  pkmn.species :"ROTOM"
  pkmn.form 1
  pkmn.name "Rotom"
  pkmn.form_name "Normal Rotom"
  pkmn.types :"ELECTRIC", :"GHOST"
  pkmn.base_stats hp: 50, attack: 50, defense: 77,
                  sp_atk: 91, sp_def: 95, speed: 77
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Plasma"
  pkmn.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICK"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CONFUSERAY"
    m.at 8, :"UPROAR"
    m.at 15, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 29, :"OMINOUSWIND"
    m.at 36, :"SUBSTITUTE"
    m.at 43, :"ELECTROBALL"
    m.at 50, :"HEX"
    m.at 57, :"CHARGE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"VOLTSWITCH", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ROTOM_1" do |m|
  m.back_sprite 5, 0
  m.front_sprite 2, 1
  m.shadow_sprite 0, 0, 2
end

# Form 2 - Normal Rotom
GameData::Species.define :"ROTOM_2" do |pkmn|
  pkmn.species :"ROTOM"
  pkmn.form 2
  pkmn.name "Rotom"
  pkmn.form_name "Normal Rotom"
  pkmn.types :"ELECTRIC", :"GHOST"
  pkmn.base_stats hp: 50, attack: 50, defense: 77,
                  sp_atk: 91, sp_def: 95, speed: 77
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Plasma"
  pkmn.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICK"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CONFUSERAY"
    m.at 8, :"UPROAR"
    m.at 15, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 29, :"OMINOUSWIND"
    m.at 36, :"SUBSTITUTE"
    m.at 43, :"ELECTROBALL"
    m.at 50, :"HEX"
    m.at 57, :"CHARGE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"VOLTSWITCH", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ROTOM_2" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, -1
  m.shadow_sprite 0, 0, 2
end

# Form 3 - Normal Rotom
GameData::Species.define :"ROTOM_3" do |pkmn|
  pkmn.species :"ROTOM"
  pkmn.form 3
  pkmn.name "Rotom"
  pkmn.form_name "Normal Rotom"
  pkmn.types :"ELECTRIC", :"GHOST"
  pkmn.base_stats hp: 50, attack: 50, defense: 77,
                  sp_atk: 91, sp_def: 95, speed: 77
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Plasma"
  pkmn.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICK"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CONFUSERAY"
    m.at 8, :"UPROAR"
    m.at 15, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 29, :"OMINOUSWIND"
    m.at 36, :"SUBSTITUTE"
    m.at 43, :"ELECTROBALL"
    m.at 50, :"HEX"
    m.at 57, :"CHARGE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"VOLTSWITCH", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ROTOM_3" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, -4
  m.shadow_sprite 0, 0, 2
end

# Form 4 - Normal Rotom
GameData::Species.define :"ROTOM_4" do |pkmn|
  pkmn.species :"ROTOM"
  pkmn.form 4
  pkmn.name "Rotom"
  pkmn.form_name "Normal Rotom"
  pkmn.types :"ELECTRIC", :"GHOST"
  pkmn.base_stats hp: 50, attack: 50, defense: 77,
                  sp_atk: 91, sp_def: 95, speed: 77
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Plasma"
  pkmn.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICK"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CONFUSERAY"
    m.at 8, :"UPROAR"
    m.at 15, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 29, :"OMINOUSWIND"
    m.at 36, :"SUBSTITUTE"
    m.at 43, :"ELECTROBALL"
    m.at 50, :"HEX"
    m.at 57, :"CHARGE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"VOLTSWITCH", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ROTOM_4" do |m|
  m.back_sprite -4, 0
  m.front_sprite -2, 2
  m.shadow_sprite 0, 0, 2
end

# Form 5 - Normal Rotom
GameData::Species.define :"ROTOM_5" do |pkmn|
  pkmn.species :"ROTOM"
  pkmn.form 5
  pkmn.name "Rotom"
  pkmn.form_name "Normal Rotom"
  pkmn.types :"ELECTRIC", :"GHOST"
  pkmn.base_stats hp: 50, attack: 50, defense: 77,
                  sp_atk: 91, sp_def: 95, speed: 77
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Head"
  pkmn.base_exp 154
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Plasma"
  pkmn.pokedex_entry "Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICK"
    m.at 1, :"ASTONISH"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CONFUSERAY"
    m.at 8, :"UPROAR"
    m.at 15, :"DOUBLETEAM"
    m.at 22, :"SHOCKWAVE"
    m.at 29, :"OMINOUSWIND"
    m.at 36, :"SUBSTITUTE"
    m.at 43, :"ELECTROBALL"
    m.at 50, :"HEX"
    m.at 57, :"CHARGE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"VOLTSWITCH", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ROTOM_5" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 2
end