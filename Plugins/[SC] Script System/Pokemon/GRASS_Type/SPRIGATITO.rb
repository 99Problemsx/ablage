#=============================================================================
# Sprigatito - GRASS Type
#=============================================================================

GameData::Species.define :"SPRIGATITO" do |pkmn|
  pkmn.name "Sprigatito"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 40, attack: 61, defense: 54,
                  sp_atk: 65, sp_def: 45, speed: 45
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 4.1
  pkmn.category "Grass Cat"
  pkmn.pokedex_entry "The sweet scent its body gives off mesmerizes those around it. The scent grows stronger when this Pokémon is in the sun."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"LEAFAGE"
    m.at 7, :"BITE"
    m.at 10, :"HONECLAWS"
    m.at 13, :"MAGICALLEAF"
    m.at 15, :"QUICKATTACK"
    m.at 17, :"SEEDBOMB"
    m.at 21, :"UTURN"
    m.at 25, :"WORRYSEED"
    m.at 28, :"SLASH"
    m.at 32, :"ENERGYBALL"
    m.at 36, :"PLAYROUGH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"BULLETSEED", :"CHARM", :"DISARMINGVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"LEAFSTORM", :"MAGICALLEAF", :"MUDSLAP", :"NASTYPLOT", :"PETALBLIZZARD", :"PLAYROUGH", :"PROTECT", :"REST", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SOLARBEAM", :"SUBSTITUTE", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"TRAILBLAZE", :"UTURN"
  pkmn.egg_moves :"ALLYSWITCH", :"COPYCAT", :"LEECHSEED", :"PETALBLIZZARD", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"SPRIGATITO" do |m|
  m.back_sprite 0, 52
  m.front_sprite -2, 29
  m.shadow_sprite 0, 0, 1
end