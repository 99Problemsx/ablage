#=============================================================================
# GEODUDE_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"GEODUDE_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"CHARGE"
    m.at 6, :"ROCKPOLISH"
    m.at 10, :"ROLLOUT"
    m.at 12, :"SPARK"
    m.at 16, :"ROCKTHROW"
    m.at 18, :"SMACKDOWN"
    m.at 22, :"THUNDERPUNCH"
    m.at 24, :"SELFDESTRUCT"
    m.at 28, :"STEALTHROCK"
    m.at 30, :"ROCKBLAST"
    m.at 34, :"DISCHARGE"
    m.at 36, :"EXPLOSION"
    m.at 40, :"DOUBLEEDGE"
    m.at 42, :"STONEEDGE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"MUDSLAP", :"PROTECT", :"CHARGEBEAM", :"FACADE", :"BULLDOZE", :"MUDSHOT", :"ROCKTOMB", :"FLING", :"ENDURE", :"VOLTSWITCH", :"SUNNYDAY", :"SANDSTORM", :"DIG", :"BRICKBREAK", :"BODYSLAM", :"FIREPUNCH", :"THUNDERPUNCH", :"SLEEPTALK", :"ROCKBLAST", :"THUNDERWAVE", :"REST", :"ROCKSLIDE", :"SUBSTITUTE", :"IRONDEFENSE", :"STEALTHROCK", :"FLAMETHROWER", :"THUNDERBOLT", :"EARTHPOWER", :"FIREBLAST", :"WILDCHARGE", :"EARTHQUAKE", :"STONEEDGE", :"THUNDER", :"CHARGE", :"SMACKDOWN", :"GYROBALL", :"HIGHHORSEPOWER", :"FOCUSPUNCH", :"DOUBLEEDGE", :"SUPERCELLSLAM", :"ELECTROWEB", :"CURSE"
  pkmn.egg_moves :"COUNTER", :"SCREECH", :"CURSE", :"FLAIL", :"ZAPCANNON", :"ENDURE", :"BLOCK", :"WIDEGUARD"
end