#=============================================================================
# Deoxys - PSYCHIC Type
#=============================================================================

GameData::Species.define :"DEOXYS" do |pkmn|
  pkmn.name "Deoxys"
  pkmn.form_name "Normal Forme"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 50, attack: 150, defense: 50,
                  sp_atk: 150, sp_def: 150, speed: 50
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 1.7
  pkmn.weight 60.8
  pkmn.category "DNA"
  pkmn.pokedex_entry "A Pokémon that mutated from an extraterrestrial virus exposed to a laser beam. Its body is configured for superior agility and speed."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"WRAP"
    m.at 9, :"NIGHTSHADE"
    m.at 17, :"TELEPORT"
    m.at 25, :"KNOCKOFF"
    m.at 33, :"PURSUIT"
    m.at 41, :"PSYCHIC"
    m.at 49, :"SNATCH"
    m.at 57, :"PSYCHOSHIFT"
    m.at 65, :"ZENHEADBUTT"
    m.at 73, :"COSMICPOWER"
    m.at 81, :"RECOVER"
    m.at 89, :"PSYCHOBOOST"
    m.at 97, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"AVALANCHE", :"BIND", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DEOXYS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 7
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Normal Forme
GameData::Species.define :"DEOXYS_1" do |pkmn|
  pkmn.species :"DEOXYS"
  pkmn.form 1
  pkmn.name "Deoxys"
  pkmn.form_name "Normal Forme"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 50, attack: 150, defense: 50,
                  sp_atk: 150, sp_def: 150, speed: 50
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 1.7
  pkmn.weight 60.8
  pkmn.category "DNA"
  pkmn.pokedex_entry "A Pokémon that mutated from an extraterrestrial virus exposed to a laser beam. Its body is configured for superior agility and speed."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"WRAP"
    m.at 9, :"NIGHTSHADE"
    m.at 17, :"TELEPORT"
    m.at 25, :"KNOCKOFF"
    m.at 33, :"PURSUIT"
    m.at 41, :"PSYCHIC"
    m.at 49, :"SNATCH"
    m.at 57, :"PSYCHOSHIFT"
    m.at 65, :"ZENHEADBUTT"
    m.at 73, :"COSMICPOWER"
    m.at 81, :"RECOVER"
    m.at 89, :"PSYCHOBOOST"
    m.at 97, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"AVALANCHE", :"BIND", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DEOXYS_1" do |m|
  m.back_sprite 4, 0
  m.front_sprite 1, 5
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Normal Forme
GameData::Species.define :"DEOXYS_2" do |pkmn|
  pkmn.species :"DEOXYS"
  pkmn.form 2
  pkmn.name "Deoxys"
  pkmn.form_name "Normal Forme"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 50, attack: 150, defense: 50,
                  sp_atk: 150, sp_def: 150, speed: 50
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 1.7
  pkmn.weight 60.8
  pkmn.category "DNA"
  pkmn.pokedex_entry "A Pokémon that mutated from an extraterrestrial virus exposed to a laser beam. Its body is configured for superior agility and speed."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"WRAP"
    m.at 9, :"NIGHTSHADE"
    m.at 17, :"TELEPORT"
    m.at 25, :"KNOCKOFF"
    m.at 33, :"PURSUIT"
    m.at 41, :"PSYCHIC"
    m.at 49, :"SNATCH"
    m.at 57, :"PSYCHOSHIFT"
    m.at 65, :"ZENHEADBUTT"
    m.at 73, :"COSMICPOWER"
    m.at 81, :"RECOVER"
    m.at 89, :"PSYCHOBOOST"
    m.at 97, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"AVALANCHE", :"BIND", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DEOXYS_2" do |m|
  m.back_sprite 3, 0
  m.front_sprite -2, 6
  m.shadow_sprite 0, 0, 3
end

# Form 3 - Normal Forme
GameData::Species.define :"DEOXYS_3" do |pkmn|
  pkmn.species :"DEOXYS"
  pkmn.form 3
  pkmn.name "Deoxys"
  pkmn.form_name "Normal Forme"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 50, attack: 150, defense: 50,
                  sp_atk: 150, sp_def: 150, speed: 50
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 1.7
  pkmn.weight 60.8
  pkmn.category "DNA"
  pkmn.pokedex_entry "A Pokémon that mutated from an extraterrestrial virus exposed to a laser beam. Its body is configured for superior agility and speed."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"WRAP"
    m.at 9, :"NIGHTSHADE"
    m.at 17, :"TELEPORT"
    m.at 25, :"KNOCKOFF"
    m.at 33, :"PURSUIT"
    m.at 41, :"PSYCHIC"
    m.at 49, :"SNATCH"
    m.at 57, :"PSYCHOSHIFT"
    m.at 65, :"ZENHEADBUTT"
    m.at 73, :"COSMICPOWER"
    m.at 81, :"RECOVER"
    m.at 89, :"PSYCHOBOOST"
    m.at 97, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"AVALANCHE", :"BIND", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DEOXYS_3" do |m|
  m.back_sprite -4, 0
  m.front_sprite -4, 4
  m.shadow_sprite 0, 0, 3
end