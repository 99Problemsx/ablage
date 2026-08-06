#=============================================================================
# Nacli - ROCK Type
#=============================================================================

GameData::Species.define :"NACLI" do |pkmn|
  pkmn.name "Nacli"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 55, attack: 55, defense: 75,
                  sp_atk: 25, sp_def: 35, speed: 35
  pkmn.abilities :"PURIFYINGSALT", :"STURDY"
  pkmn.hidden_abilities :"CLEARBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 56
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 16.0
  pkmn.category "Rock Salt"
  pkmn.pokedex_entry "It was born in a layer of rock salt deep under the earth. This species was particularly treasured in the old days, as they would share precious salt."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"HARDEN"
    m.at 1, :"TACKLE"
    m.at 5, :"ROCKTHROW"
    m.at 7, :"MUDSHOT"
    m.at 10, :"SMACKDOWN"
    m.at 13, :"ROCKPOLISH"
    m.at 16, :"HEADBUTT"
    m.at 20, :"IRONDEFENSE"
    m.at 25, :"RECOVER"
    m.at 30, :"ROCKSLIDE"
    m.at 33, :"STEALTHROCK"
    m.at 35, :"HEAVYSLAM"
    m.at 40, :"EARTHQUAKE"
    m.at 45, :"STONEEDGE"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DIG", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"HEAVYSLAM", :"HELPINGHAND", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"SANDSTORM", :"SLEEPTALK", :"SMACKDOWN", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"ZENHEADBUTT"
  pkmn.egg_moves :"ANCIENTPOWER", :"CURSE", :"FISSURE", :"POWERGEM"
end

GameData::SpeciesMetrics.define :"NACLI" do |m|
  m.back_sprite 0, 60
  m.front_sprite 0, 36
  m.shadow_sprite 0, 0, 1
end