#=============================================================================
# Machop - FIGHTING Type
#=============================================================================

GameData::Species.define :"MACHOP" do |pkmn|
  pkmn.name "Machop"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 70, attack: 80, defense: 50,
                  sp_atk: 35, sp_def: 35, speed: 35
  pkmn.abilities :"GUTS", :"NOGUARD"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 61
  pkmn.catch_rate 180
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 19.5
  pkmn.category "Superpower"
  pkmn.pokedex_entry "It continually undertakes strenuous training to master all forms of martial arts. Its strength lets it easily hoist a sumo wrestler onto its shoulders."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"LOWKICK"
    m.at 1, :"LEER"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"KARATECHOP"
    m.at 13, :"LOWSWEEP"
    m.at 19, :"FORESIGHT"
    m.at 22, :"SEISMICTOSS"
    m.at 25, :"REVENGE"
    m.at 31, :"VITALTHROW"
    m.at 34, :"SUBMISSION"
    m.at 37, :"WAKEUPSLAP"
    m.at 43, :"CROSSCHOP"
    m.at 46, :"SCARYFACE"
    m.at 49, :"DYNAMICPUNCH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"INCINERATE", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WORKUP"
  pkmn.egg_moves :"BULLETPUNCH", :"CLOSECOMBAT", :"COUNTER", :"ENCORE", :"FIREPUNCH", :"HEAVYSLAM", :"ICEPUNCH", :"KNOCKOFF", :"MEDITATE", :"POWERTRICK", :"ROLLINGKICK", :"SMELLINGSALTS", :"THUNDERPUNCH", :"TICKLE"
end

GameData::SpeciesMetrics.define :"MACHOP" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 15
  m.shadow_sprite 0, 0, 2
end