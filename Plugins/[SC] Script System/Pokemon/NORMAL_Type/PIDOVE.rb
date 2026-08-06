#=============================================================================
# Pidove - NORMAL Type
#=============================================================================

GameData::Species.define :"PIDOVE" do |pkmn|
  pkmn.name "Pidove"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 50, attack: 55, defense: 50,
                  sp_atk: 43, sp_def: 36, speed: 30
  pkmn.abilities :"BIGPECKS", :"SUPERLUCK"
  pkmn.hidden_abilities :"RIVALRY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Winged"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.1
  pkmn.category "Tiny Pigeon"
  pkmn.pokedex_entry "These Pokémon live in cities. They are accustomed to people. Flocks often gather in parks and plazas."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 4, :"GROWL"
    m.at 8, :"LEER"
    m.at 11, :"QUICKATTACK"
    m.at 15, :"AIRCUTTER"
    m.at 18, :"ROOST"
    m.at 22, :"DETECT"
    m.at 25, :"TAUNT"
    m.at 29, :"AIRSLASH"
    m.at 32, :"RAZORWIND"
    m.at 36, :"FEATHERDANCE"
    m.at 39, :"SWAGGER"
    m.at 43, :"FACADE"
    m.at 46, :"TAILWIND"
    m.at 50, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"BESTOW", :"HYPNOSIS", :"LUCKYCHANT", :"MORNINGSUN", :"STEELWING", :"UPROAR", :"WISH"
end

GameData::SpeciesMetrics.define :"PIDOVE" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, 29
  m.shadow_sprite 0, 0, 1
end