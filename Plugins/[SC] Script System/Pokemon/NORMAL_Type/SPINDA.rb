#=============================================================================
# Spinda - NORMAL Type
#=============================================================================

GameData::Species.define :"SPINDA" do |pkmn|
  pkmn.name "Spinda"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 60, attack: 60, defense: 60,
                  sp_atk: 60, sp_def: 60, speed: 60
  pkmn.abilities :"OWNTEMPO", :"TANGLEDFEET"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 126
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.1
  pkmn.weight 5.0
  pkmn.category "Spot Panda"
  pkmn.pokedex_entry "It is distinguished by a pattern of spots that is always different. Its unsteady, tottering walk has the effect of fouling its foe's aim."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"UPROAR"
    m.at 10, :"COPYCAT"
    m.at 14, :"FEINTATTACK"
    m.at 19, :"PSYBEAM"
    m.at 23, :"HYPNOSIS"
    m.at 28, :"DIZZYPUNCH"
    m.at 32, :"SUCKERPUNCH"
    m.at 37, :"TEETERDANCE"
    m.at 41, :"PSYCHUP"
    m.at 46, :"DOUBLEEDGE"
    m.at 50, :"FLAIL"
    m.at 55, :"THRASH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEPUNCH", :"ICYWIND", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WATERPULSE", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASSIST", :"BATONPASS", :"DISABLE", :"ENCORE", :"FAKEOUT", :"FAKETEARS", :"ICYWIND", :"PSYCHOCUT", :"RAPIDSPIN", :"ROLEPLAY", :"SMELLINGSALTS", :"TRICK", :"WATERPULSE", :"WISH"
end

GameData::SpeciesMetrics.define :"SPINDA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 4, 15
  m.shadow_sprite 0, 0, 1
end