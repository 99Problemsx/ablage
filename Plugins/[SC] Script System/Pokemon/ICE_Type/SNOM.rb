#=============================================================================
# Snom - ICE Type
#=============================================================================

GameData::Species.define :"SNOM" do |pkmn|
  pkmn.name "Snom"
  pkmn.types :"ICE", :"BUG"
  pkmn.base_stats hp: 30, attack: 25, defense: 35,
                  sp_atk: 20, sp_def: 45, speed: 30
  pkmn.abilities :"SHIELDDUST"
  pkmn.hidden_abilities :"ICESCALES"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 37
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.8
  pkmn.category "Worm"
  pkmn.pokedex_entry "It spits out thread imbued with a frigid sort of energy and uses it to tie its body to branches, disguising itself as an icicle while it sleeps."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"STRUGGLEBUG"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBUZZ", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"ICICLESPEAR", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"BUGBITE", :"FAIRYWIND", :"MIRRORCOAT"
end

GameData::SpeciesMetrics.define :"SNOM" do |m|
  m.back_sprite 2, 11
  m.front_sprite 1, 36
end