#=============================================================================
# Combee - BUG Type
#=============================================================================

GameData::Species.define :"COMBEE" do |pkmn|
  pkmn.name "Combee"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 30, attack: 30, defense: 42,
                  sp_atk: 70, sp_def: 30, speed: 42
  pkmn.abilities :"HONEYGATHER"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 49
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.3
  pkmn.weight 5.5
  pkmn.category "Tiny Bee"
  pkmn.pokedex_entry "A Pokémon formed by three others. It busily carries sweet floral honey to Vespiquen."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"SWEETSCENT"
    m.at 1, :"GUST"
    m.at 13, :"BUGBITE"
    m.at 29, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"AIRCUTTER", :"BUGBITE", :"ENDEAVOR", :"MUDSLAP", :"OMINOUSWIND", :"SNORE", :"STRINGSHOT", :"SWIFT", :"TAILWIND"
  pkmn.egg_moves :"nil"
end

GameData::SpeciesMetrics.define :"COMBEE" do |m|
  m.back_sprite 1, 0
  m.front_sprite 5, 4
  m.shadow_sprite 0, 0, 1
end