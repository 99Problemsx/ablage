#=============================================================================
# VULPIX_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"VULPIX_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"POWDERSNOW"
    m.at 4, :"DISABLE"
    m.at 8, :"ICESHARD"
    m.at 12, :"SPITE"
    m.at 16, :"ICYWIND"
    m.at 20, :"CONFUSERAY"
    m.at 24, :"AURORABEAM"
    m.at 28, :"EXTRASENSORY"
    m.at 32, :"ICEBEAM"
    m.at 36, :"IMPRISON"
    m.at 40, :"MIST"
    m.at 44, :"AURORAVEIL"
    m.at 48, :"FREEZEDRY"
    m.at 52, :"BLIZZARD"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"CHARM", :"FAKETEARS", :"AGILITY", :"PROTECT", :"CONFUSERAY", :"DISARMINGVOICE", :"CHILLINGWATER", :"FACADE", :"HEX", :"SWIFT", :"ICYWIND", :"DRAININGKISS", :"STOREDPOWER", :"ENDURE", :"RAINDANCE", :"SNOWSCAPE", :"DIG", :"ZENHEADBUTT", :"FOULPLAY", :"BODYSLAM", :"SLEEPTALK", :"DAZZLINGGLEAM", :"REST", :"IMPRISON", :"DARKPULSE", :"SUBSTITUTE", :"ENCORE", :"PLAYROUGH", :"HELPINGHAND", :"BATONPASS", :"ICEBEAM", :"MISTYTERRAIN", :"NASTYPLOT", :"BLIZZARD", :"ROAR", :"SPITE", :"ICICLESPEAR", :"WEATHERBALL", :"PAINSPLIT", :"PSYCHUP", :"DOUBLEEDGE"
  pkmn.egg_moves :"ROAR", :"HYPNOSIS", :"FLAIL", :"HOWL", :"MOONBLAST", :"BABYDOLLEYES"
end