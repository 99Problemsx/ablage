#=============================================================================
# DUGTRIO_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"DUGTRIO_1" do |pkmn|

  pkmn.moves do |m|
    m.at 0, :"SANDTOMB"
    m.at 1, :"SANDATTACK"
    m.at 1, :"GROWL"
    m.at 1, :"TRIATTACK"
    m.at 1, :"METALCLAW"
    m.at 1, :"ASTONISH"
    m.at 1, :"NIGHTSLASH"
    m.at 12, :"MUDSLAP"
    m.at 16, :"BULLDOZE"
    m.at 20, :"SUCKERPUNCH"
    m.at 24, :"IRONHEAD"
    m.at 30, :"SANDSTORM"
    m.at 36, :"DIG"
    m.at 42, :"EARTHPOWER"
    m.at 48, :"EARTHQUAKE"
    m.at 54, :"FISSURE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"AGILITY", :"MUDSLAP", :"SCARYFACE", :"PROTECT", :"THIEF", :"FACADE", :"BULLDOZE", :"METALCLAW", :"MUDSHOT", :"ROCKTOMB", :"ENDURE", :"SUNNYDAY", :"SANDSTORM", :"DIG", :"SHADOWCLAW", :"FOULPLAY", :"BODYSLAM", :"SLEEPTALK", :"ROCKBLAST", :"STOMPINGTANTRUM", :"REST", :"ROCKSLIDE", :"SWORDSDANCE", :"FLASHCANNON", :"IRONHEAD", :"SUBSTITUTE", :"IRONDEFENSE", :"STEALTHROCK", :"HELPINGHAND", :"EARTHPOWER", :"REVERSAL", :"SLUDGEBOMB", :"EARTHQUAKE", :"STONEEDGE", :"GIGAIMPACT", :"HYPERBEAM", :"STEELBEAM", :"SANDTOMB", :"SMACKDOWN", :"UPROAR", :"DOUBLEEDGE", :"ENDEAVOR", :"SLUDGEWAVE", :"SCORCHINGSANDS", :"THROATCHOP", :"METALSOUND", :"CURSE"
end