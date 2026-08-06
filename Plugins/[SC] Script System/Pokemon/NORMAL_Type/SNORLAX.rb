#=============================================================================
# Snorlax - NORMAL Type
#=============================================================================

GameData::Species.define :"SNORLAX" do |pkmn|
  pkmn.name "Snorlax"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 160, attack: 110, defense: 65,
                  sp_atk: 30, sp_def: 65, speed: 110
  pkmn.abilities :"IMMUNITY", :"THICKFAT"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 189
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 2.1
  pkmn.weight 460.0
  pkmn.category "Sleeping"
  pkmn.pokedex_entry "Snorlax's typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its big belly as a place to play."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"DEFENSECURL"
    m.at 9, :"AMNESIA"
    m.at 12, :"LICK"
    m.at 17, :"BELLYDRUM"
    m.at 20, :"YAWN"
    m.at 25, :"CHIPAWAY"
    m.at 28, :"REST"
    m.at 28, :"SNORE"
    m.at 33, :"SLEEPTALK"
    m.at 36, :"BODYSLAM"
    m.at 41, :"BLOCK"
    m.at 44, :"ROLLOUT"
    m.at 49, :"CRUNCH"
    m.at 52, :"HEAVYSLAM"
    m.at 57, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"LASTRESORT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AFTERYOU", :"CHARM", :"COUNTER", :"CURSE", :"DOUBLEEDGE", :"FISSURE", :"LICK", :"NATURALGIFT", :"PURSUIT", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"SNORLAX" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 3
end