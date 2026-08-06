#=============================================================================
# Sudowoodo - ROCK Type
#=============================================================================

GameData::Species.define :"SUDOWOODO" do |pkmn|
  pkmn.name "Sudowoodo"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 70, attack: 100, defense: 115,
                  sp_atk: 30, sp_def: 30, speed: 65
  pkmn.abilities :"STURDY", :"ROCKHEAD"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 144
  pkmn.catch_rate 65
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 38.0
  pkmn.category "Imitation"
  pkmn.pokedex_entry "It mimics a tree to avoid being attacked by enemies. But since its forelegs remain green throughout the year, it is easily identified as a fake in the winter."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"WOODHAMMER"
    m.at 1, :"COPYCAT"
    m.at 1, :"FLAIL"
    m.at 1, :"LOWKICK"
    m.at 1, :"ROCKTHROW"
    m.at 5, :"FLAIL"
    m.at 8, :"LOWKICK"
    m.at 12, :"ROCKTHROW"
    m.at 15, :"MIMIC"
    m.at 15, :"SLAM"
    m.at 19, :"FEINTATTACK"
    m.at 22, :"ROCKTOMB"
    m.at 26, :"BLOCK"
    m.at 29, :"ROCKSLIDE"
    m.at 33, :"COUNTER"
    m.at 36, :"SUCKERPUNCH"
    m.at 40, :"DOUBLEEDGE"
    m.at 43, :"STONEEDGE"
    m.at 47, :"HAMMERARM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC"
  pkmn.egg_moves :"CURSE", :"DEFENSECURL", :"ENDURE", :"HARDEN", :"HEADBUTT", :"ROLLOUT", :"SANDTOMB", :"SELFDESTRUCT", :"STEALTHROCK"
end

GameData::SpeciesMetrics.define :"SUDOWOODO" do |m|
  m.back_sprite 5, 0
  m.front_sprite 5, 16
  m.shadow_sprite 0, 0, 1
end