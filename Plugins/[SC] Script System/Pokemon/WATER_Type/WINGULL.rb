#=============================================================================
# Wingull - WATER Type
#=============================================================================

GameData::Species.define :"WINGULL" do |pkmn|
  pkmn.name "Wingull"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 40, attack: 30, defense: 30,
                  sp_atk: 85, sp_def: 55, speed: 30
  pkmn.abilities :"KEENEYE"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 54
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 9.5
  pkmn.category "Seagull"
  pkmn.pokedex_entry "It makes its nest on a sheer cliff at the edge of the sea. It has trouble keeping its wings flapping in flight. Instead, it soars on updrafts."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 6, :"SUPERSONIC"
    m.at 9, :"WINGATTACK"
    m.at 14, :"MIST"
    m.at 17, :"WATERPULSE"
    m.at 22, :"QUICKATTACK"
    m.at 26, :"ROOST"
    m.at 30, :"PURSUIT"
    m.at 33, :"AIRCUTTER"
    m.at 38, :"AGILITY"
    m.at 42, :"AERIALACE"
    m.at 46, :"AIRSLASH"
    m.at 49, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLY", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WATERPULSE"
  pkmn.egg_moves :"AGILITY", :"AQUARING", :"BRINE", :"GUST", :"KNOCKOFF", :"MIST", :"ROOST", :"TWISTER", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"WINGULL" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 2
end