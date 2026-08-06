#=============================================================================
# Togepi - NORMAL Type
#=============================================================================

GameData::Species.define :"TOGEPI" do |pkmn|
  pkmn.name "Togepi"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 35, attack: 20, defense: 65,
                  sp_atk: 20, sp_def: 40, speed: 65
  pkmn.abilities :"HUSTLE", :"SERENEGRACE"
  pkmn.hidden_abilities :"SUPERLUCK"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 49
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.3
  pkmn.weight 1.5
  pkmn.category "Spike Ball"
  pkmn.pokedex_entry "As its energy, it uses the feelings of compassion and pleasure exuded by people and Pokémon. It stores up happy feelings in its shell, then shares them out."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"CHARM"
    m.at 5, :"METRONOME"
    m.at 9, :"SWEETKISS"
    m.at 13, :"YAWN"
    m.at 17, :"ENCORE"
    m.at 21, :"FOLLOWME"
    m.at 25, :"BESTOW"
    m.at 29, :"WISH"
    m.at 33, :"ANCIENTPOWER"
    m.at 37, :"SAFEGUARD"
    m.at 41, :"BATONPASS"
    m.at 45, :"DOUBLEEDGE"
    m.at 49, :"LASTRESORT"
    m.at 53, :"AFTERYOU"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HIDDENPOWER", :"HYPERVOICE", :"INCINERATE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"UPROAR", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"EXTRASENSORY", :"FORESIGHT", :"FUTURESIGHT", :"LUCKYCHANT", :"MIRRORMOVE", :"MORNINGSUN", :"NASTYPLOT", :"PECK", :"PRESENT", :"PSYCHOSHIFT", :"SECRETPOWER", :"STOREDPOWER"
end

GameData::SpeciesMetrics.define :"TOGEPI" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 26
  m.shadow_sprite 0, 0, 1
end