#=============================================================================
# Blaziken - FIRE Type
#=============================================================================

GameData::Species.define :"BLAZIKEN" do |pkmn|
  pkmn.name "Blaziken"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 80, attack: 120, defense: 70,
                  sp_atk: 80, sp_def: 110, speed: 70
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 52.0
  pkmn.category "Blaze"
  pkmn.pokedex_entry "It learns martial arts that use punches and kicks. Every several years, its old feathers burn off, and new, supple feathers grow back in their place."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"HIGHJUMPKICK"
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
    m.at 36, :"BLAZEKICK"
    m.at 42, :"SLASH"
    m.at 49, :"BRAVEBIRD"
    m.at 59, :"SKYUPPERCUT"
    m.at 66, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLASTBURN", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"KNOCKOFF", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"BLAZIKEN" do |m|
  m.back_sprite -6, 0
  m.front_sprite -2, 11
  m.shadow_sprite 0, 0, 3
end