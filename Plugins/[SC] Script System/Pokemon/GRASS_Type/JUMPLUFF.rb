#=============================================================================
# Jumpluff - GRASS Type
#=============================================================================

GameData::Species.define :"JUMPLUFF" do |pkmn|
  pkmn.name "Jumpluff"
  pkmn.types :"GRASS", :"FLYING"
  pkmn.base_stats hp: 75, attack: 55, defense: 70,
                  sp_atk: 110, sp_def: 55, speed: 85
  pkmn.abilities :"CHLOROPHYLL", :"LEAFGUARD"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 203
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 3.0
  pkmn.category "Cottonweed"
  pkmn.pokedex_entry "Jumpluff ride warm southern winds to cross the sea and fly to foreign lands. This Pokémon lands when it encounters cold air while it is floating."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"SYNTHESIS"
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 4, :"SYNTHESIS"
    m.at 7, :"TAILWHIP"
    m.at 10, :"TACKLE"
    m.at 12, :"POISONPOWDER"
    m.at 14, :"STUNSPORE"
    m.at 16, :"SLEEPPOWDER"
    m.at 20, :"BULLETSEED"
    m.at 24, :"LEECHSEED"
    m.at 29, :"MEGADRAIN"
    m.at 34, :"ACROBATICS"
    m.at 39, :"RAGEPOWDER"
    m.at 44, :"COTTONSPORE"
    m.at 49, :"UTURN"
    m.at 54, :"WORRYSEED"
    m.at 59, :"GIGADRAIN"
    m.at 64, :"BOUNCE"
    m.at 69, :"MEMENTO"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BOUNCE", :"BULLETSEED", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UTURN", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"JUMPLUFF" do |m|
  m.back_sprite -6, 0
  m.front_sprite -1, -5
  m.shadow_sprite 0, 0, 1
end