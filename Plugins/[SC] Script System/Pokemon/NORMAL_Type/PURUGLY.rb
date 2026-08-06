#=============================================================================
# Purugly - NORMAL Type
#=============================================================================

GameData::Species.define :"PURUGLY" do |pkmn|
  pkmn.name "Purugly"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 71, attack: 82, defense: 64,
                  sp_atk: 112, sp_def: 64, speed: 59
  pkmn.abilities :"THICKFAT", :"OWNTEMPO"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 43.8
  pkmn.category "Tiger Cat"
  pkmn.pokedex_entry "It is a brazen brute that barges its way into another Pokémon's nest and claims it as its own."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FAKEOUT"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 5, :"SCRATCH"
    m.at 8, :"GROWL"
    m.at 13, :"HYPNOSIS"
    m.at 17, :"FEINTATTACK"
    m.at 20, :"FURYSWIPES"
    m.at 25, :"CHARM"
    m.at 29, :"ASSIST"
    m.at 32, :"CAPTIVATE"
    m.at 37, :"SLASH"
    m.at 38, :"SWAGGER"
    m.at 45, :"BODYSLAM"
    m.at 52, :"ATTRACT"
    m.at 60, :"HONECLAWS"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UTURN", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"PURUGLY" do |m|
  m.back_sprite 4, 0
  m.front_sprite -4, 14
  m.shadow_sprite 0, 0, 3
end