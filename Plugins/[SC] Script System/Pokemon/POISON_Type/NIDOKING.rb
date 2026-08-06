#=============================================================================
# Nidoking - POISON Type
#=============================================================================

GameData::Species.define :"NIDOKING" do |pkmn|
  pkmn.name "Nidoking"
  pkmn.types :"POISON", :"GROUND"
  pkmn.base_stats hp: 81, attack: 92, defense: 77,
                  sp_atk: 85, sp_def: 85, speed: 75
  pkmn.abilities :"POISONPOINT", :"RIVALRY"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 223
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 62.0
  pkmn.category "Drill"
  pkmn.pokedex_entry "A Nidoking's thick tail packs enormously destructive power capable of toppling a metal transmission tower. Once it goes on a rampage, there is no stopping it."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"DOUBLEKICK"
    m.at 1, :"POISONSTING"
    m.at 23, :"CHIPAWAY"
    m.at 35, :"THRASH"
    m.at 43, :"EARTHPOWER"
    m.at 58, :"MEGAHORN"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"DRILLRUN", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"POISONJAB", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"NIDOKING" do |m|
  m.back_sprite 4, 0
  m.front_sprite 4, 10
  m.shadow_sprite 0, 0, 3
end