#=============================================================================
# Wailmer - WATER Type
#=============================================================================

GameData::Species.define :"WAILMER" do |pkmn|
  pkmn.name "Wailmer"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 130, attack: 70, defense: 35,
                  sp_atk: 60, sp_def: 70, speed: 35
  pkmn.abilities :"WATERVEIL", :"OBLIVIOUS"
  pkmn.hidden_abilities :"PRESSURE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 80
  pkmn.catch_rate 125
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 2.0
  pkmn.weight 130.0
  pkmn.category "Ball Whale"
  pkmn.pokedex_entry "While this Pokémon usually lives in the sea, it can survive on land, although not too long. It loses vitality if its body becomes dried out."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
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
    m.at 41, :"DIVE"
    m.at 44, :"BOUNCE"
    m.at 47, :"HYDROPUMP"
    m.at 50, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"AQUARING", :"BODYSLAM", :"CURSE", :"DEFENSECURL", :"DOUBLEEDGE", :"FISSURE", :"SLEEPTALK", :"SNORE", :"SOAK", :"THRASH", :"TICKLE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WAILMER" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 3
end