#=============================================================================
# Kabutops - ROCK Type
#=============================================================================

GameData::Species.define :"KABUTOPS" do |pkmn|
  pkmn.name "Kabutops"
  pkmn.types :"ROCK", :"WATER"
  pkmn.base_stats hp: 60, attack: 115, defense: 105,
                  sp_atk: 80, sp_def: 65, speed: 70
  pkmn.abilities :"SWIFTSWIM", :"BATTLEARMOR"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.3
  pkmn.weight 40.5
  pkmn.category "Shellfish"
  pkmn.pokedex_entry "Kabutops once swam underwater to hunt for prey. It was apparently evolving from being a water dweller to living on land as evident from changes in its gills and legs."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"FEINT"
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 1, :"ABSORB"
    m.at 1, :"LEER"
    m.at 6, :"ABSORB"
    m.at 11, :"LEER"
    m.at 16, :"MUDSHOT"
    m.at 21, :"SANDATTACK"
    m.at 26, :"ENDURE"
    m.at 31, :"AQUAJET"
    m.at 36, :"MEGADRAIN"
    m.at 40, :"SLASH"
    m.at 45, :"METALSOUND"
    m.at 54, :"ANCIENTPOWER"
    m.at 63, :"WRINGOUT"
    m.at 72, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CAPTIVATE", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"LOWKICK", :"MEGAKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"KABUTOPS" do |m|
  m.back_sprite 7, 0
  m.front_sprite 2, 9
  m.shadow_sprite 0, 0, 3
end