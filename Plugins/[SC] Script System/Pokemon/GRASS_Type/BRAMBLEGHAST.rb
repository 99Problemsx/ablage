#=============================================================================
# Brambleghast - GRASS Type
#=============================================================================

GameData::Species.define :"BRAMBLEGHAST" do |pkmn|
  pkmn.name "Brambleghast"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 55, attack: 115, defense: 70,
                  sp_atk: 90, sp_def: 80, speed: 70
  pkmn.abilities :"WINDRIDER"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 168
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 6.0
  pkmn.category "Tumbleweed"
  pkmn.pokedex_entry "It will open the branches of its head to envelop its prey. Once it absorbs all the life energy it needs, it expels the prey and discards it."
  pkmn.evs attack: 2
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
  pkmn.tutor_moves :"BULLETSEED", :"CONFUSERAY", :"CURSE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HEX", :"HYPERBEAM", :"LEAFSTORM", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POUNCE", :"PROTECT", :"REST", :"SCARYFACE", :"SEEDBOMB", :"SHADOWBALL", :"SKITTERSMACK", :"SLEEPTALK", :"SOLARBEAM", :"SPIKES", :"SPITE", :"SUBSTITUTE", :"THIEF", :"TRAILBLAZE"
end

GameData::SpeciesMetrics.define :"BRAMBLEGHAST" do |m|
  m.back_sprite 0, 54
  m.front_sprite 0, 26
  m.shadow_sprite 0, 0, 2
end