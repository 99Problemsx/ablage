#=============================================================================
# Seel - WATER Type
#=============================================================================

GameData::Species.define :"SEEL" do |pkmn|
  pkmn.name "Seel"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 65, attack: 45, defense: 55,
                  sp_atk: 45, sp_def: 45, speed: 70
  pkmn.abilities :"THICKFAT", :"HYDRATION"
  pkmn.hidden_abilities :"ICEBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Finned"
  pkmn.base_exp 65
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 90.0
  pkmn.category "Sea Lion"
  pkmn.pokedex_entry "Seel hunt for prey in frigid, ice-covered seas. When it needs to breathe, it punches a hole through the ice with the sharply protruding section of its head."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"HEADBUTT"
    m.at 3, :"GROWL"
    m.at 7, :"WATERSPORT"
    m.at 11, :"ICYWIND"
    m.at 13, :"ENCORE"
    m.at 17, :"ICESHARD"
    m.at 21, :"REST"
    m.at 23, :"AQUARING"
    m.at 27, :"AURORABEAM"
    m.at 31, :"AQUAJET"
    m.at 33, :"BRINE"
    m.at 37, :"TAKEDOWN"
    m.at 41, :"DIVE"
    m.at 43, :"AQUATAIL"
    m.at 47, :"ICEBEAM"
    m.at 51, :"SAFEGUARD"
    m.at 53, :"HAIL"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THIEF", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"DISABLE", :"ENCORE", :"FAKEOUT", :"HORNDRILL", :"ICICLESPEAR", :"IRONTAIL", :"LICK", :"PERISHSONG", :"SIGNALBEAM", :"SLAM", :"SLEEPTALK", :"SPITUP", :"STOCKPILE", :"SWALLOW", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"SEEL" do |m|
  m.back_sprite -8, 0
  m.front_sprite 4, 17
  m.shadow_sprite 0, 0, 3
end