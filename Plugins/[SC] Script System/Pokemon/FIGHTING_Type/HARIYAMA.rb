#=============================================================================
# Hariyama - FIGHTING Type
#=============================================================================

GameData::Species.define :"HARIYAMA" do |pkmn|
  pkmn.name "Hariyama"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 144, attack: 120, defense: 60,
                  sp_atk: 50, sp_def: 40, speed: 60
  pkmn.abilities :"THICKFAT", :"GUTS"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 166
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.3
  pkmn.weight 253.8
  pkmn.category "Arm Thrust"
  pkmn.pokedex_entry "It has the habit of challenging others without hesitation to tests of strength. It's been known to stand on train tracks and stop trains using forearm thrusts."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"BRINE"
    m.at 1, :"TACKLE"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"SANDATTACK"
    m.at 1, :"ARMTHRUST"
    m.at 4, :"SANDATTACK"
    m.at 7, :"ARMTHRUST"
    m.at 10, :"VITALTHROW"
    m.at 13, :"FAKEOUT"
    m.at 16, :"WHIRLWIND"
    m.at 19, :"KNOCKOFF"
    m.at 22, :"SMELLINGSALTS"
    m.at 27, :"BELLYDRUM"
    m.at 32, :"FORCEPALM"
    m.at 37, :"SEISMICTOSS"
    m.at 42, :"WAKEUPSLAP"
    m.at 47, :"ENDURE"
    m.at 52, :"CLOSECOMBAT"
    m.at 57, :"REVERSAL"
    m.at 62, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONHEAD", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WHIRLPOOL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"HARIYAMA" do |m|
  m.back_sprite 3, 0
  m.front_sprite -3, 12
  m.shadow_sprite 0, 0, 3
end