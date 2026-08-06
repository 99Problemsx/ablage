#=============================================================================
# Wailord - WATER Type
#=============================================================================

GameData::Species.define :"WAILORD" do |pkmn|
  pkmn.name "Wailord"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 170, attack: 90, defense: 45,
                  sp_atk: 60, sp_def: 90, speed: 45
  pkmn.abilities :"WATERVEIL", :"OBLIVIOUS"
  pkmn.hidden_abilities :"PRESSURE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 175
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 14.5
  pkmn.weight 398.0
  pkmn.category "Float Whale"
  pkmn.pokedex_entry "It breathes through nostrils that it raises above the sea. By inhaling to its maximum capacity, a Wailord can dive close to 10,000 feet beneath the waves."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"ROLLOUT"
    m.at 4, :"GROWL"
    m.at 7, :"WATERGUN"
    m.at 11, :"ROLLOUT"
    m.at 14, :"WHIRLPOOL"
    m.at 17, :"ASTONISH"
    m.at 21, :"WATERPULSE"
    m.at 24, :"MIST"
    m.at 27, :"REST"
    m.at 31, :"BRINE"
    m.at 34, :"WATERSPOUT"
    m.at 37, :"AMNESIA"
    m.at 46, :"DIVE"
    m.at 54, :"BOUNCE"
    m.at 62, :"HYDROPUMP"
    m.at 70, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BOUNCE", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WAILORD" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 7
  m.shadow_sprite 0, 0, 3
end