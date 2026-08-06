#=============================================================================
# Kakuna - BUG Type
#=============================================================================

GameData::Species.define :"KAKUNA" do |pkmn|
  pkmn.name "Kakuna"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 45, attack: 25, defense: 50,
                  sp_atk: 35, sp_def: 25, speed: 25
  pkmn.abilities :"SHEDSKIN"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 72
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.6
  pkmn.weight 10.0
  pkmn.category "Cocoon"
  pkmn.pokedex_entry "It remains virtually immobile while it clings to a tree. However, on the inside, it busily prepares for evolution. This is evident from how hot its shell becomes."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"HARDEN"
    m.at 7, :"HARDEN"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"IRONDEFENSE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"KAKUNA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 1
end