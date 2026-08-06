#=============================================================================
# Timburr - FIGHTING Type
#=============================================================================

GameData::Species.define :"TIMBURR" do |pkmn|
  pkmn.name "Timburr"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 75, attack: 80, defense: 55,
                  sp_atk: 35, sp_def: 25, speed: 35
  pkmn.abilities :"GUTS", :"SHEERFORCE"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 61
  pkmn.catch_rate 180
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 12.5
  pkmn.category "Muscular"
  pkmn.pokedex_entry "These Pokémon appear at building sites and help out with construction. They always carry squared logs."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"LEER"
    m.at 4, :"FOCUSENERGY"
    m.at 8, :"BIDE"
    m.at 12, :"LOWKICK"
    m.at 16, :"ROCKTHROW"
    m.at 20, :"WAKEUPSLAP"
    m.at 24, :"CHIPAWAY"
    m.at 28, :"BULKUP"
    m.at 31, :"ROCKSLIDE"
    m.at 34, :"DYNAMICPUNCH"
    m.at 37, :"SCARYFACE"
    m.at 40, :"HAMMERARM"
    m.at 43, :"STONEEDGE"
    m.at 46, :"FOCUSPUNCH"
    m.at 49, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP"
  pkmn.egg_moves :"COMETPUNCH", :"COUNTER", :"DETECT", :"DRAINPUNCH", :"ENDURE", :"FORCEPALM", :"FORESIGHT", :"MACHPUNCH", :"REVERSAL", :"SMELLINGSALTS", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"TIMBURR" do |m|
  m.back_sprite -1, 0
  m.front_sprite 4, 29
  m.shadow_sprite 0, 0, 2
end