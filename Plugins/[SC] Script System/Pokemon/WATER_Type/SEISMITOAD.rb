#=============================================================================
# Seismitoad - WATER Type
#=============================================================================

GameData::Species.define :"SEISMITOAD" do |pkmn|
  pkmn.name "Seismitoad"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 105, attack: 85, defense: 75,
                  sp_atk: 74, sp_def: 85, speed: 75
  pkmn.abilities :"SWIFTSWIM", :"POISONTOUCH"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 225
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 62.0
  pkmn.category "Vibration"
  pkmn.pokedex_entry "It increases the power of its punches by vibrating the bumps on its fists. It can turn a boulder to rubble with one punch."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"GROWL"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"ROUND"
    m.at 5, :"SUPERSONIC"
    m.at 9, :"ROUND"
    m.at 12, :"BUBBLEBEAM"
    m.at 16, :"MUDSHOT"
    m.at 20, :"AQUARING"
    m.at 23, :"UPROAR"
    m.at 28, :"MUDDYWATER"
    m.at 33, :"RAINDANCE"
    m.at 36, :"ACID"
    m.at 39, :"FLAIL"
    m.at 44, :"DRAINPUNCH"
    m.at 49, :"ECHOEDVOICE"
    m.at 53, :"HYDROPUMP"
    m.at 59, :"HYPERVOICE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GASTROACID", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"UPROAR", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"SEISMITOAD" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, 3
end