#=============================================================================
# Poltchageist - GRASS Type
#=============================================================================

GameData::Species.define :"POLTCHAGEIST" do |pkmn|
  pkmn.name "Poltchageist"
  pkmn.form_name "Counterfeit Form"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 40, attack: 45, defense: 45,
                  sp_atk: 50, sp_def: 74, speed: 54
  pkmn.abilities :"HOSPITALITY"
  pkmn.hidden_abilities :"HEATPROOF"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 62
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.1
  pkmn.weight 1.1
  pkmn.category "Matcha"
  pkmn.pokedex_entry "Supposedly, the regrets of a tea ceremony master who died before perfecting his craft lingered in some matcha and became a Pokémon."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"STUNSPORE"
    m.at 1, :"ASTONISH"
    m.at 1, :"WITHDRAW"
    m.at 6, :"ABSORB"
    m.at 12, :"LIFEDEW"
    m.at 18, :"FOULPLAY"
    m.at 24, :"MEGADRAIN"
    m.at 30, :"HEX"
    m.at 36, :"RAGEPOWDER"
    m.at 42, :"GIGADRAIN"
    m.at 48, :"SHADOWBALL"
    m.at 54, :"MEMENTO"
    m.at 60, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"CALMMIND", :"CURSE", :"ENDURE", :"ENERGYBALL", :"FOULPLAY", :"GIGADRAIN", :"GRASSYTERRAIN", :"HEX", :"IMPRISON", :"IRONDEFENSE", :"LEAFSTORM", :"MAGICALLEAF", :"NASTYPLOT", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"SCALD", :"SHADOWBALL", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"TRICKROOM", :"UPROAR"
end

GameData::SpeciesMetrics.define :"POLTCHAGEIST" do |m|
  m.back_sprite 0, 36
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Artisan Form
GameData::Species.define :"POLTCHAGEIST_1" do |pkmn|
  pkmn.species :"POLTCHAGEIST"
  pkmn.form 1
  pkmn.name "Poltchageist"
  pkmn.form_name "Artisan Form"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 40, attack: 45, defense: 45,
                  sp_atk: 50, sp_def: 74, speed: 54
  pkmn.abilities :"HOSPITALITY"
  pkmn.hidden_abilities :"HEATPROOF"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 62
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.1
  pkmn.weight 1.1
  pkmn.category "Matcha"
  pkmn.pokedex_entry "It sprinkles some of its powdery body onto food and drains the life-force from those who so much as lick it."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"STUNSPORE"
    m.at 1, :"ASTONISH"
    m.at 1, :"WITHDRAW"
    m.at 6, :"ABSORB"
    m.at 12, :"LIFEDEW"
    m.at 18, :"FOULPLAY"
    m.at 24, :"MEGADRAIN"
    m.at 30, :"HEX"
    m.at 36, :"RAGEPOWDER"
    m.at 42, :"GIGADRAIN"
    m.at 48, :"SHADOWBALL"
    m.at 54, :"MEMENTO"
    m.at 60, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"CALMMIND", :"CURSE", :"ENDURE", :"ENERGYBALL", :"FOULPLAY", :"GIGADRAIN", :"GRASSYTERRAIN", :"HEX", :"IMPRISON", :"IRONDEFENSE", :"LEAFSTORM", :"MAGICALLEAF", :"NASTYPLOT", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"SCALD", :"SHADOWBALL", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"TRICKROOM", :"UPROAR"
end

GameData::SpeciesMetrics.define :"POLTCHAGEIST_1" do |m|
  m.back_sprite 0, 36
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 1
end