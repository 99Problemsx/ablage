#=============================================================================
# Weedle - BUG Type
#=============================================================================

GameData::Species.define :"WEEDLE" do |pkmn|
  pkmn.name "Weedle"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 40, attack: 35, defense: 30,
                  sp_atk: 50, sp_def: 20, speed: 20
  pkmn.abilities :"SHIELDDUST"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 39
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 3.2
  pkmn.category "Hairy Bug"
  pkmn.pokedex_entry "A Weedle has an extremely acute sense of smell. It distinguishes its favorite kinds of leaves from those it dislikes by sniffing with its big red proboscis (nose)."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"STRINGSHOT"
    m.at 15, :"BUGBITE"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"WEEDLE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 24
  m.shadow_sprite 0, 0, 1
end