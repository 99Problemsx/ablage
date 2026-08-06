#=============================================================================
# Slaking - NORMAL Type
#=============================================================================

GameData::Species.define :"SLAKING" do |pkmn|
  pkmn.name "Slaking"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 150, attack: 160, defense: 100,
                  sp_atk: 100, sp_def: 95, speed: 65
  pkmn.abilities :"TRUANT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 252
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 2.0
  pkmn.weight 130.5
  pkmn.category "Lazy"
  pkmn.pokedex_entry "Hordes of Slaking gather around trees when fruits come into season. They wait around patiently for ripened fruits to fall out of the trees."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"YAWN"
    m.at 1, :"ENCORE"
    m.at 1, :"SLACKOFF"
    m.at 7, :"ENCORE"
    m.at 13, :"SLACKOFF"
    m.at 19, :"FEINTATTACK"
    m.at 25, :"AMNESIA"
    m.at 31, :"COVET"
    m.at 36, :"SWAGGER"
    m.at 37, :"CHIPAWAY"
    m.at 43, :"COUNTER"
    m.at 49, :"FLAIL"
    m.at 55, :"FLING"
    m.at 61, :"PUNISHMENT"
    m.at 67, :"HAMMERARM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"SLAKING" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 3
end