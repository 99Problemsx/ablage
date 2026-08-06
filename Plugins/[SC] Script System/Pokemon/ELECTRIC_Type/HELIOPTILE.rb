#=============================================================================
# Helioptile - ELECTRIC Type
#=============================================================================

GameData::Species.define :"HELIOPTILE" do |pkmn|
  pkmn.name "Helioptile"
  pkmn.types :"ELECTRIC", :"NORMAL"
  pkmn.base_stats hp: 44, attack: 38, defense: 33,
                  sp_atk: 70, sp_def: 61, speed: 43
  pkmn.abilities :"DRYSKIN", :"SANDVEIL"
  pkmn.hidden_abilities :"SOLARPOWER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 58
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 6.0
  pkmn.category "Generator"
  pkmn.pokedex_entry "They make their home in deserts. They can generate their energy from basking in the sun, so eating food is not a requirement."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"TAILWHIP"
    m.at 4, :"POUND"
    m.at 8, :"THUNDERSHOCK"
    m.at 12, :"QUICKATTACK"
    m.at 16, :"CHARGE"
    m.at 20, :"BULLDOZE"
    m.at 24, :"VOLTSWITCH"
    m.at 28, :"PARABOLICCHARGE"
    m.at 32, :"THUNDERWAVE"
    m.at 36, :"THUNDERBOLT"
    m.at 40, :"ELECTRIFY"
    m.at 44, :"THUNDER"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLYSWITCH", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONTAIL", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"LOWSWEEP", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALESHOT", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
  pkmn.egg_moves :"DRAGONRUSH", :"DRAGONTAIL", :"GLARE"
end

GameData::SpeciesMetrics.define :"HELIOPTILE" do |m|
  m.back_sprite 6, 18
  m.front_sprite -2, 9
end