#=============================================================================
# SLOWPOKE_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"SLOWPOKE_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"CURSE"
    m.at 3, :"GROWL"
    m.at 6, :"ACID"
    m.at 9, :"YAWN"
    m.at 12, :"CONFUSION"
    m.at 15, :"DISABLE"
    m.at 18, :"WATERPULSE"
    m.at 21, :"HEADBUTT"
    m.at 24, :"ZENHEADBUTT"
    m.at 27, :"AMNESIA"
    m.at 30, :"SURF"
    m.at 33, :"SLACKOFF"
    m.at 36, :"PSYCHIC"
    m.at 39, :"PSYCHUP"
    m.at 42, :"RAINDANCE"
    m.at 45, :"HEALPULSE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"PROTECT", :"WATERPULSE", :"PSYBEAM", :"CHILLINGWATER", :"FACADE", :"BULLDOZE", :"SWIFT", :"ICYWIND", :"MUDSHOT", :"STOREDPOWER", :"AVALANCHE", :"ENDURE", :"SUNNYDAY", :"RAINDANCE", :"SNOWSCAPE", :"PSYSHOCK", :"DIG", :"ZENHEADBUTT", :"FOULPLAY", :"BODYSLAM", :"SLEEPTALK", :"LIGHTSCREEN", :"WATERFALL", :"GRASSKNOT", :"THUNDERWAVE", :"REST", :"IMPRISON", :"SKILLSWAP", :"SUBSTITUTE", :"TRICK", :"LIQUIDATION", :"SHADOWBALL", :"PSYCHIC", :"SURF", :"FLAMETHROWER", :"AMNESIA", :"CALMMIND", :"HELPINGHAND", :"ICEBEAM", :"PSYCHICTERRAIN", :"FIREBLAST", :"HYDROPUMP", :"BLIZZARD", :"EARTHQUAKE", :"TRICKROOM", :"WEATHERBALL", :"PSYCHUP", :"WHIRLPOOL", :"EXPANDINGFORCE", :"CURSE"
  pkmn.egg_moves :"STOMP", :"BELLYDRUM", :"BLOCK", :"BELCH"
end