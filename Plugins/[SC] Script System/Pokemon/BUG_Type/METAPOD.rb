#=============================================================================
# Metapod - BUG Type
#=============================================================================

GameData::Species.define :"METAPOD" do |pkmn|
  pkmn.name "Metapod"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 50, attack: 20, defense: 55,
                  sp_atk: 30, sp_def: 25, speed: 25
  pkmn.abilities :"SHEDSKIN"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 72
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 9.9
  pkmn.category "Cocoon"
  pkmn.pokedex_entry "Its shell is as hard as an iron slab. A Metapod does not move very much because it is preparing its soft innards for evolution inside the shell."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"HARDEN"
    m.at 7, :"HARDEN"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"IRONDEFENSE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"METAPOD" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 23
  m.shadow_sprite 0, 0, 2
end