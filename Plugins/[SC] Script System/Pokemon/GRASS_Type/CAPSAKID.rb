#=============================================================================
# Capsakid - GRASS Type
#=============================================================================

GameData::Species.define :"CAPSAKID" do |pkmn|
  pkmn.name "Capsakid"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 50, attack: 62, defense: 40,
                  sp_atk: 50, sp_def: 62, speed: 40
  pkmn.abilities :"CHLOROPHYLL", :"INSOMNIA"
  pkmn.hidden_abilities :"KLUTZ"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.0
  pkmn.category "Spicy Pepper"
  pkmn.pokedex_entry "The more sunlight this Pokémon bathes in, the more spicy chemicals are produced by its body, and thus the spicier its moves become."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"LEAFAGE"
    m.at 1, :"LEER"
    m.at 4, :"BITE"
    m.at 10, :"GROWTH"
    m.at 13, :"RAZORLEAF"
    m.at 17, :"SUNNYDAY"
    m.at 21, :"BULLETSEED"
    m.at 24, :"HEADBUTT"
    m.at 28, :"ZENHEADBUTT"
    m.at 38, :"CRUNCH"
    m.at 44, :"SEEDBOMB"
    m.at 48, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"BULLETSEED", :"CRUNCH", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"LEAFSTORM", :"MAGICALLEAF", :"PROTECT", :"REST", :"SANDSTORM", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"ZENHEADBUTT"
  pkmn.egg_moves :"INGRAIN", :"LEECHSEED", :"RAGEPOWDER", :"ROLLOUT", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CAPSAKID" do |m|
  m.back_sprite 0, 48
  m.front_sprite -1, 28
  m.shadow_sprite 0, 0, 1
end