#=============================================================================
# Makuhita - FIGHTING Type
#=============================================================================

GameData::Species.define :"MAKUHITA" do |pkmn|
  pkmn.name "Makuhita"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 72, attack: 60, defense: 30,
                  sp_atk: 25, sp_def: 20, speed: 30
  pkmn.abilities :"THICKFAT", :"GUTS"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female25Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 47
  pkmn.catch_rate 180
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 86.4
  pkmn.category "Guts"
  pkmn.pokedex_entry "It loves to toughen up its body above all else. If you hear quaking rumbles in a cave, it is the sound of Makuhita undertaking strenuous training."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"FOCUSENERGY"
    m.at 4, :"SANDATTACK"
    m.at 7, :"ARMTHRUST"
    m.at 10, :"VITALTHROW"
    m.at 13, :"FAKEOUT"
    m.at 16, :"WHIRLWIND"
    m.at 19, :"KNOCKOFF"
    m.at 22, :"SMELLINGSALTS"
    m.at 25, :"BELLYDRUM"
    m.at 28, :"FORCEPALM"
    m.at 31, :"SEISMICTOSS"
    m.at 34, :"WAKEUPSLAP"
    m.at 37, :"ENDURE"
    m.at 40, :"CLOSECOMBAT"
    m.at 43, :"REVERSAL"
    m.at 46, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"BULLETPUNCH", :"CHIPAWAY", :"COUNTER", :"CROSSCHOP", :"DETECT", :"DYNAMICPUNCH", :"FEINT", :"FEINTATTACK", :"FOCUSPUNCH", :"FORESIGHT", :"HELPINGHAND", :"REVENGE", :"WAKEUPSLAP", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"MAKUHITA" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 17
  m.shadow_sprite 0, 0, 2
end