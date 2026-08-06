#=============================================================================
# Yamask - GHOST Type
#=============================================================================

GameData::Species.define :"YAMASK" do |pkmn|
  pkmn.name "Yamask"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 38, attack: 30, defense: 85,
                  sp_atk: 30, sp_def: 55, speed: 65
  pkmn.abilities :"MUMMY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.5
  pkmn.weight 1.5
  pkmn.category "Spirit"
  pkmn.pokedex_entry "These Pokémon arose from the spirits of people interred in graves in past ages. Each retains memories of its former life."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"PROTECT"
    m.at 5, :"DISABLE"
    m.at 9, :"HAZE"
    m.at 13, :"NIGHTSHADE"
    m.at 17, :"HEX"
    m.at 21, :"WILLOWISP"
    m.at 25, :"OMINOUSWIND"
    m.at 29, :"CURSE"
    m.at 33, :"POWERSPLIT"
    m.at 33, :"GUARDSPLIT"
    m.at 37, :"SHADOWBALL"
    m.at 41, :"GRUDGE"
    m.at 45, :"MEANLOOK"
    m.at 49, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLOCK", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"IRONDEFENSE", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM"
  pkmn.egg_moves :"DISABLE", :"ENDURE", :"FAKETEARS", :"HEALBLOCK", :"IMPRISON", :"MEMENTO", :"NASTYPLOT", :"NIGHTMARE"
end

GameData::SpeciesMetrics.define :"YAMASK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Unknown Form
GameData::Species.define :"YAMASK_1" do |pkmn|
  pkmn.species :"YAMASK"
  pkmn.form 1
  pkmn.name "Yamask"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 38, attack: 30, defense: 85,
                  sp_atk: 30, sp_def: 55, speed: 65
  pkmn.abilities :"MUMMY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.5
  pkmn.weight 1.5
  pkmn.category "Spirit"
  pkmn.pokedex_entry "These Pokémon arose from the spirits of people interred in graves in past ages. Each retains memories of its former life."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"PROTECT"
    m.at 5, :"DISABLE"
    m.at 9, :"HAZE"
    m.at 13, :"NIGHTSHADE"
    m.at 17, :"HEX"
    m.at 21, :"WILLOWISP"
    m.at 25, :"OMINOUSWIND"
    m.at 29, :"CURSE"
    m.at 33, :"POWERSPLIT"
    m.at 33, :"GUARDSPLIT"
    m.at 37, :"SHADOWBALL"
    m.at 41, :"GRUDGE"
    m.at 45, :"MEANLOOK"
    m.at 49, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLOCK", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"HIDDENPOWER", :"IRONDEFENSE", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM"
  pkmn.egg_moves :"DISABLE", :"ENDURE", :"FAKETEARS", :"HEALBLOCK", :"IMPRISON", :"MEMENTO", :"NASTYPLOT", :"NIGHTMARE"
end

GameData::SpeciesMetrics.define :"YAMASK_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 1
end