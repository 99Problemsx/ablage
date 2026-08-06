#=============================================================================
# Sandshrew - GROUND Type
#=============================================================================

GameData::Species.define :"SANDSHREW" do |pkmn|
  pkmn.name "Sandshrew"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 50, attack: 75, defense: 85,
                  sp_atk: 40, sp_def: 20, speed: 30
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"SANDRUSH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 12.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "When it curls up in a ball, it can make any attack bounce off harmlessly. Its hide has turned tough and solid as a result of living in the desert."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"DEFENSECURL"
    m.at 3, :"SANDATTACK"
    m.at 5, :"POISONSTING"
    m.at 7, :"ROLLOUT"
    m.at 9, :"RAPIDSPIN"
    m.at 11, :"SWIFT"
    m.at 14, :"FURYCUTTER"
    m.at 17, :"MAGNITUDE"
    m.at 20, :"FURYSWIPES"
    m.at 23, :"SANDTOMB"
    m.at 26, :"SLASH"
    m.at 30, :"DIG"
    m.at 34, :"GYROBALL"
    m.at 38, :"SWORDSDANCE"
    m.at 42, :"SANDSTORM"
    m.at 46, :"EARTHQUAKE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"CHIPAWAY", :"COUNTER", :"CRUSHCLAW", :"ENDURE", :"FLAIL", :"METALCLAW", :"MUDSHOT", :"NIGHTSLASH", :"RAPIDSPIN", :"ROCKCLIMB"
end

GameData::SpeciesMetrics.define :"SANDSHREW" do |m|
  m.back_sprite -5, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"SANDSHREW_1" do |pkmn|
  pkmn.species :"SANDSHREW"
  pkmn.form 1
  pkmn.name "Sandshrew"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 50, attack: 75, defense: 85,
                  sp_atk: 40, sp_def: 20, speed: 30
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"SANDRUSH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 12.0
  pkmn.category "Mouse"
  pkmn.pokedex_entry "When it curls up in a ball, it can make any attack bounce off harmlessly. Its hide has turned tough and solid as a result of living in the desert."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"DEFENSECURL"
    m.at 3, :"SANDATTACK"
    m.at 5, :"POISONSTING"
    m.at 7, :"ROLLOUT"
    m.at 9, :"RAPIDSPIN"
    m.at 11, :"SWIFT"
    m.at 14, :"FURYCUTTER"
    m.at 17, :"MAGNITUDE"
    m.at 20, :"FURYSWIPES"
    m.at 23, :"SANDTOMB"
    m.at 26, :"SLASH"
    m.at 30, :"DIG"
    m.at 34, :"GYROBALL"
    m.at 38, :"SWORDSDANCE"
    m.at 42, :"SANDSTORM"
    m.at 46, :"EARTHQUAKE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"CHIPAWAY", :"COUNTER", :"CRUSHCLAW", :"ENDURE", :"FLAIL", :"METALCLAW", :"MUDSHOT", :"NIGHTSLASH", :"RAPIDSPIN", :"ROCKCLIMB"
end

GameData::SpeciesMetrics.define :"SANDSHREW_1" do |m|
  m.back_sprite -5, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end