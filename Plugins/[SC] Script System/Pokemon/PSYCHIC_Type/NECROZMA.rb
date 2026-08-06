#=============================================================================
# Necrozma - PSYCHIC Type
#=============================================================================

GameData::Species.define :"NECROZMA" do |pkmn|
  pkmn.name "Necrozma"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 97, attack: 107, defense: 101,
                  sp_atk: 79, sp_def: 127, speed: 89
  pkmn.abilities :"PRISMARMOR"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 255
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.4
  pkmn.weight 230.0
  pkmn.category "Prism"
  pkmn.pokedex_entry "Light is apparently the source of its energy. It has an extraordinarily vicious disposition and is constantly firing off laser beams."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"MOONLIGHT"
    m.at 1, :"MORNINGSUN"
    m.at 1, :"CHARGEBEAM"
    m.at 1, :"GRAVITY"
    m.at 1, :"METALCLAW"
    m.at 1, :"CONFUSION"
    m.at 8, :"STEALTHROCK"
    m.at 16, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 32, :"PSYCHOCUT"
    m.at 40, :"STOREDPOWER"
    m.at 48, :"ROCKBLAST"
    m.at 56, :"IRONDEFENSE"
    m.at 64, :"POWERGEM"
    m.at 72, :"PHOTONGEYSER"
    m.at 80, :"AUTOTOMIZE"
    m.at 88, :"PRISMATICLASER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"BREAKINGSWIPE", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"COSMICPOWER", :"DARKPULSE", :"DOUBLETEAM", :"DRAGONDANCE", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHOCUT", :"PSYSHOCK", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"NECROZMA" do |m|
  m.back_sprite 11, 60
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, -1
end

# Form 1 - Unknown Form
GameData::Species.define :"NECROZMA_1" do |pkmn|
  pkmn.species :"NECROZMA"
  pkmn.form 1
  pkmn.name "Necrozma"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 97, attack: 107, defense: 101,
                  sp_atk: 79, sp_def: 127, speed: 89
  pkmn.abilities :"PRISMARMOR"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 255
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.4
  pkmn.weight 230.0
  pkmn.category "Prism"
  pkmn.pokedex_entry "Light is apparently the source of its energy. It has an extraordinarily vicious disposition and is constantly firing off laser beams."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"MOONLIGHT"
    m.at 1, :"MORNINGSUN"
    m.at 1, :"CHARGEBEAM"
    m.at 1, :"GRAVITY"
    m.at 1, :"METALCLAW"
    m.at 1, :"CONFUSION"
    m.at 8, :"STEALTHROCK"
    m.at 16, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 32, :"PSYCHOCUT"
    m.at 40, :"STOREDPOWER"
    m.at 48, :"ROCKBLAST"
    m.at 56, :"IRONDEFENSE"
    m.at 64, :"POWERGEM"
    m.at 72, :"PHOTONGEYSER"
    m.at 80, :"AUTOTOMIZE"
    m.at 88, :"PRISMATICLASER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"BREAKINGSWIPE", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"COSMICPOWER", :"DARKPULSE", :"DOUBLETEAM", :"DRAGONDANCE", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHOCUT", :"PSYSHOCK", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"NECROZMA_1" do |m|
  m.back_sprite 11, 60
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, -1
end

# Form 2 - Unknown Form
GameData::Species.define :"NECROZMA_2" do |pkmn|
  pkmn.species :"NECROZMA"
  pkmn.form 2
  pkmn.name "Necrozma"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 97, attack: 107, defense: 101,
                  sp_atk: 79, sp_def: 127, speed: 89
  pkmn.abilities :"PRISMARMOR"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 255
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.4
  pkmn.weight 230.0
  pkmn.category "Prism"
  pkmn.pokedex_entry "Light is apparently the source of its energy. It has an extraordinarily vicious disposition and is constantly firing off laser beams."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"MOONLIGHT"
    m.at 1, :"MORNINGSUN"
    m.at 1, :"CHARGEBEAM"
    m.at 1, :"GRAVITY"
    m.at 1, :"METALCLAW"
    m.at 1, :"CONFUSION"
    m.at 8, :"STEALTHROCK"
    m.at 16, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 32, :"PSYCHOCUT"
    m.at 40, :"STOREDPOWER"
    m.at 48, :"ROCKBLAST"
    m.at 56, :"IRONDEFENSE"
    m.at 64, :"POWERGEM"
    m.at 72, :"PHOTONGEYSER"
    m.at 80, :"AUTOTOMIZE"
    m.at 88, :"PRISMATICLASER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"BREAKINGSWIPE", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"COSMICPOWER", :"DARKPULSE", :"DOUBLETEAM", :"DRAGONDANCE", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FLASHCANNON", :"FLING", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGNETRISE", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHOCUT", :"PSYSHOCK", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"NECROZMA_2" do |m|
  m.back_sprite 11, 60
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, -1
end