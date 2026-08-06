#=============================================================================
# Blissey - NORMAL Type
#=============================================================================

GameData::Species.define :"BLISSEY" do |pkmn|
  pkmn.name "Blissey"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 255, attack: 10, defense: 10,
                  sp_atk: 55, sp_def: 75, speed: 135
  pkmn.abilities :"NATURALCURE", :"SERENEGRACE"
  pkmn.hidden_abilities :"HEALER"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 608
  pkmn.catch_rate 30
  pkmn.happiness 140
  pkmn.hatch_steps 10280
  pkmn.height 1.5
  pkmn.weight 46.8
  pkmn.category "Happiness"
  pkmn.pokedex_entry "If it senses sadness with its fluffy fur, a Blissey will rush over to the sad person, however far away, to share an egg of happiness that brings a smile to any face."
  pkmn.evs hp: 3
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
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BLISSEY" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 2
end