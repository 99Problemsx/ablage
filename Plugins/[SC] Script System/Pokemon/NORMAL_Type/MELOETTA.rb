#=============================================================================
# Meloetta - NORMAL Type
#=============================================================================

GameData::Species.define :"MELOETTA" do |pkmn|
  pkmn.name "Meloetta"
  pkmn.form_name "Aria Forme"
  pkmn.types :"NORMAL", :"PSYCHIC"
  pkmn.base_stats hp: 100, attack: 77, defense: 77,
                  sp_atk: 90, sp_def: 128, speed: 128
  pkmn.abilities :"SERENEGRACE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.6
  pkmn.weight 6.5
  pkmn.category "Melody"
  pkmn.pokedex_entry "Many famous songs have been inspired by the melodies that Meloetta plays."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ROUND"
    m.at 6, :"QUICKATTACK"
    m.at 11, :"CONFUSION"
    m.at 16, :"SING"
    m.at 21, :"TEETERDANCE"
    m.at 26, :"ACROBATICS"
    m.at 31, :"PSYBEAM"
    m.at 36, :"ECHOEDVOICE"
    m.at 43, :"UTURN"
    m.at 50, :"WAKEUPSLAP"
    m.at 57, :"PSYCHIC"
    m.at 64, :"HYPERVOICE"
    m.at 71, :"ROLEPLAY"
    m.at 78, :"CLOSECOMBAT"
    m.at 85, :"PERISHSONG"
  end
  pkmn.tutor_moves :"ACROBATICS", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"COVET", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DUALCHOP", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"RELICSONG", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MELOETTA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 5, 12
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Aria Forme
GameData::Species.define :"MELOETTA_1" do |pkmn|
  pkmn.species :"MELOETTA"
  pkmn.form 1
  pkmn.name "Meloetta"
  pkmn.form_name "Aria Forme"
  pkmn.types :"NORMAL", :"PSYCHIC"
  pkmn.base_stats hp: 100, attack: 77, defense: 77,
                  sp_atk: 90, sp_def: 128, speed: 128
  pkmn.abilities :"SERENEGRACE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.6
  pkmn.weight 6.5
  pkmn.category "Melody"
  pkmn.pokedex_entry "Many famous songs have been inspired by the melodies that Meloetta plays."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ROUND"
    m.at 6, :"QUICKATTACK"
    m.at 11, :"CONFUSION"
    m.at 16, :"SING"
    m.at 21, :"TEETERDANCE"
    m.at 26, :"ACROBATICS"
    m.at 31, :"PSYBEAM"
    m.at 36, :"ECHOEDVOICE"
    m.at 43, :"UTURN"
    m.at 50, :"WAKEUPSLAP"
    m.at 57, :"PSYCHIC"
    m.at 64, :"HYPERVOICE"
    m.at 71, :"ROLEPLAY"
    m.at 78, :"CLOSECOMBAT"
    m.at 85, :"PERISHSONG"
  end
  pkmn.tutor_moves :"ACROBATICS", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"COVET", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DUALCHOP", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"RELICSONG", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MELOETTA_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 15
  m.shadow_sprite 0, 0, 1
end