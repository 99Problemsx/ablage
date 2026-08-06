#=============================================================================
# Jynx - ICE Type
#=============================================================================

GameData::Species.define :"JYNX" do |pkmn|
  pkmn.name "Jynx"
  pkmn.types :"ICE", :"PSYCHIC"
  pkmn.base_stats hp: 65, attack: 50, defense: 35,
                  sp_atk: 95, sp_def: 115, speed: 95
  pkmn.abilities :"OBLIVIOUS", :"FOREWARN"
  pkmn.hidden_abilities :"DRYSKIN"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 159
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.4
  pkmn.weight 40.6
  pkmn.category "Human Shape"
  pkmn.pokedex_entry "A Jynx sashays rhythmically as if it were dancing. Its motions are so bouncingly alluring, people seeing it are compelled to shake their hips without noticing."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"LICK"
    m.at 1, :"LOVELYKISS"
    m.at 1, :"POWDERSNOW"
    m.at 5, :"LICK"
    m.at 8, :"LOVELYKISS"
    m.at 11, :"POWDERSNOW"
    m.at 15, :"DOUBLESLAP"
    m.at 18, :"ICEPUNCH"
    m.at 21, :"HEARTSTAMP"
    m.at 25, :"MEANLOOK"
    m.at 28, :"FAKETEARS"
    m.at 33, :"WAKEUPSLAP"
    m.at 39, :"AVALANCHE"
    m.at 44, :"BODYSLAM"
    m.at 49, :"WRINGOUT"
    m.at 55, :"PERISHSONG"
    m.at 60, :"BLIZZARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"COVET", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"JYNX" do |m|
  m.back_sprite 3, 0
  m.front_sprite -5, 18
  m.shadow_sprite 0, 0, 3
end