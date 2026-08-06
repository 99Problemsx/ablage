#=============================================================================
# ARTICUNO_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"ARTICUNO_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 5, :"CONFUSION"
    m.at 10, :"REFLECT"
    m.at 15, :"HYPNOSIS"
    m.at 20, :"AGILITY"
    m.at 25, :"ANCIENTPOWER"
    m.at 30, :"TAILWIND"
    m.at 35, :"PSYCHOCUT"
    m.at 40, :"RECOVER"
    m.at 45, :"FREEZINGGLARE"
    m.at 50, :"DREAMEATER"
    m.at 55, :"HURRICANE"
    m.at 60, :"DOUBLETEAM"
    m.at 65, :"FUTURESIGHT"
    m.at 70, :"TRICKROOM"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"AGILITY", :"SCARYFACE", :"PROTECT", :"PSYBEAM", :"FACADE", :"SWIFT", :"AIRCUTTER", :"STOREDPOWER", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SNOWSCAPE", :"PSYSHOCK", :"UTURN", :"AIRSLASH", :"SLEEPTALK", :"REFLECT", :"LIGHTSCREEN", :"REST", :"IMPRISON", :"FLY", :"SKILLSWAP", :"SUBSTITUTE", :"TRICK", :"TAILWIND", :"SHADOWBALL", :"HYPERVOICE", :"PSYCHIC", :"CALMMIND", :"HELPINGHAND", :"GIGAIMPACT", :"HURRICANE", :"TRICKROOM", :"HYPERBEAM", :"BRAVEBIRD", :"DUALWINGBEAT", :"FUTURESIGHT", :"EXPANDINGFORCE", :"PSYCHICNOISE"
end