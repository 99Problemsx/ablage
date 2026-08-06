#=============================================================================
# Golduck - WATER Type
#=============================================================================

GameData::Species.define :"GOLDUCK" do |pkmn|
  pkmn.name "Golduck"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 80, attack: 82, defense: 78,
                  sp_atk: 85, sp_def: 95, speed: 80
  pkmn.abilities :"DAMP", :"CLOUDNINE"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 175
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 76.6
  pkmn.category "Duck"
  pkmn.pokedex_entry "A Golduck is an adept swimmer. It sometimes joins competitive swimmers in training. It uses psychic powers when its forehead shimmers with light."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"AQUAJET"
    m.at 1, :"WATERSPORT"
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERGUN"
    m.at 4, :"TAILWHIP"
    m.at 8, :"WATERGUN"
    m.at 11, :"DISABLE"
    m.at 15, :"CONFUSION"
    m.at 18, :"WATERPULSE"
    m.at 22, :"FURYSWIPES"
    m.at 25, :"SCREECH"
    m.at 29, :"ZENHEADBUTT"
    m.at 32, :"AQUATAIL"
    m.at 38, :"SOAK"
    m.at 43, :"PSYCHUP"
    m.at 49, :"AMNESIA"
    m.at 54, :"HYDROPUMP"
    m.at 60, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GOLDUCK" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 15
  m.shadow_sprite 0, 0, 3
end