#=============================================================================
# Glimmet - ROCK Type
#=============================================================================

GameData::Species.define :"GLIMMET" do |pkmn|
  pkmn.name "Glimmet"
  pkmn.types :"ROCK", :"POISON"
  pkmn.base_stats hp: 48, attack: 35, defense: 42,
                  sp_atk: 60, sp_def: 105, speed: 60
  pkmn.abilities :"TOXICDEBRIS"
  pkmn.hidden_abilities :"CORROSION"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 70
  pkmn.catch_rate 70
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 0.7
  pkmn.weight 8.0
  pkmn.category "Ore"
  pkmn.pokedex_entry "It absorbs nutrients from cave walls. The petals it wears are made of crystallized poison."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ROCKTHROW"
    m.at 1, :"HARDEN"
    m.at 1, :"SMACKDOWN"
    m.at 7, :"ACIDSPRAY"
    m.at 11, :"ANCIENTPOWER"
    m.at 15, :"ROCKPOLISH"
    m.at 18, :"STEALTHROCK"
    m.at 22, :"VENOSHOCK"
    m.at 26, :"SANDSTORM"
    m.at 29, :"SELFDESTRUCT"
    m.at 33, :"ROCKSLIDE"
    m.at 37, :"POWERGEM"
    m.at 41, :"ACIDARMOR"
    m.at 46, :"SLUDGEWAVE"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"CONFUSERAY", :"DAZZLINGGLEAM", :"ENDURE", :"FACADE", :"GUNKSHOT", :"IRONDEFENSE", :"LIGHTSCREEN", :"METEORBEAM", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SANDTOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SPIKES", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TOXIC", :"TOXICSPIKES", :"VENOSHOCK"
  pkmn.egg_moves :"EXPLOSION", :"MEMENTO", :"TOXIC"
end

GameData::SpeciesMetrics.define :"GLIMMET" do |m|
  m.back_sprite 0, 44
  m.front_sprite -4, 10
  m.shadow_sprite 0, 0, 1
end