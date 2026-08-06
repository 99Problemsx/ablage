#=============================================================================
# Spheal - ICE Type
#=============================================================================

GameData::Species.define :"SPHEAL" do |pkmn|
  pkmn.name "Spheal"
  pkmn.types :"ICE", :"WATER"
  pkmn.base_stats hp: 70, attack: 40, defense: 50,
                  sp_atk: 25, sp_def: 55, speed: 50
  pkmn.abilities :"THICKFAT", :"ICEBODY"
  pkmn.hidden_abilities :"OBLIVIOUS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 58
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 39.5
  pkmn.category "Clap"
  pkmn.pokedex_entry "It is completely covered with plushy fur. As a result, it never feels the cold even when it is rolling about on ice floes or diving in the sea."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"POWDERSNOW"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 7, :"ENCORE"
    m.at 13, :"ICEBALL"
    m.at 19, :"BODYSLAM"
    m.at 25, :"AURORABEAM"
    m.at 31, :"HAIL"
    m.at 37, :"REST"
    m.at 37, :"SNORE"
    m.at 43, :"BLIZZARD"
    m.at 49, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUARING", :"CURSE", :"FISSURE", :"ROLLOUT", :"SIGNALBEAM", :"SLEEPTALK", :"SPITUP", :"STOCKPILE", :"SWALLOW", :"WATERPULSE", :"WATERSPORT", :"YAWN"
end

GameData::SpeciesMetrics.define :"SPHEAL" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 2
end