#=============================================================================
# Smoliv - GRASS Type
#=============================================================================

GameData::Species.define :"SMOLIV" do |pkmn|
  pkmn.name "Smoliv"
  pkmn.types :"GRASS", :"NORMAL"
  pkmn.base_stats hp: 41, attack: 35, defense: 45,
                  sp_atk: 30, sp_def: 58, speed: 51
  pkmn.abilities :"EARLYBIRD"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 52
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 6.5
  pkmn.category "Olive"
  pkmn.pokedex_entry "It protects itself from enemies by emitting oil from the fruit on its head. This oil is bitter and astringent enough to make someone flinch."
  pkmn.evs special_attack: 1
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
    m.at 27, :"SEEDBOMB"
    m.at 30, :"ENERGYBALL"
    m.at 34, :"LEECHSEED"
    m.at 38, :"TERRAINPULSE"
  end
  pkmn.tutor_moves :"BULLETSEED", :"CHARM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYTERRAIN", :"HELPINGHAND", :"LEAFSTORM", :"MAGICALLEAF", :"PROTECT", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TRAILBLAZE", :"WEATHERBALL"
  pkmn.egg_moves :"MEMENTO", :"STRENGTHSAP", :"SYNTHESIS", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"SMOLIV" do |m|
  m.back_sprite 0, 45
  m.front_sprite 0, 28
  m.shadow_sprite 0, 0, 1
end