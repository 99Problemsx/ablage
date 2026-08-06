#=============================================================================
# Sandslash - GROUND Type
#=============================================================================

GameData::Species.define :"SANDSLASH" do |pkmn|
  pkmn.name "Sandslash"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 75, attack: 100, defense: 110,
                  sp_atk: 65, sp_def: 45, speed: 55
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"SANDRUSH"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 158
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 29.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "It curls up in a ball to protect itself from enemy attacks. It also curls up to prevent heatstroke during the daytime when temperatures rise sharply."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"SANDATTACK"
    m.at 1, :"POISONSTING"
    m.at 3, :"SANDATTACK"
    m.at 5, :"POISONSTING"
    m.at 7, :"ROLLOUT"
    m.at 9, :"RAPIDSPIN"
    m.at 11, :"SWIFT"
    m.at 14, :"FURYCUTTER"
    m.at 17, :"MAGNITUDE"
    m.at 20, :"FURYSWIPES"
    m.at 22, :"CRUSHCLAW"
    m.at 23, :"SANDTOMB"
    m.at 26, :"SLASH"
    m.at 30, :"DIG"
    m.at 34, :"GYROBALL"
    m.at 38, :"SWORDSDANCE"
    m.at 42, :"SANDSTORM"
    m.at 46, :"EARTHQUAKE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SANDSLASH" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 18
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"SANDSLASH_1" do |pkmn|
  pkmn.species :"SANDSLASH"
  pkmn.form 1
  pkmn.name "Sandslash"
  pkmn.types :"GROUND"
  pkmn.base_stats hp: 75, attack: 100, defense: 110,
                  sp_atk: 65, sp_def: 45, speed: 55
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"SANDRUSH"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 158
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 29.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "It curls up in a ball to protect itself from enemy attacks. It also curls up to prevent heatstroke during the daytime when temperatures rise sharply."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"SANDATTACK"
    m.at 1, :"POISONSTING"
    m.at 3, :"SANDATTACK"
    m.at 5, :"POISONSTING"
    m.at 7, :"ROLLOUT"
    m.at 9, :"RAPIDSPIN"
    m.at 11, :"SWIFT"
    m.at 14, :"FURYCUTTER"
    m.at 17, :"MAGNITUDE"
    m.at 20, :"FURYSWIPES"
    m.at 22, :"CRUSHCLAW"
    m.at 23, :"SANDTOMB"
    m.at 26, :"SLASH"
    m.at 30, :"DIG"
    m.at 34, :"GYROBALL"
    m.at 38, :"SWORDSDANCE"
    m.at 42, :"SANDSTORM"
    m.at 46, :"EARTHQUAKE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SANDSLASH_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 18
  m.shadow_sprite 0, 0, 3
end