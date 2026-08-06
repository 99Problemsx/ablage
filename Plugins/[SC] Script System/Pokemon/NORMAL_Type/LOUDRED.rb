#=============================================================================
# Loudred - NORMAL Type
#=============================================================================

GameData::Species.define :"LOUDRED" do |pkmn|
  pkmn.name "Loudred"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 84, attack: 71, defense: 43,
                  sp_atk: 48, sp_def: 71, speed: 43
  pkmn.abilities :"SOUNDPROOF"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 126
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 40.5
  pkmn.category "Big Voice"
  pkmn.pokedex_entry "It positions the round speakers on its head to assail foes with ultrasonic waves at massive volume. It builds power by stomping the ground."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"UPROAR"
    m.at 1, :"ASTONISH"
    m.at 1, :"HOWL"
    m.at 5, :"UPROAR"
    m.at 11, :"ASTONISH"
    m.at 15, :"HOWL"
    m.at 20, :"BITE"
    m.at 23, :"SUPERSONIC"
    m.at 29, :"STOMP"
    m.at 37, :"SCREECH"
    m.at 43, :"ROAR"
    m.at 51, :"SYNCHRONOISE"
    m.at 57, :"REST"
    m.at 57, :"SLEEPTALK"
    m.at 65, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LOUDRED" do |m|
  m.back_sprite 2, 0
  m.front_sprite -2, 11
  m.shadow_sprite 0, 0, 3
end