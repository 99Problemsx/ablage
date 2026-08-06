#=============================================================================
# Toedscruel - GROUND Type
#=============================================================================

GameData::Species.define :"TOEDSCRUEL" do |pkmn|
  pkmn.name "Toedscruel"
  pkmn.types :"GROUND", :"GRASS"
  pkmn.base_stats hp: 80, attack: 70, defense: 65,
                  sp_atk: 100, sp_def: 80, speed: 120
  pkmn.abilities :"MYCELIUMMIGHT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Multiped"
  pkmn.base_exp 180
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.9
  pkmn.weight 58.0
  pkmn.category "Woodear"
  pkmn.pokedex_entry "These Pokémon gather into groups and form colonies deep within forests. They absolutely hate it when strangers approach."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"MUDSLAP"
    m.at 1, :"REFLECTTYPE"
    m.at 4, :"ABSORB"
    m.at 8, :"STUNSPORE"
    m.at 8, :"POISONPOWDER"
    m.at 12, :"SUPERSONIC"
    m.at 15, :"TACKLE"
    m.at 16, :"MEGADRAIN"
    m.at 20, :"SCREECH"
    m.at 24, :"MUDSHOT"
    m.at 28, :"HEX"
    m.at 34, :"SEEDBOMB"
    m.at 40, :"SPORE"
    m.at 44, :"GROWTH"
    m.at 48, :"GIGADRAIN"
    m.at 54, :"EARTHPOWER"
    m.at 58, :"POWERWHIP"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BULLETSEED", :"CONFUSERAY", :"DAZZLINGGLEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FLASHCANNON", :"FOULPLAY", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HEX", :"HYPERBEAM", :"KNOCKOFF", :"LEAFSTORM", :"LIGHTSCREEN", :"LUNGE", :"MAGICALLEAF", :"MUDSHOT", :"MUDSLAP", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SOLARBEAM", :"SPIKES", :"SUBSTITUTE", :"SWIFT", :"TAUNT", :"TOXIC", :"TOXICSPIKES", :"TRAILBLAZE", :"TRICKROOM", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"TOEDSCRUEL" do |m|
  m.back_sprite 4, 56
  m.front_sprite -7, 12
  m.shadow_sprite 0, 0, 2
end