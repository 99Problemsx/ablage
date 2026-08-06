#=============================================================================
# LYCANROC_2 - NORMAL Type
#=============================================================================

GameData::Species.define :"LYCANROC_2" do |pkmn|

  pkmn.moves do |m|
    m.at 0, :"CRUSHCLAW"
    m.at 1, :"ACCELEROCK"
    m.at 1, :"SUCKERPUNCH"
    m.at 1, :"TAUNT"
    m.at 1, :"ENDURE"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"REVERSAL"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"SANDATTACK"
    m.at 1, :"COUNTER"
    m.at 1, :"LEER"
    m.at 1, :"TACKLE"
    m.at 1, :"QUICKATTACK"
    m.at 12, :"ROCKTHROW"
    m.at 16, :"HOWL"
    m.at 20, :"BITE"
    m.at 24, :"ROCKTOMB"
    m.at 30, :"ROAR"
    m.at 36, :"ROCKSLIDE"
    m.at 42, :"CRUNCH"
    m.at 48, :"SCARYFACE"
    m.at 54, :"STEALTHROCK"
    m.at 60, :"STONEEDGE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"MUDSLAP", :"SCARYFACE", :"PROTECT", :"FIREFANG", :"THUNDERFANG", :"TRAILBLAZE", :"FACADE", :"BULLDOZE", :"SNARL", :"ROCKTOMB", :"ENDURE", :"SANDSTORM", :"DIG", :"BRICKBREAK", :"ZENHEADBUTT", :"PSYCHICFANGS", :"BULKUP", :"BODYSLAM", :"SLEEPTALK", :"ROCKBLAST", :"STOMPINGTANTRUM", :"REST", :"ROCKSLIDE", :"TAUNT", :"SWORDSDANCE", :"IRONHEAD", :"SUBSTITUTE", :"IRONDEFENSE", :"DRILLRUN", :"CRUNCH", :"STEALTHROCK", :"HYPERVOICE", :"PLAYROUGH", :"HELPINGHAND", :"EARTHPOWER", :"REVERSAL", :"STONEEDGE", :"GIGAIMPACT", :"OUTRAGE", :"CLOSECOMBAT", :"ROAR", :"DOUBLEEDGE", :"ENDEAVOR", :"THROATCHOP"
end