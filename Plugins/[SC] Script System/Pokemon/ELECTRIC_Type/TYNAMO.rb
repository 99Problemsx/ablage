#=============================================================================
# Tynamo - ELECTRIC Type
#=============================================================================

GameData::Species.define :"TYNAMO" do |pkmn|
  pkmn.name "Tynamo"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 35, attack: 55, defense: 40,
                  sp_atk: 60, sp_def: 45, speed: 40
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Finned"
  pkmn.base_exp 55
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.2
  pkmn.weight 0.3
  pkmn.category "EleFish"
  pkmn.pokedex_entry "These Pokémon move in schools. They have an electricity-generating organ, so they discharge electricity if in danger."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"THUNDERWAVE"
    m.at 1, :"SPARK"
    m.at 1, :"CHARGEBEAM"
  end
  pkmn.tutor_moves :"MAGNETRISE"
  pkmn.egg_moves :"nil"
end

GameData::SpeciesMetrics.define :"TYNAMO" do |m|
  m.back_sprite -4, 0
  m.front_sprite 1, 19
  m.shadow_sprite 0, 0, 2
end