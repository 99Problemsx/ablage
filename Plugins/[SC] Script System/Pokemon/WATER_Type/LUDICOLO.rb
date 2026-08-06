#=============================================================================
# Ludicolo - WATER Type
#=============================================================================

GameData::Species.define :"LUDICOLO" do |pkmn|
  pkmn.name "Ludicolo"
  pkmn.types :"WATER", :"GRASS"
  pkmn.base_stats hp: 80, attack: 70, defense: 70,
                  sp_atk: 70, sp_def: 90, speed: 100
  pkmn.abilities :"SWIFTSWIM", :"RAINDISH"
  pkmn.hidden_abilities :"OWNTEMPO"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.5
  pkmn.weight 55.0
  pkmn.category "Carefree"
  pkmn.pokedex_entry "When it hears festive music, all the cells in its body become stimulated, and it begins moving in rhythm. It does not quail even when it faces a tough opponent."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Water1", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"GROWL"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"NATUREPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LUDICOLO" do |m|
  m.back_sprite 4, 0
  m.front_sprite -2, 8
  m.shadow_sprite 0, 0, 3
end