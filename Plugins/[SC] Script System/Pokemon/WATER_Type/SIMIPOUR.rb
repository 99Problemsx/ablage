#=============================================================================
# Simipour - WATER Type
#=============================================================================

GameData::Species.define :"SIMIPOUR" do |pkmn|
  pkmn.name "Simipour"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 75, attack: 98, defense: 63,
                  sp_atk: 101, sp_def: 98, speed: 63
  pkmn.abilities :"GLUTTONY"
  pkmn.hidden_abilities :"TORRENT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 174
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 29.0
  pkmn.category "Geyser"
  pkmn.pokedex_entry "The high-pressure water expelled from its tail is so powerful, it can destroy a concrete wall."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 1, :"FURYSWIPES"
    m.at 1, :"SCALD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERFALL", :"WORKUP"
end

GameData::SpeciesMetrics.define :"SIMIPOUR" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 20
  m.shadow_sprite 0, 0, 2
end