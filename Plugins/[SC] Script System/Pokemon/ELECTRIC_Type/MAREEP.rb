#=============================================================================
# Mareep - ELECTRIC Type
#=============================================================================

GameData::Species.define :"MAREEP" do |pkmn|
  pkmn.name "Mareep"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 55, attack: 40, defense: 40,
                  sp_atk: 35, sp_def: 65, speed: 45
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"PLUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 56
  pkmn.catch_rate 235
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 7.8
  pkmn.category "Wool"
  pkmn.pokedex_entry "Its fluffy wool rubs together and builds a static charge. The more energy is charged, the more brightly the lightbulb at the tip of its tail glows."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 4, :"THUNDERWAVE"
    m.at 8, :"THUNDERSHOCK"
    m.at 11, :"COTTONSPORE"
    m.at 15, :"CHARGE"
    m.at 18, :"TAKEDOWN"
    m.at 22, :"ELECTROBALL"
    m.at 25, :"CONFUSERAY"
    m.at 29, :"POWERGEM"
    m.at 32, :"DISCHARGE"
    m.at 36, :"COTTONGUARD"
    m.at 39, :"SIGNALBEAM"
    m.at 43, :"LIGHTSCREEN"
    m.at 46, :"THUNDER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE"
  pkmn.egg_moves :"AFTERYOU", :"AGILITY", :"BODYSLAM", :"CHARGE", :"FLATTER", :"IRONTAIL", :"ODORSLEUTH", :"SANDATTACK", :"SCREECH", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"MAREEP" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 2
end