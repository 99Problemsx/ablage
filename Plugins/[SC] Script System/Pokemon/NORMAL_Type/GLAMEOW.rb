#=============================================================================
# Glameow - NORMAL Type
#=============================================================================

GameData::Species.define :"GLAMEOW" do |pkmn|
  pkmn.name "Glameow"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 49, attack: 55, defense: 42,
                  sp_atk: 85, sp_def: 42, speed: 37
  pkmn.abilities :"LIMBER", :"OWNTEMPO"
  pkmn.hidden_abilities :"KEENEYE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 62
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 3.9
  pkmn.category "Catty"
  pkmn.pokedex_entry "It claws if displeased and purrs when affectionate. Its fickleness is very popular among some."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FAKEOUT"
    m.at 5, :"SCRATCH"
    m.at 8, :"GROWL"
    m.at 13, :"HYPNOSIS"
    m.at 17, :"FEINTATTACK"
    m.at 20, :"FURYSWIPES"
    m.at 25, :"CHARM"
    m.at 29, :"ASSIST"
    m.at 32, :"CAPTIVATE"
    m.at 37, :"SLASH"
    m.at 41, :"SUCKERPUNCH"
    m.at 44, :"ATTRACT"
    m.at 48, :"HONECLAWS"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"UTURN", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"ASSURANCE", :"BITE", :"FAKETEARS", :"FLAIL", :"LASTRESORT", :"QUICKATTACK", :"SANDATTACK", :"SNATCH", :"TAILWHIP", :"WAKEUPSLAP"
end

GameData::SpeciesMetrics.define :"GLAMEOW" do |m|
  m.back_sprite -6, 0
  m.front_sprite 7, 12
  m.shadow_sprite 0, 0, 1
end