#=============================================================================
# MEOWTH_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"MEOWTH_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"FAKEOUT"
    m.at 4, :"FEINT"
    m.at 8, :"SCRATCH"
    m.at 12, :"PAYDAY"
    m.at 16, :"BITE"
    m.at 20, :"TAUNT"
    m.at 24, :"ASSURANCE"
    m.at 29, :"FURYSWIPES"
    m.at 32, :"SCREECH"
    m.at 36, :"NIGHTSLASH"
    m.at 40, :"NASTYPLOT"
    m.at 44, :"PLAYROUGH"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"FAKETEARS", :"AGILITY", :"PROTECT", :"CONFUSERAY", :"THIEF", :"TRAILBLAZE", :"CHILLINGWATER", :"FACADE", :"AERIALACE", :"SNARL", :"METALCLAW", :"SWIFT", :"ICYWIND", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"DIG", :"UTURN", :"SHADOWCLAW", :"FOULPLAY", :"BODYSLAM", :"SLEEPTALK", :"SEEDBOMB", :"THUNDERWAVE", :"REST", :"TAUNT", :"DARKPULSE", :"POWERGEM", :"GUNKSHOT", :"SUBSTITUTE", :"SHADOWBALL", :"HYPERVOICE", :"THUNDERBOLT", :"PLAYROUGH", :"AMNESIA", :"HELPINGHAND", :"NASTYPLOT", :"THUNDER", :"SPITE", :"KNOCKOFF", :"LASHOUT", :"PSYCHUP", :"DOUBLEEDGE", :"ENDEAVOR", :"THROATCHOP", :"CURSE"
  pkmn.egg_moves :"HYPNOSIS", :"FLAIL", :"SPITE", :"FLATTER", :"COVET", :"PARTINGSHOT"
end