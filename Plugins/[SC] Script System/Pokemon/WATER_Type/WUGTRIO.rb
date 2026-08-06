#=============================================================================
# Wugtrio - WATER Type
#=============================================================================

GameData::Species.define :"WUGTRIO" do |pkmn|
  pkmn.name "Wugtrio"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 35, attack: 100, defense: 50,
                  sp_atk: 120, sp_def: 50, speed: 70
  pkmn.abilities :"GOOEY", :"RATTLED"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 149
  pkmn.catch_rate 50
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 5.4
  pkmn.category "Garden Eel"
  pkmn.pokedex_entry "It has a vicious temperament, contrary to what its appearance may suggest. It wraps its long bodies around prey, then drags the prey into its den."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"SANDATTACK"
    m.at 1, :"WRAP"
    m.at 1, :"WATERGUN"
    m.at 12, :"AQUAJET"
    m.at 16, :"SLAM"
    m.at 20, :"WATERPULSE"
    m.at 24, :"HEADBUTT"
    m.at 30, :"TRIPLEDIVE"
    m.at 36, :"DIG"
    m.at 42, :"SUCKERPUNCH"
    m.at 48, :"THROATCHOP"
    m.at 54, :"LIQUIDATION"
  end
  pkmn.tutor_moves :"AGILITY", :"BLIZZARD", :"BULLDOZE", :"CHILLINGWATER", :"DIG", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FOULPLAY", :"GIGAIMPACT", :"HELPINGHAND", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"LIQUIDATION", :"MUDDYWATER", :"MUDSHOT", :"MUDSLAP", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REST", :"SANDSTORM", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SURF", :"SWIFT", :"TAKEDOWN", :"THROATCHOP", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"WUGTRIO" do |m|
  m.back_sprite 0, 56
  m.front_sprite -2, 24
  m.shadow_sprite 0, 0, 2
end