#=============================================================================
# Chandelure - GHOST Type
#=============================================================================

GameData::Species.define :"CHANDELURE" do |pkmn|
  pkmn.name "Chandelure"
  pkmn.types :"GHOST", :"FIRE"
  pkmn.base_stats hp: 60, attack: 55, defense: 90,
                  sp_atk: 80, sp_def: 145, speed: 90
  pkmn.abilities :"FLASHFIRE", :"FLAMEBODY"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 234
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 34.3
  pkmn.category "Luring"
  pkmn.pokedex_entry "Being consumed in Chandelure's flame burns up the spirit, leaving the body behind."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"SMOG"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"FLAMEBURST"
    m.at 1, :"HEX"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"CHANDELURE" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 2
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Chandelure
GameData::Species.define :"CHANDELURE_1" do |pkmn|
  pkmn.species :"CHANDELURE"
  pkmn.form 1
  pkmn.name "Chandelure"
  pkmn.form_name "Mega Chandelure"
  pkmn.types :"GHOST", :"FIRE"
  pkmn.base_stats hp: 60, attack: 75, defense: 110,
                  sp_atk: 175, sp_def: 110, speed: 90
  pkmn.abilities :"FLASHFIRE", :"FLAMEBODY"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 234
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.5
  pkmn.weight 69.6
  pkmn.category "Luring"
  pkmn.pokedex_entry "One of its eyes is a window linking our world with the afterlife. This Pokémon draws in hatred and converts it into power."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"SMOG"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"FLAMEBURST"
    m.at 1, :"HEX"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"CHANDELURE_1" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 2
  m.shadow_sprite 0, 0, 2
end