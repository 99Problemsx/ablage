#=============================================================================
# Naclstack - ROCK Type
#=============================================================================

GameData::Species.define :"NACLSTACK" do |pkmn|
  pkmn.name "Naclstack"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 60, attack: 60, defense: 100,
                  sp_atk: 35, sp_def: 35, speed: 65
  pkmn.abilities :"PURIFYINGSALT", :"STURDY"
  pkmn.hidden_abilities :"CLEARBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 124
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 105.0
  pkmn.category "Rock Salt"
  pkmn.pokedex_entry "This Pokémon dry cures its prey by spraying salt over them. The curing process steals away the water in the prey’s body."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"SALTCURE"
    m.at 1, :"HARDEN"
    m.at 1, :"TACKLE"
    m.at 5, :"ROCKTHROW"
    m.at 7, :"MUDSHOT"
    m.at 10, :"SMACKDOWN"
    m.at 13, :"ROCKPOLISH"
    m.at 16, :"HEADBUTT"
    m.at 20, :"IRONDEFENSE"
    m.at 30, :"RECOVER"
    m.at 34, :"ROCKSLIDE"
    m.at 38, :"STEALTHROCK"
    m.at 41, :"HEAVYSLAM"
    m.at 45, :"EARTHQUAKE"
    m.at 51, :"STONEEDGE"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"HEAVYSLAM", :"HELPINGHAND", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"SANDSTORM", :"SLEEPTALK", :"SMACKDOWN", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"NACLSTACK" do |m|
  m.back_sprite 0, 68
  m.front_sprite 0, 35
  m.shadow_sprite 0, 0, 2
end