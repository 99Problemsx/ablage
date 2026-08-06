#=============================================================================
# Phanpy - GROUND Type
#=============================================================================

GameData::Species.define :"PHANPY" do |pkmn|
  pkmn.name "Phanpy"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 90, attack: 60, defense: 60,
                  sp_atk: 40, sp_def: 40, speed: 40
  pkmn.abilities :"PICKUP"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 66
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 33.5
  pkmn.category "Long Nose"
  pkmn.pokedex_entry "Phanpy's big ears serve as broad fans. When it becomes hot, it flaps the ears busily to cool down. Even the young are very strong."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"ODORSLEUTH"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"DEFENSECURL"
    m.at 6, :"FLAIL"
    m.at 10, :"TAKEDOWN"
    m.at 15, :"ROLLOUT"
    m.at 19, :"NATURALGIFT"
    m.at 24, :"SLAM"
    m.at 28, :"ENDURE"
    m.at 33, :"CHARM"
    m.at 37, :"LASTRESORT"
    m.at 42, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TOXIC"
  pkmn.egg_moves :"ANCIENTPOWER", :"BODYSLAM", :"COUNTER", :"ENDEAVOR", :"FISSURE", :"FOCUSENERGY", :"HEADSMASH", :"HEAVYSLAM", :"ICESHARD", :"MUDSLAP", :"SNORE"
end

GameData::SpeciesMetrics.define :"PHANPY" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 24
  m.shadow_sprite 0, 0, 2
end