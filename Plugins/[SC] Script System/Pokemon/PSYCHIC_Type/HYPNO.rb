#=============================================================================
# Hypno - PSYCHIC Type
#=============================================================================

GameData::Species.define :"HYPNO" do |pkmn|
  pkmn.name "Hypno"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 85, attack: 73, defense: 70,
                  sp_atk: 67, sp_def: 73, speed: 115
  pkmn.abilities :"INSOMNIA", :"FOREWARN"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 169
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 75.6
  pkmn.category "Hypnosis"
  pkmn.pokedex_entry "The arcing movement and glitter of the pendulum in a Hypno's hand lull the foe into deep hypnosis. While searching for prey, it polishes the pendulum."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"NIGHTMARE"
    m.at 1, :"SWITCHEROO"
    m.at 1, :"POUND"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"DISABLE"
    m.at 1, :"CONFUSION"
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
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"HYPNO" do |m|
  m.back_sprite 8, 0
  m.front_sprite 2, 10
  m.shadow_sprite 0, 0, 2
end