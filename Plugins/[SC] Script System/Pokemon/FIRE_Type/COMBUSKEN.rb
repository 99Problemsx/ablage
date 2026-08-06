#=============================================================================
# Combusken - FIRE Type
#=============================================================================

GameData::Species.define :"COMBUSKEN" do |pkmn|
  pkmn.name "Combusken"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 60, attack: 85, defense: 60,
                  sp_atk: 55, sp_def: 85, speed: 60
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 19.5
  pkmn.category "Young Fowl"
  pkmn.pokedex_entry "It lashes out with 10 kicks per second. Its strong fighting instinct compels it to keep up its offensive until the opponent gives up."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"GROWL"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"EMBER"
    m.at 7, :"FOCUSENERGY"
    m.at 13, :"EMBER"
    m.at 16, :"DOUBLEKICK"
    m.at 17, :"PECK"
    m.at 21, :"SANDATTACK"
    m.at 28, :"BULKUP"
    m.at 32, :"QUICKATTACK"
    m.at 39, :"SLASH"
    m.at 43, :"MIRRORMOVE"
    m.at 50, :"SKYUPPERCUT"
    m.at 54, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"COMBUSKEN" do |m|
  m.back_sprite 8, 0
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 2
end