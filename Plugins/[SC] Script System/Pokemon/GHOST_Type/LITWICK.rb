#=============================================================================
# Litwick - GHOST Type
#=============================================================================

GameData::Species.define :"LITWICK" do |pkmn|
  pkmn.name "Litwick"
  pkmn.types :"GHOST", :"FIRE"
  pkmn.base_stats hp: 50, attack: 30, defense: 55,
                  sp_atk: 20, sp_def: 65, speed: 55
  pkmn.abilities :"FLASHFIRE", :"FLAMEBODY"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 55
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 3.1
  pkmn.category "Candle"
  pkmn.pokedex_entry "While shining a light and pretending to be a guide, it leeches off the life force of any who follow it."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"ASTONISH"
    m.at 3, :"MINIMIZE"
    m.at 5, :"SMOG"
    m.at 7, :"FIRESPIN"
    m.at 10, :"CONFUSERAY"
    m.at 13, :"NIGHTSHADE"
    m.at 16, :"WILLOWISP"
    m.at 20, :"FLAMEBURST"
    m.at 24, :"IMPRISON"
    m.at 28, :"HEX"
    m.at 33, :"MEMENTO"
    m.at 38, :"INFERNO"
    m.at 43, :"CURSE"
    m.at 49, :"SHADOWBALL"
    m.at 55, :"PAINSPLIT"
    m.at 61, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP"
  pkmn.egg_moves :"ACID", :"ACIDARMOR", :"CAPTIVATE", :"CLEARSMOG", :"ENDURE", :"HAZE", :"HEATWAVE"
end

GameData::SpeciesMetrics.define :"LITWICK" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 1
end