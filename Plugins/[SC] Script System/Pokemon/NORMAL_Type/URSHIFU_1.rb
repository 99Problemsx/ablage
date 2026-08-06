#=============================================================================
# URSHIFU_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"URSHIFU_1" do |pkmn|

  pkmn.moves do |m|
    m.at 0, :"SURGINGSTRIKES"
    m.at 1, :"ENDURE"
    m.at 1, :"AQUAJET"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 1, :"FOCUSENERGY"
    m.at 12, :"AERIALACE"
    m.at 16, :"SCARYFACE"
    m.at 20, :"HEADBUTT"
    m.at 24, :"BRICKBREAK"
    m.at 28, :"DETECT"
    m.at 32, :"BULKUP"
    m.at 36, :"IRONHEAD"
    m.at 40, :"DYNAMICPUNCH"
    m.at 44, :"COUNTER"
    m.at 48, :"CLOSECOMBAT"
    m.at 52, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"SCARYFACE", :"PROTECT", :"LOWKICK", :"ACROBATICS", :"TRAILBLAZE", :"CHILLINGWATER", :"FACADE", :"AERIALACE", :"SWIFT", :"ROCKTOMB", :"LOWSWEEP", :"FLING", :"ENDURE", :"RAINDANCE", :"DIG", :"FALSESWIPE", :"BRICKBREAK", :"ZENHEADBUTT", :"UTURN", :"BULKUP", :"BODYSLAM", :"FIREPUNCH", :"THUNDERPUNCH", :"ICEPUNCH", :"SLEEPTALK", :"DRAINPUNCH", :"WATERFALL", :"POISONJAB", :"REST", :"ROCKSLIDE", :"TAUNT", :"SWORDSDANCE", :"BODYPRESS", :"IRONHEAD", :"SUBSTITUTE", :"IRONDEFENSE", :"LIQUIDATION", :"AURASPHERE", :"ICESPINNER", :"HELPINGHAND", :"REVERSAL", :"STONEEDGE", :"GIGAIMPACT", :"FOCUSBLAST", :"CLOSECOMBAT", :"FOCUSPUNCH", :"DOUBLEEDGE", :"WHIRLPOOL", :"COACHING"
end