#=============================================================================
# Clefairy - NORMAL Type
#=============================================================================

GameData::Species.define :"CLEFAIRY" do |pkmn|
  pkmn.name "Clefairy"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 45, defense: 48,
                  sp_atk: 35, sp_def: 60, speed: 65
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 113
  pkmn.catch_rate 150
  pkmn.happiness 140
  pkmn.hatch_steps 2570
  pkmn.height 0.6
  pkmn.weight 7.5
  pkmn.category "Fairy"
  pkmn.pokedex_entry "On every night of a full moon, they come out to play. When dawn arrives, the tired Clefairy go to sleep nestled up against each other in deep and quiet mountains."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 4, :"ENCORE"
    m.at 7, :"SING"
    m.at 10, :"DOUBLESLAP"
    m.at 13, :"DEFENSECURL"
    m.at 16, :"FOLLOWME"
    m.at 19, :"BESTOW"
    m.at 22, :"WAKEUPSLAP"
    m.at 25, :"MINIMIZE"
    m.at 28, :"STOREDPOWER"
    m.at 31, :"METRONOME"
    m.at 34, :"COSMICPOWER"
    m.at 37, :"LUCKYCHANT"
    m.at 40, :"BODYSLAM"
    m.at 43, :"MOONLIGHT"
    m.at 46, :"LIGHTSCREEN"
    m.at 49, :"GRAVITY"
    m.at 52, :"METEORMASH"
    m.at 55, :"HEALINGWISH"
    m.at 58, :"AFTERYOU"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CLEFAIRY" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 23
  m.shadow_sprite 0, 0, 2
end