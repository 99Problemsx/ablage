#=============================================================================
# Scatterbug - BUG Type
#=============================================================================

GameData::Species.define :"SCATTERBUG" do |pkmn|
  pkmn.name "Scatterbug"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 38, attack: 35, defense: 40,
                  sp_atk: 35, sp_def: 27, speed: 25
  pkmn.abilities :"SHIELDDUST", :"COMPOUNDEYES"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 40
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 2.5
  pkmn.category "Scatterdust"
  pkmn.pokedex_entry "When under attack from bird Pokémon, it spews a poisonous black powder that causes paralysis on contact."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"STRINGSHOT"
    m.at 6, :"STUNSPORE"
    m.at 15, :"BUGBITE"
  end
  pkmn.tutor_moves :"BUGBITE", :"TERABLAST"
  pkmn.egg_moves :"POISONPOWDER", :"RAGEPOWDER", :"STUNSPORE"
end

GameData::SpeciesMetrics.define :"SCATTERBUG" do |m|
  m.back_sprite 2, 11
  m.front_sprite -3, 1
end