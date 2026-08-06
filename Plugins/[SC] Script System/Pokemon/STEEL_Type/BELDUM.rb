#=============================================================================
# Beldum - STEEL Type
#=============================================================================

GameData::Species.define :"BELDUM" do |pkmn|
  pkmn.name "Beldum"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 40, attack: 55, defense: 80,
                  sp_atk: 30, sp_def: 35, speed: 60
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"LIGHTMETAL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 60
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 0.6
  pkmn.weight 95.2
  pkmn.category "Iron Ball"
  pkmn.pokedex_entry "When Beldum gather in a swarm, they move in perfect unison as if they were but one Pokémon. They communicate with each other using brain waves."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TAKEDOWN"
  end
  pkmn.tutor_moves :"HEADBUTT", :"IRONDEFENSE", :"IRONHEAD", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"BELDUM" do |m|
  m.back_sprite -6, 0
  m.front_sprite 3, 12
  m.shadow_sprite 0, 0, 2
end