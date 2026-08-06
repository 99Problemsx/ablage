#=============================================================================
# Meowth - NORMAL Type
#=============================================================================

GameData::Species.define :"MEOWTH" do |pkmn|
  pkmn.name "Meowth"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 40, attack: 45, defense: 35,
                  sp_atk: 90, sp_def: 40, speed: 40
  pkmn.abilities :"PICKUP", :"TECHNICIAN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 4.2
  pkmn.category "Scratch Cat"
  pkmn.pokedex_entry "Meowth withdraw their sharp claws into their paws to silently sneak about. For some reason, this Pokémon loves shiny coins that glitter with light."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 6, :"BITE"
    m.at 9, :"FAKEOUT"
    m.at 14, :"FURYSWIPES"
    m.at 17, :"SCREECH"
    m.at 22, :"FEINTATTACK"
    m.at 25, :"TAUNT"
    m.at 30, :"PAYDAY"
    m.at 33, :"SLASH"
    m.at 38, :"NASTYPLOT"
    m.at 41, :"ASSURANCE"
    m.at 46, :"CAPTIVATE"
    m.at 49, :"NIGHTSLASH"
    m.at 54, :"FEINT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"ASSIST", :"CHARM", :"FLAIL", :"FOULPLAY", :"HYPNOSIS", :"IRONTAIL", :"LASTRESORT", :"ODORSLEUTH", :"PUNISHMENT", :"SNATCH", :"SPITE", :"TAILWHIP"
end

GameData::SpeciesMetrics.define :"MEOWTH" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"MEOWTH_1" do |pkmn|
  pkmn.species :"MEOWTH"
  pkmn.form 1
  pkmn.name "Meowth"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 40, attack: 45, defense: 35,
                  sp_atk: 90, sp_def: 40, speed: 40
  pkmn.abilities :"PICKUP", :"TECHNICIAN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 4.2
  pkmn.category "Scratch Cat"
  pkmn.pokedex_entry "Meowth withdraw their sharp claws into their paws to silently sneak about. For some reason, this Pokémon loves shiny coins that glitter with light."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 6, :"BITE"
    m.at 9, :"FAKEOUT"
    m.at 14, :"FURYSWIPES"
    m.at 17, :"SCREECH"
    m.at 22, :"FEINTATTACK"
    m.at 25, :"TAUNT"
    m.at 30, :"PAYDAY"
    m.at 33, :"SLASH"
    m.at 38, :"NASTYPLOT"
    m.at 41, :"ASSURANCE"
    m.at 46, :"CAPTIVATE"
    m.at 49, :"NIGHTSLASH"
    m.at 54, :"FEINT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"ASSIST", :"CHARM", :"FLAIL", :"FOULPLAY", :"HYPNOSIS", :"IRONTAIL", :"LASTRESORT", :"ODORSLEUTH", :"PUNISHMENT", :"SNATCH", :"SPITE", :"TAILWHIP"
end

GameData::SpeciesMetrics.define :"MEOWTH_1" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end

# Form 2 - Unknown Form
GameData::Species.define :"MEOWTH_2" do |pkmn|
  pkmn.species :"MEOWTH"
  pkmn.form 2
  pkmn.name "Meowth"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 40, attack: 45, defense: 35,
                  sp_atk: 90, sp_def: 40, speed: 40
  pkmn.abilities :"PICKUP", :"TECHNICIAN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 4.2
  pkmn.category "Scratch Cat"
  pkmn.pokedex_entry "Meowth withdraw their sharp claws into their paws to silently sneak about. For some reason, this Pokémon loves shiny coins that glitter with light."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 6, :"BITE"
    m.at 9, :"FAKEOUT"
    m.at 14, :"FURYSWIPES"
    m.at 17, :"SCREECH"
    m.at 22, :"FEINTATTACK"
    m.at 25, :"TAUNT"
    m.at 30, :"PAYDAY"
    m.at 33, :"SLASH"
    m.at 38, :"NASTYPLOT"
    m.at 41, :"ASSURANCE"
    m.at 46, :"CAPTIVATE"
    m.at 49, :"NIGHTSLASH"
    m.at 54, :"FEINT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"ASSIST", :"CHARM", :"FLAIL", :"FOULPLAY", :"HYPNOSIS", :"IRONTAIL", :"LASTRESORT", :"ODORSLEUTH", :"PUNISHMENT", :"SNATCH", :"SPITE", :"TAILWHIP"
end

GameData::SpeciesMetrics.define :"MEOWTH_2" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end