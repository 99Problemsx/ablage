#=============================================================================
# Pancham - FIGHTING Type
#=============================================================================

GameData::Species.define :"PANCHAM" do |pkmn|
  pkmn.name "Pancham"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 67, attack: 82, defense: 62,
                  sp_atk: 43, sp_def: 46, speed: 48
  pkmn.abilities :"IRONFIST", :"MOLDBREAKER"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 70
  pkmn.catch_rate 220
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.6
  pkmn.weight 8.0
  pkmn.category "Playful"
  pkmn.pokedex_entry "It does its best to be taken seriously by its enemies, but its glare is not sufficiently intimidating. Chewing on a leaf is its trademark."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 4, :"ARMTHRUST"
    m.at 8, :"TAUNT"
    m.at 12, :"CIRCLETHROW"
    m.at 16, :"LOWSWEEP"
    m.at 20, :"WORKUP"
    m.at 24, :"SLASH"
    m.at 28, :"VITALTHROW"
    m.at 33, :"CRUNCH"
    m.at 36, :"BODYSLAM"
    m.at 40, :"PARTINGSHOT"
    m.at 44, :"ENTRAINMENT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COACHING", :"CONFIDE", :"COVET", :"CRUNCH", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEPUNCH", :"IRONHEAD", :"KNOCKOFF", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"POWERTRIP", :"QUASH", :"QUICKGUARD", :"SEISMICTOSS", :"STORMTHROW"
end

GameData::SpeciesMetrics.define :"PANCHAM" do |m|
  m.back_sprite 3, 15
  m.front_sprite 1, 4
end