#=============================================================================
# Cleffa - NORMAL Type
#=============================================================================

GameData::Species.define :"CLEFFA" do |pkmn|
  pkmn.name "Cleffa"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 50, attack: 25, defense: 28,
                  sp_atk: 15, sp_def: 45, speed: 55
  pkmn.abilities :"CUTECHARM", :"MAGICGUARD"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 44
  pkmn.catch_rate 150
  pkmn.happiness 140
  pkmn.hatch_steps 2570
  pkmn.height 0.3
  pkmn.weight 3.0
  pkmn.category "Star Shape"
  pkmn.pokedex_entry "On nights with many shooting stars, Cleffa can be seen dancing in a ring. They dance until daybreak, when they quench their thirst with the morning dew."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"CHARM"
    m.at 4, :"ENCORE"
    m.at 7, :"SING"
    m.at 10, :"SWEETKISS"
    m.at 13, :"COPYCAT"
    m.at 16, :"MAGICALLEAF"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"INCINERATE", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"WATERPULSE", :"WONDERROOM", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"AROMATHERAPY", :"BELLYDRUM", :"COVET", :"FAKETEARS", :"METRONOME", :"MIMIC", :"PRESENT", :"SPLASH", :"STOREDPOWER", :"TICKLE", :"WISH"
end

GameData::SpeciesMetrics.define :"CLEFFA" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 27
  m.shadow_sprite 0, 0, 1
end