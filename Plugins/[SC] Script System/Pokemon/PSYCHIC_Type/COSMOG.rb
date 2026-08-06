#=============================================================================
# Cosmog - PSYCHIC Type
#=============================================================================

GameData::Species.define :"COSMOG" do |pkmn|
  pkmn.name "Cosmog"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 43, attack: 29, defense: 31,
                  sp_atk: 37, sp_def: 29, speed: 31
  pkmn.abilities :"UNAWARE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 40
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 0.2
  pkmn.weight 0.1
  pkmn.category "Nebula"
  pkmn.pokedex_entry "Whether or not it's a Pokémon from this world is a mystery. When it's in a jam, it warps away to a safe place to hide."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"TELEPORT"
  end
  pkmn.tutor_moves :"TERABLAST"
end

GameData::SpeciesMetrics.define :"COSMOG" do |m|
  m.back_sprite 0, 35
  m.front_sprite 1, 5
  m.shadow_sprite 0, 0, -1
end