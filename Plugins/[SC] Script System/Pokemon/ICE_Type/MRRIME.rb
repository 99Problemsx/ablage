#=============================================================================
# Mr. Rime - ICE Type
#=============================================================================

GameData::Species.define :"MRRIME" do |pkmn|
  pkmn.name "Mr. Rime"
  pkmn.types :"ICE", :"PSYCHIC"
  pkmn.base_stats hp: 80, attack: 85, defense: 75,
                  sp_atk: 70, sp_def: 110, speed: 100
  pkmn.abilities :"TANGLEDFEET", :"SCREENCLEANER"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 182
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.5
  pkmn.weight 58.2
  pkmn.category "Comedian"
  pkmn.pokedex_entry "Its amusing movements make it very popular. It releases its psychic power from the pattern on its belly."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"FAKETEARS"
    m.at 1, :"SLACKOFF"
    m.at 1, :"AFTERYOU"
    m.at 1, :"BLOCK"
    m.at 1, :"COPYCAT"
    m.at 1, :"ENCORE"
    m.at 1, :"ROLEPLAY"
    m.at 1, :"PROTECT"
    m.at 1, :"RECYCLE"
    m.at 1, :"MIMIC"
    m.at 1, :"LIGHTSCREEN"
    m.at 1, :"REFLECT"
    m.at 1, :"SAFEGUARD"
    m.at 1, :"DAZZLINGGLEAM"
    m.at 1, :"MISTYTERRAIN"
    m.at 1, :"POUND"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"BATONPASS"
    m.at 1, :"ICESHARD"
    m.at 12, :"CONFUSION"
    m.at 16, :"ALLYSWITCH"
    m.at 20, :"ICYWIND"
    m.at 24, :"DOUBLEKICK"
    m.at 28, :"PSYBEAM"
    m.at 32, :"HYPNOSIS"
    m.at 36, :"MIRRORCOAT"
    m.at 40, :"SUCKERPUNCH"
    m.at 44, :"FREEZEDRY"
    m.at 48, :"PSYCHIC"
    m.at 52, :"TEETERDANCE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"AVALANCHE", :"BATONPASS", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GRASSKNOT", :"GUARDSWAP", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICICLESPEAR", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MISTYTERRAIN", :"MUDSLAP", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TRICK", :"TRICKROOM", :"TRIPLEAXEL", :"UPROAR", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"CONFUSERAY", :"FAKEOUT", :"POWERSPLIT", :"TICKLE"
end

GameData::SpeciesMetrics.define :"MRRIME" do |m|
  m.back_sprite 8, 26
  m.front_sprite -2, 9
end