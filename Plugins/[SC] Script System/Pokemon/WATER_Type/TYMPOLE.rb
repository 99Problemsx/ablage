#=============================================================================
# Tympole - WATER Type
#=============================================================================

GameData::Species.define :"TYMPOLE" do |pkmn|
  pkmn.name "Tympole"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 50, defense: 40,
                  sp_atk: 64, sp_def: 50, speed: 40
  pkmn.abilities :"SWIFTSWIM", :"HYDRATION"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 59
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 4.5
  pkmn.category "Tadpole"
  pkmn.pokedex_entry "By vibrating its cheeks, it emits sound waves imperceptible to humans. It uses the rhythm of these sounds to talk."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"GROWL"
    m.at 5, :"SUPERSONIC"
    m.at 9, :"ROUND"
    m.at 12, :"BUBBLEBEAM"
    m.at 16, :"MUDSHOT"
    m.at 20, :"AQUARING"
    m.at 23, :"UPROAR"
    m.at 27, :"MUDDYWATER"
    m.at 31, :"RAINDANCE"
    m.at 34, :"FLAIL"
    m.at 38, :"ECHOEDVOICE"
    m.at 42, :"HYDROPUMP"
    m.at 45, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"DOUBLETEAM", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"EARTHPOWER", :"MIST", :"MUDBOMB", :"MUDSPORT", :"REFRESH", :"SLEEPTALK", :"SNORE", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"TYMPOLE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 21
  m.shadow_sprite 0, 0, 1
end