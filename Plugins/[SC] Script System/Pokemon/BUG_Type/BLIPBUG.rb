#=============================================================================
# Blipbug - BUG Type
#=============================================================================

GameData::Species.define :"BLIPBUG" do |pkmn|
  pkmn.name "Blipbug"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 25, attack: 20, defense: 20,
                  sp_atk: 45, sp_def: 25, speed: 45
  pkmn.abilities :"SWARM", :"COMPOUNDEYES"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 36
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 8.0
  pkmn.category "Larva"
  pkmn.pokedex_entry "Often found in gardens, this Pokémon has hairs on its body that it uses to assess its surroundings."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"STRUGGLEBUG"
  end
  pkmn.tutor_moves :"TERABLAST"
  pkmn.egg_moves :"INFESTATION", :"RECOVER", :"STICKYWEB", :"SUPERSONIC"
end

GameData::SpeciesMetrics.define :"BLIPBUG" do |m|
  m.back_sprite 0, 2
  m.front_sprite -2, 1
end