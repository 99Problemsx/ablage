#=============================================================================
# Pansear - FIRE Type
#=============================================================================

GameData::Species.define :"PANSEAR" do |pkmn|
  pkmn.name "Pansear"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 50, attack: 53, defense: 48,
                  sp_atk: 64, sp_def: 53, speed: 48
  pkmn.abilities :"GLUTTONY"
  pkmn.hidden_abilities :"BLAZE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 63
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 11.0
  pkmn.category "High Temp"
  pkmn.pokedex_entry "This Pokémon lives in caves in volcanoes. The fire within the tuft on its head can reach 600º F."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 4, :"LEER"
    m.at 7, :"LICK"
    m.at 10, :"INCINERATE"
    m.at 13, :"FURYSWIPES"
    m.at 16, :"YAWN"
    m.at 19, :"BITE"
    m.at 22, :"FLAMEBURST"
    m.at 25, :"AMNESIA"
    m.at 28, :"FLING"
    m.at 31, :"ACROBATICS"
    m.at 34, :"FIREBLAST"
    m.at 37, :"RECYCLE"
    m.at 40, :"NATURALGIFT"
    m.at 43, :"CRUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"GUNKSHOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WILLOWISP", :"WORKUP"
  pkmn.egg_moves :"ASTONISH", :"COVET", :"FIREPUNCH", :"FIRESPIN", :"HEATWAVE", :"LOWKICK", :"NASTYPLOT", :"ROLEPLAY", :"SLEEPTALK", :"TICKLE"
end

GameData::SpeciesMetrics.define :"PANSEAR" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 26
  m.shadow_sprite 0, 0, 1
end