#=============================================================================
# Spewpa - BUG Type
#=============================================================================

GameData::Species.define :"SPEWPA" do |pkmn|
  pkmn.name "Spewpa"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 45, attack: 22, defense: 60,
                  sp_atk: 29, sp_def: 27, speed: 30
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"FRIENDGUARD"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 75
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 8.4
  pkmn.category "Scatterdust"
  pkmn.pokedex_entry "It lives hidden within thicket shadows. When predators attack, it quickly bristles the fur covering its body in an effort to threaten them."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"PROTECT"
    m.at 1, :"HARDEN"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"IRONDEFENSE", :"PROTECT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SPEWPA" do |m|
  m.back_sprite -2, 41
  m.front_sprite -2, 28
  m.shadow_sprite 0, 0, 2
end