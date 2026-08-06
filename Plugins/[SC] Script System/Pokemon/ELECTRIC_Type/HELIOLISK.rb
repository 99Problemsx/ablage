#=============================================================================
# Heliolisk - ELECTRIC Type
#=============================================================================

GameData::Species.define :"HELIOLISK" do |pkmn|
  pkmn.name "Heliolisk"
  pkmn.types :"ELECTRIC", :"NORMAL"
  pkmn.base_stats hp: 62, attack: 55, defense: 52,
                  sp_atk: 109, sp_def: 109, speed: 94
  pkmn.abilities :"DRYSKIN", :"SANDVEIL"
  pkmn.hidden_abilities :"SOLARPOWER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 21.0
  pkmn.category "Generator"
  pkmn.pokedex_entry "They flare their frills and generate energy. A single Heliolisk can generate sufficient electricity to power a skyscraper."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"EERIEIMPULSE"
    m.at 1, :"DISCHARGE"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"CHARGE"
    m.at 1, :"BULLDOZE"
    m.at 1, :"VOLTSWITCH"
    m.at 1, :"PARABOLICCHARGE"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"THUNDERBOLT"
    m.at 1, :"ELECTRIFY"
    m.at 1, :"THUNDER"
    m.at 1, :"MUDSLAP"
    m.at 1, :"TAILWHIP"
    m.at 1, :"POUND"
    m.at 1, :"THUNDERSHOCK"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLYSWITCH", :"ATTRACT", :"BREAKINGSWIPE", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALESHOT", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WEATHERBALL", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"HELIOLISK" do |m|
  m.back_sprite 13, 49
  m.front_sprite -10, 9
end