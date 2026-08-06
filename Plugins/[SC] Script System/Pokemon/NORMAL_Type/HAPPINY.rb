#=============================================================================
# Happiny - NORMAL Type
#=============================================================================

GameData::Species.define :"HAPPINY" do |pkmn|
  pkmn.name "Happiny"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 100, attack: 5, defense: 5,
                  sp_atk: 30, sp_def: 15, speed: 65
  pkmn.abilities :"NATURALCURE", :"SERENEGRACE"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 110
  pkmn.catch_rate 130
  pkmn.happiness 140
  pkmn.hatch_steps 10280
  pkmn.height 0.6
  pkmn.weight 24.4
  pkmn.category "Playhouse"
  pkmn.pokedex_entry "It loves round white things. It carries an egg-shaped rock in imitation of Chansey."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"CHARM"
    m.at 5, :"COPYCAT"
    m.at 9, :"REFRESH"
    m.at 12, :"SWEETKISS"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICYWIND", :"INCINERATE", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AROMATHERAPY", :"COUNTER", :"ENDURE", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"LASTRESORT", :"METRONOME", :"MUDBOMB", :"NATURALGIFT", :"PRESENT"
end

GameData::SpeciesMetrics.define :"HAPPINY" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 20
  m.shadow_sprite 0, 0, 1
end