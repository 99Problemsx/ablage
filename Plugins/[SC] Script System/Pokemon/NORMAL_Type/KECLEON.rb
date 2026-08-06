#=============================================================================
# Kecleon - NORMAL Type
#=============================================================================

GameData::Species.define :"KECLEON" do |pkmn|
  pkmn.name "Kecleon"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 60, attack: 90, defense: 70,
                  sp_atk: 40, sp_def: 60, speed: 120
  pkmn.abilities :"COLORCHANGE"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 154
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 22.0
  pkmn.category "Color Swap"
  pkmn.pokedex_entry "A Pokémon that has the ability to alter its body colors to match its surroundings. A Kecleon reverts to its original colors if it is startled."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"THIEF"
    m.at 1, :"TAILWHIP"
    m.at 1, :"ASTONISH"
    m.at 1, :"LICK"
    m.at 1, :"SCRATCH"
    m.at 4, :"BIND"
    m.at 7, :"FEINTATTACK"
    m.at 10, :"FURYSWIPES"
    m.at 14, :"FEINT"
    m.at 18, :"PSYBEAM"
    m.at 22, :"SHADOWSNEAK"
    m.at 27, :"SLASH"
    m.at 32, :"SCREECH"
    m.at 37, :"SUBSTITUTE"
    m.at 43, :"SUCKERPUNCH"
    m.at 49, :"SHADOWCLAW"
    m.at 55, :"ANCIENTPOWER"
    m.at 58, :"SYNCHRONOISE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LOWKICK", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERPULSE", :"WONDERROOM", :"WORKUP"
  pkmn.egg_moves :"DISABLE", :"DIZZYPUNCH", :"FAKEOUT", :"FOULPLAY", :"MAGICCOAT", :"NASTYPLOT", :"RECOVER", :"SKILLSWAP", :"SNATCH", :"TRICK"
end

GameData::SpeciesMetrics.define :"KECLEON" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end