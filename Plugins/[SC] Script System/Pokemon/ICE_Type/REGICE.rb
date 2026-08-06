#=============================================================================
# Regice - ICE Type
#=============================================================================

GameData::Species.define :"REGICE" do |pkmn|
  pkmn.name "Regice"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 80, attack: 50, defense: 100,
                  sp_atk: 50, sp_def: 100, speed: 200
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.8
  pkmn.weight 175.0
  pkmn.category "Iceberg"
  pkmn.pokedex_entry "Its entire body is made of Antarctic ice. After extensive studies, researchers believe the ice was formed during an ice age."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"STOMP"
    m.at 9, :"ICYWIND"
    m.at 17, :"CURSE"
    m.at 25, :"SUPERPOWER"
    m.at 33, :"ANCIENTPOWER"
    m.at 41, :"AMNESIA"
    m.at 49, :"CHARGEBEAM"
    m.at 57, :"LOCKON"
    m.at 65, :"ZAPCANNON"
    m.at 73, :"ICEBEAM"
    m.at 81, :"HAMMERARM"
    m.at 89, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONHEAD", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC"
end

GameData::SpeciesMetrics.define :"REGICE" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, 3
end