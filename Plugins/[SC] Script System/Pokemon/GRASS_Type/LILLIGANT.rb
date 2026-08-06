#=============================================================================
# Lilligant - GRASS Type
#=============================================================================

GameData::Species.define :"LILLIGANT" do |pkmn|
  pkmn.name "Lilligant"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 70, attack: 60, defense: 75,
                  sp_atk: 90, sp_def: 110, speed: 75
  pkmn.abilities :"CHLOROPHYLL", :"OWNTEMPO"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 16.3
  pkmn.category "Flowering"
  pkmn.pokedex_entry "The fragrance of the garland on its head has a relaxing effect. It withers if a Trainer does not take good care of it."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"GROWTH"
    m.at 1, :"LEECHSEED"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"SYNTHESIS"
    m.at 10, :"TEETERDANCE"
    m.at 28, :"QUIVERDANCE"
    m.at 46, :"PETALDANCE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"LILLIGANT" do |m|
  m.back_sprite 1, 0
  m.front_sprite 3, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Hisuian
GameData::Species.define :"LILLIGANT_1" do |pkmn|
  pkmn.species :"LILLIGANT"
  pkmn.form 1
  pkmn.name "Lilligant"
  pkmn.form_name "Hisuian"
  pkmn.types :"GRASS", :"FIGHTING"
  pkmn.base_stats hp: 70, attack: 105, defense: 75,
                  sp_atk: 105, sp_def: 50, speed: 75
  pkmn.abilities :"CHLOROPHYLL", :"HUSTLE"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 19.2
  pkmn.category "Spinning"
  pkmn.pokedex_entry "They suspect that its well-developed legs are the result of a life spent on mountains covered in deep snow. The scent it exudes from its flower crown heartens those in proximity."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 0, :"VICTORYDANCE"
    m.at 1, :"TEETERDANCE"
    m.at 1, :"SOLARBLADE"
    m.at 1, :"PETALBLIZZARD"
    m.at 1, :"AFTERYOU"
    m.at 1, :"ENTRAINMENT"
    m.at 1, :"LEAFSTORM"
    m.at 1, :"DEFOG"
    m.at 1, :"ENERGYBALL"
    m.at 1, :"LEAFBLADE"
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"MEGAKICK"
    m.at 1, :"SUNNYDAY"
    m.at 1, :"SYNTHESIS"
    m.at 1, :"GIGADRAIN"
    m.at 1, :"SLEEPPOWDER"
    m.at 1, :"STUNSPORE"
    m.at 1, :"GROWTH"
    m.at 1, :"LEECHSEED"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"ABSORB"
    m.at 1, :"HELPINGHAND"
    m.at 5, :"AXEKICK"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRSLASH", :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"CLOSECOMBAT", :"COACHING", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"ICESPINNER", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"METRONOME", :"PETALBLIZZARD", :"POISONJAB", :"POLLENPUFF", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TRAILBLAZE", :"TRIPLEAXEL", :"UPPERHAND", :"VACUUMWAVE", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"LILLIGANT_1" do |m|
  m.back_sprite 0, 48
  m.front_sprite 2, 17
  m.shadow_sprite 0, 0, 1
end