#=============================================================================
# Togetic - NORMAL Type
#=============================================================================

GameData::Species.define :"TOGETIC" do |pkmn|
  pkmn.name "Togetic"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 55, attack: 40, defense: 85,
                  sp_atk: 40, sp_def: 80, speed: 105
  pkmn.abilities :"HUSTLE", :"SERENEGRACE"
  pkmn.hidden_abilities :"SUPERLUCK"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 142
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.6
  pkmn.weight 3.2
  pkmn.category "Happiness"
  pkmn.pokedex_entry "It is said to be a Pokémon that brings good fortune. When it spots someone who is pure of heart, a Togetic appears and shares its happiness with that person."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Flying", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"GROWL"
    m.at 1, :"CHARM"
    m.at 1, :"METRONOME"
    m.at 1, :"SWEETKISS"
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
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"AIRCUTTER", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FLY", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TWISTER", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TOGETIC" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 7
  m.shadow_sprite 0, 0, 1
end