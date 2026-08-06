#=============================================================================
# Conkeldurr - FIGHTING Type
#=============================================================================

GameData::Species.define :"CONKELDURR" do |pkmn|
  pkmn.name "Conkeldurr"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 105, attack: 140, defense: 95,
                  sp_atk: 45, sp_def: 55, speed: 65
  pkmn.abilities :"GUTS", :"SHEERFORCE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 227
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 87.0
  pkmn.category "Muscular"
  pkmn.pokedex_entry "They use concrete pillars as walking canes. They know moves that enable them to swing the pillars freely in battle."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"LEER"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"BIDE"
    m.at 4, :"FOCUSENERGY"
    m.at 8, :"BIDE"
    m.at 12, :"LOWKICK"
    m.at 16, :"ROCKTHROW"
    m.at 20, :"WAKEUPSLAP"
    m.at 24, :"CHIPAWAY"
    m.at 29, :"BULKUP"
    m.at 33, :"ROCKSLIDE"
    m.at 37, :"DYNAMICPUNCH"
    m.at 41, :"SCARYFACE"
    m.at 45, :"HAMMERARM"
    m.at 49, :"STONEEDGE"
    m.at 53, :"FOCUSPUNCH"
    m.at 57, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP"
end

GameData::SpeciesMetrics.define :"CONKELDURR" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 3
end