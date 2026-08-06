#=============================================================================
# Magikarp - WATER Type
#=============================================================================

GameData::Species.define :"MAGIKARP" do |pkmn|
  pkmn.name "Magikarp"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 20, attack: 10, defense: 55,
                  sp_atk: 80, sp_def: 15, speed: 20
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Finned"
  pkmn.base_exp 40
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 1285
  pkmn.height 0.9
  pkmn.weight 10.0
  pkmn.category "Fish"
  pkmn.pokedex_entry "Its swimming muscles are weak, so it is easily washed away by currents. In places where water pools, you can see many Magikarp deposited there by the flow."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water2", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 15, :"TACKLE"
    m.at 30, :"FLAIL"
  end
  pkmn.tutor_moves :"BOUNCE"
end

GameData::SpeciesMetrics.define :"MAGIKARP" do |m|
  m.back_sprite -1, 0
  m.front_sprite 2, -1
  m.shadow_sprite 0, 0, 2
end