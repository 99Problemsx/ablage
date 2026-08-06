#=============================================================================
# Swanna - WATER Type
#=============================================================================

GameData::Species.define :"SWANNA" do |pkmn|
  pkmn.name "Swanna"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 75, attack: 87, defense: 63,
                  sp_atk: 98, sp_def: 87, speed: 63
  pkmn.abilities :"KEENEYE", :"BIGPECKS"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 166
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 24.2
  pkmn.category "White Bird"
  pkmn.pokedex_entry "It administers sharp, powerful pecks with its bill. It whips its long neck to deliver forceful repeated strikes."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"WATERSPORT"
    m.at 1, :"DEFOG"
    m.at 1, :"WINGATTACK"
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
    m.at 40, :"TAILWIND"
    m.at 47, :"BRAVEBIRD"
    m.at 55, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"DIVE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCALD", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAILWIND", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"SWANNA" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end