#=============================================================================
# Gardevoir - PSYCHIC Type
#=============================================================================

GameData::Species.define :"GARDEVOIR" do |pkmn|
  pkmn.name "Gardevoir"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 68, attack: 65, defense: 65,
                  sp_atk: 80, sp_def: 125, speed: 115
  pkmn.abilities :"SYNCHRONIZE", :"TRACE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 233
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 48.4
  pkmn.category "Embrace"
  pkmn.pokedex_entry "It apparently does not feel the pull of gravity because it supports itself with psychic power. It will give its life to protect its trainer."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"HEALINGWISH"
    m.at 1, :"GROWL"
    m.at 1, :"CONFUSION"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"TELEPORT"
    m.at 6, :"CONFUSION"
    m.at 10, :"DOUBLETEAM"
    m.at 12, :"TELEPORT"
    m.at 17, :"WISH"
    m.at 22, :"MAGICALLEAF"
    m.at 25, :"HEALPULSE"
    m.at 33, :"CALMMIND"
    m.at 40, :"PSYCHIC"
    m.at 45, :"IMPRISON"
    m.at 53, :"FUTURESIGHT"
    m.at 60, :"CAPTIVATE"
    m.at 65, :"HYPNOSIS"
    m.at 73, :"DREAMEATER"
    m.at 80, :"STOREDPOWER"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GARDEVOIR" do |m|
  m.back_sprite -5, 0
  m.front_sprite 0, 7
  m.shadow_sprite 0, 0, 3
end