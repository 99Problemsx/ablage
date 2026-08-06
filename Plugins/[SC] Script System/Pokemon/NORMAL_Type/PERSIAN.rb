#=============================================================================
# Persian - NORMAL Type
#=============================================================================

GameData::Species.define :"PERSIAN" do |pkmn|
  pkmn.name "Persian"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 65, attack: 70, defense: 60,
                  sp_atk: 115, sp_def: 65, speed: 65
  pkmn.abilities :"LIMBER", :"TECHNICIAN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 154
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 32.0
  pkmn.category "Classy Cat"
  pkmn.pokedex_entry "A Persian's six bold whiskers sense air movements to determine what is in its vicinity. It becomes docile if grabbed by the whiskers."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SWITCHEROO"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"BITE"
    m.at 1, :"FAKEOUT"
    m.at 6, :"BITE"
    m.at 9, :"FAKEOUT"
    m.at 14, :"FURYSWIPES"
    m.at 17, :"SCREECH"
    m.at 22, :"FEINTATTACK"
    m.at 25, :"TAUNT"
    m.at 28, :"SWIFT"
    m.at 32, :"POWERGEM"
    m.at 37, :"SLASH"
    m.at 44, :"NASTYPLOT"
    m.at 49, :"ASSURANCE"
    m.at 56, :"CAPTIVATE"
    m.at 61, :"NIGHTSLASH"
    m.at 68, :"FEINT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PERSIAN" do |m|
  m.back_sprite -3, 0
  m.front_sprite 3, 15
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"PERSIAN_1" do |pkmn|
  pkmn.species :"PERSIAN"
  pkmn.form 1
  pkmn.name "Persian"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 65, attack: 70, defense: 60,
                  sp_atk: 115, sp_def: 65, speed: 65
  pkmn.abilities :"LIMBER", :"TECHNICIAN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 154
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 32.0
  pkmn.category "Classy Cat"
  pkmn.pokedex_entry "A Persian's six bold whiskers sense air movements to determine what is in its vicinity. It becomes docile if grabbed by the whiskers."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SWITCHEROO"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"BITE"
    m.at 1, :"FAKEOUT"
    m.at 6, :"BITE"
    m.at 9, :"FAKEOUT"
    m.at 14, :"FURYSWIPES"
    m.at 17, :"SCREECH"
    m.at 22, :"FEINTATTACK"
    m.at 25, :"TAUNT"
    m.at 28, :"SWIFT"
    m.at 32, :"POWERGEM"
    m.at 37, :"SLASH"
    m.at 44, :"NASTYPLOT"
    m.at 49, :"ASSURANCE"
    m.at 56, :"CAPTIVATE"
    m.at 61, :"NIGHTSLASH"
    m.at 68, :"FEINT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PERSIAN_1" do |m|
  m.back_sprite -3, 0
  m.front_sprite 3, 15
  m.shadow_sprite 0, 0, 3
end