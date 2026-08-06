#=============================================================================
# Smeargle - NORMAL Type
#=============================================================================

GameData::Species.define :"SMEARGLE" do |pkmn|
  pkmn.name "Smeargle"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 20, defense: 35,
                  sp_atk: 75, sp_def: 20, speed: 45
  pkmn.abilities :"OWNTEMPO", :"TECHNICIAN"
  pkmn.hidden_abilities :"MOODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 88
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 58.0
  pkmn.category "Painter"
  pkmn.pokedex_entry "A Smeargle marks its territory using a fluid that leaks out from the tip of its tail. About 5,000 different marks left by this Pokémon have been found."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SKETCH"
    m.at 11, :"SKETCH"
    m.at 21, :"SKETCH"
    m.at 31, :"SKETCH"
    m.at 41, :"SKETCH"
    m.at 51, :"SKETCH"
    m.at 61, :"SKETCH"
    m.at 71, :"SKETCH"
    m.at 81, :"SKETCH"
    m.at 91, :"SKETCH"
  end
end

GameData::SpeciesMetrics.define :"SMEARGLE" do |m|
  m.back_sprite 5, 0
  m.front_sprite -6, 16
  m.shadow_sprite 0, 0, 2
end