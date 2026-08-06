#=============================================================================
# Wo-Chien - DARK Type
#=============================================================================

GameData::Species.define :"WOCHIEN" do |pkmn|
  pkmn.name "Wo-Chien"
  pkmn.types :"DARK", :"GRASS"
  pkmn.base_stats hp: 85, attack: 85, defense: 100,
                  sp_atk: 70, sp_def: 95, speed: 135
  pkmn.abilities :"TABLETSOFRUIN"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 285
  pkmn.catch_rate 6
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.5
  pkmn.weight 74.2
  pkmn.category "Ruinous"
  pkmn.pokedex_entry "The grudge of a person punished for writing the king’s evil deeds upon wooden tablets has clad itself in dead leaves to become a Pokémon."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"SPITE"
    m.at 1, :"MEANLOOK"
    m.at 5, :"TICKLE"
    m.at 10, :"PAYBACK"
    m.at 15, :"POISONPOWDER"
    m.at 15, :"STUNSPORE"
    m.at 20, :"MEGADRAIN"
    m.at 25, :"LEECHSEED"
    m.at 30, :"GROWTH"
    m.at 35, :"INGRAIN"
    m.at 40, :"DARKPULSE"
    m.at 45, :"GIGADRAIN"
    m.at 50, :"RUINATION"
    m.at 55, :"FOULPLAY"
    m.at 60, :"POWERWHIP"
    m.at 65, :"GRASSYTERRAIN"
    m.at 70, :"KNOCKOFF"
    m.at 75, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLETSEED", :"DARKPULSE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FOULPLAY", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"HEX", :"HYPERBEAM", :"KNOCKOFF", :"LASHOUT", :"LEAFSTORM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MUDSHOT", :"MUDSLAP", :"POLLENPUFF", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SNARL", :"SOLARBEAM", :"SOLARBLADE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TRAILBLAZE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WOCHIEN" do |m|
  m.back_sprite 0, 54
  m.front_sprite -3, 16
  m.shadow_sprite 0, 0, 3
end