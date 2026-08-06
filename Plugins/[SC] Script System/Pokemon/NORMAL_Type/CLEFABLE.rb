#=============================================================================
# Clefable - NORMAL Type
#=============================================================================

GameData::Species.define :"CLEFABLE" do |pkmn|
  pkmn.name "Clefable"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 95, attack: 70, defense: 73,
                  sp_atk: 60, sp_def: 85, speed: 90
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 213
  pkmn.catch_rate 25
  pkmn.happiness 140
  pkmn.hatch_steps 2570
  pkmn.height 1.3
  pkmn.weight 40.0
  pkmn.category "Fairy"
  pkmn.pokedex_entry "A Clefable uses its wings to skip lightly as if it were flying. Its bouncy step lets it even walk on water. On quiet, moonlit nights, it strolls on lakes."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"SING"
    m.at 1, :"DOUBLESLAP"
    m.at 1, :"MINIMIZE"
    m.at 1, :"METRONOME"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CLEFABLE" do |m|
  m.back_sprite 4, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Mega Clefable
GameData::Species.define :"CLEFABLE_1" do |pkmn|
  pkmn.species :"CLEFABLE"
  pkmn.form 1
  pkmn.name "Clefable"
  pkmn.form_name "Mega Clefable"
  pkmn.types :"FAIRY", :"FLYING"
  pkmn.base_stats hp: 95, attack: 80, defense: 93,
                  sp_atk: 135, sp_def: 110, speed: 70
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 213
  pkmn.catch_rate 25
  pkmn.happiness 140
  pkmn.hatch_steps 2570
  pkmn.height 1.7
  pkmn.weight 42.3
  pkmn.category "Fairy"
  pkmn.pokedex_entry "It flies by using the power of moonlight to control gravity within a radius of over 32 feet around it."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"SING"
    m.at 1, :"DOUBLESLAP"
    m.at 1, :"MINIMIZE"
    m.at 1, :"METRONOME"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WATERPULSE", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CLEFABLE_1" do |m|
  m.back_sprite 4, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 2
end