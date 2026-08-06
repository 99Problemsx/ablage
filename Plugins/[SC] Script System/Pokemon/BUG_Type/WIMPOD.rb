#=============================================================================
# Wimpod - BUG Type
#=============================================================================

GameData::Species.define :"WIMPOD" do |pkmn|
  pkmn.name "Wimpod"
  pkmn.types :"BUG", :"WATER"
  pkmn.base_stats hp: 25, attack: 35, defense: 40,
                  sp_atk: 80, sp_def: 20, speed: 30
  pkmn.abilities :"WIMPOUT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Multiped"
  pkmn.base_exp 46
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 12.0
  pkmn.category "Turn Tail"
  pkmn.pokedex_entry "This Pokémon is a coward. As it desperately dashes off, the flailing of its many legs leaves a sparkling clean path in its wake."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"STRUGGLEBUG"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DEFENSECURL"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BUGBUZZ", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"LEECHLIFE", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SPIKES", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"TOXIC", :"WATERFALL", :"TERABLAST"
  pkmn.egg_moves :"AQUAJET", :"HARDEN", :"METALCLAW", :"ROLLOUT", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"WIMPOD" do |m|
  m.back_sprite 0, 28
  m.front_sprite 4, 10
end