#=============================================================================
# Sizzlipede - FIRE Type
#=============================================================================

GameData::Species.define :"SIZZLIPEDE" do |pkmn|
  pkmn.name "Sizzlipede"
  pkmn.types :"FIRE", :"BUG"
  pkmn.base_stats hp: 50, attack: 65, defense: 45,
                  sp_atk: 45, sp_def: 50, speed: 50
  pkmn.abilities :"FLASHFIRE", :"WHITESMOKE"
  pkmn.hidden_abilities :"FLAMEBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Multiped"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 1.0
  pkmn.category "Radiator"
  pkmn.pokedex_entry "It stores flammable gas in its body and uses it to generate heat. The yellow sections on its belly get particularly hot."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"EMBER"
    m.at 1, :"SMOKESCREEN"
    m.at 5, :"WRAP"
    m.at 10, :"BITE"
    m.at 15, :"FLAMEWHEEL"
    m.at 20, :"BUGBITE"
    m.at 25, :"COIL"
    m.at 30, :"SLAM"
    m.at 35, :"FIRESPIN"
    m.at 40, :"CRUNCH"
    m.at 45, :"FIRELASH"
    m.at 50, :"LUNGE"
    m.at 55, :"BURNUP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRUTALSWING", :"BUGBUZZ", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIRESPIN", :"FRUSTRATION", :"HEATCRASH", :"HEATWAVE", :"HIDDENPOWER", :"LEECHLIFE", :"MIMIC", :"NATURALGIFT", :"POWERWHIP", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCORCHINGSANDS", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"VENOSHOCK", :"TERABLAST"
  pkmn.egg_moves :"DEFENSECURL", :"KNOCKOFF", :"ROLLOUT", :"STRUGGLEBUG"
end

GameData::SpeciesMetrics.define :"SIZZLIPEDE" do |m|
  m.back_sprite 3, 56
  m.front_sprite 0, 32
end