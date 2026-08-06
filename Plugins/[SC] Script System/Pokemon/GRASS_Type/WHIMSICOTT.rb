#=============================================================================
# Whimsicott - GRASS Type
#=============================================================================

GameData::Species.define :"WHIMSICOTT" do |pkmn|
  pkmn.name "Whimsicott"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 60, attack: 67, defense: 85,
                  sp_atk: 116, sp_def: 77, speed: 75
  pkmn.abilities :"PRANKSTER", :"INFILTRATOR"
  pkmn.hidden_abilities :"CHLOROPHYLL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 6.6
  pkmn.category "Windveiled"
  pkmn.pokedex_entry "Riding whirlwinds, they appear. These Pokémon sneak through gaps into houses and cause all sorts of mischief."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"GROWTH"
    m.at 1, :"LEECHSEED"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"COTTONSPORE"
    m.at 10, :"GUST"
    m.at 28, :"TAILWIND"
    m.at 46, :"HURRICANE"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"COVET", :"DOUBLETEAM", :"DREAMEATER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TAUNT", :"THIEF", :"TOXIC", :"TRICKROOM", :"UTURN", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"WHIMSICOTT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 2
end