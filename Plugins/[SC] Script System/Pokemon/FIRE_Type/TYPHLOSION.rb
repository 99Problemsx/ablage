#=============================================================================
# Typhlosion - FIRE Type
#=============================================================================

GameData::Species.define :"TYPHLOSION" do |pkmn|
  pkmn.name "Typhlosion"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 78, attack: 84, defense: 78,
                  sp_atk: 100, sp_def: 109, speed: 85
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 240
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 79.5
  pkmn.category "Volcano"
  pkmn.pokedex_entry "It can hide behind a shimmering heat haze that it creates using its intense flames. Typhlosion create blazing explosive blasts that burn everything to cinders."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GYROBALL"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"EMBER"
    m.at 6, :"SMOKESCREEN"
    m.at 10, :"EMBER"
    m.at 13, :"QUICKATTACK"
    m.at 20, :"FLAMEWHEEL"
    m.at 24, :"DEFENSECURL"
    m.at 31, :"SWIFT"
    m.at 35, :"FLAMECHARGE"
    m.at 43, :"LAVAPLUME"
    m.at 48, :"FLAMETHROWER"
    m.at 56, :"INFERNO"
    m.at 61, :"ROLLOUT"
    m.at 69, :"DOUBLEEDGE"
    m.at 74, :"ERUPTION"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLASTBURN", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDERPUNCH", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"TYPHLOSION" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 3
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Hisuian
GameData::Species.define :"TYPHLOSION_1" do |pkmn|
  pkmn.species :"TYPHLOSION"
  pkmn.form 1
  pkmn.name "Typhlosion"
  pkmn.form_name "Hisuian"
  pkmn.types :"FIRE", :"GHOST"
  pkmn.base_stats hp: 73, attack: 84, defense: 78,
                  sp_atk: 95, sp_def: 119, speed: 85
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"FRISK"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 240
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 69.7
  pkmn.category "Ghost Flame"
  pkmn.pokedex_entry "Said to purify lost, forsaken souls with its flames and guide them to the afterlife. I believe its form has been influenced by the energy of the sacred mountain towering at Hisui's center."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"INFERNALPARADE"
    m.at 1, :"GYROBALL"
    m.at 1, :"ERUPTION"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"TACKLE"
    m.at 1, :"EMBER"
    m.at 1, :"LEER"
    m.at 1, :"DOUBLEEDGE"
    m.at 13, :"QUICKATTACK"
    m.at 20, :"FLAMEWHEEL"
    m.at 24, :"DEFENSECURL"
    m.at 31, :"SWIFT"
    m.at 35, :"FLAMECHARGE"
    m.at 43, :"LAVAPLUME"
    m.at 48, :"FLAMETHROWER"
    m.at 56, :"INFERNO"
    m.at 61, :"ROLLOUT"
    m.at 74, :"OVERHEAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLASTBURN", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"BURNINGJEALOUSY", :"CALMMIND", :"CONFUSERAY", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIREPUNCH", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GYROBALL", :"HEATWAVE", :"HEX", :"HYPERBEAM", :"IRONHEAD", :"LOWKICK", :"NIGHTSHADE", :"OVERHEAT", :"PLAYROUGH", :"POLTERGEIST", :"PROTECT", :"REST", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"TEMPERFLARE", :"THUNDERPUNCH", :"WILDCHARGE", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TYPHLOSION_1" do |m|
  m.back_sprite 0, 44
  m.front_sprite -2, 15
  m.shadow_sprite 0, 0, 2
end