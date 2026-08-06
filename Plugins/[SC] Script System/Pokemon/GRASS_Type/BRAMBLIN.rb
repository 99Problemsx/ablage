#=============================================================================
# Bramblin - GRASS Type
#=============================================================================

GameData::Species.define :"BRAMBLIN" do |pkmn|
  pkmn.name "Bramblin"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 40, attack: 65, defense: 30,
                  sp_atk: 60, sp_def: 45, speed: 35
  pkmn.abilities :"WINDRIDER"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 55
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 0.6
  pkmn.category "Tumbleweed"
  pkmn.pokedex_entry "A soul unable to move on to the afterlife was blown around by the wind until it got tangled up with dried grass and became a Pokémon."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 1, :"ASTONISH"
    m.at 5, :"ABSORB"
    m.at 9, :"RAPIDSPIN"
    m.at 13, :"BULLETSEED"
    m.at 17, :"INFESTATION"
    m.at 21, :"HEX"
    m.at 25, :"MEGADRAIN"
    m.at 29, :"DISABLE"
    m.at 35, :"PHANTOMFORCE"
    m.at 40, :"GIGADRAIN"
    m.at 45, :"CURSE"
    m.at 50, :"PAINSPLIT"
    m.at 55, :"POWERWHIP"
  end
  pkmn.tutor_moves :"BULLETSEED", :"CONFUSERAY", :"CURSE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HEX", :"LEAFSTORM", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POUNCE", :"PROTECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SOLARBEAM", :"SPIKES", :"SPITE", :"SUBSTITUTE", :"THIEF", :"TRAILBLAZE"
  pkmn.egg_moves :"BEATUP", :"BLOCK", :"LEECHSEED", :"SHADOWSNEAK", :"STRENGTHSAP"
end

GameData::SpeciesMetrics.define :"BRAMBLIN" do |m|
  m.back_sprite 0, 64
  m.front_sprite 0, 31
  m.shadow_sprite 0, 0, 1
end