#=============================================================================
# Mewtwo - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MEWTWO" do |pkmn|
  pkmn.name "Mewtwo"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 106, attack: 110, defense: 90,
                  sp_atk: 130, sp_def: 154, speed: 90
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 306
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 2.0
  pkmn.weight 122.0
  pkmn.category "Genetic"
  pkmn.pokedex_entry "A Pokémon that was created by genetic manipulation. However, even though the scientific power of humans made its body, they failed to give it a warm heart."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"DISABLE"
    m.at 1, :"BARRIER"
    m.at 8, :"SWIFT"
    m.at 15, :"FUTURESIGHT"
    m.at 22, :"PSYCHUP"
    m.at 29, :"MIRACLEEYE"
    m.at 36, :"MIST"
    m.at 43, :"PSYCHOCUT"
    m.at 50, :"AMNESIA"
    m.at 57, :"POWERSWAP"
    m.at 57, :"GUARDSWAP"
    m.at 64, :"PSYCHIC"
    m.at 71, :"MEFIRST"
    m.at 79, :"RECOVER"
    m.at 86, :"SAFEGUARD"
    m.at 93, :"AURASPHERE"
    m.at 100, :"PSYSTRIKE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"COUNTER", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WILLOWISP", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MEWTWO" do |m|
  m.back_sprite 14, 0
  m.front_sprite 3, 10
  m.shadow_sprite 0, 0, 2
end