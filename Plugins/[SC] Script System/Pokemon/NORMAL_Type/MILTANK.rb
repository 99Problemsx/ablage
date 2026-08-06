#=============================================================================
# Miltank - NORMAL Type
#=============================================================================

GameData::Species.define :"MILTANK" do |pkmn|
  pkmn.name "Miltank"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 95, attack: 80, defense: 105,
                  sp_atk: 100, sp_def: 40, speed: 70
  pkmn.abilities :"THICKFAT", :"SCRAPPY"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 75.5
  pkmn.category "Milk Cow"
  pkmn.pokedex_entry "It gives over five gallons of milk daily. Its sweet milk is enjoyed by children and adults alike. People who can't drink milk turn it into yogurt and eat it instead."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"GROWL"
    m.at 5, :"DEFENSECURL"
    m.at 8, :"STOMP"
    m.at 11, :"MILKDRINK"
    m.at 15, :"BIDE"
    m.at 19, :"ROLLOUT"
    m.at 24, :"BODYSLAM"
    m.at 29, :"ZENHEADBUTT"
    m.at 35, :"CAPTIVATE"
    m.at 41, :"GYROBALL"
    m.at 48, :"HEALBELL"
    m.at 55, :"WAKEUPSLAP"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"DIZZYPUNCH", :"DOUBLEEDGE", :"ENDURE", :"HAMMERARM", :"HEARTSTAMP", :"HELPINGHAND", :"NATURALGIFT", :"PRESENT", :"PUNISHMENT", :"REVERSAL", :"SEISMICTOSS", :"SLEEPTALK"
end

GameData::SpeciesMetrics.define :"MILTANK" do |m|
  m.back_sprite -3, 0
  m.front_sprite 8, 17
  m.shadow_sprite 0, 0, 2
end