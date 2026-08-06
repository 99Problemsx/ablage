#=============================================================================
# Slowbro - WATER Type
#=============================================================================

GameData::Species.define :"SLOWBRO" do |pkmn|
  pkmn.name "Slowbro"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 75, defense: 110,
                  sp_atk: 30, sp_def: 100, speed: 80
  pkmn.abilities :"OBLIVIOUS", :"OWNTEMPO"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 78.5
  pkmn.category "Hermit Crab"
  pkmn.pokedex_entry "Its tail has a Shellder firmly attached with a bite. As a result, the tail can't be used for fishing anymore. This forces it to reluctantly swim and catch prey."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"CURSE"
    m.at 1, :"YAWN"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"GROWL"
    m.at 9, :"WATERGUN"
    m.at 14, :"CONFUSION"
    m.at 19, :"DISABLE"
    m.at 23, :"HEADBUTT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"SLACKOFF"
    m.at 37, :"WITHDRAW"
    m.at 43, :"AMNESIA"
    m.at 49, :"PSYCHIC"
    m.at 55, :"RAINDANCE"
    m.at 62, :"PSYCHUP"
    m.at 68, :"HEALPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLOWBRO" do |m|
  m.back_sprite -7, 0
  m.front_sprite 6, 14
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"SLOWBRO_1" do |pkmn|
  pkmn.species :"SLOWBRO"
  pkmn.form 1
  pkmn.name "Slowbro"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 75, defense: 110,
                  sp_atk: 30, sp_def: 100, speed: 80
  pkmn.abilities :"OBLIVIOUS", :"OWNTEMPO"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 78.5
  pkmn.category "Hermit Crab"
  pkmn.pokedex_entry "Its tail has a Shellder firmly attached with a bite. As a result, the tail can't be used for fishing anymore. This forces it to reluctantly swim and catch prey."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"CURSE"
    m.at 1, :"YAWN"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"GROWL"
    m.at 9, :"WATERGUN"
    m.at 14, :"CONFUSION"
    m.at 19, :"DISABLE"
    m.at 23, :"HEADBUTT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"SLACKOFF"
    m.at 37, :"WITHDRAW"
    m.at 43, :"AMNESIA"
    m.at 49, :"PSYCHIC"
    m.at 55, :"RAINDANCE"
    m.at 62, :"PSYCHUP"
    m.at 68, :"HEALPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLOWBRO_1" do |m|
  m.back_sprite -7, 0
  m.front_sprite 6, 14
  m.shadow_sprite 0, 0, 3
end