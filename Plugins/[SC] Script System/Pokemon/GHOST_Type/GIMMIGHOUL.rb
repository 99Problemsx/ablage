#=============================================================================
# Gimmighoul - GHOST Type
#=============================================================================

GameData::Species.define :"GIMMIGHOUL" do |pkmn|
  pkmn.name "Gimmighoul"
  pkmn.form_name "Chest Form"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 45, attack: 30, defense: 70,
                  sp_atk: 10, sp_def: 75, speed: 70
  pkmn.abilities :"RATTLED"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 12800
  pkmn.height 0.3
  pkmn.weight 5.0
  pkmn.category "Coin Chest"
  pkmn.pokedex_entry "This Pokémon was born inside a treasure chest about 1,500 years ago. It sucks the life-force out of scoundrels who try to steal the treasure."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"TACKLE"
  end
  pkmn.tutor_moves :"CONFUSERAY", :"ENDURE", :"HEX", :"LIGHTSCREEN", :"NASTYPLOT", :"NIGHTSHADE", :"POWERGEM", :"PROTECT", :"REFLECT", :"REST", :"SHADOWBALL", :"SLEEPTALK", :"SUBSTITUTE", :"TAKEDOWN", :"THIEF"
end

GameData::SpeciesMetrics.define :"GIMMIGHOUL" do |m|
  m.back_sprite 0, 37
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Roaming Form
GameData::Species.define :"GIMMIGHOUL_1" do |pkmn|
  pkmn.species :"GIMMIGHOUL"
  pkmn.form 1
  pkmn.name "Gimmighoul"
  pkmn.form_name "Roaming Form"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 45, attack: 30, defense: 70,
                  sp_atk: 10, sp_def: 75, speed: 70
  pkmn.abilities :"RUNAWAY"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 0
  pkmn.happiness 50
  pkmn.hatch_steps 12800
  pkmn.height 0.1
  pkmn.weight 0.1
  pkmn.category "Coin Hunter"
  pkmn.pokedex_entry "This Pokémon was born from passion that seeped into a coin. It wanders, apparently seeking to return to the treasure chest it once inhabited."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"TACKLE"
  end
  pkmn.tutor_moves :"CONFUSERAY", :"ENDURE", :"HEX", :"LIGHTSCREEN", :"NASTYPLOT", :"NIGHTSHADE", :"POWERGEM", :"PROTECT", :"REFLECT", :"REST", :"SHADOWBALL", :"SLEEPTALK", :"SUBSTITUTE", :"TAKEDOWN", :"THIEF"
end

GameData::SpeciesMetrics.define :"GIMMIGHOUL_1" do |m|
  m.back_sprite 0, 58
  m.front_sprite -5, 30
  m.shadow_sprite 0, 0, 1
end