#=============================================================================
# Dolliv - GRASS Type
#=============================================================================

GameData::Species.define :"DOLLIV" do |pkmn|
  pkmn.name "Dolliv"
  pkmn.types :"GRASS", :"NORMAL"
  pkmn.base_stats hp: 52, attack: 53, defense: 60,
                  sp_atk: 33, sp_def: 78, speed: 78
  pkmn.abilities :"EARLYBIRD"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 124
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 11.9
  pkmn.category "Olive"
  pkmn.pokedex_entry "Dolliv shares its tasty, fresh-scented oil with others. This species has coexisted with humans since times long gone."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SWEETSCENT"
    m.at 1, :"TACKLE"
    m.at 5, :"ABSORB"
    m.at 7, :"GROWTH"
    m.at 10, :"RAZORLEAF"
    m.at 13, :"HELPINGHAND"
    m.at 16, :"FLAIL"
    m.at 20, :"MEGADRAIN"
    m.at 23, :"GRASSYTERRAIN"
    m.at 29, :"SEEDBOMB"
    m.at 34, :"ENERGYBALL"
    m.at 37, :"LEECHSEED"
    m.at 42, :"TERRAINPULSE"
  end
  pkmn.tutor_moves :"BULLETSEED", :"CHARM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYTERRAIN", :"HELPINGHAND", :"LEAFSTORM", :"MAGICALLEAF", :"PROTECT", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TRAILBLAZE", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"DOLLIV" do |m|
  m.back_sprite 0, 55
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 1
end