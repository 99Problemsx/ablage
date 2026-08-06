#=============================================================================
# Ponyta - FIRE Type
#=============================================================================

GameData::Species.define :"PONYTA" do |pkmn|
  pkmn.name "Ponyta"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 50, attack: 85, defense: 55,
                  sp_atk: 90, sp_def: 65, speed: 65
  pkmn.abilities :"RUNAWAY", :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 82
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 30.0
  pkmn.category "Fire Horse"
  pkmn.pokedex_entry "A Ponyta is very weak at birth. It can barely stand up. Its legs become stronger as it stumbles and falls while trying to keep up with its parent."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 4, :"TAILWHIP"
    m.at 9, :"EMBER"
    m.at 13, :"FLAMEWHEEL"
    m.at 17, :"STOMP"
    m.at 21, :"FLAMECHARGE"
    m.at 25, :"FIRESPIN"
    m.at 29, :"TAKEDOWN"
    m.at 33, :"INFERNO"
    m.at 37, :"AGILITY"
    m.at 41, :"FIREBLAST"
    m.at 45, :"BOUNCE"
    m.at 49, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"CAPTIVATE", :"CHARM", :"DOUBLEEDGE", :"DOUBLEKICK", :"FLAMEWHEEL", :"HORNDRILL", :"HYPNOSIS", :"LOWKICK", :"MORNINGSUN", :"THRASH"
end

GameData::SpeciesMetrics.define :"PONYTA" do |m|
  m.back_sprite 2, 0
  m.front_sprite 5, 16
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"PONYTA_1" do |pkmn|
  pkmn.species :"PONYTA"
  pkmn.form 1
  pkmn.name "Ponyta"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 50, attack: 85, defense: 55,
                  sp_atk: 90, sp_def: 65, speed: 65
  pkmn.abilities :"RUNAWAY", :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 82
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 30.0
  pkmn.category "Fire Horse"
  pkmn.pokedex_entry "A Ponyta is very weak at birth. It can barely stand up. Its legs become stronger as it stumbles and falls while trying to keep up with its parent."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 4, :"TAILWHIP"
    m.at 9, :"EMBER"
    m.at 13, :"FLAMEWHEEL"
    m.at 17, :"STOMP"
    m.at 21, :"FLAMECHARGE"
    m.at 25, :"FIRESPIN"
    m.at 29, :"TAKEDOWN"
    m.at 33, :"INFERNO"
    m.at 37, :"AGILITY"
    m.at 41, :"FIREBLAST"
    m.at 45, :"BOUNCE"
    m.at 49, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"CAPTIVATE", :"CHARM", :"DOUBLEEDGE", :"DOUBLEKICK", :"FLAMEWHEEL", :"HORNDRILL", :"HYPNOSIS", :"LOWKICK", :"MORNINGSUN", :"THRASH"
end

GameData::SpeciesMetrics.define :"PONYTA_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite 5, 16
  m.shadow_sprite 0, 0, 2
end