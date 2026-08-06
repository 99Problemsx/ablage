#=============================================================================
# Drowzee - PSYCHIC Type
#=============================================================================

GameData::Species.define :"DROWZEE" do |pkmn|
  pkmn.name "Drowzee"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 48, defense: 45,
                  sp_atk: 42, sp_def: 43, speed: 90
  pkmn.abilities :"INSOMNIA", :"FOREWARN"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 32.4
  pkmn.category "Hypnosis"
  pkmn.pokedex_entry "If your nose becomes itchy while you are sleeping, it's a sure sign that a Drowzee is standing above your pillow and trying to eat your dream through your nostrils."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"HYPNOSIS"
    m.at 5, :"DISABLE"
    m.at 9, :"CONFUSION"
    m.at 13, :"HEADBUTT"
    m.at 17, :"POISONGAS"
    m.at 21, :"MEDITATE"
    m.at 25, :"PSYBEAM"
    m.at 29, :"HEADBUTT"
    m.at 33, :"PSYCHUP"
    m.at 37, :"SYNCHRONOISE"
    m.at 41, :"ZENHEADBUTT"
    m.at 45, :"SWAGGER"
    m.at 49, :"PSYCHIC"
    m.at 53, :"NASTYPLOT"
    m.at 57, :"PSYSHOCK"
    m.at 61, :"FUTURESIGHT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"ICEPUNCH", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"ASSIST", :"BARRIER", :"FIREPUNCH", :"FLATTER", :"GUARDSWAP", :"ICEPUNCH", :"NASTYPLOT", :"PSYCHOCUT", :"ROLEPLAY", :"SECRETPOWER", :"SKILLSWAP", :"THUNDERPUNCH"
end

GameData::SpeciesMetrics.define :"DROWZEE" do |m|
  m.back_sprite 4, 0
  m.front_sprite -3, 17
  m.shadow_sprite 0, 0, 2
end