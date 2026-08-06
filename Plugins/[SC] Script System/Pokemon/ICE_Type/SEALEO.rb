#=============================================================================
# Sealeo - ICE Type
#=============================================================================

GameData::Species.define :"SEALEO" do |pkmn|
  pkmn.name "Sealeo"
  pkmn.types :"ICE", :"WATER"
  pkmn.base_stats hp: 90, attack: 60, defense: 70,
                  sp_atk: 45, sp_def: 75, speed: 70
  pkmn.abilities :"THICKFAT", :"ICEBODY"
  pkmn.hidden_abilities :"OBLIVIOUS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 144
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 87.6
  pkmn.category "Ball Roll"
  pkmn.pokedex_entry "Sealeo live in herds on ice floes. Using its powerful flippers, it shatters ice. It dives into the sea to hunt prey five times a day."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"ENCORE"
    m.at 7, :"ENCORE"
    m.at 13, :"ICEBALL"
    m.at 19, :"BODYSLAM"
    m.at 25, :"AURORABEAM"
    m.at 31, :"HAIL"
    m.at 32, :"SWAGGER"
    m.at 39, :"REST"
    m.at 39, :"SNORE"
    m.at 47, :"BLIZZARD"
    m.at 55, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"SEALEO" do |m|
  m.back_sprite 1, 0
  m.front_sprite 1, 19
  m.shadow_sprite 0, 0, 3
end