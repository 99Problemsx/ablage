#=============================================================================
# Cosmoem - PSYCHIC Type
#=============================================================================

GameData::Species.define :"COSMOEM" do |pkmn|
  pkmn.name "Cosmoem"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 43, attack: 29, defense: 131,
                  sp_atk: 37, sp_def: 29, speed: 131
  pkmn.abilities :"STURDY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 140
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 0.1
  pkmn.weight 999.9
  pkmn.category "Protostar"
  pkmn.pokedex_entry "Motionless as if dead, its body is faintly warm to the touch. In the distant past, it was called the cocoon of the stars."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"COSMICPOWER"
    m.at 1, :"TELEPORT"
  end
  pkmn.tutor_moves :"COSMICPOWER", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"COSMOEM" do |m|
  m.back_sprite 2, 14
  m.front_sprite -2, 2
  m.shadow_sprite 0, 0, -1
end