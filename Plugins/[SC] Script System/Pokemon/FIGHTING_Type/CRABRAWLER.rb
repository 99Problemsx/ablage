#=============================================================================
# Crabrawler - FIGHTING Type
#=============================================================================

GameData::Species.define :"CRABRAWLER" do |pkmn|
  pkmn.name "Crabrawler"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 47, attack: 82, defense: 57,
                  sp_atk: 63, sp_def: 42, speed: 47
  pkmn.abilities :"HYPERCUTTER", :"IRONFIST"
  pkmn.hidden_abilities :"ANGERPOINT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 68
  pkmn.catch_rate 225
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 7.0
  pkmn.category "Boxing"
  pkmn.pokedex_entry "It punches so much, its pincers often come off from overuse, but they grow back quickly. What little meat they contain is rich and delicious."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 5, :"ROCKSMASH"
    m.at 9, :"LEER"
    m.at 13, :"PURSUIT"
    m.at 17, :"BUBBLEBEAM"
    m.at 22, :"POWERUPPUNCH"
    m.at 25, :"DIZZYPUNCH"
    m.at 29, :"PAYBACK"
    m.at 33, :"REVERSAL"
    m.at 37, :"CRABHAMMER"
    m.at 42, :"IRONDEFENSE"
    m.at 45, :"DYNAMICPUNCH"
    m.at 49, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"HIDDENPOWER", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"AMNESIA", :"ENDEAVOR", :"SUPERPOWER", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"CRABRAWLER" do |m|
  m.back_sprite 8, 25
  m.front_sprite 0, 13
end