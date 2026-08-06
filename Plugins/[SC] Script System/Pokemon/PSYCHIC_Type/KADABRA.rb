#=============================================================================
# Kadabra - PSYCHIC Type
#=============================================================================

GameData::Species.define :"KADABRA" do |pkmn|
  pkmn.name "Kadabra"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 40, attack: 35, defense: 30,
                  sp_atk: 105, sp_def: 120, speed: 70
  pkmn.abilities :"SYNCHRONIZE", :"INNERFOCUS"
  pkmn.hidden_abilities :"MAGICGUARD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 140
  pkmn.catch_rate 100
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 56.5
  pkmn.category "Psi"
  pkmn.pokedex_entry "It is rumored that a boy with psychic abilities suddenly transformed into Kadabra while he was assisting research into extrasensory powers."
  pkmn.evs special_attack: 2
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
    m.at 42, :"ROLEPLAY"
    m.at 46, :"PSYCHIC"
    m.at 48, :"FUTURESIGHT"
    m.at 52, :"TRICK"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KADABRA" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 13
  m.shadow_sprite 0, 0, 3
end