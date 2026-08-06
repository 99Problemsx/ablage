#=============================================================================
# Ampharos - ELECTRIC Type
#=============================================================================

GameData::Species.define :"AMPHAROS" do |pkmn|
  pkmn.name "Ampharos"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 90, attack: 75, defense: 75,
                  sp_atk: 55, sp_def: 115, speed: 90
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"PLUS"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 225
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 61.5
  pkmn.category "Light"
  pkmn.pokedex_entry "It gives off so much light that it can be seen even from space. People in the old days used its light to send signals back and forth with others far away."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERSHOCK"
    m.at 4, :"THUNDERWAVE"
    m.at 8, :"THUNDERSHOCK"
    m.at 11, :"COTTONSPORE"
    m.at 16, :"CHARGE"
    m.at 20, :"TAKEDOWN"
    m.at 25, :"ELECTROBALL"
    m.at 29, :"CONFUSERAY"
    m.at 30, :"THUNDERPUNCH"
    m.at 35, :"POWERGEM"
    m.at 40, :"DISCHARGE"
    m.at 46, :"COTTONGUARD"
    m.at 51, :"SIGNALBEAM"
    m.at 57, :"LIGHTSCREEN"
    m.at 62, :"THUNDER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"AMPHAROS" do |m|
  m.back_sprite 4, 0
  m.front_sprite -5, 12
  m.shadow_sprite 0, 0, 2
end