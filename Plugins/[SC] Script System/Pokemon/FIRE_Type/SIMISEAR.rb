#=============================================================================
# Simisear - FIRE Type
#=============================================================================

GameData::Species.define :"SIMISEAR" do |pkmn|
  pkmn.name "Simisear"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 75, attack: 98, defense: 63,
                  sp_atk: 101, sp_def: 98, speed: 63
  pkmn.abilities :"GLUTTONY"
  pkmn.hidden_abilities :"BLAZE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 174
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 28.0
  pkmn.category "Ember"
  pkmn.pokedex_entry "A flame burns inside its body. It scatters embers from its head and tail to sear its opponents."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 1, :"FURYSWIPES"
    m.at 1, :"FLAMEBURST"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WILLOWISP", :"WORKUP"
end

GameData::SpeciesMetrics.define :"SIMISEAR" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 21
  m.shadow_sprite 0, 0, 2
end