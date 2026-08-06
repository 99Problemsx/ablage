#=============================================================================
# Gengar - GHOST Type
#=============================================================================

GameData::Species.define :"GENGAR" do |pkmn|
  pkmn.name "Gengar"
  pkmn.types :"GHOST", :"POISON"
  pkmn.base_stats hp: 60, attack: 65, defense: 60,
                  sp_atk: 110, sp_def: 130, speed: 75
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 225
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 40.5
  pkmn.category "Shadow"
  pkmn.pokedex_entry "Deep in the night, your shadow cast by a streetlight may suddenly overtake you. It is actually a Gengar running past you, pretending to be your shadow."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"HYPNOSIS"
    m.at 1, :"LICK"
    m.at 1, :"SPITE"
    m.at 5, :"SPITE"
    m.at 8, :"MEANLOOK"
    m.at 12, :"CURSE"
    m.at 15, :"NIGHTSHADE"
    m.at 19, :"CONFUSERAY"
    m.at 22, :"SUCKERPUNCH"
    m.at 25, :"SHADOWPUNCH"
    m.at 28, :"PAYBACK"
    m.at 33, :"SHADOWBALL"
    m.at 39, :"DREAMEATER"
    m.at 44, :"DARKPULSE"
    m.at 50, :"DESTINYBOND"
    m.at 55, :"HEX"
    m.at 61, :"NIGHTMARE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"VENOSHOCK", :"WILLOWISP", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"GENGAR" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, 2
end