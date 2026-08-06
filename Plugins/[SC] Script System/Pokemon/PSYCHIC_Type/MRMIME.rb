#=============================================================================
# Mr. Mime - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MRMIME" do |pkmn|
  pkmn.name "Mr. Mime"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 40, attack: 45, defense: 65,
                  sp_atk: 90, sp_def: 100, speed: 120
  pkmn.abilities :"SOUNDPROOF", :"FILTER"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 161
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.3
  pkmn.weight 54.5
  pkmn.category "Barrier"
  pkmn.pokedex_entry "A Mr. Mime is a master of pantomime. It can convince others that something unseeable actually exists. Once believed, the imaginary object does become real."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"POWERSWAP"
    m.at 1, :"GUARDSWAP"
    m.at 1, :"BARRIER"
    m.at 1, :"CONFUSION"
    m.at 4, :"COPYCAT"
    m.at 8, :"MEDITATE"
    m.at 11, :"DOUBLESLAP"
    m.at 15, :"MIMIC"
    m.at 15, :"PSYWAVE"
    m.at 18, :"ENCORE"
    m.at 22, :"LIGHTSCREEN"
    m.at 22, :"REFLECT"
    m.at 25, :"PSYBEAM"
    m.at 29, :"SUBSTITUTE"
    m.at 32, :"RECYCLE"
    m.at 36, :"TRICK"
    m.at 39, :"PSYCHIC"
    m.at 43, :"ROLEPLAY"
    m.at 46, :"BATONPASS"
    m.at 50, :"SAFEGUARD"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"CONFUSERAY", :"FAKEOUT", :"FUTURESIGHT", :"HYPNOSIS", :"ICYWIND", :"MAGICROOM", :"MIMIC", :"NASTYPLOT", :"POWERSPLIT", :"TEETERDANCE", :"TRICK", :"WAKEUPSLAP"
end

GameData::SpeciesMetrics.define :"MRMIME" do |m|
  m.back_sprite 5, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"MRMIME_1" do |pkmn|
  pkmn.species :"MRMIME"
  pkmn.form 1
  pkmn.name "Mr. Mime"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 40, attack: 45, defense: 65,
                  sp_atk: 90, sp_def: 100, speed: 120
  pkmn.abilities :"SOUNDPROOF", :"FILTER"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 161
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.3
  pkmn.weight 54.5
  pkmn.category "Barrier"
  pkmn.pokedex_entry "A Mr. Mime is a master of pantomime. It can convince others that something unseeable actually exists. Once believed, the imaginary object does become real."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"POWERSWAP"
    m.at 1, :"GUARDSWAP"
    m.at 1, :"BARRIER"
    m.at 1, :"CONFUSION"
    m.at 4, :"COPYCAT"
    m.at 8, :"MEDITATE"
    m.at 11, :"DOUBLESLAP"
    m.at 15, :"MIMIC"
    m.at 15, :"PSYWAVE"
    m.at 18, :"ENCORE"
    m.at 22, :"LIGHTSCREEN"
    m.at 22, :"REFLECT"
    m.at 25, :"PSYBEAM"
    m.at 29, :"SUBSTITUTE"
    m.at 32, :"RECYCLE"
    m.at 36, :"TRICK"
    m.at 39, :"PSYCHIC"
    m.at 43, :"ROLEPLAY"
    m.at 46, :"BATONPASS"
    m.at 50, :"SAFEGUARD"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"CONFUSERAY", :"FAKEOUT", :"FUTURESIGHT", :"HYPNOSIS", :"ICYWIND", :"MAGICROOM", :"MIMIC", :"NASTYPLOT", :"POWERSPLIT", :"TEETERDANCE", :"TRICK", :"WAKEUPSLAP"
end

GameData::SpeciesMetrics.define :"MRMIME_1" do |m|
  m.back_sprite 5, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 2
end