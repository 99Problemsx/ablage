#=============================================================================
# Tranquill - NORMAL Type
#=============================================================================

GameData::Species.define :"TRANQUILL" do |pkmn|
  pkmn.name "Tranquill"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 62, attack: 77, defense: 62,
                  sp_atk: 65, sp_def: 50, speed: 42
  pkmn.abilities :"BIGPECKS", :"SUPERLUCK"
  pkmn.hidden_abilities :"RIVALRY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Winged"
  pkmn.base_exp 125
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 15.0
  pkmn.category "Wild Pigeon"
  pkmn.pokedex_entry "Many people believe that, deep in the forest where Tranquill live, there is a peaceful place where there is no war."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"GROWL"
    m.at 1, :"LEER"
    m.at 1, :"QUICKATTACK"
    m.at 4, :"GROWL"
    m.at 8, :"LEER"
    m.at 11, :"QUICKATTACK"
    m.at 15, :"AIRCUTTER"
    m.at 18, :"ROOST"
    m.at 23, :"DETECT"
    m.at 27, :"TAUNT"
    m.at 32, :"AIRSLASH"
    m.at 36, :"RAZORWIND"
    m.at 41, :"FEATHERDANCE"
    m.at 45, :"SWAGGER"
    m.at 50, :"FACADE"
    m.at 54, :"TAILWIND"
    m.at 59, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"TRANQUILL" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 27
  m.shadow_sprite 0, 0, 2
end