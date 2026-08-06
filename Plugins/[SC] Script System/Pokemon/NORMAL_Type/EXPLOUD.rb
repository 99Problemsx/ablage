#=============================================================================
# Exploud - NORMAL Type
#=============================================================================

GameData::Species.define :"EXPLOUD" do |pkmn|
  pkmn.name "Exploud"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 104, attack: 91, defense: 63,
                  sp_atk: 68, sp_def: 91, speed: 63
  pkmn.abilities :"SOUNDPROOF"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 84.0
  pkmn.category "Loud Noise"
  pkmn.pokedex_entry "It has sound-generating organs all over its body. It communicates with others by adjusting the tone and volume of the cries it emits."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Monster", :"Field"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
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
    m.at 40, :"CRUNCH"
    m.at 45, :"ROAR"
    m.at 55, :"SYNCHRONOISE"
    m.at 55, :"REST"
    m.at 63, :"SLEEPTALK"
    m.at 71, :"HYPERVOICE"
    m.at 79, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"EXPLOUD" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 3
end