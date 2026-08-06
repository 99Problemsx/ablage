#=============================================================================
# Golurk - GROUND Type
#=============================================================================

GameData::Species.define :"GOLURK" do |pkmn|
  pkmn.name "Golurk"
  pkmn.types :"GROUND", :"GHOST"
  pkmn.base_stats hp: 89, attack: 124, defense: 80,
                  sp_atk: 55, sp_def: 55, speed: 80
  pkmn.abilities :"IRONFIST", :"KLUTZ"
  pkmn.hidden_abilities :"NOGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 169
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 2.8
  pkmn.weight 330.0
  pkmn.category "Automaton"
  pkmn.pokedex_entry "It is said that Golurk were ordered to protect people and Pokémon by the ancient people who made them."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"ASTONISH"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"MUDSLAP"
    m.at 5, :"MUDSLAP"
    m.at 9, :"ROLLOUT"
    m.at 13, :"SHADOWPUNCH"
    m.at 17, :"IRONDEFENSE"
    m.at 21, :"MEGAPUNCH"
    m.at 25, :"MAGNITUDE"
    m.at 30, :"DYNAMICPUNCH"
    m.at 35, :"NIGHTSHADE"
    m.at 40, :"CURSE"
    m.at 43, :"HEAVYSLAM"
    m.at 50, :"EARTHQUAKE"
    m.at 60, :"HAMMERARM"
    m.at 70, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"BLOCK", :"BRICKBREAK", :"BULLDOZE", :"CHARGEBEAM", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GOLURK" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 10
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Golurk
GameData::Species.define :"GOLURK_1" do |pkmn|
  pkmn.species :"GOLURK"
  pkmn.form 1
  pkmn.name "Golurk"
  pkmn.form_name "Mega Golurk"
  pkmn.types :"GROUND", :"GHOST"
  pkmn.base_stats hp: 89, attack: 159, defense: 105,
                  sp_atk: 55, sp_def: 70, speed: 105
  pkmn.abilities :"IRONFIST", :"KLUTZ"
  pkmn.hidden_abilities :"NOGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 169
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 4.0
  pkmn.weight 330.0
  pkmn.category "Automaton"
  pkmn.pokedex_entry "The energy within Golurk has been stimulated by Mega Evolution. The Pokémon could explode at any moment."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"ASTONISH"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"MUDSLAP"
    m.at 5, :"MUDSLAP"
    m.at 9, :"ROLLOUT"
    m.at 13, :"SHADOWPUNCH"
    m.at 17, :"IRONDEFENSE"
    m.at 21, :"MEGAPUNCH"
    m.at 25, :"MAGNITUDE"
    m.at 30, :"DYNAMICPUNCH"
    m.at 35, :"NIGHTSHADE"
    m.at 40, :"CURSE"
    m.at 43, :"HEAVYSLAM"
    m.at 50, :"EARTHQUAKE"
    m.at 60, :"HAMMERARM"
    m.at 70, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"BLOCK", :"BRICKBREAK", :"BULLDOZE", :"CHARGEBEAM", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GOLURK_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 10
  m.shadow_sprite 0, 0, 3
end