#=============================================================================
# Slakoth - NORMAL Type
#=============================================================================

GameData::Species.define :"SLAKOTH" do |pkmn|
  pkmn.name "Slakoth"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 60, attack: 60, defense: 60,
                  sp_atk: 30, sp_def: 35, speed: 35
  pkmn.abilities :"TRUANT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 24.0
  pkmn.category "Slacker"
  pkmn.pokedex_entry "It sleeps virtually all day and night long. It doesn't change its nest its entire life, but it sometimes travels great distances by swimming in rivers."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"YAWN"
    m.at 7, :"ENCORE"
    m.at 13, :"SLACKOFF"
    m.at 19, :"FEINTATTACK"
    m.at 25, :"AMNESIA"
    m.at 31, :"COVET"
    m.at 37, :"CHIPAWAY"
    m.at 43, :"COUNTER"
    m.at 49, :"FLAIL"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WORKUP"
  pkmn.egg_moves :"AFTERYOU", :"BODYSLAM", :"CRUSHCLAW", :"CURSE", :"HAMMERARM", :"NIGHTSLASH", :"PURSUIT", :"SLASH", :"SLEEPTALK", :"SNORE", :"TICKLE"
end

GameData::SpeciesMetrics.define :"SLAKOTH" do |m|
  m.back_sprite 5, 0
  m.front_sprite -2, 29
  m.shadow_sprite 0, 0, 3
end