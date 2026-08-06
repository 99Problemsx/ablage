#=============================================================================
# DIGLETT_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"DIGLETT_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"SANDATTACK"
    m.at 1, :"METALCLAW"
    m.at 4, :"GROWL"
    m.at 8, :"ASTONISH"
    m.at 12, :"MUDSLAP"
    m.at 16, :"BULLDOZE"
    m.at 20, :"SUCKERPUNCH"
    m.at 24, :"IRONHEAD"
    m.at 28, :"SANDSTORM"
    m.at 32, :"DIG"
    m.at 36, :"EARTHPOWER"
    m.at 40, :"EARTHQUAKE"
    m.at 44, :"FISSURE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"AGILITY", :"MUDSLAP", :"SCARYFACE", :"PROTECT", :"THIEF", :"FACADE", :"BULLDOZE", :"METALCLAW", :"MUDSHOT", :"ROCKTOMB", :"ENDURE", :"SUNNYDAY", :"SANDSTORM", :"DIG", :"SHADOWCLAW", :"FOULPLAY", :"BODYSLAM", :"SLEEPTALK", :"ROCKBLAST", :"STOMPINGTANTRUM", :"REST", :"ROCKSLIDE", :"SWORDSDANCE", :"FLASHCANNON", :"IRONHEAD", :"SUBSTITUTE", :"IRONDEFENSE", :"STEALTHROCK", :"HELPINGHAND", :"EARTHPOWER", :"REVERSAL", :"SLUDGEBOMB", :"EARTHQUAKE", :"STONEEDGE", :"STEELBEAM", :"SANDTOMB", :"SMACKDOWN", :"SCORCHINGSANDS", :"METALSOUND"
  pkmn.egg_moves :"HEADBUTT", :"THRASH", :"ANCIENTPOWER", :"MEMENTO", :"METALSOUND", :"HONECLAWS", :"FINALGAMBIT"
end