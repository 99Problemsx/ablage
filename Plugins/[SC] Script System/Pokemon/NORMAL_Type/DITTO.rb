#=============================================================================
# Ditto - NORMAL Type
#=============================================================================

GameData::Species.define :"DITTO" do |pkmn|
  pkmn.name "Ditto"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 48, attack: 48, defense: 48,
                  sp_atk: 48, sp_def: 48, speed: 48
  pkmn.abilities :"LIMBER"
  pkmn.hidden_abilities :"IMPOSTER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Head"
  pkmn.base_exp 101
  pkmn.catch_rate 35
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 4.0
  pkmn.category "Transform"
  pkmn.pokedex_entry "A Ditto rearranges its cell structure to transform itself. However, if it tries to change based on its memory, it will get details wrong."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Ditto"

  pkmn.moves do |m|
    m.at 1, :"TRANSFORM"
  end
end

GameData::SpeciesMetrics.define :"DITTO" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 29
  m.shadow_sprite 0, 0, 2
end