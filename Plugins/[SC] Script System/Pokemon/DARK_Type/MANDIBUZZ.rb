#=============================================================================
# Mandibuzz - DARK Type
#=============================================================================

GameData::Species.define :"MANDIBUZZ" do |pkmn|
  pkmn.name "Mandibuzz"
  pkmn.types :"DARK", :"FLYING"
  pkmn.base_stats hp: 110, attack: 65, defense: 105,
                  sp_atk: 80, sp_def: 55, speed: 95
  pkmn.abilities :"BIGPECKS", :"OVERCOAT"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 179
  pkmn.catch_rate 60
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 39.5
  pkmn.category "Bone Vulture"
  pkmn.pokedex_entry "Watching from the sky, they swoop to strike weakened Pokémon on the ground. They decorate themselves with bones."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"LEER"
    m.at 1, :"FURYATTACK"
    m.at 1, :"PLUCK"
    m.at 5, :"FURYATTACK"
    m.at 10, :"PLUCK"
    m.at 14, :"NASTYPLOT"
    m.at 19, :"FLATTER"
    m.at 23, :"FEINTATTACK"
    m.at 28, :"PUNISHMENT"
    m.at 32, :"DEFOG"
    m.at 37, :"TAILWIND"
    m.at 41, :"AIRSLASH"
    m.at 46, :"DARKPULSE"
    m.at 50, :"EMBARGO"
    m.at 51, :"BONERUSH"
    m.at 57, :"WHIRLWIND"
    m.at 63, :"BRAVEBIRD"
    m.at 70, :"MIRRORMOVE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PLUCK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SKYATTACK", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UTURN"
end

GameData::SpeciesMetrics.define :"MANDIBUZZ" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 18
  m.shadow_sprite 0, 0, 2
end