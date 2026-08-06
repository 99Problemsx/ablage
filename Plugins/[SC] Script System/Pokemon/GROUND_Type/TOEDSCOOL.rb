#=============================================================================
# Toedscool - GROUND Type
#=============================================================================

GameData::Species.define :"TOEDSCOOL" do |pkmn|
  pkmn.name "Toedscool"
  pkmn.types :"GROUND", :"GRASS"
  pkmn.base_stats hp: 40, attack: 40, defense: 35,
                  sp_atk: 70, sp_def: 50, speed: 100
  pkmn.abilities :"MYCELIUMMIGHT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Multiped"
  pkmn.base_exp 67
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.9
  pkmn.weight 33.0
  pkmn.category "Woodear"
  pkmn.pokedex_entry "Toedscool lives in muggy forests. The flaps that fall from its body are chewy and very delicious."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"WRAP"
    m.at 4, :"ABSORB"
    m.at 8, :"POISONPOWDER"
    m.at 8, :"STUNSPORE"
    m.at 12, :"SUPERSONIC"
    m.at 15, :"TACKLE"
    m.at 16, :"MEGADRAIN"
    m.at 20, :"SCREECH"
    m.at 24, :"MUDSHOT"
    m.at 28, :"HEX"
    m.at 32, :"SEEDBOMB"
    m.at 36, :"SPORE"
    m.at 40, :"GROWTH"
    m.at 44, :"GIGADRAIN"
    m.at 48, :"EARTHPOWER"
    m.at 52, :"POWERWHIP"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BULLETSEED", :"CONFUSERAY", :"DAZZLINGGLEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FLASHCANNON", :"FOULPLAY", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HEX", :"KNOCKOFF", :"LEAFSTORM", :"LIGHTSCREEN", :"LUNGE", :"MAGICALLEAF", :"MUDSHOT", :"MUDSLAP", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SOLARBEAM", :"SPIKES", :"SUBSTITUTE", :"SWIFT", :"TAUNT", :"TOXIC", :"TOXICSPIKES", :"TRAILBLAZE", :"TRICKROOM", :"VENOSHOCK"
  pkmn.egg_moves :"ACUPRESSURE", :"KNOCKOFF", :"LEECHSEED", :"MIRRORCOAT", :"RAGEPOWDER", :"RAPIDSPIN", :"TICKLE", :"TOXIC"
end

GameData::SpeciesMetrics.define :"TOEDSCOOL" do |m|
  m.back_sprite 0, 45
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 1
end