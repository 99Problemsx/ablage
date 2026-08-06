#=============================================================================
# Skiploom - GRASS Type
#=============================================================================

GameData::Species.define :"SKIPLOOM" do |pkmn|
  pkmn.name "Skiploom"
  pkmn.types :"GRASS", :"FLYING"
  pkmn.base_stats hp: 55, attack: 45, defense: 50,
                  sp_atk: 80, sp_def: 45, speed: 65
  pkmn.abilities :"CHLOROPHYLL", :"LEAFGUARD"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 119
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 1.0
  pkmn.category "Cottonweed"
  pkmn.pokedex_entry "It blossoms when the temperature rises above 64 degrees F. Because its flower's blooming changes with the temperature, it is sometimes used as a thermometer."
  pkmn.evs speed: 2
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
    m.at 28, :"MEGADRAIN"
    m.at 32, :"ACROBATICS"
    m.at 36, :"RAGEPOWDER"
    m.at 40, :"COTTONSPORE"
    m.at 44, :"UTURN"
    m.at 48, :"WORRYSEED"
    m.at 52, :"GIGADRAIN"
    m.at 56, :"BOUNCE"
    m.at 60, :"MEMENTO"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BOUNCE", :"BULLETSEED", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UTURN", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SKIPLOOM" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 7
  m.shadow_sprite 0, 0, 2
end