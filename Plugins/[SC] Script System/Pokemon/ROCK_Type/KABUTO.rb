#=============================================================================
# Kabuto - ROCK Type
#=============================================================================

GameData::Species.define :"KABUTO" do |pkmn|
  pkmn.name "Kabuto"
  pkmn.types :"ROCK", :"WATER"
  pkmn.base_stats hp: 30, attack: 80, defense: 90,
                  sp_atk: 55, sp_def: 55, speed: 45
  pkmn.abilities :"SWIFTSWIM", :"BATTLEARMOR"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 71
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.5
  pkmn.weight 11.5
  pkmn.category "Shellfish"
  pkmn.pokedex_entry "This Pokémon has been regenerated from a fossil. However, in rare cases, living examples have been discovered. Kabuto have not changed for 300 million years."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 6, :"ABSORB"
    m.at 11, :"LEER"
    m.at 16, :"MUDSHOT"
    m.at 21, :"SANDATTACK"
    m.at 26, :"ENDURE"
    m.at 31, :"AQUAJET"
    m.at 36, :"MEGADRAIN"
    m.at 41, :"METALSOUND"
    m.at 46, :"ANCIENTPOWER"
    m.at 51, :"WRINGOUT"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AURORABEAM", :"BUBBLEBEAM", :"CONFUSERAY", :"FLAIL", :"FORESIGHT", :"GIGADRAIN", :"ICYWIND", :"KNOCKOFF", :"MUDSHOT", :"RAPIDSPIN", :"SCREECH"
end

GameData::SpeciesMetrics.define :"KABUTO" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 26
  m.shadow_sprite 0, 0, 2
end