#=============================================================================
# Dedenne - ELECTRIC Type
#=============================================================================

GameData::Species.define :"DEDENNE" do |pkmn|
  pkmn.name "Dedenne"
  pkmn.types :"ELECTRIC", :"FAIRY"
  pkmn.base_stats hp: 67, attack: 58, defense: 57,
                  sp_atk: 101, sp_def: 81, speed: 67
  pkmn.abilities :"CHEEKPOUCH", :"PICKUP"
  pkmn.hidden_abilities :"PLUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 151
  pkmn.catch_rate 180
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 2.2
  pkmn.category "Antenna"
  pkmn.pokedex_entry "Its whiskers serve as antennas. By sending and receiving electrical waves, it can communicate with others over vast distances."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"NUZZLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"TACKLE"
    m.at 10, :"CHARGE"
    m.at 15, :"THUNDERSHOCK"
    m.at 20, :"CHARM"
    m.at 25, :"PARABOLICCHARGE"
    m.at 30, :"VOLTSWITCH"
    m.at 35, :"REST"
    m.at 35, :"SNORE"
    m.at 40, :"DISCHARGE"
    m.at 45, :"PLAYROUGH"
    m.at 50, :"SUPERFANG"
    m.at 55, :"ENTRAINMENT"
    m.at 60, :"THUNDER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"CUT", :"DAZZLINGGLEAM", :"DIG", :"DOUBLETEAM", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
  pkmn.egg_moves :"COVET", :"MAGNETRISE", :"TEARFULLOOK"
end

GameData::SpeciesMetrics.define :"DEDENNE" do |m|
  m.back_sprite 5, 53
  m.front_sprite -3, 32
end