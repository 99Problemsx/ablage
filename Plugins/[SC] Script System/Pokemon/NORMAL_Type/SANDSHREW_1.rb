#=============================================================================
# SANDSHREW_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"SANDSHREW_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"SCRATCH"
    m.at 3, :"MIST"
    m.at 6, :"POWDERSNOW"
    m.at 9, :"ROLLOUT"
    m.at 12, :"FURYCUTTER"
    m.at 15, :"RAPIDSPIN"
    m.at 18, :"METALCLAW"
    m.at 21, :"SWIFT"
    m.at 24, :"FURYSWIPES"
    m.at 27, :"IRONDEFENSE"
    m.at 30, :"SLASH"
    m.at 33, :"IRONHEAD"
    m.at 36, :"GYROBALL"
    m.at 39, :"SWORDSDANCE"
    m.at 42, :"SNOWSCAPE"
    m.at 45, :"BLIZZARD"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"PROTECT", :"LOWKICK", :"THIEF", :"FACADE", :"AERIALACE", :"BULLDOZE", :"METALCLAW", :"SWIFT", :"ICYWIND", :"ROCKTOMB", :"FLING", :"AVALANCHE", :"ENDURE", :"SNOWSCAPE", :"DIG", :"BRICKBREAK", :"SHADOWCLAW", :"BODYSLAM", :"ICEPUNCH", :"SLEEPTALK", :"POISONJAB", :"REST", :"ROCKSLIDE", :"SWORDSDANCE", :"FLASHCANNON", :"LEECHLIFE", :"IRONHEAD", :"SUBSTITUTE", :"IRONDEFENSE", :"XSCISSOR", :"STEALTHROCK", :"ICESPINNER", :"AMNESIA", :"ICEBEAM", :"BLIZZARD", :"EARTHQUAKE", :"STEELBEAM", :"GYROBALL", :"KNOCKOFF", :"SUPERFANG", :"ICICLESPEAR", :"FOCUSPUNCH", :"DOUBLEEDGE", :"ENDEAVOR", :"TRIPLEAXEL", :"THROATCHOP", :"CURSE"
  pkmn.egg_moves :"COUNTER", :"CURSE", :"FLAIL", :"MIRRORCOAT", :"CRUSHCLAW", :"NIGHTSLASH", :"ICESHARD", :"HONECLAWS"
end