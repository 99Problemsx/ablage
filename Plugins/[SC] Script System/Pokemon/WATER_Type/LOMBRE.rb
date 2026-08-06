#=============================================================================
# Lombre - WATER Type
#=============================================================================

GameData::Species.define :"LOMBRE" do |pkmn|
  pkmn.name "Lombre"
  pkmn.types :"WATER", :"GRASS"
  pkmn.base_stats hp: 60, attack: 50, defense: 50,
                  sp_atk: 50, sp_def: 60, speed: 70
  pkmn.abilities :"SWIFTSWIM", :"RAINDISH"
  pkmn.hidden_abilities :"OWNTEMPO"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 119
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 32.5
  pkmn.category "Jolly"
  pkmn.pokedex_entry "In the evening, it takes great delight in popping out of rivers and startling people. It feeds on aquatic moss that grows on rocks in the riverbed."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 3, :"GROWL"
    m.at 5, :"ABSORB"
    m.at 7, :"NATUREPOWER"
    m.at 11, :"FAKEOUT"
    m.at 15, :"FURYSWIPES"
    m.at 19, :"WATERSPORT"
    m.at 25, :"BUBBLEBEAM"
    m.at 31, :"ZENHEADBUTT"
    m.at 37, :"UPROAR"
    m.at 45, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LOMBRE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 2
end