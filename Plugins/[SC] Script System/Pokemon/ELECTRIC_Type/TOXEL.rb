#=============================================================================
# Toxel - ELECTRIC Type
#=============================================================================

GameData::Species.define :"TOXEL" do |pkmn|
  pkmn.name "Toxel"
  pkmn.types :"ELECTRIC", :"POISON"
  pkmn.base_stats hp: 40, attack: 38, defense: 35,
                  sp_atk: 40, sp_def: 54, speed: 35
  pkmn.abilities :"RATTLED", :"STATIC"
  pkmn.hidden_abilities :"KLUTZ"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 48
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.4
  pkmn.weight 11.0
  pkmn.category "Baby"
  pkmn.pokedex_entry "It manipulates the chemical makeup of its poison to produce electricity. The voltage is weak, but it can cause a tingling paralysis."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BELCH"
    m.at 1, :"TEARFULLOOK"
    m.at 1, :"NUZZLE"
    m.at 1, :"GROWL"
    m.at 1, :"FLAIL"
    m.at 1, :"ACID"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ENCORE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"ENDEAVOR", :"METALSOUND", :"POWERUPPUNCH"
end

GameData::SpeciesMetrics.define :"TOXEL" do |m|
  m.back_sprite 1, 16
  m.front_sprite 1, 25
end