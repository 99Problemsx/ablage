#=============================================================================
# Arboliva - GRASS Type
#=============================================================================

GameData::Species.define :"ARBOLIVA" do |pkmn|
  pkmn.name "Arboliva"
  pkmn.types :"GRASS", :"NORMAL"
  pkmn.base_stats hp: 78, attack: 69, defense: 90,
                  sp_atk: 39, sp_def: 125, speed: 109
  pkmn.abilities :"SEEDSOWER"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 255
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.4
  pkmn.weight 48.2
  pkmn.category "Olive"
  pkmn.pokedex_entry "This calm Pokémon is very compassionate. It will share its delicious, nutrient-rich oil with weakened Pokémon."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"MIRRORCOAT"
    m.at 1, :"TACKLE"
    m.at 1, :"SAFEGUARD"
    m.at 1, :"SWEETSCENT"
    m.at 5, :"ABSORB"
    m.at 7, :"GROWTH"
    m.at 10, :"RAZORLEAF"
    m.at 13, :"HELPINGHAND"
    m.at 16, :"FLAIL"
    m.at 20, :"MEGADRAIN"
    m.at 23, :"GRASSYTERRAIN"
    m.at 29, :"SEEDBOMB"
    m.at 34, :"ENERGYBALL"
    m.at 39, :"LEECHSEED"
    m.at 46, :"TERRAINPULSE"
    m.at 52, :"PETALBLIZZARD"
    m.at 58, :"PETALDANCE"
  end
  pkmn.tutor_moves :"ALLURINGVOICE", :"BULLETSEED", :"CHARM", :"DAZZLINGGLEAM", :"EARTHPOWER", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"HELPINGHAND", :"HYPERBEAM", :"HYPERVOICE", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"METRONOME", :"PETALBLIZZARD", :"POLLENPUFF", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TRAILBLAZE", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"ARBOLIVA" do |m|
  m.back_sprite 0, 51
  m.front_sprite 1, 16
  m.shadow_sprite 0, 0, 1
end