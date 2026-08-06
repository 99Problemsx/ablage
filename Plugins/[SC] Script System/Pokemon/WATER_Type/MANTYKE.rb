#=============================================================================
# Mantyke - WATER Type
#=============================================================================

GameData::Species.define :"MANTYKE" do |pkmn|
  pkmn.name "Mantyke"
  pkmn.types :"WATER", :"FLYING"
  pkmn.base_stats hp: 45, attack: 20, defense: 50,
                  sp_atk: 50, sp_def: 60, speed: 120
  pkmn.abilities :"SWIFTSWIM", :"WATERABSORB"
  pkmn.hidden_abilities :"WATERVEIL"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 69
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.0
  pkmn.weight 65.0
  pkmn.category "Kite"
  pkmn.pokedex_entry "A friendly Pokémon that captures the subtle flows of seawater using its two antennae."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"BUBBLE"
    m.at 3, :"SUPERSONIC"
    m.at 7, :"BUBBLEBEAM"
    m.at 11, :"CONFUSERAY"
    m.at 14, :"WINGATTACK"
    m.at 16, :"HEADBUTT"
    m.at 19, :"WATERPULSE"
    m.at 23, :"WIDEGUARD"
    m.at 27, :"TAKEDOWN"
    m.at 32, :"AGILITY"
    m.at 36, :"AIRSLASH"
    m.at 39, :"AQUARING"
    m.at 46, :"BOUNCE"
    m.at 49, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"DIVE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AMNESIA", :"HAZE", :"HYDROPUMP", :"MIRRORCOAT", :"MUDSPORT", :"SIGNALBEAM", :"SLAM", :"SPLASH", :"TWISTER", :"WATERSPORT", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"MANTYKE" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, -3
  m.shadow_sprite 0, 0, 2
end