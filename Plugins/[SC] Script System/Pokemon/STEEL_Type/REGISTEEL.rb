#=============================================================================
# Registeel - STEEL Type
#=============================================================================

GameData::Species.define :"REGISTEEL" do |pkmn|
  pkmn.name "Registeel"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 80, attack: 75, defense: 150,
                  sp_atk: 50, sp_def: 75, speed: 150
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"LIGHTMETAL"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.9
  pkmn.weight 205.0
  pkmn.category "Iron"
  pkmn.pokedex_entry "Its body is harder than any other kind of metal. The body metal is composed of a mysterious substance. Not only is it hard, it shrinks and stretches flexibly."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"STOMP"
    m.at 9, :"METALCLAW"
    m.at 17, :"CURSE"
    m.at 25, :"SUPERPOWER"
    m.at 33, :"ANCIENTPOWER"
    m.at 41, :"IRONDEFENSE"
    m.at 41, :"AMNESIA"
    m.at 49, :"CHARGEBEAM"
    m.at 57, :"LOCKON"
    m.at 65, :"ZAPCANNON"
    m.at 73, :"IRONHEAD"
    m.at 73, :"FLASHCANNON"
    m.at 81, :"HAMMERARM"
    m.at 89, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC"
end

GameData::SpeciesMetrics.define :"REGISTEEL" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 11
  m.shadow_sprite 0, 0, 3
end