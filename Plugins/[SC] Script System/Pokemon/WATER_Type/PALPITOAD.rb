#=============================================================================
# Palpitoad - WATER Type
#=============================================================================

GameData::Species.define :"PALPITOAD" do |pkmn|
  pkmn.name "Palpitoad"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 75, attack: 65, defense: 55,
                  sp_atk: 69, sp_def: 65, speed: 55
  pkmn.abilities :"SWIFTSWIM", :"HYDRATION"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 134
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 17.0
  pkmn.category "Vibration"
  pkmn.pokedex_entry "It lives in the water and on land. It uses its long, sticky tongue to capture prey."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"GROWL"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"ROUND"
    m.at 5, :"SUPERSONIC"
    m.at 9, :"ROUND"
    m.at 12, :"BUBBLEBEAM"
    m.at 16, :"MUDSHOT"
    m.at 20, :"AQUARING"
    m.at 23, :"UPROAR"
    m.at 28, :"MUDDYWATER"
    m.at 33, :"RAINDANCE"
    m.at 37, :"FLAIL"
    m.at 42, :"ECHOEDVOICE"
    m.at 47, :"HYDROPUMP"
    m.at 51, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"DOUBLETEAM", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GASTROACID", :"HAIL", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"UPROAR"
end

GameData::SpeciesMetrics.define :"PALPITOAD" do |m|
  m.back_sprite -6, 0
  m.front_sprite 2, 25
  m.shadow_sprite 0, 0, 2
end