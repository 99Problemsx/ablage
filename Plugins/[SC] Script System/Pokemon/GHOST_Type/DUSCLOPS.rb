#=============================================================================
# Dusclops - GHOST Type
#=============================================================================

GameData::Species.define :"DUSCLOPS" do |pkmn|
  pkmn.name "Dusclops"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 40, attack: 70, defense: 130,
                  sp_atk: 25, sp_def: 60, speed: 130
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"FRISK"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 159
  pkmn.catch_rate 90
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 1.6
  pkmn.weight 30.6
  pkmn.category "Beckon"
  pkmn.pokedex_entry "It is thought that its body is hollow with only a spectral ball of fire burning inside. However, no one has been able to confirm this theory as fact."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"ICEPUNCH"
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"GRAVITY"
    m.at 1, :"BIND"
    m.at 1, :"LEER"
    m.at 1, :"NIGHTSHADE"
    m.at 1, :"DISABLE"
    m.at 6, :"DISABLE"
    m.at 9, :"FORESIGHT"
    m.at 14, :"ASTONISH"
    m.at 17, :"CONFUSERAY"
    m.at 22, :"SHADOWSNEAK"
    m.at 25, :"PURSUIT"
    m.at 30, :"CURSE"
    m.at 33, :"WILLOWISP"
    m.at 37, :"SHADOWPUNCH"
    m.at 42, :"HEX"
    m.at 49, :"MEANLOOK"
    m.at 58, :"PAYBACK"
    m.at 61, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"DUSCLOPS" do |m|
  m.back_sprite 1, 0
  m.front_sprite 7, 7
  m.shadow_sprite 0, 0, 3
end