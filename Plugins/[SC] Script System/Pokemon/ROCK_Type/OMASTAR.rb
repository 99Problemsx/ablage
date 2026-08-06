#=============================================================================
# Omastar - ROCK Type
#=============================================================================

GameData::Species.define :"OMASTAR" do |pkmn|
  pkmn.name "Omastar"
  pkmn.types :"ROCK", :"WATER"
  pkmn.base_stats hp: 70, attack: 60, defense: 125,
                  sp_atk: 55, sp_def: 115, speed: 70
  pkmn.abilities :"SWIFTSWIM", :"SHELLARMOR"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.0
  pkmn.weight 35.0
  pkmn.category "Spiral"
  pkmn.pokedex_entry "An Omastar uses its tentacles to capture its prey. It is believed to have become extinct because its shell grew too large, making its movements slow and ponderous."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"CONSTRICT"
    m.at 1, :"WITHDRAW"
    m.at 1, :"BITE"
    m.at 7, :"BITE"
    m.at 10, :"WATERGUN"
    m.at 16, :"ROLLOUT"
    m.at 19, :"LEER"
    m.at 25, :"MUDSHOT"
    m.at 28, :"BRINE"
    m.at 34, :"PROTECT"
    m.at 37, :"ANCIENTPOWER"
    m.at 40, :"SPIKECANNON"
    m.at 48, :"TICKLE"
    m.at 56, :"ROCKBLAST"
    m.at 67, :"SHELLSMASH"
    m.at 75, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"OMASTAR" do |m|
  m.back_sprite 5, 0
  m.front_sprite 2, 16
  m.shadow_sprite 0, 0, 2
end