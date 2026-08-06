#=============================================================================
# DEOXYS_2 - NORMAL Type
#=============================================================================

GameData::Species.define :"DEOXYS_2" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 7, :"NIGHTSHADE"
    m.at 13, :"TELEPORT"
    m.at 19, :"KNOCKOFF"
    m.at 25, :"SPIKES"
    m.at 31, :"PSYCHIC"
    m.at 37, :"PROTECT"
    m.at 43, :"SKILLSWAP"
    m.at 49, :"ZENHEADBUTT"
    m.at 55, :"AMNESIA"
    m.at 55, :"IRONDEFENSE"
    m.at 61, :"RECOVER"
    m.at 67, :"PSYCHOBOOST"
    m.at 73, :"COUNTER"
    m.at 73, :"MIRRORCOAT"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"AGILITY", :"SCARYFACE", :"PROTECT", :"WATERPULSE", :"LOWKICK", :"PSYBEAM", :"CHARGEBEAM", :"FACADE", :"AERIALACE", :"SWIFT", :"ICYWIND", :"ROCKTOMB", :"LOWSWEEP", :"STOREDPOWER", :"NIGHTSHADE", :"FLING", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"PSYSHOCK", :"BRICKBREAK", :"ZENHEADBUTT", :"FIREPUNCH", :"THUNDERPUNCH", :"ICEPUNCH", :"SLEEPTALK", :"DRAINPUNCH", :"REFLECT", :"LIGHTSCREEN", :"GRASSKNOT", :"THUNDERWAVE", :"POISONJAB", :"STOMPINGTANTRUM", :"REST", :"ROCKSLIDE", :"TAUNT", :"SPIKES", :"IMPRISON", :"FLASHCANNON", :"DARKPULSE", :"SKILLSWAP", :"SUBSTITUTE", :"IRONDEFENSE", :"TRICK", :"SHADOWBALL", :"STEALTHROCK", :"ENERGYBALL", :"PSYCHIC", :"THUNDERBOLT", :"AMNESIA", :"CALMMIND", :"ICEBEAM", :"PSYCHICTERRAIN", :"GIGAIMPACT", :"FOCUSBLAST", :"TRICKROOM", :"HYPERBEAM", :"THUNDER", :"SOLARBEAM", :"GRAVITY", :"KNOCKOFF", :"PAINSPLIT", :"PSYCHUP", :"FUTURESIGHT", :"EXPANDINGFORCE", :"METEORBEAM", :"THROATCHOP", :"PSYCHICNOISE"
end