#=============================================================================
# GOLEM_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"GOLEM_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"CHARGE"
    m.at 1, :"ROCKPOLISH"
    m.at 1, :"HEAVYSLAM"
    m.at 12, :"SPARK"
    m.at 16, :"ROCKTHROW"
    m.at 18, :"SMACKDOWN"
    m.at 22, :"THUNDERPUNCH"
    m.at 24, :"SELFDESTRUCT"
    m.at 30, :"STEALTHROCK"
    m.at 34, :"ROCKBLAST"
    m.at 40, :"DISCHARGE"
    m.at 44, :"EXPLOSION"
    m.at 50, :"DOUBLEEDGE"
    m.at 54, :"STONEEDGE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"MUDSLAP", :"SCARYFACE", :"PROTECT", :"CHARGEBEAM", :"FACADE", :"BULLDOZE", :"MUDSHOT", :"ROCKTOMB", :"FLING", :"ENDURE", :"VOLTSWITCH", :"SUNNYDAY", :"SANDSTORM", :"DIG", :"BRICKBREAK", :"BODYSLAM", :"FIREPUNCH", :"THUNDERPUNCH", :"SLEEPTALK", :"ROCKBLAST", :"METRONOME", :"THUNDERWAVE", :"STOMPINGTANTRUM", :"REST", :"ROCKSLIDE", :"BODYPRESS", :"IRONHEAD", :"SUBSTITUTE", :"IRONDEFENSE", :"STEALTHROCK", :"HEAVYSLAM", :"FLAMETHROWER", :"THUNDERBOLT", :"EARTHPOWER", :"ELECTRICTERRAIN", :"FIREBLAST", :"WILDCHARGE", :"EARTHQUAKE", :"STONEEDGE", :"GIGAIMPACT", :"FOCUSBLAST", :"HYPERBEAM", :"THUNDER", :"ROAR", :"CHARGE", :"SMACKDOWN", :"GYROBALL", :"FOCUSPUNCH", :"DOUBLEEDGE", :"SUPERCELLSLAM", :"ELECTROWEB", :"METEORBEAM", :"CURSE", :"HARDPRESS"
end