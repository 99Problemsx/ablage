#=============================================================================
# Darmanitan - FIRE Type
#=============================================================================

GameData::Species.define :"DARMANITAN" do |pkmn|
  pkmn.name "Darmanitan"
  pkmn.form_name "Standard Mode"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 105, attack: 140, defense: 55,
                  sp_atk: 95, sp_def: 30, speed: 55
  pkmn.abilities :"SHEERFORCE"
  pkmn.hidden_abilities :"ZENMODE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 92.9
  pkmn.category "Blazing"
  pkmn.pokedex_entry "When weakened in battle, it transforms into a stone statue. Then it sharpens its mind and fights on mentally."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"ROLLOUT"
    m.at 1, :"INCINERATE"
    m.at 1, :"RAGE"
    m.at 3, :"ROLLOUT"
    m.at 6, :"INCINERATE"
    m.at 9, :"RAGE"
    m.at 11, :"FIREFANG"
    m.at 14, :"HEADBUTT"
    m.at 17, :"SWAGGER"
    m.at 19, :"FACADE"
    m.at 22, :"FIREPUNCH"
    m.at 25, :"WORKUP"
    m.at 27, :"THRASH"
    m.at 30, :"BELLYDRUM"
    m.at 33, :"FLAREBLITZ"
    m.at 35, :"HAMMERARM"
    m.at 39, :"TAUNT"
    m.at 47, :"SUPERPOWER"
    m.at 54, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WILLOWISP", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DARMANITAN" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 26
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Standard Mode
GameData::Species.define :"DARMANITAN_1" do |pkmn|
  pkmn.species :"DARMANITAN"
  pkmn.form 1
  pkmn.name "Darmanitan"
  pkmn.form_name "Standard Mode"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 105, attack: 140, defense: 55,
                  sp_atk: 95, sp_def: 30, speed: 55
  pkmn.abilities :"SHEERFORCE"
  pkmn.hidden_abilities :"ZENMODE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 92.9
  pkmn.category "Blazing"
  pkmn.pokedex_entry "When weakened in battle, it transforms into a stone statue. Then it sharpens its mind and fights on mentally."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"ROLLOUT"
    m.at 1, :"INCINERATE"
    m.at 1, :"RAGE"
    m.at 3, :"ROLLOUT"
    m.at 6, :"INCINERATE"
    m.at 9, :"RAGE"
    m.at 11, :"FIREFANG"
    m.at 14, :"HEADBUTT"
    m.at 17, :"SWAGGER"
    m.at 19, :"FACADE"
    m.at 22, :"FIREPUNCH"
    m.at 25, :"WORKUP"
    m.at 27, :"THRASH"
    m.at 30, :"BELLYDRUM"
    m.at 33, :"FLAREBLITZ"
    m.at 35, :"HAMMERARM"
    m.at 39, :"TAUNT"
    m.at 47, :"SUPERPOWER"
    m.at 54, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WILLOWISP", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DARMANITAN_1" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 30
  m.shadow_sprite 0, 0, 2
end

# Form 3 - Standard Mode
GameData::Species.define :"DARMANITAN_3" do |pkmn|
  pkmn.species :"DARMANITAN"
  pkmn.form 3
  pkmn.name "Darmanitan"
  pkmn.form_name "Standard Mode"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 105, attack: 140, defense: 55,
                  sp_atk: 95, sp_def: 30, speed: 55
  pkmn.abilities :"SHEERFORCE"
  pkmn.hidden_abilities :"ZENMODE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 92.9
  pkmn.category "Blazing"
  pkmn.pokedex_entry "When weakened in battle, it transforms into a stone statue. Then it sharpens its mind and fights on mentally."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"ROLLOUT"
    m.at 1, :"INCINERATE"
    m.at 1, :"RAGE"
    m.at 3, :"ROLLOUT"
    m.at 6, :"INCINERATE"
    m.at 9, :"RAGE"
    m.at 11, :"FIREFANG"
    m.at 14, :"HEADBUTT"
    m.at 17, :"SWAGGER"
    m.at 19, :"FACADE"
    m.at 22, :"FIREPUNCH"
    m.at 25, :"WORKUP"
    m.at 27, :"THRASH"
    m.at 30, :"BELLYDRUM"
    m.at 33, :"FLAREBLITZ"
    m.at 35, :"HAMMERARM"
    m.at 39, :"TAUNT"
    m.at 47, :"SUPERPOWER"
    m.at 54, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GYROBALL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WILLOWISP", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"DARMANITAN_3" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 26
  m.shadow_sprite 0, 0, 3
end