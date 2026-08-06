#=============================================================================
# Charizard - FIRE Type
#=============================================================================

GameData::Species.define :"CHARIZARD" do |pkmn|
  pkmn.name "Charizard"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 78, attack: 84, defense: 78,
                  sp_atk: 100, sp_def: 109, speed: 85
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"SOLARPOWER"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 240
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 90.5
  pkmn.category "Flame"
  pkmn.pokedex_entry "A Charizard flies about in search of strong opponents. It breathes intense flames that can melt any material. However, it will never torch a weaker foe."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"AIRSLASH"
    m.at 1, :"DRAGONCLAW"
    m.at 1, :"SHADOWCLAW"
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"EMBER"
    m.at 1, :"SMOKESCREEN"
    m.at 7, :"EMBER"
    m.at 10, :"SMOKESCREEN"
    m.at 17, :"DRAGONRAGE"
    m.at 21, :"SCARYFACE"
    m.at 28, :"FIREFANG"
    m.at 32, :"FLAMEBURST"
    m.at 36, :"WINGATTACK"
    m.at 41, :"SLASH"
    m.at 47, :"FLAMETHROWER"
    m.at 56, :"FIRESPIN"
    m.at 62, :"INFERNO"
    m.at 71, :"HEATWAVE"
    m.at 77, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BLASTBURN", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFENSECURL", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THUNDERPUNCH", :"TOXIC", :"TWISTER", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"CHARIZARD" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 3
end