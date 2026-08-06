#=============================================================================
# Tyranitar - ROCK Type
#=============================================================================

GameData::Species.define :"TYRANITAR" do |pkmn|
  pkmn.name "Tyranitar"
  pkmn.types :"ROCK", :"DARK"
  pkmn.base_stats hp: 100, attack: 134, defense: 110,
                  sp_atk: 61, sp_def: 95, speed: 100
  pkmn.abilities :"SANDSTREAM"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 2.0
  pkmn.weight 202.0
  pkmn.category "Armor"
  pkmn.pokedex_entry "A Tyranitar is so overwhelmingly powerful, it can bring down a whole mountain to make its nest. It roams in mountains seeking new opponents to fight."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 1, :"SANDSTORM"
    m.at 1, :"SCREECH"
    m.at 5, :"SANDSTORM"
    m.at 10, :"SCREECH"
    m.at 14, :"CHIPAWAY"
    m.at 19, :"ROCKSLIDE"
    m.at 23, :"SCARYFACE"
    m.at 28, :"THRASH"
    m.at 34, :"DARKPULSE"
    m.at 41, :"PAYBACK"
    m.at 47, :"CRUNCH"
    m.at 54, :"EARTHQUAKE"
    m.at 63, :"STONEEDGE"
    m.at 73, :"HYPERBEAM"
    m.at 82, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNARL", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"TYRANITAR" do |m|
  m.back_sprite -3, 0
  m.front_sprite 7, 8
  m.shadow_sprite 0, 0, 3
end