#=============================================================================
# Togekiss - NORMAL Type
#=============================================================================

GameData::Species.define :"TOGEKISS" do |pkmn|
  pkmn.name "Togekiss"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 85, attack: 50, defense: 95,
                  sp_atk: 80, sp_def: 120, speed: 115
  pkmn.abilities :"HUSTLE", :"SERENEGRACE"
  pkmn.hidden_abilities :"SUPERLUCK"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 245
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 1.5
  pkmn.weight 38.0
  pkmn.category "Jubilee"
  pkmn.pokedex_entry "It will never appear where there is strife. Its sightings have become rare recently."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Flying", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"SKYATTACK"
    m.at 1, :"EXTREMESPEED"
    m.at 1, :"AURASPHERE"
    m.at 1, :"AIRSLASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"COVET", :"DEFENSECURL", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLING", :"FLY", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SILVERWIND", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TWISTER", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TOGEKISS" do |m|
  m.back_sprite -3, 0
  m.front_sprite 3, 0
  m.shadow_sprite 0, 0, 2
end