#=============================================================================
# Igglybuff - NORMAL Type
#=============================================================================

GameData::Species.define :"IGGLYBUFF" do |pkmn|
  pkmn.name "Igglybuff"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 90, attack: 30, defense: 15,
                  sp_atk: 15, sp_def: 40, speed: 20
  pkmn.abilities :"CUTECHARM"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 42
  pkmn.catch_rate 170
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.3
  pkmn.weight 1.0
  pkmn.category "Balloon"
  pkmn.pokedex_entry "Its soft and pliable body is very bouncy. When it sings continuously with all its might, its body steadily turns a deepening pink color."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SING"
    m.at 1, :"CHARM"
    m.at 5, :"DEFENSECURL"
    m.at 9, :"POUND"
    m.at 13, :"SWEETKISS"
    m.at 17, :"COPYCAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WILDCHARGE", :"WORKUP"
  pkmn.egg_moves :"CAPTIVATE", :"COVET", :"FAKETEARS", :"FEINTATTACK", :"GRAVITY", :"LASTRESORT", :"PERISHSONG", :"PRESENT", :"PUNISHMENT", :"SLEEPTALK", :"WISH"
end

GameData::SpeciesMetrics.define :"IGGLYBUFF" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 1
end