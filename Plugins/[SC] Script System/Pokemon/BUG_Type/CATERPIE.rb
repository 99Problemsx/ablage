#=============================================================================
# Caterpie - BUG Type
#=============================================================================

GameData::Species.define :"CATERPIE" do |pkmn|
  pkmn.name "Caterpie"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 45, attack: 30, defense: 35,
                  sp_atk: 45, sp_def: 20, speed: 20
  pkmn.abilities :"SHIELDDUST"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 39
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.9
  pkmn.category "Worm"
  pkmn.pokedex_entry "Its voracious appetite compels it to devour leaves bigger than itself without hesitation. It releases a terribly strong odor from its antennae."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"STRINGSHOT"
    m.at 15, :"BUGBITE"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"SNORE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"CATERPIE" do |m|
  m.back_sprite -5, 0
  m.front_sprite -3, 23
  m.shadow_sprite 0, 0, 1
end