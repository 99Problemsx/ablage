#=============================================================================
# Crabominable - FIGHTING Type
#=============================================================================

GameData::Species.define :"CRABOMINABLE" do |pkmn|
  pkmn.name "Crabominable"
  pkmn.types :"FIGHTING", :"ICE"
  pkmn.base_stats hp: 97, attack: 132, defense: 77,
                  sp_atk: 43, sp_def: 62, speed: 67
  pkmn.abilities :"HYPERCUTTER", :"IRONFIST"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 167
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.7
  pkmn.weight 180.0
  pkmn.category "Woolly Crab"
  pkmn.pokedex_entry "It aimed for the top but got lost and ended up on a snowy mountain. Being forced to endure the cold, this Pokémon evolved and grew fur."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 0, :"ICEPUNCH"
    m.at 1, :"BUBBLE"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 1, :"PURSUIT"
    m.at 5, :"ROCKSMASH"
    m.at 9, :"LEER"
    m.at 13, :"PURSUIT"
    m.at 17, :"BUBBLEBEAM"
    m.at 22, :"POWERUPPUNCH"
    m.at 25, :"DIZZYPUNCH"
    m.at 29, :"AVALANCHE"
    m.at 33, :"REVERSAL"
    m.at 37, :"ICEHAMMER"
    m.at 42, :"IRONDEFENSE"
    m.at 45, :"DYNAMICPUNCH"
    m.at 49, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CRABOMINABLE" do |m|
  m.back_sprite 6, 43
  m.front_sprite -4, 13
end

# Form 1 - Mega Crabominable
GameData::Species.define :"CRABOMINABLE_1" do |pkmn|
  pkmn.species :"CRABOMINABLE"
  pkmn.form 1
  pkmn.name "Crabominable"
  pkmn.form_name "Mega Crabominable"
  pkmn.types :"FIGHTING", :"ICE"
  pkmn.base_stats hp: 97, attack: 157, defense: 122,
                  sp_atk: 33, sp_def: 62, speed: 107
  pkmn.abilities :"HYPERCUTTER", :"IRONFIST"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 167
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.6
  pkmn.weight 252.8
  pkmn.category "Woolly Crab"
  pkmn.pokedex_entry "It can pulverize reinforced concrete with a light swing of one of its fists, each of which is covered in a thick layer of ice."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 0, :"ICEPUNCH"
    m.at 1, :"BUBBLE"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 1, :"PURSUIT"
    m.at 5, :"ROCKSMASH"
    m.at 9, :"LEER"
    m.at 13, :"PURSUIT"
    m.at 17, :"BUBBLEBEAM"
    m.at 22, :"POWERUPPUNCH"
    m.at 25, :"DIZZYPUNCH"
    m.at 29, :"AVALANCHE"
    m.at 33, :"REVERSAL"
    m.at 37, :"ICEHAMMER"
    m.at 42, :"IRONDEFENSE"
    m.at 45, :"DYNAMICPUNCH"
    m.at 49, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CRABOMINABLE_1" do |m|
  m.back_sprite 6, 43
  m.front_sprite -4, 13
end