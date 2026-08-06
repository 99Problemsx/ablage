#=============================================================================
# Monferno - FIRE Type
#=============================================================================

GameData::Species.define :"MONFERNO" do |pkmn|
  pkmn.name "Monferno"
  pkmn.types :"FIRE", :"FIGHTING"
  pkmn.base_stats hp: 64, attack: 78, defense: 52,
                  sp_atk: 81, sp_def: 78, speed: 52
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 22.0
  pkmn.category "Playful"
  pkmn.pokedex_entry "To intimidate attackers, it stretches the fire on its tail to make itself appear bigger."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 7, :"EMBER"
    m.at 9, :"TAUNT"
    m.at 14, :"MACHPUNCH"
    m.at 16, :"FURYSWIPES"
    m.at 19, :"FLAMEWHEEL"
    m.at 26, :"FEINT"
    m.at 29, :"TORMENT"
    m.at 36, :"CLOSECOMBAT"
    m.at 39, :"FIRESPIN"
    m.at 46, :"ACROBATICS"
    m.at 49, :"SLACKOFF"
    m.at 56, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPLEDGE", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UTURN", :"VACUUMWAVE", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"MONFERNO" do |m|
  m.back_sprite -6, 0
  m.front_sprite 10, 15
  m.shadow_sprite 0, 0, 2
end