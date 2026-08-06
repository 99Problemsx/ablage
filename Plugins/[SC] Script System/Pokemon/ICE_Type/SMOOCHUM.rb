#=============================================================================
# Smoochum - ICE Type
#=============================================================================

GameData::Species.define :"SMOOCHUM" do |pkmn|
  pkmn.name "Smoochum"
  pkmn.types :"ICE", :"PSYCHIC"
  pkmn.base_stats hp: 45, attack: 30, defense: 15,
                  sp_atk: 65, sp_def: 85, speed: 65
  pkmn.abilities :"OBLIVIOUS", :"FOREWARN"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 61
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.4
  pkmn.weight 6.0
  pkmn.category "Kiss"
  pkmn.pokedex_entry "It actively runs about, but also falls often. Whenever it falls, it will check its reflection on a lake's surface to make sure its face hasn't become dirty."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 5, :"LICK"
    m.at 8, :"SWEETKISS"
    m.at 11, :"POWDERSNOW"
    m.at 15, :"CONFUSION"
    m.at 18, :"SING"
    m.at 21, :"HEARTSTAMP"
    m.at 25, :"MEANLOOK"
    m.at 28, :"FAKETEARS"
    m.at 31, :"LUCKYCHANT"
    m.at 35, :"AVALANCHE"
    m.at 38, :"PSYCHIC"
    m.at 41, :"COPYCAT"
    m.at 45, :"PERISHSONG"
    m.at 48, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FROSTBREATH", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WATERPULSE", :"ZENHEADBUTT"
  pkmn.egg_moves :"CAPTIVATE", :"FAKEOUT", :"ICEPUNCH", :"MEDITATE", :"MIRACLEEYE", :"NASTYPLOT", :"WAKEUPSLAP", :"WISH"
end

GameData::SpeciesMetrics.define :"SMOOCHUM" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 1
end