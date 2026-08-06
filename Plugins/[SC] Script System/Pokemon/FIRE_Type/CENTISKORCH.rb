#=============================================================================
# Centiskorch - FIRE Type
#=============================================================================

GameData::Species.define :"CENTISKORCH" do |pkmn|
  pkmn.name "Centiskorch"
  pkmn.types :"FIRE", :"BUG"
  pkmn.base_stats hp: 100, attack: 115, defense: 65,
                  sp_atk: 65, sp_def: 90, speed: 90
  pkmn.abilities :"FLASHFIRE", :"WHITESMOKE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Multiped"
  pkmn.base_exp 184
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 3.0
  pkmn.weight 120.0
  pkmn.category "Radiator"
  pkmn.pokedex_entry "While its burning body is already dangerous on its own, this excessively hostile Pokémon also has large and very sharp fangs."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"INFERNO"
    m.at 1, :"EMBER"
    m.at 1, :"SMOKESCREEN"
    m.at 1, :"WRAP"
    m.at 1, :"BITE"
    m.at 15, :"FLAMEWHEEL"
    m.at 20, :"BUGBITE"
    m.at 25, :"COIL"
    m.at 32, :"SLAM"
    m.at 39, :"FIRESPIN"
    m.at 46, :"CRUNCH"
    m.at 53, :"FIRELASH"
    m.at 60, :"LUNGE"
    m.at 67, :"BURNUP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRUTALSWING", :"BUGBUZZ", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMETHROWER", :"FLAREBLITZ", :"FRUSTRATION", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"LEECHLIFE", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"OVERHEAT", :"POWERWHIP", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCORCHINGSANDS", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERFANG", :"TOXIC", :"VENOSHOCK", :"WILLOWISP", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CENTISKORCH" do |m|
  m.back_sprite -10, 46
  m.front_sprite 6, 30
end