#=============================================================================
# Gurdurr - FIGHTING Type
#=============================================================================

GameData::Species.define :"GURDURR" do |pkmn|
  pkmn.name "Gurdurr"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 85, attack: 105, defense: 85,
                  sp_atk: 40, sp_def: 40, speed: 50
  pkmn.abilities :"GUTS", :"SHEERFORCE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 142
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 40.0
  pkmn.category "Muscular"
  pkmn.pokedex_entry "They strengthen their bodies by carrying steel beams. They show off their big muscles to their friends."
  pkmn.evs attack: 2
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
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP"
end

GameData::SpeciesMetrics.define :"GURDURR" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 2
end