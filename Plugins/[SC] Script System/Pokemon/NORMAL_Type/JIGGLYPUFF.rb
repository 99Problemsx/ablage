#=============================================================================
# Jigglypuff - NORMAL Type
#=============================================================================

GameData::Species.define :"JIGGLYPUFF" do |pkmn|
  pkmn.name "Jigglypuff"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 115, attack: 45, defense: 20,
                  sp_atk: 20, sp_def: 45, speed: 25
  pkmn.abilities :"CUTECHARM"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 95
  pkmn.catch_rate 170
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.5
  pkmn.weight 5.5
  pkmn.category "Balloon"
  pkmn.pokedex_entry "Nothing can avoid falling asleep hearing a Jigglypuff's song. The sound waves of its singing voice match the brain waves of someone in a deep sleep."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"SING"
    m.at 5, :"DEFENSECURL"
    m.at 9, :"POUND"
    m.at 13, :"DISABLE"
    m.at 17, :"ROUND"
    m.at 21, :"ROLLOUT"
    m.at 25, :"DOUBLESLAP"
    m.at 29, :"REST"
    m.at 33, :"BODYSLAM"
    m.at 37, :"GYROBALL"
    m.at 41, :"WAKEUPSLAP"
    m.at 45, :"MIMIC"
    m.at 49, :"HYPERVOICE"
    m.at 53, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"JIGGLYPUFF" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 24
  m.shadow_sprite 0, 0, 2
end