#=============================================================================
# MEOWTH_2 - NORMAL Type
#=============================================================================

GameData::Species.define :"MEOWTH_2" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"FAKEOUT"
    m.at 4, :"HONECLAWS"
    m.at 8, :"SCRATCH"
    m.at 12, :"PAYDAY"
    m.at 16, :"METALCLAW"
    m.at 20, :"TAUNT"
    m.at 24, :"SWAGGER"
    m.at 29, :"FURYSWIPES"
    m.at 32, :"SCREECH"
    m.at 36, :"SLASH"
    m.at 40, :"METALSOUND"
    m.at 44, :"THRASH"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"FAKETEARS", :"PROTECT", :"THIEF", :"TRAILBLAZE", :"FACADE", :"AERIALACE", :"METALCLAW", :"FLING", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"DIG", :"FALSESWIPE", :"BRICKBREAK", :"UTURN", :"SHADOWCLAW", :"FOULPLAY", :"BODYSLAM", :"SLEEPTALK", :"SEEDBOMB", :"METRONOME", :"REST", :"TAUNT", :"SWORDSDANCE", :"FLASHCANNON", :"DARKPULSE", :"IRONHEAD", :"GUNKSHOT", :"SUBSTITUTE", :"IRONDEFENSE", :"XSCISSOR", :"CRUNCH", :"SHADOWBALL", :"STEALTHROCK", :"HYPERVOICE", :"THUNDERBOLT", :"PLAYROUGH", :"AMNESIA", :"HELPINGHAND", :"NASTYPLOT", :"THUNDER", :"STEELBEAM", :"SPITE", :"GYROBALL", :"KNOCKOFF", :"LASHOUT", :"DOUBLEEDGE", :"ENDEAVOR", :"THROATCHOP", :"METALSOUND", :"CURSE"
  pkmn.egg_moves :"DOUBLEEDGE", :"CURSE", :"FLAIL", :"SPITE", :"COVET", :"NIGHTSLASH"
end