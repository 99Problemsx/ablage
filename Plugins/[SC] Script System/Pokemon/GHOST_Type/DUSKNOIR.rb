#=============================================================================
# Dusknoir - GHOST Type
#=============================================================================

GameData::Species.define :"DUSKNOIR" do |pkmn|
  pkmn.name "Dusknoir"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 45, attack: 100, defense: 135,
                  sp_atk: 45, sp_def: 65, speed: 135
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"FRISK"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 236
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 6425
  pkmn.height 2.2
  pkmn.weight 106.6
  pkmn.category "Gripper"
  pkmn.pokedex_entry "The antenna on its head captures radio waves from the world of spirits that command it to take people there."
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
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"DUSKNOIR" do |m|
  m.back_sprite 5, 0
  m.front_sprite -4, 2
  m.shadow_sprite 0, 0, 3
end