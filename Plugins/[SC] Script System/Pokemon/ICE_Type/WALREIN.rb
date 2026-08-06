#=============================================================================
# Walrein - ICE Type
#=============================================================================

GameData::Species.define :"WALREIN" do |pkmn|
  pkmn.name "Walrein"
  pkmn.types :"ICE", :"WATER"
  pkmn.base_stats hp: 110, attack: 80, defense: 90,
                  sp_atk: 65, sp_def: 95, speed: 90
  pkmn.abilities :"THICKFAT", :"ICEBODY"
  pkmn.hidden_abilities :"OBLIVIOUS"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 150.6
  pkmn.category "Ice Break"
  pkmn.pokedex_entry "To protect its herd, the leader battles anything that invades its territory, even at the cost of its life. Its tusks may snap off in battle."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"CRUNCH"
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
    m.at 44, :"ICEFANG"
    m.at 52, :"BLIZZARD"
    m.at 65, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"WALREIN" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 14
  m.shadow_sprite 0, 0, 3
end