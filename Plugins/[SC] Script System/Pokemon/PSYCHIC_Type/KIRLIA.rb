#=============================================================================
# Kirlia - PSYCHIC Type
#=============================================================================

GameData::Species.define :"KIRLIA" do |pkmn|
  pkmn.name "Kirlia"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 38, attack: 35, defense: 35,
                  sp_atk: 50, sp_def: 65, speed: 55
  pkmn.abilities :"SYNCHRONIZE", :"TRACE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 97
  pkmn.catch_rate 120
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 20.2
  pkmn.category "Emotion"
  pkmn.pokedex_entry "A Kirlia has the psychic power to create a rip in the dimensions and see into the future. It is said to dance with pleasure on sunny mornings."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"CONFUSION"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"TELEPORT"
    m.at 6, :"CONFUSION"
    m.at 10, :"DOUBLETEAM"
    m.at 12, :"TELEPORT"
    m.at 17, :"LUCKYCHANT"
    m.at 22, :"MAGICALLEAF"
    m.at 25, :"HEALPULSE"
    m.at 31, :"CALMMIND"
    m.at 36, :"PSYCHIC"
    m.at 39, :"IMPRISON"
    m.at 45, :"FUTURESIGHT"
    m.at 50, :"CHARM"
    m.at 53, :"HYPNOSIS"
    m.at 59, :"DREAMEATER"
    m.at 64, :"STOREDPOWER"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KIRLIA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 1
end