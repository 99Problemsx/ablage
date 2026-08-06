#=============================================================================
# PORYGON-Z - NORMAL Type
#=============================================================================

GameData::Species.define :"PORYGON-Z" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"CONVERSION"
    m.at 1, :"NASTYPLOT"
    m.at 1, :"MAGNETRISE"
    m.at 1, :"RECYCLE"
    m.at 1, :"TRICKROOM"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"TACKLE"
    m.at 15, :"THUNDERSHOCK"
    m.at 20, :"PSYBEAM"
    m.at 25, :"CONVERSION2"
    m.at 30, :"AGILITY"
    m.at 35, :"RECOVER"
    m.at 40, :"DISCHARGE"
    m.at 45, :"TRIATTACK"
    m.at 50, :"DOUBLEEDGE"
    m.at 55, :"LOCKON"
    m.at 60, :"ZAPCANNON"
    m.at 65, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"AGILITY", :"PROTECT", :"PSYBEAM", :"THIEF", :"CHARGEBEAM", :"FACADE", :"SWIFT", :"ICYWIND", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"PSYSHOCK", :"ZENHEADBUTT", :"FOULPLAY", :"SLEEPTALK", :"THUNDERWAVE", :"REST", :"DARKPULSE", :"EERIEIMPULSE", :"SUBSTITUTE", :"TRICK", :"SHADOWBALL", :"PSYCHIC", :"THUNDERBOLT", :"ICEBEAM", :"NASTYPLOT", :"BLIZZARD", :"GIGAIMPACT", :"TRICKROOM", :"HYPERBEAM", :"THUNDER", :"SOLARBEAM", :"CHARGE", :"GRAVITY", :"UPROAR", :"DOUBLEEDGE", :"ELECTROWEB"
end