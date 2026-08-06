#=============================================================================
# Lickilicky - NORMAL Type
#=============================================================================

GameData::Species.define :"LICKILICKY" do |pkmn|
  pkmn.name "Lickilicky"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 110, attack: 85, defense: 95,
                  sp_atk: 50, sp_def: 80, speed: 95
  pkmn.abilities :"OWNTEMPO", :"OBLIVIOUS"
  pkmn.hidden_abilities :"CLOUDNINE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 180
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 140.0
  pkmn.category "Licking"
  pkmn.pokedex_entry "It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool."
  pkmn.evs hp: 3
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
    m.at 61, :"GYROBALL"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LICKILICKY" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 8
  m.shadow_sprite 0, 0, 3
end