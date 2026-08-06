#=============================================================================
# Grumpig - PSYCHIC Type
#=============================================================================

GameData::Species.define :"GRUMPIG" do |pkmn|
  pkmn.name "Grumpig"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 80, attack: 45, defense: 65,
                  sp_atk: 80, sp_def: 90, speed: 110
  pkmn.abilities :"THICKFAT", :"OWNTEMPO"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 165
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 71.5
  pkmn.category "Manipulate"
  pkmn.pokedex_entry "It stores power in the black pearls on its forehead. When it uses psychic power, it performs an odd dance step. Its style of dancing became hugely popular overseas."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"PSYWAVE"
    m.at 1, :"ODORSLEUTH"
    m.at 1, :"PSYBEAM"
    m.at 7, :"PSYWAVE"
    m.at 10, :"ODORSLEUTH"
    m.at 14, :"PSYBEAM"
    m.at 15, :"PSYCHUP"
    m.at 18, :"CONFUSERAY"
    m.at 21, :"MAGICCOAT"
    m.at 26, :"ZENHEADBUTT"
    m.at 29, :"REST"
    m.at 29, :"SNORE"
    m.at 35, :"POWERGEM"
    m.at 42, :"PSYSHOCK"
    m.at 46, :"PAYBACK"
    m.at 52, :"PSYCHIC"
    m.at 60, :"BOUNCE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GRUMPIG" do |m|
  m.back_sprite -4, 0
  m.front_sprite 3, 13
  m.shadow_sprite 0, 0, 2
end