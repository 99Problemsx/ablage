#=============================================================================
# Vulpix - FIRE Type
#=============================================================================

GameData::Species.define :"VULPIX" do |pkmn|
  pkmn.name "Vulpix"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 38, attack: 41, defense: 40,
                  sp_atk: 65, sp_def: 50, speed: 65
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"DROUGHT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 9.9
  pkmn.category "Fox"
  pkmn.pokedex_entry "It can freely control fire, making fiery orbs fly like will-o'-the-wisps. Just before evolution, its six tails grow hot as if on fire."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 4, :"TAILWHIP"
    m.at 7, :"ROAR"
    m.at 10, :"QUICKATTACK"
    m.at 12, :"FIRESPIN"
    m.at 15, :"CONFUSERAY"
    m.at 18, :"IMPRISON"
    m.at 20, :"FEINTATTACK"
    m.at 23, :"FLAMEBURST"
    m.at 26, :"WILLOWISP"
    m.at 28, :"HEX"
    m.at 31, :"PAYBACK"
    m.at 34, :"FLAMETHROWER"
    m.at 36, :"SAFEGUARD"
    m.at 39, :"EXTRASENSORY"
    m.at 42, :"FIREBLAST"
    m.at 44, :"GRUDGE"
    m.at 47, :"CAPTIVATE"
    m.at 50, :"INFERNO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROAR", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILLOWISP", :"ZENHEADBUTT"
  pkmn.egg_moves :"DISABLE", :"EXTRASENSORY", :"FEINTATTACK", :"FLAIL", :"FLAREBLITZ", :"HEATWAVE", :"HEX", :"HOWL", :"HYPNOSIS", :"POWERSWAP", :"SECRETPOWER", :"SPITE", :"TAILSLAP"
end

GameData::SpeciesMetrics.define :"VULPIX" do |m|
  m.back_sprite -6, 0
  m.front_sprite 3, 19
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"VULPIX_1" do |pkmn|
  pkmn.species :"VULPIX"
  pkmn.form 1
  pkmn.name "Vulpix"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 38, attack: 41, defense: 40,
                  sp_atk: 65, sp_def: 50, speed: 65
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"DROUGHT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 60
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 9.9
  pkmn.category "Fox"
  pkmn.pokedex_entry "It can freely control fire, making fiery orbs fly like will-o'-the-wisps. Just before evolution, its six tails grow hot as if on fire."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 4, :"TAILWHIP"
    m.at 7, :"ROAR"
    m.at 10, :"QUICKATTACK"
    m.at 12, :"FIRESPIN"
    m.at 15, :"CONFUSERAY"
    m.at 18, :"IMPRISON"
    m.at 20, :"FEINTATTACK"
    m.at 23, :"FLAMEBURST"
    m.at 26, :"WILLOWISP"
    m.at 28, :"HEX"
    m.at 31, :"PAYBACK"
    m.at 34, :"FLAMETHROWER"
    m.at 36, :"SAFEGUARD"
    m.at 39, :"EXTRASENSORY"
    m.at 42, :"FIREBLAST"
    m.at 44, :"GRUDGE"
    m.at 47, :"CAPTIVATE"
    m.at 50, :"INFERNO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROAR", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILLOWISP", :"ZENHEADBUTT"
  pkmn.egg_moves :"DISABLE", :"EXTRASENSORY", :"FEINTATTACK", :"FLAIL", :"FLAREBLITZ", :"HEATWAVE", :"HEX", :"HOWL", :"HYPNOSIS", :"POWERSWAP", :"SECRETPOWER", :"SPITE", :"TAILSLAP"
end

GameData::SpeciesMetrics.define :"VULPIX_1" do |m|
  m.back_sprite -6, 0
  m.front_sprite 3, 19
  m.shadow_sprite 0, 0, 2
end