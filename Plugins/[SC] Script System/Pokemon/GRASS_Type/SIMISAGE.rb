#=============================================================================
# Simisage - GRASS Type
#=============================================================================

GameData::Species.define :"SIMISAGE" do |pkmn|
  pkmn.name "Simisage"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 75, attack: 98, defense: 63,
                  sp_atk: 101, sp_def: 98, speed: 63
  pkmn.abilities :"GLUTTONY"
  pkmn.hidden_abilities :"OVERGROW"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 174
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 30.5
  pkmn.category "Thorn Monkey"
  pkmn.pokedex_entry "Ill tempered, it fights by swinging its barbed tail around wildly. The leaf growing on its head is very bitter."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 1, :"FURYSWIPES"
    m.at 1, :"SEEDBOMB"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SYNTHESIS", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SIMISAGE" do |m|
  m.back_sprite -1, 0
  m.front_sprite 5, 17
  m.shadow_sprite 0, 0, 2
end