#=============================================================================
# Marill - WATER Type
#=============================================================================

GameData::Species.define :"MARILL" do |pkmn|
  pkmn.name "Marill"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 70, attack: 20, defense: 50,
                  sp_atk: 40, sp_def: 20, speed: 50
  pkmn.abilities :"THICKFAT", :"HUGEPOWER"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 88
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.4
  pkmn.weight 8.5
  pkmn.category "Aqua Mouse"
  pkmn.pokedex_entry "Its body is covered with water-repellent fur. Because of the fur, it can swim through water at high speed without being slowed by the water's resistance."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"BUBBLE"
    m.at 2, :"TAILWHIP"
    m.at 5, :"WATERSPORT"
    m.at 7, :"WATERGUN"
    m.at 10, :"DEFENSECURL"
    m.at 10, :"ROLLOUT"
    m.at 13, :"BUBBLEBEAM"
    m.at 16, :"HELPINGHAND"
    m.at 20, :"AQUATAIL"
    m.at 23, :"DOUBLEEDGE"
    m.at 28, :"AQUARING"
    m.at 31, :"RAINDANCE"
    m.at 37, :"SUPERPOWER"
    m.at 40, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"COVET", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"AMNESIA", :"AQUAJET", :"BELLYDRUM", :"BODYSLAM", :"FUTURESIGHT", :"MUDDYWATER", :"PERISHSONG", :"PRESENT", :"REFRESH", :"SUPERPOWER", :"SUPERSONIC", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"MARILL" do |m|
  m.back_sprite -2, 0
  m.front_sprite 6, 24
  m.shadow_sprite 0, 0, 1
end