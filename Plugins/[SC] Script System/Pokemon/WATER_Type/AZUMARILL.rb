#=============================================================================
# Azumarill - WATER Type
#=============================================================================

GameData::Species.define :"AZUMARILL" do |pkmn|
  pkmn.name "Azumarill"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 100, attack: 50, defense: 80,
                  sp_atk: 50, sp_def: 50, speed: 80
  pkmn.abilities :"THICKFAT", :"HUGEPOWER"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 185
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.8
  pkmn.weight 28.5
  pkmn.category "Aqua Rabbit"
  pkmn.pokedex_entry "It lives in water virtually all day long. Its body color and pattern act as camouflage that makes it tough for enemies to spot in water."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water1", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"BUBBLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERSPORT"
    m.at 2, :"TAILWHIP"
    m.at 5, :"WATERSPORT"
    m.at 7, :"WATERGUN"
    m.at 10, :"DEFENSECURL"
    m.at 10, :"ROLLOUT"
    m.at 13, :"BUBBLEBEAM"
    m.at 16, :"HELPINGHAND"
    m.at 21, :"AQUATAIL"
    m.at 25, :"DOUBLEEDGE"
    m.at 31, :"AQUARING"
    m.at 35, :"RAINDANCE"
    m.at 42, :"SUPERPOWER"
    m.at 46, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"AZUMARILL" do |m|
  m.back_sprite 1, 0
  m.front_sprite 4, 14
  m.shadow_sprite 0, 0, 2
end