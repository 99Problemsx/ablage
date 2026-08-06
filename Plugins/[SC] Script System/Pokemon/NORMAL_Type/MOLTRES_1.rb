#=============================================================================
# MOLTRES_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"MOLTRES_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"LEER"
    m.at 5, :"PAYBACK"
    m.at 10, :"SAFEGUARD"
    m.at 15, :"WINGATTACK"
    m.at 20, :"AGILITY"
    m.at 25, :"ANCIENTPOWER"
    m.at 30, :"SUCKERPUNCH"
    m.at 35, :"AIRSLASH"
    m.at 40, :"AFTERYOU"
    m.at 45, :"FIERYWRATH"
    m.at 50, :"NASTYPLOT"
    m.at 55, :"HURRICANE"
    m.at 60, :"ENDURE"
    m.at 65, :"MEMENTO"
    m.at 70, :"SKYATTACK"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"AGILITY", :"SCARYFACE", :"PROTECT", :"ACROBATICS", :"THIEF", :"FACADE", :"AERIALACE", :"HEX", :"SNARL", :"SWIFT", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SANDSTORM", :"UTURN", :"FOULPLAY", :"AIRSLASH", :"SLEEPTALK", :"REST", :"TAUNT", :"IMPRISON", :"DARKPULSE", :"FLY", :"SUBSTITUTE", :"TAILWIND", :"SHADOWBALL", :"HYPERVOICE", :"HELPINGHAND", :"NASTYPLOT", :"GIGAIMPACT", :"HURRICANE", :"HYPERBEAM", :"BRAVEBIRD", :"SPITE", :"DUALWINGBEAT", :"LASHOUT", :"PAINSPLIT"
end