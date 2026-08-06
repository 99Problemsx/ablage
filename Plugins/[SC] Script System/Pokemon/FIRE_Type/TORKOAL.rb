#=============================================================================
# Torkoal - FIRE Type
#=============================================================================

GameData::Species.define :"TORKOAL" do |pkmn|
  pkmn.name "Torkoal"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 70, attack: 85, defense: 140,
                  sp_atk: 20, sp_def: 85, speed: 70
  pkmn.abilities :"WHITESMOKE"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 165
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 80.4
  pkmn.category "Coal"
  pkmn.pokedex_entry "It battles using energy it gets from burning coal. When loosing smoke from its nostrils, it lets off a sound that is similar to a locomotive's horn."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 4, :"SMOG"
    m.at 7, :"WITHDRAW"
    m.at 12, :"CURSE"
    m.at 17, :"FIRESPIN"
    m.at 20, :"SMOKESCREEN"
    m.at 23, :"RAPIDSPIN"
    m.at 28, :"FLAMETHROWER"
    m.at 33, :"BODYSLAM"
    m.at 36, :"PROTECT"
    m.at 39, :"LAVAPLUME"
    m.at 44, :"IRONDEFENSE"
    m.at 49, :"AMNESIA"
    m.at 52, :"FLAIL"
    m.at 55, :"HEATWAVE"
    m.at 60, :"INFERNO"
    m.at 65, :"SHELLSMASH"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"WILLOWISP"
  pkmn.egg_moves :"CLEARSMOG", :"ENDURE", :"ERUPTION", :"FISSURE", :"FLAMEBURST", :"SKULLBASH", :"SLEEPTALK", :"YAWN"
end

GameData::SpeciesMetrics.define :"TORKOAL" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 3
end