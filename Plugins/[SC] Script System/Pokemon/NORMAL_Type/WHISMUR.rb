#=============================================================================
# Whismur - NORMAL Type
#=============================================================================

GameData::Species.define :"WHISMUR" do |pkmn|
  pkmn.name "Whismur"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 64, attack: 51, defense: 23,
                  sp_atk: 28, sp_def: 51, speed: 23
  pkmn.abilities :"SOUNDPROOF"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 48
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 16.3
  pkmn.category "Whisper"
  pkmn.pokedex_entry "Its cries equal a jet plane in volume. It inhales through its ear canals. Because of this system, it can cry continually without having to catch its breath."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 5, :"UPROAR"
    m.at 11, :"ASTONISH"
    m.at 15, :"HOWL"
    m.at 21, :"SUPERSONIC"
    m.at 25, :"STOMP"
    m.at 31, :"SCREECH"
    m.at 35, :"ROAR"
    m.at 41, :"SYNCHRONOISE"
    m.at 45, :"REST"
    m.at 45, :"SLEEPTALK"
    m.at 51, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"CIRCLETHROW", :"ENDEAVOR", :"EXTRASENSORY", :"FAKETEARS", :"HAMMERARM", :"SMELLINGSALTS", :"SMOKESCREEN", :"SNORE", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"WHISMUR" do |m|
  m.back_sprite 7, 0
  m.front_sprite 1, 21
  m.shadow_sprite 0, 0, 1
end