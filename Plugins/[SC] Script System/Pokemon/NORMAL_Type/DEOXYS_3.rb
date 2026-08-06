#=============================================================================
# DEOXYS_3 - NORMAL Type
#=============================================================================

GameData::Species.define :"DEOXYS_3" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 7, :"NIGHTSHADE"
    m.at 13, :"DOUBLETEAM"
    m.at 19, :"KNOCKOFF"
    m.at 25, :"PSYSHOCK"
    m.at 31, :"PSYCHIC"
    m.at 37, :"SWIFT"
    m.at 43, :"SKILLSWAP"
    m.at 49, :"ZENHEADBUTT"
    m.at 55, :"AGILITY"
    m.at 61, :"RECOVER"
    m.at 67, :"PSYCHOBOOST"
    m.at 73, :"EXTREMESPEED"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"AGILITY", :"SCARYFACE", :"PROTECT", :"WATERPULSE", :"LOWKICK", :"PSYBEAM", :"CHARGEBEAM", :"FACADE", :"AERIALACE", :"SWIFT", :"ICYWIND", :"ROCKTOMB", :"LOWSWEEP", :"STOREDPOWER", :"NIGHTSHADE", :"FLING", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"PSYSHOCK", :"BRICKBREAK", :"ZENHEADBUTT", :"FIREPUNCH", :"THUNDERPUNCH", :"ICEPUNCH", :"SLEEPTALK", :"DRAINPUNCH", :"REFLECT", :"LIGHTSCREEN", :"GRASSKNOT", :"THUNDERWAVE", :"POISONJAB", :"STOMPINGTANTRUM", :"REST", :"ROCKSLIDE", :"TAUNT", :"IMPRISON", :"FLASHCANNON", :"DARKPULSE", :"SKILLSWAP", :"SUBSTITUTE", :"TRICK", :"SHADOWBALL", :"STEALTHROCK", :"ENERGYBALL", :"PSYCHIC", :"THUNDERBOLT", :"AMNESIA", :"CALMMIND", :"ICEBEAM", :"PSYCHICTERRAIN", :"NASTYPLOT", :"GIGAIMPACT", :"FOCUSBLAST", :"TRICKROOM", :"HYPERBEAM", :"THUNDER", :"SOLARBEAM", :"GRAVITY", :"KNOCKOFF", :"PAINSPLIT", :"PSYCHUP", :"FUTURESIGHT", :"EXPANDINGFORCE", :"METEORBEAM", :"THROATCHOP", :"PSYCHICNOISE"
end