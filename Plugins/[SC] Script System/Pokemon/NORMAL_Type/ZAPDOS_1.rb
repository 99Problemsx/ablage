#=============================================================================
# ZAPDOS_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"ZAPDOS_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"FOCUSENERGY"
    m.at 5, :"ROCKSMASH"
    m.at 10, :"LIGHTSCREEN"
    m.at 15, :"PLUCK"
    m.at 20, :"AGILITY"
    m.at 25, :"ANCIENTPOWER"
    m.at 30, :"BRICKBREAK"
    m.at 35, :"DRILLPECK"
    m.at 40, :"QUICKGUARD"
    m.at 45, :"THUNDEROUSKICK"
    m.at 50, :"BULKUP"
    m.at 55, :"COUNTER"
    m.at 60, :"DETECT"
    m.at 65, :"CLOSECOMBAT"
    m.at 70, :"REVERSAL"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"AGILITY", :"SCARYFACE", :"PROTECT", :"LOWKICK", :"ACROBATICS", :"TRAILBLAZE", :"FACADE", :"AERIALACE", :"SWIFT", :"LOWSWEEP", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SANDSTORM", :"BRICKBREAK", :"UTURN", :"BULKUP", :"SLEEPTALK", :"LIGHTSCREEN", :"STOMPINGTANTRUM", :"REST", :"TAUNT", :"FLY", :"SUBSTITUTE", :"TAILWIND", :"HELPINGHAND", :"REVERSAL", :"GIGAIMPACT", :"HURRICANE", :"HYPERBEAM", :"BRAVEBIRD", :"CLOSECOMBAT", :"KNOCKOFF", :"DUALWINGBEAT", :"DOUBLEEDGE", :"ENDEAVOR", :"COACHING", :"THROATCHOP"
end