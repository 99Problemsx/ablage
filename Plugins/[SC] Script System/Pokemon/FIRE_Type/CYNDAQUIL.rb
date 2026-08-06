#=============================================================================
# Cyndaquil - FIRE Type
#=============================================================================

GameData::Species.define :"CYNDAQUIL" do |pkmn|
  pkmn.name "Cyndaquil"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 39, attack: 52, defense: 43,
                  sp_atk: 65, sp_def: 60, speed: 50
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 7.9
  pkmn.category "Fire Mouse"
  pkmn.pokedex_entry "It flares flames from its back to protect itself. The fire burns vigorously if the Pokémon is angry. When it is tired, it sputters with incomplete combustion."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 6, :"SMOKESCREEN"
    m.at 10, :"EMBER"
    m.at 13, :"QUICKATTACK"
    m.at 19, :"FLAMEWHEEL"
    m.at 22, :"DEFENSECURL"
    m.at 28, :"FLAMECHARGE"
    m.at 31, :"SWIFT"
    m.at 37, :"LAVAPLUME"
    m.at 40, :"FLAMETHROWER"
    m.at 46, :"INFERNO"
    m.at 49, :"ROLLOUT"
    m.at 55, :"DOUBLEEDGE"
    m.at 58, :"ERUPTION"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILDCHARGE", :"WILLOWISP"
  pkmn.egg_moves :"COVET", :"CRUSHCLAW", :"DOUBLEEDGE", :"DOUBLEKICK", :"EXTRASENSORY", :"FLAMEBURST", :"FLAREBLITZ", :"FORESIGHT", :"FURYSWIPES", :"HOWL", :"NATUREPOWER", :"QUICKATTACK", :"REVERSAL", :"THRASH"
end

GameData::SpeciesMetrics.define :"CYNDAQUIL" do |m|
  m.back_sprite -8, 0
  m.front_sprite 4, 20
  m.shadow_sprite 0, 0, 1
end