#=============================================================================
# Meowstic - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MEOWSTIC" do |pkmn|
  pkmn.name "Meowstic"
  pkmn.form_name "Male"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 74, attack: 48, defense: 76,
                  sp_atk: 104, sp_def: 83, speed: 81
  pkmn.abilities :"KEENEYE", :"INFILTRATOR"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 163
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 8.5
  pkmn.category "Constraint"
  pkmn.pokedex_entry "Revealing the eyelike patterns on the insides of its ears will unleash its psychic powers. It normally keeps the patterns hidden, however."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MEANLOOK"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"FAKEOUT"
    m.at 1, :"DISARMINGVOICE"
    m.at 9, :"CONFUSION"
    m.at 12, :"HELPINGHAND"
    m.at 15, :"CHARM"
    m.at 18, :"COVET"
    m.at 21, :"PSYBEAM"
    m.at 24, :"SUCKERPUNCH"
    m.at 29, :"ROLEPLAY"
    m.at 34, :"LIGHTSCREEN"
    m.at 34, :"REFLECT"
    m.at 39, :"PSYSHOCK"
    m.at 44, :"IMPRISON"
    m.at 49, :"QUICKGUARD"
    m.at 54, :"PSYCHIC"
    m.at 59, :"MISTYTERRAIN"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MISTYTERRAIN", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PAYDAY", :"PLAYROUGH", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"TELEKINESIS", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MEOWSTIC" do |m|
  m.back_sprite -4, 53
  m.front_sprite 1, 14
end

# Form 2 - Mega Meowstic
GameData::Species.define :"MEOWSTIC_2" do |pkmn|
  pkmn.species :"MEOWSTIC"
  pkmn.form 2
  pkmn.name "Meowstic"
  pkmn.form_name "Mega Meowstic"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 74, attack: 48, defense: 76,
                  sp_atk: 124, sp_def: 143, speed: 101
  pkmn.abilities :"KEENEYE", :"INFILTRATOR"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 163
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 10.1
  pkmn.category "Constraint"
  pkmn.pokedex_entry "Mega Meowstic can use its psychic power to compress or expand anything. It overwhelms foes by contorting space itself."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MEANLOOK"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"FAKEOUT"
    m.at 1, :"DISARMINGVOICE"
    m.at 9, :"CONFUSION"
    m.at 12, :"HELPINGHAND"
    m.at 15, :"CHARM"
    m.at 18, :"COVET"
    m.at 21, :"PSYBEAM"
    m.at 24, :"SUCKERPUNCH"
    m.at 29, :"ROLEPLAY"
    m.at 34, :"LIGHTSCREEN"
    m.at 34, :"REFLECT"
    m.at 39, :"PSYSHOCK"
    m.at 44, :"IMPRISON"
    m.at 49, :"QUICKGUARD"
    m.at 54, :"PSYCHIC"
    m.at 59, :"MISTYTERRAIN"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MISTYTERRAIN", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PAYDAY", :"PLAYROUGH", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"TELEKINESIS", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MEOWSTIC_2" do |m|
  m.back_sprite -4, 53
  m.front_sprite 1, 14
end

# Form 3 - Mega Meowstic
GameData::Species.define :"MEOWSTIC_3" do |pkmn|
  pkmn.species :"MEOWSTIC"
  pkmn.form 3
  pkmn.name "Meowstic"
  pkmn.form_name "Mega Meowstic"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 74, attack: 48, defense: 76,
                  sp_atk: 124, sp_def: 143, speed: 101
  pkmn.abilities :"KEENEYE", :"INFILTRATOR"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 163
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 10.1
  pkmn.category "Constraint"
  pkmn.pokedex_entry "Mega Meowstic can use its psychic power to compress or expand anything. It overwhelms foes by contorting space itself."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MEANLOOK"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"FAKEOUT"
    m.at 1, :"DISARMINGVOICE"
    m.at 9, :"CONFUSION"
    m.at 12, :"HELPINGHAND"
    m.at 15, :"CHARM"
    m.at 18, :"COVET"
    m.at 21, :"PSYBEAM"
    m.at 24, :"SUCKERPUNCH"
    m.at 29, :"ROLEPLAY"
    m.at 34, :"LIGHTSCREEN"
    m.at 34, :"REFLECT"
    m.at 39, :"PSYSHOCK"
    m.at 44, :"IMPRISON"
    m.at 49, :"QUICKGUARD"
    m.at 54, :"PSYCHIC"
    m.at 59, :"MISTYTERRAIN"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MISTYTERRAIN", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PAYDAY", :"PLAYROUGH", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"TELEKINESIS", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MEOWSTIC_3" do |m|
  m.back_sprite -4, 53
  m.front_sprite 1, 14
end

# Form 1 - Male
GameData::Species.define :"MEOWSTIC_1" do |pkmn|
  pkmn.species :"MEOWSTIC"
  pkmn.form 1
  pkmn.name "Meowstic"
  pkmn.form_name "Male"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 74, attack: 48, defense: 76,
                  sp_atk: 104, sp_def: 83, speed: 81
  pkmn.abilities :"KEENEYE", :"INFILTRATOR"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 163
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 8.5
  pkmn.category "Constraint"
  pkmn.pokedex_entry "Revealing the eyelike patterns on the insides of its ears will unleash its psychic powers. It normally keeps the patterns hidden, however."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MEANLOOK"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"FAKEOUT"
    m.at 1, :"DISARMINGVOICE"
    m.at 9, :"CONFUSION"
    m.at 12, :"HELPINGHAND"
    m.at 15, :"CHARM"
    m.at 18, :"COVET"
    m.at 21, :"PSYBEAM"
    m.at 24, :"SUCKERPUNCH"
    m.at 29, :"ROLEPLAY"
    m.at 34, :"LIGHTSCREEN"
    m.at 34, :"REFLECT"
    m.at 39, :"PSYSHOCK"
    m.at 44, :"IMPRISON"
    m.at 49, :"QUICKGUARD"
    m.at 54, :"PSYCHIC"
    m.at 59, :"MISTYTERRAIN"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MISTYTERRAIN", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PAYDAY", :"PLAYROUGH", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"TELEKINESIS", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MEOWSTIC_1" do |m|
  m.back_sprite -4, 53
  m.front_sprite 1, 14
end