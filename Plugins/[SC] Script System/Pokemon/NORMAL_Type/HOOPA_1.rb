#=============================================================================
# HOOPA_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"HOOPA_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"DESTINYBOND"
    m.at 1, :"ALLYSWITCH"
    m.at 6, :"ASTONISH"
    m.at 10, :"TRICK"
    m.at 15, :"LIGHTSCREEN"
    m.at 19, :"PSYBEAM"
    m.at 25, :"SKILLSWAP"
    m.at 29, :"GUARDSPLIT"
    m.at 29, :"POWERSPLIT"
    m.at 46, :"KNOCKOFF"
    m.at 50, :"TRICKROOM"
    m.at 50, :"WONDERROOM"
    m.at 55, :"DARKPULSE"
    m.at 75, :"PSYCHIC"
    m.at 85, :"HYPERSPACEFURY"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"SCARYFACE", :"PROTECT", :"PSYBEAM", :"THIEF", :"FACADE", :"SWIFT", :"ROCKTOMB", :"FLING", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SANDSTORM", :"PSYSHOCK", :"BRICKBREAK", :"ZENHEADBUTT", :"FOULPLAY", :"FIREPUNCH", :"THUNDERPUNCH", :"ICEPUNCH", :"SLEEPTALK", :"DRAINPUNCH", :"REFLECT", :"LIGHTSCREEN", :"GRASSKNOT", :"THUNDERWAVE", :"REST", :"TAUNT", :"DARKPULSE", :"SKILLSWAP", :"GUNKSHOT", :"SUBSTITUTE", :"TRICK", :"SHADOWBALL", :"ENERGYBALL", :"PSYCHIC", :"THUNDERBOLT", :"CALMMIND", :"PSYCHICTERRAIN", :"NASTYPLOT", :"PHANTOMFORCE", :"GIGAIMPACT", :"FOCUSBLAST", :"TRICKROOM", :"HYPERBEAM", :"GRAVITY", :"KNOCKOFF", :"FOCUSPUNCH", :"LASHOUT", :"PSYCHUP", :"FUTURESIGHT", :"EXPANDINGFORCE", :"SKITTERSMACK", :"THROATCHOP", :"PSYCHICNOISE"
end