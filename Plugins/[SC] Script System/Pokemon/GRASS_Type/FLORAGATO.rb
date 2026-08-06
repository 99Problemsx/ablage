#=============================================================================
# Floragato - GRASS Type
#=============================================================================

GameData::Species.define :"FLORAGATO" do |pkmn|
  pkmn.name "Floragato"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 61, attack: 80, defense: 63,
                  sp_atk: 83, sp_def: 60, speed: 63
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 144
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.9
  pkmn.weight 12.2
  pkmn.category "Grass Cat"
  pkmn.pokedex_entry "Floragato deftly wields the vine hidden beneath its long fur, slamming the hard flower bud against its opponents."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"LEAFAGE"
    m.at 7, :"BITE"
    m.at 10, :"HONECLAWS"
    m.at 13, :"MAGICALLEAF"
    m.at 15, :"QUICKATTACK"
    m.at 20, :"SEEDBOMB"
    m.at 24, :"UTURN"
    m.at 28, :"WORRYSEED"
    m.at 33, :"SLASH"
    m.at 38, :"ENERGYBALL"
    m.at 42, :"PLAYROUGH"
    m.at 46, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"BULLETSEED", :"CHARM", :"DISARMINGVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLING", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"MUDSLAP", :"NASTYPLOT", :"PETALBLIZZARD", :"PLAYROUGH", :"PROTECT", :"REST", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SOLARBEAM", :"SUBSTITUTE", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THUNDERPUNCH", :"TRAILBLAZE", :"UTURN"
end

GameData::SpeciesMetrics.define :"FLORAGATO" do |m|
  m.back_sprite 0, 59
  m.front_sprite 0, 19
  m.shadow_sprite 0, 0, 1
end