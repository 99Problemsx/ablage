#=============================================================================
# Cherrim - GRASS Type
#=============================================================================

GameData::Species.define :"CHERRIM" do |pkmn|
  pkmn.name "Cherrim"
  pkmn.form_name "Overcast Form"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 70, attack: 60, defense: 70,
                  sp_atk: 85, sp_def: 87, speed: 78
  pkmn.abilities :"FLOWERGIFT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.3
  pkmn.category "Blossom"
  pkmn.pokedex_entry "It blooms during times of strong sunlight. It tries to make up for everything it endured as a bud."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"MORNINGSUN"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWTH"
    m.at 7, :"GROWTH"
    m.at 10, :"LEECHSEED"
    m.at 13, :"HELPINGHAND"
    m.at 19, :"MAGICALLEAF"
    m.at 22, :"SUNNYDAY"
    m.at 25, :"PETALDANCE"
    m.at 30, :"WORRYSEED"
    m.at 35, :"TAKEDOWN"
    m.at 43, :"SOLARBEAM"
    m.at 48, :"LUCKYCHANT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CHERRIM" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 18
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Overcast Form
GameData::Species.define :"CHERRIM_1" do |pkmn|
  pkmn.species :"CHERRIM"
  pkmn.form 1
  pkmn.name "Cherrim"
  pkmn.form_name "Overcast Form"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 70, attack: 60, defense: 70,
                  sp_atk: 85, sp_def: 87, speed: 78
  pkmn.abilities :"FLOWERGIFT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 158
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 9.3
  pkmn.category "Blossom"
  pkmn.pokedex_entry "It blooms during times of strong sunlight. It tries to make up for everything it endured as a bud."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"MORNINGSUN"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWTH"
    m.at 7, :"GROWTH"
    m.at 10, :"LEECHSEED"
    m.at 13, :"HELPINGHAND"
    m.at 19, :"MAGICALLEAF"
    m.at 22, :"SUNNYDAY"
    m.at 25, :"PETALDANCE"
    m.at 30, :"WORRYSEED"
    m.at 35, :"TAKEDOWN"
    m.at 43, :"SOLARBEAM"
    m.at 48, :"LUCKYCHANT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CHERRIM_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 21
  m.shadow_sprite 0, 0, 1
end