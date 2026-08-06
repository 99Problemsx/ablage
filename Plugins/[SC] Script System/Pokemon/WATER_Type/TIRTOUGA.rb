#=============================================================================
# Tirtouga - WATER Type
#=============================================================================

GameData::Species.define :"TIRTOUGA" do |pkmn|
  pkmn.name "Tirtouga"
  pkmn.types :"WATER", :"ROCK"
  pkmn.base_stats hp: 54, attack: 78, defense: 103,
                  sp_atk: 22, sp_def: 53, speed: 45
  pkmn.abilities :"SOLIDROCK", :"STURDY"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 71
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.7
  pkmn.weight 16.5
  pkmn.category "Prototurtle"
  pkmn.pokedex_entry "About 100 million years ago, these Pokémon swam in oceans. It is thought they also went on land to attack prey."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"BIDE"
    m.at 1, :"WITHDRAW"
    m.at 1, :"WATERGUN"
    m.at 5, :"ROLLOUT"
    m.at 8, :"BITE"
    m.at 11, :"PROTECT"
    m.at 15, :"AQUAJET"
    m.at 18, :"ANCIENTPOWER"
    m.at 21, :"CRUNCH"
    m.at 25, :"WIDEGUARD"
    m.at 28, :"BRINE"
    m.at 31, :"SMACKDOWN"
    m.at 35, :"CURSE"
    m.at 38, :"SHELLSMASH"
    m.at 41, :"AQUATAIL"
    m.at 45, :"ROCKSLIDE"
    m.at 48, :"RAINDANCE"
    m.at 51, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL"
  pkmn.egg_moves :"BIDE", :"BODYSLAM", :"FLAIL", :"IRONDEFENSE", :"KNOCKOFF", :"ROCKTHROW", :"SLAM", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"TIRTOUGA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 15
  m.shadow_sprite 0, 0, 2
end