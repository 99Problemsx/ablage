#=============================================================================
# Burmy - BUG Type
#=============================================================================

GameData::Species.define :"BURMY" do |pkmn|
  pkmn.name "Burmy"
  pkmn.form_name "Plant Cloak"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 40, attack: 29, defense: 45,
                  sp_atk: 36, sp_def: 29, speed: 45
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 45
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.2
  pkmn.weight 3.4
  pkmn.category "Bagworm"
  pkmn.pokedex_entry "To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"PROTECT"
    m.at 10, :"TACKLE"
    m.at 15, :"BUGBITE"
    m.at 20, :"HIDDENPOWER"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"SNORE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"BURMY" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Plant Cloak
GameData::Species.define :"BURMY_1" do |pkmn|
  pkmn.species :"BURMY"
  pkmn.form 1
  pkmn.name "Burmy"
  pkmn.form_name "Plant Cloak"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 40, attack: 29, defense: 45,
                  sp_atk: 36, sp_def: 29, speed: 45
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 45
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.2
  pkmn.weight 3.4
  pkmn.category "Bagworm"
  pkmn.pokedex_entry "To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"PROTECT"
    m.at 10, :"TACKLE"
    m.at 15, :"BUGBITE"
    m.at 20, :"HIDDENPOWER"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"SNORE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"BURMY_1" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 1
end

# Form 2 - Plant Cloak
GameData::Species.define :"BURMY_2" do |pkmn|
  pkmn.species :"BURMY"
  pkmn.form 2
  pkmn.name "Burmy"
  pkmn.form_name "Plant Cloak"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 40, attack: 29, defense: 45,
                  sp_atk: 36, sp_def: 29, speed: 45
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 45
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.2
  pkmn.weight 3.4
  pkmn.category "Bagworm"
  pkmn.pokedex_entry "To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"PROTECT"
    m.at 10, :"TACKLE"
    m.at 15, :"BUGBITE"
    m.at 20, :"HIDDENPOWER"
  end
  pkmn.tutor_moves :"BUGBITE", :"ELECTROWEB", :"SNORE", :"STRINGSHOT"
end

GameData::SpeciesMetrics.define :"BURMY_2" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 1
end