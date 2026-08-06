#=============================================================================
# Throh - FIGHTING Type
#=============================================================================

GameData::Species.define :"THROH" do |pkmn|
  pkmn.name "Throh"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 120, attack: 100, defense: 85,
                  sp_atk: 45, sp_def: 30, speed: 85
  pkmn.abilities :"GUTS", :"INNERFOCUS"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 163
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 55.5
  pkmn.category "Judo"
  pkmn.pokedex_entry "When they encounter foes bigger than themselves, they try to throw them. They always travel in packs of five."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"BIND"
    m.at 1, :"LEER"
    m.at 5, :"BIDE"
    m.at 9, :"FOCUSENERGY"
    m.at 13, :"SEISMICTOSS"
    m.at 17, :"VITALTHROW"
    m.at 21, :"REVENGE"
    m.at 25, :"STORMTHROW"
    m.at 29, :"BODYSLAM"
    m.at 33, :"BULKUP"
    m.at 37, :"CIRCLETHROW"
    m.at 41, :"ENDURE"
    m.at 45, :"WIDEGUARD"
    m.at 49, :"SUPERPOWER"
    m.at 53, :"REVERSAL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP"
end

GameData::SpeciesMetrics.define :"THROH" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 3
end