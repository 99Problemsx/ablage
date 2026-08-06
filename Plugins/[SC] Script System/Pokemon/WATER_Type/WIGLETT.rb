#=============================================================================
# Wiglett - WATER Type
#=============================================================================

GameData::Species.define :"WIGLETT" do |pkmn|
  pkmn.name "Wiglett"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 10, attack: 55, defense: 25,
                  sp_atk: 95, sp_def: 35, speed: 25
  pkmn.abilities :"GOOEY", :"RATTLED"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 49
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 1.8
  pkmn.category "Garden Eel"
  pkmn.pokedex_entry "This Pokémon can pick up the scent of a Veluza just over 65 feet away and will hide itself in the sand."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"SANDATTACK"
    m.at 4, :"MUDSLAP"
    m.at 8, :"WRAP"
    m.at 12, :"AQUAJET"
    m.at 20, :"WATERPULSE"
    m.at 20, :"SLAM"
    m.at 24, :"HEADBUTT"
    m.at 28, :"DIG"
    m.at 32, :"SUCKERPUNCH"
    m.at 36, :"THROATCHOP"
    m.at 40, :"LIQUIDATION"
  end
  pkmn.tutor_moves :"AGILITY", :"BLIZZARD", :"BULLDOZE", :"CHILLINGWATER", :"DIG", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FOULPLAY", :"HELPINGHAND", :"HYDROPUMP", :"ICEBEAM", :"LIQUIDATION", :"MUDDYWATER", :"MUDSHOT", :"MUDSLAP", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"THROATCHOP", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"FINALGAMBIT", :"MEMENTO"
end

GameData::SpeciesMetrics.define :"WIGLETT" do |m|
  m.back_sprite 0, 50
  m.front_sprite 0, 36
  m.shadow_sprite 0, 0, 1
end