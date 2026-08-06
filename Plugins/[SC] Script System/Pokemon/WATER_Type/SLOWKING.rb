#=============================================================================
# Slowking - WATER Type
#=============================================================================

GameData::Species.define :"SLOWKING" do |pkmn|
  pkmn.name "Slowking"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 75, defense: 80,
                  sp_atk: 30, sp_def: 100, speed: 110
  pkmn.abilities :"OBLIVIOUS", :"OWNTEMPO"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 70
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 79.5
  pkmn.category "Royal"
  pkmn.pokedex_entry "It undertakes research every day to solve the mysteries of the world. However, it apparently forgets everything if the Shellder on its head comes off."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"POWERGEM"
    m.at 1, :"HIDDENPOWER"
    m.at 1, :"CURSE"
    m.at 1, :"YAWN"
    m.at 1, :"TACKLE"
    m.at 5, :"GROWL"
    m.at 9, :"WATERGUN"
    m.at 14, :"CONFUSION"
    m.at 19, :"DISABLE"
    m.at 23, :"HEADBUTT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"NASTYPLOT"
    m.at 41, :"SWAGGER"
    m.at 45, :"PSYCHIC"
    m.at 49, :"TRUMPCARD"
    m.at 54, :"PSYCHUP"
    m.at 58, :"HEALPULSE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLOWKING" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 8
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"SLOWKING_1" do |pkmn|
  pkmn.species :"SLOWKING"
  pkmn.form 1
  pkmn.name "Slowking"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 75, defense: 80,
                  sp_atk: 30, sp_def: 100, speed: 110
  pkmn.abilities :"OBLIVIOUS", :"OWNTEMPO"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 70
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.0
  pkmn.weight 79.5
  pkmn.category "Royal"
  pkmn.pokedex_entry "It undertakes research every day to solve the mysteries of the world. However, it apparently forgets everything if the Shellder on its head comes off."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"POWERGEM"
    m.at 1, :"HIDDENPOWER"
    m.at 1, :"CURSE"
    m.at 1, :"YAWN"
    m.at 1, :"TACKLE"
    m.at 5, :"GROWL"
    m.at 9, :"WATERGUN"
    m.at 14, :"CONFUSION"
    m.at 19, :"DISABLE"
    m.at 23, :"HEADBUTT"
    m.at 28, :"WATERPULSE"
    m.at 32, :"ZENHEADBUTT"
    m.at 36, :"NASTYPLOT"
    m.at 41, :"SWAGGER"
    m.at 45, :"PSYCHIC"
    m.at 49, :"TRUMPCARD"
    m.at 54, :"PSYCHUP"
    m.at 58, :"HEALPULSE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLOWKING_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 8
  m.shadow_sprite 0, 0, 2
end