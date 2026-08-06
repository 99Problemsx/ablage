#=============================================================================
# Alakazam - PSYCHIC Type
#=============================================================================

GameData::Species.define :"ALAKAZAM" do |pkmn|
  pkmn.name "Alakazam"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 55, attack: 50, defense: 45,
                  sp_atk: 120, sp_def: 135, speed: 85
  pkmn.abilities :"SYNCHRONIZE", :"INNERFOCUS"
  pkmn.hidden_abilities :"MAGICGUARD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 221
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 48.0
  pkmn.category "Psi"
  pkmn.pokedex_entry "While it has strong psychic abilities and high intelligence, an Alakazam's muscles are very weak. It uses psychic power to move its body."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TELEPORT"
    m.at 1, :"KINESIS"
    m.at 1, :"CONFUSION"
    m.at 16, :"CONFUSION"
    m.at 18, :"DISABLE"
    m.at 22, :"MIRACLEEYE"
    m.at 24, :"ALLYSWITCH"
    m.at 28, :"PSYBEAM"
    m.at 30, :"REFLECT"
    m.at 34, :"TELEKINESIS"
    m.at 36, :"RECOVER"
    m.at 40, :"PSYCHOCUT"
    m.at 42, :"CALMMIND"
    m.at 46, :"PSYCHIC"
    m.at 48, :"FUTURESIGHT"
    m.at 52, :"TRICK"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ALAKAZAM" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 3
end