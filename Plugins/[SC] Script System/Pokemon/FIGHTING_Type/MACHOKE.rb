#=============================================================================
# Machoke - FIGHTING Type
#=============================================================================

GameData::Species.define :"MACHOKE" do |pkmn|
  pkmn.name "Machoke"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 80, attack: 100, defense: 70,
                  sp_atk: 45, sp_def: 50, speed: 60
  pkmn.abilities :"GUTS", :"NOGUARD"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 142
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 70.5
  pkmn.category "Superpower"
  pkmn.pokedex_entry "A belt is worn by a Machoke to keep its overwhelming power under control. Because it is so dangerous, no one has ever removed the belt."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
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
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"INCINERATE", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"MACHOKE" do |m|
  m.back_sprite 7, 0
  m.front_sprite -1, 9
  m.shadow_sprite 0, 0, 2
end