#=============================================================================
# Lickitung - NORMAL Type
#=============================================================================

GameData::Species.define :"LICKITUNG" do |pkmn|
  pkmn.name "Lickitung"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 90, attack: 55, defense: 75,
                  sp_atk: 30, sp_def: 60, speed: 75
  pkmn.abilities :"OWNTEMPO", :"OBLIVIOUS"
  pkmn.hidden_abilities :"CLOUDNINE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 77
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 65.5
  pkmn.category "Licking"
  pkmn.pokedex_entry "Whenever it sees something unfamiliar, it always licks the object because it memorizes things by texture and taste. It is somewhat put off by sour things."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"LICK"
    m.at 5, :"SUPERSONIC"
    m.at 9, :"DEFENSECURL"
    m.at 13, :"KNOCKOFF"
    m.at 17, :"WRAP"
    m.at 21, :"STOMP"
    m.at 25, :"DISABLE"
    m.at 29, :"SLAM"
    m.at 33, :"ROLLOUT"
    m.at 37, :"CHIPAWAY"
    m.at 41, :"MEFIRST"
    m.at 45, :"REFRESH"
    m.at 49, :"SCREECH"
    m.at 53, :"POWERWHIP"
    m.at 57, :"WRINGOUT"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"BELLYDRUM", :"BODYSLAM", :"CURSE", :"HAMMERARM", :"MAGNITUDE", :"MUDDYWATER", :"SLEEPTALK", :"SMELLINGSALTS", :"SNORE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LICKITUNG" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 15
  m.shadow_sprite 0, 0, 3
end