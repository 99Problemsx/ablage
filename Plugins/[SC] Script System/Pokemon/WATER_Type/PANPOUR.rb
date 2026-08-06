#=============================================================================
# Panpour - WATER Type
#=============================================================================

GameData::Species.define :"PANPOUR" do |pkmn|
  pkmn.name "Panpour"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 53, defense: 48,
                  sp_atk: 64, sp_def: 53, speed: 48
  pkmn.abilities :"GLUTTONY"
  pkmn.hidden_abilities :"TORRENT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 63
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 13.5
  pkmn.category "Spray"
  pkmn.pokedex_entry "It does not thrive in dry environments. It keeps itself damp by shooting water stored in its head tuft from its tail."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 4, :"LEER"
    m.at 7, :"LICK"
    m.at 10, :"WATERGUN"
    m.at 13, :"FURYSWIPES"
    m.at 16, :"WATERSPORT"
    m.at 19, :"BITE"
    m.at 22, :"SCALD"
    m.at 25, :"TAUNT"
    m.at 28, :"FLING"
    m.at 31, :"ACROBATICS"
    m.at 34, :"BRINE"
    m.at 37, :"RECYCLE"
    m.at 40, :"NATURALGIFT"
    m.at 43, :"CRUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERFALL", :"WORKUP"
  pkmn.egg_moves :"AQUARING", :"AQUATAIL", :"ASTONISH", :"COVET", :"HYDROPUMP", :"LOWKICK", :"MUDSPORT", :"NASTYPLOT", :"ROLEPLAY", :"TICKLE"
end

GameData::SpeciesMetrics.define :"PANPOUR" do |m|
  m.back_sprite 0, 0
  m.front_sprite 8, 25
  m.shadow_sprite 0, 0, 1
end