#=============================================================================
# Pinsir - BUG Type
#=============================================================================

GameData::Species.define :"PINSIR" do |pkmn|
  pkmn.name "Pinsir"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 65, attack: 125, defense: 100,
                  sp_atk: 85, sp_def: 55, speed: 70
  pkmn.abilities :"HYPERCUTTER", :"MOLDBREAKER"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.5
  pkmn.weight 55.0
  pkmn.category "Stag Beetle"
  pkmn.pokedex_entry "Their pincers are strong enough to shatter thick logs. Because they dislike cold, Pinsir burrow and sleep under the ground on chilly nights."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"VICEGRIP"
    m.at 1, :"FOCUSENERGY"
    m.at 4, :"BIND"
    m.at 8, :"SEISMICTOSS"
    m.at 11, :"HARDEN"
    m.at 15, :"REVENGE"
    m.at 18, :"BRICKBREAK"
    m.at 22, :"VITALTHROW"
    m.at 26, :"SUBMISSION"
    m.at 29, :"XSCISSOR"
    m.at 33, :"STORMTHROW"
    m.at 36, :"THRASH"
    m.at 40, :"SWORDSDANCE"
    m.at 43, :"SUPERPOWER"
    m.at 47, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"BUGBITE", :"CLOSECOMBAT", :"FEINT", :"FEINTATTACK", :"FLAIL", :"FURYATTACK", :"MEFIRST", :"QUICKATTACK", :"SUPERPOWER"
end

GameData::SpeciesMetrics.define :"PINSIR" do |m|
  m.back_sprite 5, 0
  m.front_sprite -3, 10
  m.shadow_sprite 0, 0, 3
end