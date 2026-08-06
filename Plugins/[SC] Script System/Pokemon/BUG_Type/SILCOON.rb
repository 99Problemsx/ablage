#=============================================================================
# Silcoon - BUG Type
#=============================================================================

GameData::Species.define :"SILCOON" do |pkmn|
  pkmn.name "Silcoon"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 50, attack: 35, defense: 55,
                  sp_atk: 15, sp_def: 25, speed: 25
  pkmn.abilities :"SHEDSKIN"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Head"
  pkmn.base_exp 72
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 10.0
  pkmn.category "Cocoon"
  pkmn.pokedex_entry "It prepares for evolution using the energy it stored while it was a Wurmple. It keeps watch over the surroundings with its two eyes."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"HARDEN"
    m.at 7, :"HARDEN"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"IRONDEFENSE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"SILCOON" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 24
  m.shadow_sprite 0, 0, 2
end