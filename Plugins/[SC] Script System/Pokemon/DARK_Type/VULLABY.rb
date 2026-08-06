#=============================================================================
# Vullaby - DARK Type
#=============================================================================

GameData::Species.define :"VULLABY" do |pkmn|
  pkmn.name "Vullaby"
  pkmn.types :"DARK", :"FLYING"
  pkmn.base_stats hp: 70, attack: 55, defense: 75,
                  sp_atk: 60, sp_def: 45, speed: 65
  pkmn.abilities :"BIGPECKS", :"OVERCOAT"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 74
  pkmn.catch_rate 190
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.0
  pkmn.category "Diapered"
  pkmn.pokedex_entry "They tend to guard their posteriors with suitable bones they have found. They pursue weak Pokémon."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"LEER"
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
    m.at 55, :"WHIRLWIND"
    m.at 59, :"BRAVEBIRD"
    m.at 64, :"MIRRORMOVE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FOULPLAY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PLUCK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UTURN"
  pkmn.egg_moves :"FAKETEARS", :"KNOCKOFF", :"MEANLOOK", :"ROOST", :"SCARYFACE", :"STEELWING"
end

GameData::SpeciesMetrics.define :"VULLABY" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 26
  m.shadow_sprite 0, 0, 2
end