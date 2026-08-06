#=============================================================================
# Raikou - ELECTRIC Type
#=============================================================================

GameData::Species.define :"RAIKOU" do |pkmn|
  pkmn.name "Raikou"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 90, attack: 85, defense: 75,
                  sp_atk: 115, sp_def: 115, speed: 100
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"VOLTABSORB"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 1.9
  pkmn.weight 178.0
  pkmn.category "Thunder"
  pkmn.pokedex_entry "Raikou embodies the speed of lightning. Its roars send shock waves shuddering through the air and ground as if lightning bolts were crashing down."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 8, :"THUNDERSHOCK"
    m.at 15, :"ROAR"
    m.at 22, :"QUICKATTACK"
    m.at 29, :"SPARK"
    m.at 36, :"REFLECT"
    m.at 43, :"CRUNCH"
    m.at 50, :"THUNDERFANG"
    m.at 57, :"DISCHARGE"
    m.at 64, :"EXTRASENSORY"
    m.at 71, :"RAINDANCE"
    m.at 78, :"CALMMIND"
    m.at 85, :"THUNDER"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"RAIKOU" do |m|
  m.back_sprite -4, 0
  m.front_sprite 5, 12
  m.shadow_sprite 0, 0, 3
end