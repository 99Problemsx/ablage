#=============================================================================
# INDEEDEE_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"INDEEDEE_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"STOREDPOWER"
    m.at 1, :"PLAYNICE"
    m.at 5, :"BATONPASS"
    m.at 10, :"DISARMINGVOICE"
    m.at 15, :"PSYBEAM"
    m.at 20, :"HELPINGHAND"
    m.at 25, :"FOLLOWME"
    m.at 30, :"HEALINGWISH"
    m.at 35, :"PSYCHIC"
    m.at 40, :"CALMMIND"
    m.at 45, :"GUARDSPLIT"
    m.at 50, :"PSYCHICTERRAIN"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"PROTECT", :"PSYBEAM", :"DISARMINGVOICE", :"FACADE", :"SWIFT", :"MAGICALLEAF", :"DRAININGKISS", :"STOREDPOWER", :"ENDURE", :"PSYSHOCK", :"ZENHEADBUTT", :"BODYSLAM", :"SLEEPTALK", :"DRAINPUNCH", :"REFLECT", :"LIGHTSCREEN", :"DAZZLINGGLEAM", :"METRONOME", :"REST", :"IMPRISON", :"SKILLSWAP", :"SUBSTITUTE", :"TRICK", :"SHADOWBALL", :"HYPERVOICE", :"ENERGYBALL", :"PSYCHIC", :"PLAYROUGH", :"CALMMIND", :"HELPINGHAND", :"BATONPASS", :"PSYCHICTERRAIN", :"TRICKROOM", :"PSYCHUP", :"ALLURINGVOICE"
  pkmn.egg_moves :"PSYCHUP", :"FAKEOUT", :"HEALPULSE"
end