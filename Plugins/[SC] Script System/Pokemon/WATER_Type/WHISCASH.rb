#=============================================================================
# Whiscash - WATER Type
#=============================================================================

GameData::Species.define :"WHISCASH" do |pkmn|
  pkmn.name "Whiscash"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 110, attack: 78, defense: 73,
                  sp_atk: 60, sp_def: 76, speed: 71
  pkmn.abilities :"OBLIVIOUS", :"ANTICIPATION"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 164
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 23.6
  pkmn.category "Whiskers"
  pkmn.pokedex_entry "Mysteriously, it can foretell earthquakes. In the daytime, it sleeps in mud at the bottom of a pond. When it awakens, it continually feeds throughout the night."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"ZENHEADBUTT"
    m.at 1, :"TICKLE"
    m.at 1, :"MUDSLAP"
    m.at 1, :"MUDSPORT"
    m.at 1, :"WATERSPORT"
    m.at 6, :"MUDSPORT"
    m.at 6, :"WATERSPORT"
    m.at 10, :"WATERGUN"
    m.at 14, :"MUDBOMB"
    m.at 18, :"AMNESIA"
    m.at 22, :"WATERPULSE"
    m.at 26, :"MAGNITUDE"
    m.at 33, :"REST"
    m.at 33, :"SNORE"
    m.at 39, :"AQUATAIL"
    m.at 45, :"EARTHQUAKE"
    m.at 51, :"FUTURESIGHT"
    m.at 57, :"FISSURE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WHISCASH" do |m|
  m.back_sprite -4, 0
  m.front_sprite -1, 0
  m.shadow_sprite 0, 0, 3
end