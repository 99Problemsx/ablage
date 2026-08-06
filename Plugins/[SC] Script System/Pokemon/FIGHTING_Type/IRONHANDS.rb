#=============================================================================
# Iron Hands - FIGHTING Type
#=============================================================================

GameData::Species.define :"IRONHANDS" do |pkmn|
  pkmn.name "Iron Hands"
  pkmn.types :"FIGHTING", :"ELECTRIC"
  pkmn.base_stats hp: 154, attack: 140, defense: 108,
                  sp_atk: 50, sp_def: 50, speed: 68
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 285
  pkmn.catch_rate 50
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.8
  pkmn.weight 380.7
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It is very similar to a cyborg covered exclusively by a paranormal magazine. The cyborg was said to be the modified form of a certain athlete."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"ELECTRICTERRAIN"
    m.at 1, :"TACKLE"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"ARMTHRUST"
    m.at 1, :"SANDATTACK"
    m.at 7, :"FAKEOUT"
    m.at 14, :"WHIRLWIND"
    m.at 21, :"THUNDERPUNCH"
    m.at 28, :"SLAM"
    m.at 35, :"FORCEPALM"
    m.at 42, :"SEISMICTOSS"
    m.at 49, :"CHARGE"
    m.at 56, :"WILDCHARGE"
    m.at 63, :"CLOSECOMBAT"
    m.at 70, :"DETECT"
    m.at 77, :"HEAVYSLAM"
    m.at 84, :"BELLYDRUM"
    m.at 91, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CHARGE", :"CLOSECOMBAT", :"DOUBLEEDGE", :"DRAINPUNCH", :"EARTHQUAKE", :"ELECTRICTERRAIN", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"HARDPRESS", :"HEAVYSLAM", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"LOWKICK", :"LOWSWEEP", :"METRONOME", :"PLAYROUGH", :"PROTECT", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SCARYFACE", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERCELLSLAM", :"SWORDSDANCE", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"IRONHANDS" do |m|
  m.back_sprite 0, 49
  m.front_sprite 3, 17
  m.shadow_sprite 0, 0, 3
end