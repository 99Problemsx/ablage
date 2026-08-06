#=============================================================================
# HO-OH - NORMAL Type
#=============================================================================

GameData::Species.define :"HO-OH" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"WHIRLWIND"
    m.at 1, :"ANCIENTPOWER"
    m.at 1, :"WEATHERBALL"
    m.at 9, :"LIFEDEW"
    m.at 18, :"SAFEGUARD"
    m.at 27, :"CALMMIND"
    m.at 36, :"EXTRASENSORY"
    m.at 45, :"RECOVER"
    m.at 54, :"SACREDFIRE"
    m.at 63, :"SUNNYDAY"
    m.at 72, :"FIREBLAST"
    m.at 81, :"FUTURESIGHT"
    m.at 90, :"SKYATTACK"
    m.at 99, :"OVERHEAT"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"PROTECT", :"CHARGEBEAM", :"FIRESPIN", :"FACADE", :"AERIALACE", :"SWIFT", :"FLAMECHARGE", :"AIRCUTTER", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SANDSTORM", :"ZENHEADBUTT", :"AIRSLASH", :"BODYSLAM", :"SLEEPTALK", :"REFLECT", :"LIGHTSCREEN", :"REST", :"IMPRISON", :"FLY", :"IRONHEAD", :"SUBSTITUTE", :"WILLOWISP", :"GIGADRAIN", :"TAILWIND", :"SHADOWBALL", :"HYPERVOICE", :"HEATWAVE", :"PSYCHIC", :"FLAMETHROWER", :"THUNDERBOLT", :"CALMMIND", :"HELPINGHAND", :"EARTHPOWER", :"FIREBLAST", :"EARTHQUAKE", :"GIGAIMPACT", :"OVERHEAT", :"HURRICANE", :"HYPERBEAM", :"BRAVEBIRD", :"FLAREBLITZ", :"THUNDER", :"SOLARBEAM", :"WEATHERBALL", :"DUALWINGBEAT", :"PSYCHUP", :"DOUBLEEDGE", :"SCORCHINGSANDS", :"FUTURESIGHT"
end