#=============================================================================
# Omanyte - ROCK Type
#=============================================================================

GameData::Species.define :"OMANYTE" do |pkmn|
  pkmn.name "Omanyte"
  pkmn.types :"ROCK", :"WATER"
  pkmn.base_stats hp: 35, attack: 40, defense: 100,
                  sp_atk: 35, sp_def: 90, speed: 55
  pkmn.abilities :"SWIFTSWIM", :"SHELLARMOR"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 71
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.4
  pkmn.weight 7.5
  pkmn.category "Spiral"
  pkmn.pokedex_entry "One of the ancient and long-since-extinct Pokémon that have been regenerated from fossils by humans. If attacked, it withdraws into its hard shell."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"CONSTRICT"
    m.at 1, :"WITHDRAW"
    m.at 7, :"BITE"
    m.at 10, :"WATERGUN"
    m.at 16, :"ROLLOUT"
    m.at 19, :"LEER"
    m.at 25, :"MUDSHOT"
    m.at 28, :"BRINE"
    m.at 34, :"PROTECT"
    m.at 37, :"ANCIENTPOWER"
    m.at 43, :"TICKLE"
    m.at 46, :"ROCKBLAST"
    m.at 52, :"SHELLSMASH"
    m.at 55, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AURORABEAM", :"BIDE", :"BUBBLEBEAM", :"HAZE", :"KNOCKOFF", :"MUDDYWATER", :"SLAM", :"SPIKES", :"SUPERSONIC", :"TOXICSPIKES", :"WATERPULSE", :"WHIRLPOOL", :"WRINGOUT"
end

GameData::SpeciesMetrics.define :"OMANYTE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 2
end