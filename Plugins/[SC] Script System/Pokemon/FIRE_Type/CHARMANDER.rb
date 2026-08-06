#=============================================================================
# Charmander - FIRE Type
#=============================================================================

GameData::Species.define :"CHARMANDER" do |pkmn|
  pkmn.name "Charmander"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 39, attack: 52, defense: 43,
                  sp_atk: 65, sp_def: 60, speed: 50
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"SOLARPOWER"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 8.5
  pkmn.category "Lizard"
  pkmn.pokedex_entry "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is happy, and blazes when it is enraged."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 7, :"EMBER"
    m.at 10, :"SMOKESCREEN"
    m.at 16, :"DRAGONRAGE"
    m.at 19, :"SCARYFACE"
    m.at 25, :"FIREFANG"
    m.at 28, :"FLAMEBURST"
    m.at 34, :"SLASH"
    m.at 37, :"FLAMETHROWER"
    m.at 43, :"FIRESPIN"
    m.at 46, :"INFERNO"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"WILLOWISP"
  pkmn.egg_moves :"ANCIENTPOWER", :"BEATUP", :"BELLYDRUM", :"BITE", :"COUNTER", :"CRUNCH", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONRUSH", :"FLAREBLITZ", :"FOCUSPUNCH", :"METALCLAW", :"OUTRAGE"
end

GameData::SpeciesMetrics.define :"CHARMANDER" do |m|
  m.back_sprite -6, 0
  m.front_sprite 4, 19
  m.shadow_sprite 0, 0, 1
end