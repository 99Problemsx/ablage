#=============================================================================
# Mawile - STEEL Type
#=============================================================================

GameData::Species.define :"MAWILE" do |pkmn|
  pkmn.name "Mawile"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 50, attack: 85, defense: 85,
                  sp_atk: 50, sp_def: 55, speed: 55
  pkmn.abilities :"HYPERCUTTER", :"INTIMIDATE"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 133
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 11.5
  pkmn.category "Deceiver"
  pkmn.pokedex_entry "Its giant jaws are actually steel horns that transformed. It fools foes into complacency with its adorable gestures, then chomps them with its huge jaws."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 6, :"FAKETEARS"
    m.at 11, :"BITE"
    m.at 16, :"SWEETSCENT"
    m.at 21, :"VICEGRIP"
    m.at 26, :"FEINTATTACK"
    m.at 31, :"BATONPASS"
    m.at 36, :"CRUNCH"
    m.at 41, :"IRONDEFENSE"
    m.at 46, :"SUCKERPUNCH"
    m.at 51, :"STOCKPILE"
    m.at 51, :"SWALLOW"
    m.at 51, :"SPITUP"
    m.at 56, :"IRONHEAD"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FLAMETHROWER", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LASTRESORT", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC"
  pkmn.egg_moves :"ANCIENTPOWER", :"CAPTIVATE", :"FIREFANG", :"GUARDSWAP", :"ICEFANG", :"METALBURST", :"POISONFANG", :"PUNISHMENT", :"SLAM", :"SUCKERPUNCH", :"THUNDERFANG", :"TICKLE"
end

GameData::SpeciesMetrics.define :"MAWILE" do |m|
  m.back_sprite 2, 0
  m.front_sprite -1, 17
  m.shadow_sprite 0, 0, 3
end