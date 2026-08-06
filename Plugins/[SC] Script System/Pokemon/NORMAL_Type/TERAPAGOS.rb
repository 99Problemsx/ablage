#=============================================================================
# Terapagos - NORMAL Type
#=============================================================================

GameData::Species.define :"TERAPAGOS" do |pkmn|
  pkmn.name "Terapagos"
  pkmn.form_name "Normal Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 90, attack: 65, defense: 85,
                  sp_atk: 60, sp_def: 65, speed: 85
  pkmn.abilities :"TERASHIFT"
  pkmn.flags :"TeraType_STELLAR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 90
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.2
  pkmn.weight 6.5
  pkmn.category "Tera"
  pkmn.pokedex_entry "Terapagos protects itself using its power to transform energy into hard crystals. This Pokémon is the source of the Terastal phenomenon."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WITHDRAW"
    m.at 1, :"TRIATTACK"
    m.at 1, :"RAPIDSPIN"
    m.at 10, :"ANCIENTPOWER"
    m.at 20, :"HEADBUTT"
    m.at 30, :"PROTECT"
    m.at 40, :"EARTHPOWER"
    m.at 50, :"HEAVYSLAM"
    m.at 60, :"TERASTARSTORM"
    m.at 70, :"DOUBLEEDGE"
    m.at 80, :"ROCKPOLISH"
    m.at 90, :"GYROBALL"
  end
  pkmn.tutor_moves :"AURASPHERE", :"BODYPRESS", :"BODYSLAM", :"BUGBUZZ", :"CALMMIND", :"CRUNCH", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLEEDGE", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATCRASH", :"HEAVYSLAM", :"HYPERBEAM", :"ICEBEAM", :"ICESPINNER", :"IRONHEAD", :"METEORBEAM", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"ROCKSLIDE", :"SCORCHINGSANDS", :"SLEEPTALK", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SURF", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TERAPAGOS" do |m|
  m.back_sprite 0, 58
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Terastal Form
GameData::Species.define :"TERAPAGOS_1" do |pkmn|
  pkmn.species :"TERAPAGOS"
  pkmn.form 1
  pkmn.name "Terapagos"
  pkmn.form_name "Terastal Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 95, attack: 95, defense: 110,
                  sp_atk: 85, sp_def: 105, speed: 110
  pkmn.abilities :"TERASHELL"
  pkmn.flags :"Legendary", :"TeraType_STELLAR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 90
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 16.0
  pkmn.category "Tera"
  pkmn.pokedex_entry "The shell is made of crystallized Terastal energy. When struck by a move, this shell absorbs the move’s energy and transfers it to Terapagos."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WITHDRAW"
    m.at 1, :"TRIATTACK"
    m.at 1, :"RAPIDSPIN"
    m.at 10, :"ANCIENTPOWER"
    m.at 20, :"HEADBUTT"
    m.at 30, :"PROTECT"
    m.at 40, :"EARTHPOWER"
    m.at 50, :"HEAVYSLAM"
    m.at 60, :"TERASTARSTORM"
    m.at 70, :"DOUBLEEDGE"
    m.at 80, :"ROCKPOLISH"
    m.at 90, :"GYROBALL"
  end
  pkmn.tutor_moves :"AURASPHERE", :"BODYPRESS", :"BODYSLAM", :"BUGBUZZ", :"CALMMIND", :"CRUNCH", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLEEDGE", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATCRASH", :"HEAVYSLAM", :"HYPERBEAM", :"ICEBEAM", :"ICESPINNER", :"IRONHEAD", :"METEORBEAM", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"ROCKSLIDE", :"SCORCHINGSANDS", :"SLEEPTALK", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SURF", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TERAPAGOS_1" do |m|
  m.back_sprite -9, 91
  m.front_sprite 1, 13
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Stellar Form
GameData::Species.define :"TERAPAGOS_2" do |pkmn|
  pkmn.species :"TERAPAGOS"
  pkmn.form 2
  pkmn.name "Terapagos"
  pkmn.form_name "Stellar Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 160, attack: 105, defense: 110,
                  sp_atk: 85, sp_def: 130, speed: 110
  pkmn.abilities :"TERAFORMZERO"
  pkmn.flags :"Legendary", :"CannotDynamax", :"TeraType_STELLAR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 90
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.7
  pkmn.weight 77.0
  pkmn.category "Tera"
  pkmn.pokedex_entry "In this form, Terapagos resembles the world as the ancients saw it, and its Terastal energy is abnormally amplified."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WITHDRAW"
    m.at 1, :"TRIATTACK"
    m.at 1, :"RAPIDSPIN"
    m.at 10, :"ANCIENTPOWER"
    m.at 20, :"HEADBUTT"
    m.at 30, :"PROTECT"
    m.at 40, :"EARTHPOWER"
    m.at 50, :"HEAVYSLAM"
    m.at 60, :"TERASTARSTORM"
    m.at 70, :"DOUBLEEDGE"
    m.at 80, :"ROCKPOLISH"
    m.at 90, :"GYROBALL"
  end
  pkmn.tutor_moves :"AURASPHERE", :"BODYPRESS", :"BODYSLAM", :"BUGBUZZ", :"CALMMIND", :"CRUNCH", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLEEDGE", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATCRASH", :"HEAVYSLAM", :"HYPERBEAM", :"ICEBEAM", :"ICESPINNER", :"IRONHEAD", :"METEORBEAM", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"ROCKSLIDE", :"SCORCHINGSANDS", :"SLEEPTALK", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SURF", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TERAPAGOS_2" do |m|
  m.back_sprite 0, 53
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 3
end