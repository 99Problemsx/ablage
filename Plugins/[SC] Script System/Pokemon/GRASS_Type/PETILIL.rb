#=============================================================================
# Petilil - GRASS Type
#=============================================================================

GameData::Species.define :"PETILIL" do |pkmn|
  pkmn.name "Petilil"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 45, attack: 35, defense: 50,
                  sp_atk: 30, sp_def: 70, speed: 50
  pkmn.abilities :"CHLOROPHYLL", :"OWNTEMPO"
  pkmn.hidden_abilities :"LEAFGUARD"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 56
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 6.6
  pkmn.category "Bulb"
  pkmn.pokedex_entry "Since they prefer moist, nutrient-rich soil, the areas where Petilil live are known to be good for growing plants."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 4, :"GROWTH"
    m.at 8, :"LEECHSEED"
    m.at 10, :"SLEEPPOWDER"
    m.at 13, :"MEGADRAIN"
    m.at 17, :"SYNTHESIS"
    m.at 19, :"MAGICALLEAF"
    m.at 22, :"STUNSPORE"
    m.at 26, :"GIGADRAIN"
    m.at 28, :"AROMATHERAPY"
    m.at 31, :"HELPINGHAND"
    m.at 35, :"ENERGYBALL"
    m.at 37, :"ENTRAINMENT"
    m.at 40, :"SUNNYDAY"
    m.at 44, :"AFTERYOU"
    m.at 46, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"CAPTIVATE", :"COVET", :"CUT", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"BIDE", :"CHARM", :"ENDURE", :"GRASSWHISTLE", :"HEALINGWISH", :"INGRAIN", :"NATURALGIFT", :"SWEETSCENT", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"PETILIL" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 1
end