#=============================================================================
# Pansage - GRASS Type
#=============================================================================

GameData::Species.define :"PANSAGE" do |pkmn|
  pkmn.name "Pansage"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 50, attack: 53, defense: 48,
                  sp_atk: 64, sp_def: 53, speed: 48
  pkmn.abilities :"GLUTTONY"
  pkmn.hidden_abilities :"OVERGROW"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 63
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 10.5
  pkmn.category "Grass Monkey"
  pkmn.pokedex_entry "It shares the leaf on its head with weary-looking Pokémon. These leaves are known to relieve stress."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 4, :"LEER"
    m.at 7, :"LICK"
    m.at 10, :"VINEWHIP"
    m.at 13, :"FURYSWIPES"
    m.at 16, :"LEECHSEED"
    m.at 19, :"BITE"
    m.at 22, :"SEEDBOMB"
    m.at 25, :"TORMENT"
    m.at 28, :"FLING"
    m.at 31, :"ACROBATICS"
    m.at 34, :"GRASSKNOT"
    m.at 37, :"RECYCLE"
    m.at 40, :"NATURALGIFT"
    m.at 43, :"CRUNCH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP", :"WORRYSEED"
  pkmn.egg_moves :"ASTONISH", :"BULLETSEED", :"COVET", :"GRASSWHISTLE", :"LEAFSTORM", :"LOWKICK", :"MAGICALLEAF", :"NASTYPLOT", :"ROLEPLAY", :"TICKLE"
end

GameData::SpeciesMetrics.define :"PANSAGE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 6, 27
  m.shadow_sprite 0, 0, 1
end