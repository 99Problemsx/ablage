#=============================================================================
# Wurmple - BUG Type
#=============================================================================

GameData::Species.define :"WURMPLE" do |pkmn|
  pkmn.name "Wurmple"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 45, attack: 45, defense: 35,
                  sp_atk: 20, sp_def: 20, speed: 30
  pkmn.abilities :"SHIELDDUST"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 39
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 3.6
  pkmn.category "Worm"
  pkmn.pokedex_entry "It sticks to tree branches and eats leaves. The thread it spits from its mouth becomes gooey when it touches air and slows the movement of its foes."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"STRINGSHOT"
    m.at 5, :"POISONSTING"
    m.at 15, :"BUGBITE"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"SNORE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"WURMPLE" do |m|
  m.back_sprite -1, 0
  m.front_sprite -2, 18
  m.shadow_sprite 0, 0, 1
end