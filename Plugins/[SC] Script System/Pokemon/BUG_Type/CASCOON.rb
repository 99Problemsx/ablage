#=============================================================================
# Cascoon - BUG Type
#=============================================================================

GameData::Species.define :"CASCOON" do |pkmn|
  pkmn.name "Cascoon"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 50, attack: 35, defense: 55,
                  sp_atk: 15, sp_def: 25, speed: 25
  pkmn.abilities :"SHEDSKIN"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 41
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 11.5
  pkmn.category "Cocoon"
  pkmn.pokedex_entry "To avoid detection by its enemies, it hides motionlessly beneath large leaves and in the gaps of branches. It also attaches dead leaves to its body for camouflage."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"HARDEN"
    m.at 7, :"HARDEN"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"IRONDEFENSE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"CASCOON" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, 2
end