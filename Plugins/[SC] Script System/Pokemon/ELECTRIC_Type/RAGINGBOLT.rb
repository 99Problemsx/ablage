#=============================================================================
# Raging Bolt - ELECTRIC Type
#=============================================================================

GameData::Species.define :"RAGINGBOLT" do |pkmn|
  pkmn.name "Raging Bolt"
  pkmn.types :"ELECTRIC", :"DRAGON"
  pkmn.base_stats hp: 125, attack: 73, defense: 91,
                  sp_atk: 75, sp_def: 137, speed: 89
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 295
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 6400
  pkmn.height 5.2
  pkmn.weight 480.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It's said to incinerate everything around it with lightning launched from its fur. Very little is known about this creature."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"ANCIENTPOWER"
    m.at 1, :"TWISTER"
    m.at 1, :"SUNNYDAY"
    m.at 1, :"SHOCKWAVE"
    m.at 1, :"STOMP"
    m.at 7, :"CHARGE"
    m.at 14, :"DRAGONBREATH"
    m.at 21, :"ELECTRICTERRAIN"
    m.at 28, :"DISCHARGE"
    m.at 35, :"DRAGONTAIL"
    m.at 42, :"CALMMIND"
    m.at 49, :"THUNDERCLAP"
    m.at 56, :"DRAGONHAMMER"
    m.at 63, :"RISINGVOLTAGE"
    m.at 70, :"DRAGONPULSE"
    m.at 77, :"ZAPCANNON"
    m.at 84, :"BODYPRESS"
    m.at 91, :"THUNDER"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"CALMMIND", :"CHARGE", :"CHARGEBEAM", :"CRUNCH", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"EERIEIMPULSE", :"ELECTRICTERRAIN", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HEAVYSLAM", :"HYPERBEAM", :"HYPERVOICE", :"OUTRAGE", :"PROTECT", :"REST", :"ROAR", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"TAKEDOWN", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERWAVE", :"VOLTSWITCH", :"WEATHERBALL", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"RAGINGBOLT" do |m|
  m.back_sprite 0, 55
  m.front_sprite -5, 10
  m.shadow_sprite 0, 0, 3
end