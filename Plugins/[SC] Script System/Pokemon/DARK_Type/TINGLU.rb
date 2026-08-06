#=============================================================================
# Ting-Lu - DARK Type
#=============================================================================

GameData::Species.define :"TINGLU" do |pkmn|
  pkmn.name "Ting-Lu"
  pkmn.types :"DARK", :"GROUND"
  pkmn.base_stats hp: 155, attack: 110, defense: 125,
                  sp_atk: 45, sp_def: 55, speed: 80
  pkmn.abilities :"VESSELOFRUIN"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 285
  pkmn.catch_rate 6
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 2.7
  pkmn.weight 699.7
  pkmn.category "Ruinous"
  pkmn.pokedex_entry "The fear poured into an ancient ritual vessel has clad itself in rocks and dirt to become a Pokémon."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SPITE"
    m.at 1, :"MEANLOOK"
    m.at 1, :"SANDTOMB"
    m.at 5, :"SPIKES"
    m.at 10, :"PAYBACK"
    m.at 15, :"STOMP"
    m.at 20, :"BULLDOZE"
    m.at 25, :"WHIRLWIND"
    m.at 30, :"TAUNT"
    m.at 35, :"THRASH"
    m.at 40, :"DARKPULSE"
    m.at 45, :"STOMPINGTANTRUM"
    m.at 50, :"RUINATION"
    m.at 55, :"THROATCHOP"
    m.at 60, :"ROCKSLIDE"
    m.at 65, :"MEMENTO"
    m.at 70, :"EARTHQUAKE"
    m.at 75, :"FISSURE"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HEAVYSLAM", :"HEX", :"HYPERBEAM", :"LASHOUT", :"MUDSHOT", :"MUDSLAP", :"PROTECT", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SANDTOMB", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SPIKES", :"SPITE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"TINGLU" do |m|
  m.back_sprite 0, 42
  m.front_sprite -18, 10
  m.shadow_sprite 0, 0, 3
end