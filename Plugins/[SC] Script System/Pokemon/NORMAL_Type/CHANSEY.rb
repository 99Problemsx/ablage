#=============================================================================
# Chansey - NORMAL Type
#=============================================================================

GameData::Species.define :"CHANSEY" do |pkmn|
  pkmn.name "Chansey"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 250, attack: 5, defense: 5,
                  sp_atk: 50, sp_def: 35, speed: 105
  pkmn.abilities :"NATURALCURE", :"SERENEGRACE"
  pkmn.hidden_abilities :"HEALER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 395
  pkmn.catch_rate 30
  pkmn.happiness 140
  pkmn.hatch_steps 10280
  pkmn.height 1.1
  pkmn.weight 34.6
  pkmn.category "Egg"
  pkmn.pokedex_entry "Chansey lay nutritionally excellent eggs every day. The eggs are so delicious, they are eagerly devoured by even those who have lost their appetite."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 5, :"TAILWHIP"
    m.at 9, :"REFRESH"
    m.at 12, :"DOUBLESLAP"
    m.at 16, :"SOFTBOILED"
    m.at 20, :"BESTOW"
    m.at 23, :"MINIMIZE"
    m.at 27, :"TAKEDOWN"
    m.at 31, :"SING"
    m.at 34, :"FLING"
    m.at 38, :"HEALPULSE"
    m.at 42, :"EGGBOMB"
    m.at 46, :"LIGHTSCREEN"
    m.at 50, :"HEALINGWISH"
    m.at 54, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AROMATHERAPY", :"COUNTER", :"ENDURE", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"METRONOME", :"MUDBOMB", :"NATURALGIFT", :"PRESENT"
end

GameData::SpeciesMetrics.define :"CHANSEY" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 19
  m.shadow_sprite 0, 0, 2
end