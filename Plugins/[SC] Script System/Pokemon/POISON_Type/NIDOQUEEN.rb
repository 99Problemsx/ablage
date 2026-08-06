#=============================================================================
# Nidoqueen - POISON Type
#=============================================================================

GameData::Species.define :"NIDOQUEEN" do |pkmn|
  pkmn.name "Nidoqueen"
  pkmn.types :"POISON", :"GROUND"
  pkmn.base_stats hp: 90, attack: 82, defense: 87,
                  sp_atk: 76, sp_def: 75, speed: 85
  pkmn.abilities :"POISONPOINT", :"RIVALRY"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 223
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 60.0
  pkmn.category "Drill"
  pkmn.pokedex_entry "It is adept at sending foes flying with harsh tackles using its tough, scaly body. This Pokémon is at its strongest when it is defending its young."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"DOUBLEKICK"
    m.at 1, :"POISONSTING"
    m.at 23, :"CHIPAWAY"
    m.at 35, :"BODYSLAM"
    m.at 43, :"EARTHPOWER"
    m.at 58, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"POISONJAB", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"NIDOQUEEN" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 8
  m.shadow_sprite 0, 0, 3
end