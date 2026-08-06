#=============================================================================
# Psyduck - WATER Type
#=============================================================================

GameData::Species.define :"PSYDUCK" do |pkmn|
  pkmn.name "Psyduck"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 52, defense: 48,
                  sp_atk: 55, sp_def: 65, speed: 50
  pkmn.abilities :"DAMP", :"CLOUDNINE"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 64
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 19.6
  pkmn.category "Duck"
  pkmn.pokedex_entry "When its headache intensifies, it starts using strange powers. However, it has no recollection of its powers, so it always looks befuddled and bewildered."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"WATERSPORT"
    m.at 1, :"SCRATCH"
    m.at 4, :"TAILWHIP"
    m.at 8, :"WATERGUN"
    m.at 11, :"DISABLE"
    m.at 15, :"CONFUSION"
    m.at 18, :"WATERPULSE"
    m.at 22, :"FURYSWIPES"
    m.at 25, :"SCREECH"
    m.at 29, :"ZENHEADBUTT"
    m.at 32, :"AQUATAIL"
    m.at 36, :"SOAK"
    m.at 39, :"PSYCHUP"
    m.at 43, :"AMNESIA"
    m.at 46, :"HYDROPUMP"
    m.at 50, :"WONDERROOM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"WORRYSEED", :"ZENHEADBUTT"
  pkmn.egg_moves :"CONFUSERAY", :"CROSSCHOP", :"ENCORE", :"FORESIGHT", :"FUTURESIGHT", :"HYPNOSIS", :"MUDBOMB", :"PSYBEAM", :"REFRESH", :"SECRETPOWER", :"SLEEPTALK", :"SYNCHRONOISE", :"YAWN"
end

GameData::SpeciesMetrics.define :"PSYDUCK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 20
  m.shadow_sprite 0, 0, 2
end