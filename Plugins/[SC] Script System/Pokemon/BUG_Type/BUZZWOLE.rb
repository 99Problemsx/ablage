#=============================================================================
# Buzzwole - BUG Type
#=============================================================================

GameData::Species.define :"BUZZWOLE" do |pkmn|
  pkmn.name "Buzzwole"
  pkmn.types :"BUG", :"FIGHTING"
  pkmn.base_stats hp: 107, attack: 139, defense: 139,
                  sp_atk: 79, sp_def: 53, speed: 53
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Multiped"
  pkmn.base_exp 285
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.4
  pkmn.weight 333.6
  pkmn.category "Swollen"
  pkmn.pokedex_entry "This Ultra Beast appeared from another world. It shows off its body, but whether that display is a boast or a threat remains unclear."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POWERUPPUNCH"
    m.at 1, :"HARDEN"
    m.at 5, :"TAUNT"
    m.at 10, :"FELLSTINGER"
    m.at 15, :"VITALTHROW"
    m.at 20, :"BULKUP"
    m.at 25, :"ENDURE"
    m.at 30, :"REVERSAL"
    m.at 35, :"MEGAPUNCH"
    m.at 40, :"LUNGE"
    m.at 45, :"FOCUSENERGY"
    m.at 50, :"DYNAMICPUNCH"
    m.at 55, :"COUNTER"
    m.at 60, :"HAMMERARM"
    m.at 65, :"SUPERPOWER"
    m.at 70, :"FOCUSPUNCH"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BUGBITE", :"BULKUP", :"BULLDOZE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DARKESTLARIAT", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"DUALWINGBEAT", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSENERGY", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"ICEPUNCH", :"IRONHEAD", :"LEECHLIFE", :"LOWSWEEP", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BUZZWOLE" do |m|
  m.back_sprite 4, 53
  m.front_sprite 0, 8
end