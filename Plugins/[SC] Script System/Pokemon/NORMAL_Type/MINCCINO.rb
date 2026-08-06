#=============================================================================
# Minccino - NORMAL Type
#=============================================================================

GameData::Species.define :"MINCCINO" do |pkmn|
  pkmn.name "Minccino"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 50, defense: 40,
                  sp_atk: 75, sp_def: 40, speed: 40
  pkmn.abilities :"CUTECHARM", :"TECHNICIAN"
  pkmn.hidden_abilities :"SKILLLINK"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 5.8
  pkmn.category "Chinchilla"
  pkmn.pokedex_entry "These Pokémon prefer a tidy habitat. They are always sweeping and dusting, using their tails as brooms."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 3, :"GROWL"
    m.at 7, :"HELPINGHAND"
    m.at 9, :"TICKLE"
    m.at 13, :"DOUBLESLAP"
    m.at 15, :"ENCORE"
    m.at 19, :"SWIFT"
    m.at 21, :"SING"
    m.at 25, :"TAILSLAP"
    m.at 27, :"CHARM"
    m.at 31, :"WAKEUPSLAP"
    m.at 33, :"ECHOEDVOICE"
    m.at 37, :"SLAM"
    m.at 39, :"CAPTIVATE"
    m.at 43, :"HYPERVOICE"
    m.at 45, :"LASTRESORT"
    m.at 49, :"AFTERYOU"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AQUATAIL", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"AQUATAIL", :"ENDURE", :"FAKETEARS", :"FLAIL", :"IRONTAIL", :"KNOCKOFF", :"MUDSLAP", :"SLEEPTALK", :"TAILWHIP"
end

GameData::SpeciesMetrics.define :"MINCCINO" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 2
end