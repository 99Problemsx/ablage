#=============================================================================
# Meowscarada - GRASS Type
#=============================================================================

GameData::Species.define :"MEOWSCARADA" do |pkmn|
  pkmn.name "Meowscarada"
  pkmn.types :"GRASS", :"DARK"
  pkmn.base_stats hp: 76, attack: 110, defense: 70,
                  sp_atk: 123, sp_def: 81, speed: 70
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"PROTEAN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 31.2
  pkmn.category "Magician"
  pkmn.pokedex_entry "This Pokémon uses the reflective fur lining its cape to camouflage the stem of its flower, creating the illusion that the flower is floating."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at -1, :"DOUBLETEAM"
    m.at -1, :"TRICK"
    m.at 0, :"FLOWERTRICK"
    m.at 1, :"LEAFAGE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"SCRATCH"
    m.at 7, :"BITE"
    m.at 10, :"HONECLAWS"
    m.at 13, :"MAGICALLEAF"
    m.at 15, :"QUICKATTACK"
    m.at 20, :"SEEDBOMB"
    m.at 24, :"UTURN"
    m.at 29, :"WORRYSEED"
    m.at 33, :"SLASH"
    m.at 38, :"NIGHTSLASH"
    m.at 42, :"ENERGYBALL"
    m.at 47, :"PLAYROUGH"
    m.at 52, :"KNOCKOFF"
    m.at 58, :"GRASSYTERRAIN"
    m.at 64, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AURASPHERE", :"BRICKBREAK", :"BULLETSEED", :"CHARM", :"CHILLINGWATER", :"DARKPULSE", :"DISARMINGVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLING", :"FOULPLAY", :"FRENZYPLANT", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HELPINGHAND", :"HYPERBEAM", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"MUDSLAP", :"NASTYPLOT", :"PETALBLIZZARD", :"PLAYROUGH", :"POLLENPUFF", :"POWERGEM", :"PROTECT", :"PSYCHUP", :"REST", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SLEEPTALK", :"SOLARBEAM", :"SPIKES", :"SUBSTITUTE", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERPUNCH", :"TOXICSPIKES", :"TRAILBLAZE", :"TRICK", :"TRICKROOM", :"TRIPLEAXEL", :"UTURN"
end

GameData::SpeciesMetrics.define :"MEOWSCARADA" do |m|
  m.back_sprite 0, 51
  m.front_sprite 2, 11
  m.shadow_sprite 0, 0, 1
end