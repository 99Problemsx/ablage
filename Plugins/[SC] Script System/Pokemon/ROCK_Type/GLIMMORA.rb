#=============================================================================
# Glimmora - ROCK Type
#=============================================================================

GameData::Species.define :"GLIMMORA" do |pkmn|
  pkmn.name "Glimmora"
  pkmn.types :"ROCK", :"POISON"
  pkmn.base_stats hp: 83, attack: 55, defense: 90,
                  sp_atk: 86, sp_def: 130, speed: 81
  pkmn.abilities :"TOXICDEBRIS"
  pkmn.hidden_abilities :"CORROSION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 184
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 1.5
  pkmn.weight 45.0
  pkmn.category "Ore"
  pkmn.pokedex_entry "When this Pokémon detects danger, it will open up its crystalline petals and fire beams from its conical body."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"MORTALSPIN"
    m.at 1, :"SMACKDOWN"
    m.at 1, :"SPIKYSHIELD"
    m.at 1, :"ROCKTHROW"
    m.at 1, :"HARDEN"
    m.at 1, :"TOXICSPIKES"
    m.at 7, :"ACIDSPRAY"
    m.at 11, :"ANCIENTPOWER"
    m.at 15, :"ROCKPOLISH"
    m.at 18, :"STEALTHROCK"
    m.at 22, :"VENOSHOCK"
    m.at 26, :"SANDSTORM"
    m.at 29, :"SELFDESTRUCT"
    m.at 33, :"ROCKSLIDE"
    m.at 39, :"POWERGEM"
    m.at 44, :"ACIDARMOR"
    m.at 50, :"SLUDGEWAVE"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"CONFUSERAY", :"DAZZLINGGLEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"METEORBEAM", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SANDTOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SOLARBEAM", :"SPIKES", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TOXIC", :"TOXICSPIKES", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"GLIMMORA" do |m|
  m.back_sprite 0, 51
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Mega Glimmora
GameData::Species.define :"GLIMMORA_1" do |pkmn|
  pkmn.species :"GLIMMORA"
  pkmn.form 1
  pkmn.name "Glimmora"
  pkmn.form_name "Mega Glimmora"
  pkmn.types :"ROCK", :"POISON"
  pkmn.base_stats hp: 83, attack: 90, defense: 105,
                  sp_atk: 101, sp_def: 150, speed: 96
  pkmn.abilities :"TOXICDEBRIS"
  pkmn.hidden_abilities :"CORROSION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 184
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 2.8
  pkmn.weight 77.0
  pkmn.category "Ore"
  pkmn.pokedex_entry "Glimmora's petals-now larger and separated from its main body-rotate around it to provide defense while scattering poisonous fragments."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"MORTALSPIN"
    m.at 1, :"SMACKDOWN"
    m.at 1, :"SPIKYSHIELD"
    m.at 1, :"ROCKTHROW"
    m.at 1, :"HARDEN"
    m.at 1, :"TOXICSPIKES"
    m.at 7, :"ACIDSPRAY"
    m.at 11, :"ANCIENTPOWER"
    m.at 15, :"ROCKPOLISH"
    m.at 18, :"STEALTHROCK"
    m.at 22, :"VENOSHOCK"
    m.at 26, :"SANDSTORM"
    m.at 29, :"SELFDESTRUCT"
    m.at 33, :"ROCKSLIDE"
    m.at 39, :"POWERGEM"
    m.at 44, :"ACIDARMOR"
    m.at 50, :"SLUDGEWAVE"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"CONFUSERAY", :"DAZZLINGGLEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"GUNKSHOT", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"METEORBEAM", :"MUDSHOT", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SANDTOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SOLARBEAM", :"SPIKES", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TOXIC", :"TOXICSPIKES", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"GLIMMORA_1" do |m|
  m.back_sprite 0, 51
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 1
end