#=============================================================================
# Ralts - PSYCHIC Type
#=============================================================================

GameData::Species.define :"RALTS" do |pkmn|
  pkmn.name "Ralts"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 28, attack: 25, defense: 25,
                  sp_atk: 40, sp_def: 45, speed: 35
  pkmn.abilities :"SYNCHRONIZE", :"TRACE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 40
  pkmn.catch_rate 235
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 6.6
  pkmn.category "Feeling"
  pkmn.pokedex_entry "A Ralts has the power to sense the emotions of people and Pokémon with the horns on its head. It takes cover if it senses any hostility."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 6, :"CONFUSION"
    m.at 10, :"DOUBLETEAM"
    m.at 12, :"TELEPORT"
    m.at 17, :"LUCKYCHANT"
    m.at 21, :"MAGICALLEAF"
    m.at 23, :"HEALPULSE"
    m.at 28, :"CALMMIND"
    m.at 32, :"PSYCHIC"
    m.at 34, :"IMPRISON"
    m.at 39, :"FUTURESIGHT"
    m.at 43, :"CHARM"
    m.at 45, :"HYPNOSIS"
    m.at 50, :"DREAMEATER"
    m.at 54, :"STOREDPOWER"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEPUNCH", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT"
  pkmn.egg_moves :"CONFUSERAY", :"DESTINYBOND", :"DISABLE", :"ENCORE", :"GRUDGE", :"MEANLOOK", :"MEMENTO", :"SHADOWSNEAK", :"SKILLSWAP", :"SYNCHRONOISE"
end

GameData::SpeciesMetrics.define :"RALTS" do |m|
  m.back_sprite 5, 0
  m.front_sprite -1, 21
  m.shadow_sprite 0, 0, 1
end