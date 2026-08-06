#=============================================================================
# Machamp - FIGHTING Type
#=============================================================================

GameData::Species.define :"MACHAMP" do |pkmn|
  pkmn.name "Machamp"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 90, attack: 130, defense: 80,
                  sp_atk: 55, sp_def: 65, speed: 85
  pkmn.abilities :"GUTS", :"NOGUARD"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 227
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 130.0
  pkmn.category "Superpower"
  pkmn.pokedex_entry "It is impossible to defend against punches and chops doled out by its four arms. Its fighting spirit flares up when it faces a tough opponent."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"WIDEGUARD"
    m.at 1, :"LOWKICK"
    m.at 1, :"LEER"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"KARATECHOP"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"KARATECHOP"
    m.at 13, :"LOWSWEEP"
    m.at 19, :"FORESIGHT"
    m.at 22, :"SEISMICTOSS"
    m.at 25, :"REVENGE"
    m.at 32, :"VITALTHROW"
    m.at 36, :"SUBMISSION"
    m.at 40, :"WAKEUPSLAP"
    m.at 44, :"CROSSCHOP"
    m.at 51, :"SCARYFACE"
    m.at 55, :"DYNAMICPUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"INCINERATE", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"MACHAMP" do |m|
  m.back_sprite 7, 0
  m.front_sprite -9, 3
  m.shadow_sprite 0, 0, 3
end