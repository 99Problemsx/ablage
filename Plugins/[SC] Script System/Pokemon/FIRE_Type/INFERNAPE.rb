#=============================================================================
# Infernape - FIRE Type
#=============================================================================

GameData::Species.define :"INFERNAPE" do |pkmn|
  pkmn.name "Infernape"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 76, attack: 104, defense: 71,
                  sp_atk: 108, sp_def: 104, speed: 71
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 240
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 55.0
  pkmn.category "Flame"
  pkmn.pokedex_entry "It uses a special kind of martial arts involving all its limbs. Its fire never goes out."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"TAUNT"
    m.at 7, :"EMBER"
    m.at 9, :"TAUNT"
    m.at 14, :"MACHPUNCH"
    m.at 16, :"FURYSWIPES"
    m.at 19, :"FLAMEWHEEL"
    m.at 26, :"FEINT"
    m.at 29, :"PUNISHMENT"
    m.at 36, :"CLOSECOMBAT"
    m.at 42, :"FIRESPIN"
    m.at 52, :"ACROBATICS"
    m.at 58, :"CALMMIND"
    m.at 68, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BLASTBURN", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UTURN", :"VACUUMWAVE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"INFERNAPE" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 3
end