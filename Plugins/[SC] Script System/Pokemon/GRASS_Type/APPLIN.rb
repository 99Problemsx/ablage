#=============================================================================
# Applin - GRASS Type
#=============================================================================

GameData::Species.define :"APPLIN" do |pkmn|
  pkmn.name "Applin"
  pkmn.types :"GRASS", :"DRAGON"
  pkmn.base_stats hp: 40, attack: 40, defense: 80,
                  sp_atk: 20, sp_def: 40, speed: 40
  pkmn.abilities :"RIPEN", :"GLUTTONY"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 52
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.5
  pkmn.category "Apple Core"
  pkmn.pokedex_entry "It spends its entire life inside an apple. It hides from its natural enemies, bird Pokémon, by pretending it's just an apple and nothing more."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Grass", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"WITHDRAW"
    m.at 1, :"ASTONISH"
  end
  pkmn.tutor_moves :"ATTRACT", :"DRACOMETEOR", :"GRASSYGLIDE", :"TERABLAST"
  pkmn.egg_moves :"DEFENSECURL", :"RECYCLE", :"ROLLOUT", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"APPLIN" do |m|
  m.back_sprite 0, 11
  m.front_sprite 0, 1
  m.shadow_sprite 0, 0, 2
end