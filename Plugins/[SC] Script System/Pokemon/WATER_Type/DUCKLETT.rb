#=============================================================================
# Ducklett - WATER Type
#=============================================================================

GameData::Species.define :"DUCKLETT" do |pkmn|
  pkmn.name "Ducklett"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 62, attack: 44, defense: 50,
                  sp_atk: 55, sp_def: 44, speed: 50
  pkmn.abilities :"KEENEYE", :"BIGPECKS"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 5.5
  pkmn.category "Water Bird"
  pkmn.pokedex_entry "When attacked, it uses its feathers to splash water, escaping under cover of the spray."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 3, :"WATERSPORT"
    m.at 6, :"DEFOG"
    m.at 9, :"WINGATTACK"
    m.at 13, :"WATERPULSE"
    m.at 15, :"AERIALACE"
    m.at 19, :"BUBBLEBEAM"
    m.at 21, :"FEATHERDANCE"
    m.at 24, :"AQUARING"
    m.at 27, :"AIRSLASH"
    m.at 30, :"ROOST"
    m.at 34, :"RAINDANCE"
    m.at 37, :"TAILWIND"
    m.at 41, :"BRAVEBIRD"
    m.at 46, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"DIVE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAILWIND", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"AIRCUTTER", :"BRINE", :"GUST", :"LUCKYCHANT", :"MEFIRST", :"MIRRORMOVE", :"STEELWING"
end

GameData::SpeciesMetrics.define :"DUCKLETT" do |m|
  m.back_sprite -4, 0
  m.front_sprite 1, 28
  m.shadow_sprite 0, 0, 1
end