#=============================================================================
# Ursaring - NORMAL Type
#=============================================================================

GameData::Species.define :"URSARING" do |pkmn|
  pkmn.name "Ursaring"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 90, attack: 130, defense: 75,
                  sp_atk: 55, sp_def: 75, speed: 75
  pkmn.abilities :"GUTS", :"QUICKFEET"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 175
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 125.8
  pkmn.category "Hibernator"
  pkmn.pokedex_entry "In forests, it is said that there are many streams and towering trees where an Ursaring gathers food. It walks through its forest collecting food every day."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"COVET"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 1, :"FAKETEARS"
    m.at 8, :"FURYSWIPES"
    m.at 15, :"FEINTATTACK"
    m.at 22, :"SWEETSCENT"
    m.at 29, :"SLASH"
    m.at 38, :"SCARYFACE"
    m.at 47, :"REST"
    m.at 49, :"SNORE"
    m.at 58, :"THRASH"
    m.at 67, :"HAMMERARM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"AVALANCHE", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"LASTRESORT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP"
end

GameData::SpeciesMetrics.define :"URSARING" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 7
  m.shadow_sprite 0, 0, 3
end