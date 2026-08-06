#=============================================================================
# Ninetales - FIRE Type
#=============================================================================

GameData::Species.define :"NINETALES" do |pkmn|
  pkmn.name "Ninetales"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 73, attack: 76, defense: 75,
                  sp_atk: 100, sp_def: 81, speed: 100
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"DROUGHT"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 177
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 19.9
  pkmn.category "Fox"
  pkmn.pokedex_entry "It has long been said that each of the nine tails embody an enchanted power. A long-lived Ninetales will have fur that shines like gold."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"NASTYPLOT"
    m.at 1, :"EMBER"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"SAFEGUARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"COVET", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"PSYSHOCK", :"REST", :"RETURN", :"ROAR", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"NINETALES" do |m|
  m.back_sprite -3, 0
  m.front_sprite 6, 13
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"NINETALES_1" do |pkmn|
  pkmn.species :"NINETALES"
  pkmn.form 1
  pkmn.name "Ninetales"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 73, attack: 76, defense: 75,
                  sp_atk: 100, sp_def: 81, speed: 100
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"DROUGHT"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 177
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 19.9
  pkmn.category "Fox"
  pkmn.pokedex_entry "It has long been said that each of the nine tails embody an enchanted power. A long-lived Ninetales will have fur that shines like gold."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"NASTYPLOT"
    m.at 1, :"EMBER"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"SAFEGUARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"COVET", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"PSYSHOCK", :"REST", :"RETURN", :"ROAR", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"NINETALES_1" do |m|
  m.back_sprite -3, 0
  m.front_sprite 6, 13
  m.shadow_sprite 0, 0, 2
end