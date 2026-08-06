#=============================================================================
# Flaaffy - ELECTRIC Type
#=============================================================================

GameData::Species.define :"FLAAFFY" do |pkmn|
  pkmn.name "Flaaffy"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 70, attack: 55, defense: 55,
                  sp_atk: 45, sp_def: 80, speed: 60
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"PLUS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 128
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 13.3
  pkmn.category "Wool"
  pkmn.pokedex_entry "Its fleece quality changes to generate strong static electricity with a small amount of wool. The bare, slick parts of its hide are shielded against electricity."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
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
    m.at 34, :"POWERGEM"
    m.at 38, :"DISCHARGE"
    m.at 43, :"COTTONGUARD"
    m.at 47, :"SIGNALBEAM"
    m.at 52, :"LIGHTSCREEN"
    m.at 56, :"THUNDER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"FLAAFFY" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, 16
  m.shadow_sprite 0, 0, 2
end