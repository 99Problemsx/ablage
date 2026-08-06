#=============================================================================
# TOXTRICITY_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"TOXTRICITY_1" do |pkmn|

  pkmn.moves do |m|
    m.at 0, :"SPARK"
    m.at 1, :"LEER"
    m.at 1, :"GROWL"
    m.at 1, :"ACID"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"NUZZLE"
    m.at 1, :"NOBLEROAR"
    m.at 1, :"FLAIL"
    m.at 1, :"BELCH"
    m.at 1, :"TEARFULLOOK"
    m.at 1, :"ACIDSPRAY"
    m.at 4, :"CHARGE"
    m.at 8, :"SHOCKWAVE"
    m.at 12, :"SCARYFACE"
    m.at 16, :"TAUNT"
    m.at 24, :"SCREECH"
    m.at 28, :"SWAGGER"
    m.at 32, :"TOXIC"
    m.at 36, :"DISCHARGE"
    m.at 40, :"POISONJAB"
    m.at 44, :"OVERDRIVE"
    m.at 48, :"BOOMBURST"
    m.at 52, :"MAGNETICFLUX"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"SCARYFACE", :"PROTECT", :"THUNDERFANG", :"ACIDSPRAY", :"THIEF", :"TRAILBLAZE", :"CHARGEBEAM", :"FACADE", :"POISONTAIL", :"HEX", :"SNARL", :"SWIFT", :"STOREDPOWER", :"FLING", :"VENOSHOCK", :"ENDURE", :"VOLTSWITCH", :"SUNNYDAY", :"RAINDANCE", :"BRICKBREAK", :"FIREPUNCH", :"THUNDERPUNCH", :"SLEEPTALK", :"ELECTROBALL", :"DRAINPUNCH", :"METRONOME", :"THUNDERWAVE", :"POISONJAB", :"REST", :"TAUNT", :"TOXICSPIKES", :"EERIEIMPULSE", :"GUNKSHOT", :"SUBSTITUTE", :"HYPERVOICE", :"ENCORE", :"THUNDERBOLT", :"HELPINGHAND", :"ELECTRICTERRAIN", :"WILDCHARGE", :"SLUDGEBOMB", :"GIGAIMPACT", :"HYPERBEAM", :"THUNDER", :"CHARGE", :"TOXIC", :"UPROAR", :"ENDEAVOR", :"ELECTROWEB", :"SLUDGEWAVE", :"THROATCHOP", :"METALSOUND", :"PSYCHICNOISE"
end