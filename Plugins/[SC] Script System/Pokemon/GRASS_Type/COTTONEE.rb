#=============================================================================
# Cottonee - GRASS Type
#=============================================================================

GameData::Species.define :"COTTONEE" do |pkmn|
  pkmn.name "Cottonee"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 40, attack: 27, defense: 60,
                  sp_atk: 66, sp_def: 37, speed: 50
  pkmn.abilities :"PRANKSTER", :"INFILTRATOR"
  pkmn.hidden_abilities :"CHLOROPHYLL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 56
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 0.6
  pkmn.category "Cotton Puff"
  pkmn.pokedex_entry "They go wherever the wind takes them. On rainy days, their bodies are heavier, so they take shelter beneath big trees."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 4, :"GROWTH"
    m.at 8, :"LEECHSEED"
    m.at 10, :"STUNSPORE"
    m.at 13, :"MEGADRAIN"
    m.at 17, :"COTTONSPORE"
    m.at 19, :"RAZORLEAF"
    m.at 22, :"POISONPOWDER"
    m.at 26, :"GIGADRAIN"
    m.at 28, :"CHARM"
    m.at 31, :"HELPINGHAND"
    m.at 35, :"ENERGYBALL"
    m.at 37, :"COTTONGUARD"
    m.at 40, :"SUNNYDAY"
    m.at 44, :"ENDEAVOR"
    m.at 46, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"DREAMEATER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"BEATUP", :"ENCORE", :"FAKETEARS", :"GRASSWHISTLE", :"MEMENTO", :"NATURALGIFT", :"SWITCHEROO", :"TICKLE", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"COTTONEE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 16
  m.shadow_sprite 0, 0, 2
end