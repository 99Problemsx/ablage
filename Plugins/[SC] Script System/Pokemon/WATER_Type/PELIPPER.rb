#=============================================================================
# Pelipper - WATER Type
#=============================================================================

GameData::Species.define :"PELIPPER" do |pkmn|
  pkmn.name "Pelipper"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 60, attack: 50, defense: 100,
                  sp_atk: 65, sp_def: 85, speed: 70
  pkmn.abilities :"KEENEYE"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 151
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 28.0
  pkmn.category "Water Bird"
  pkmn.pokedex_entry "It skims the tops of waves as it flies. When it spots prey, it uses its large beak to scoop up the victim with water. It protects its eggs in its beak."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water1", :"Flying"

  pkmn.moves do |m|
    m.at 1, :"SOAK"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"WATERSPORT"
    m.at 1, :"WINGATTACK"
    m.at 6, :"SUPERSONIC"
    m.at 9, :"WINGATTACK"
    m.at 14, :"MIST"
    m.at 17, :"WATERPULSE"
    m.at 22, :"PAYBACK"
    m.at 25, :"PROTECT"
    m.at 28, :"ROOST"
    m.at 34, :"BRINE"
    m.at 39, :"STOCKPILE"
    m.at 39, :"SWALLOW"
    m.at 39, :"SPITUP"
    m.at 46, :"FLING"
    m.at 52, :"TAILWIND"
    m.at 58, :"HYDROPUMP"
    m.at 63, :"HURRICANE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SHOCKWAVE", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"PELIPPER" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, -6
  m.shadow_sprite 0, 0, 3
end