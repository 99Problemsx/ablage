#=============================================================================
# Kricketot - BUG Type
#=============================================================================

GameData::Species.define :"KRICKETOT" do |pkmn|
  pkmn.name "Kricketot"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 37, attack: 25, defense: 41,
                  sp_atk: 25, sp_def: 25, speed: 41
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 39
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 2.2
  pkmn.category "Cricket"
  pkmn.pokedex_entry "It shakes its head back to front, causing its antennae to hit each other and sound like a xylophone."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"BIDE"
    m.at 6, :"STRUGGLEBUG"
    m.at 16, :"BUGBITE"
  end
  pkmn.tutor_moves :"BUGBITE", :"ENDEAVOR", :"MUDSLAP", :"SNORE", :"STRINGSHOT", :"UPROAR"
  pkmn.egg_moves :"nil"
end

GameData::SpeciesMetrics.define :"KRICKETOT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 1
end