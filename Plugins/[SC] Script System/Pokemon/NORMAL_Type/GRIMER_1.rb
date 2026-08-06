#=============================================================================
# GRIMER_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"GRIMER_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"POISONGAS"
    m.at 4, :"HARDEN"
    m.at 7, :"BITE"
    m.at 12, :"DISABLE"
    m.at 15, :"ACIDSPRAY"
    m.at 18, :"POISONFANG"
    m.at 21, :"MINIMIZE"
    m.at 26, :"TOXIC"
    m.at 29, :"KNOCKOFF"
    m.at 32, :"CRUNCH"
    m.at 37, :"SCREECH"
    m.at 40, :"GUNKSHOT"
    m.at 43, :"ACIDARMOR"
    m.at 46, :"BELCH"
    m.at 48, :"MEMENTO"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"MUDSLAP", :"SCARYFACE", :"PROTECT", :"ACIDSPRAY", :"THIEF", :"FACADE", :"HEX", :"SNARL", :"SWIFT", :"MUDSHOT", :"ROCKTOMB", :"FLING", :"VENOSHOCK", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SANDSTORM", :"DIG", :"BRICKBREAK", :"ZENHEADBUTT", :"BODYSLAM", :"FIREPUNCH", :"THUNDERPUNCH", :"ICEPUNCH", :"SLEEPTALK", :"DRAINPUNCH", :"METRONOME", :"POISONJAB", :"REST", :"ROCKSLIDE", :"TAUNT", :"IMPRISON", :"DARKPULSE", :"GUNKSHOT", :"SUBSTITUTE", :"CRUNCH", :"GIGADRAIN", :"SHADOWBALL", :"FLAMETHROWER", :"THUNDERBOLT", :"HELPINGHAND", :"FIREBLAST", :"SLUDGEBOMB", :"STONEEDGE", :"GIGAIMPACT", :"HYPERBEAM", :"THUNDER", :"TOXIC", :"SPITE", :"KNOCKOFF", :"PAINSPLIT", :"SLUDGEWAVE", :"CURSE"
  pkmn.egg_moves :"CURSE", :"SPITE", :"MEANLOOK", :"STOCKPILE", :"SPITUP", :"SWALLOW", :"RECYCLE", :"ASSURANCE", :"SHADOWSNEAK", :"CLEARSMOG"
end