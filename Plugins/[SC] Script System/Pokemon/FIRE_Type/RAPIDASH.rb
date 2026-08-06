#=============================================================================
# Rapidash - FIRE Type
#=============================================================================

GameData::Species.define :"RAPIDASH" do |pkmn|
  pkmn.name "Rapidash"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 100, defense: 70,
                  sp_atk: 105, sp_def: 80, speed: 80
  pkmn.abilities :"RUNAWAY", :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 175
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 95.0
  pkmn.category "Fire Horse"
  pkmn.pokedex_entry "It usually canters casually in the fields and plains. But once a Rapidash turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POISONJAB"
    m.at 1, :"MEGAHORN"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 4, :"TAILWHIP"
    m.at 9, :"EMBER"
    m.at 13, :"FLAMEWHEEL"
    m.at 17, :"STOMP"
    m.at 21, :"FLAMECHARGE"
    m.at 25, :"FIRESPIN"
    m.at 29, :"TAKEDOWN"
    m.at 33, :"INFERNO"
    m.at 37, :"AGILITY"
    m.at 40, :"FURYATTACK"
    m.at 41, :"FIREBLAST"
    m.at 45, :"BOUNCE"
    m.at 49, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"RAPIDASH" do |m|
  m.back_sprite -7, 0
  m.front_sprite 5, 8
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"RAPIDASH_1" do |pkmn|
  pkmn.species :"RAPIDASH"
  pkmn.form 1
  pkmn.name "Rapidash"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 65, attack: 100, defense: 70,
                  sp_atk: 105, sp_def: 80, speed: 80
  pkmn.abilities :"RUNAWAY", :"FLASHFIRE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 175
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 95.0
  pkmn.category "Fire Horse"
  pkmn.pokedex_entry "It usually canters casually in the fields and plains. But once a Rapidash turns serious, its fiery manes flare and blaze as it gallops its way up to 150 mph."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POISONJAB"
    m.at 1, :"MEGAHORN"
    m.at 1, :"GROWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"EMBER"
    m.at 4, :"TAILWHIP"
    m.at 9, :"EMBER"
    m.at 13, :"FLAMEWHEEL"
    m.at 17, :"STOMP"
    m.at 21, :"FLAMECHARGE"
    m.at 25, :"FIRESPIN"
    m.at 29, :"TAKEDOWN"
    m.at 33, :"INFERNO"
    m.at 37, :"AGILITY"
    m.at 40, :"FURYATTACK"
    m.at 41, :"FIREBLAST"
    m.at 45, :"BOUNCE"
    m.at 49, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"RAPIDASH_1" do |m|
  m.back_sprite -7, 0
  m.front_sprite 5, 8
  m.shadow_sprite 0, 0, 3
end