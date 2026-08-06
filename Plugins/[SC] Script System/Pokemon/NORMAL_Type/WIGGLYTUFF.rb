#=============================================================================
# Wigglytuff - NORMAL Type
#=============================================================================

GameData::Species.define :"WIGGLYTUFF" do |pkmn|
  pkmn.name "Wigglytuff"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 140, attack: 70, defense: 45,
                  sp_atk: 45, sp_def: 75, speed: 50
  pkmn.abilities :"CUTECHARM"
  pkmn.hidden_abilities :"FRISK"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 191
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 1.0
  pkmn.weight 12.0
  pkmn.category "Balloon"
  pkmn.pokedex_entry "Its fur is the ultimate in luxuriousness. Sleeping alongside a Wigglytuff is simply divine. Its body expands seemingly without end when it inhales."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"SING"
    m.at 1, :"DISABLE"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"DOUBLESLAP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"WIGGLYTUFF" do |m|
  m.back_sprite 0, 0
  m.front_sprite 4, 13
  m.shadow_sprite 0, 0, 2
end