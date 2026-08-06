#=============================================================================
# Entei - FIRE Type
#=============================================================================

GameData::Species.define :"ENTEI" do |pkmn|
  pkmn.name "Entei"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 115, attack: 115, defense: 85,
                  sp_atk: 100, sp_def: 90, speed: 75
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 2.1
  pkmn.weight 198.0
  pkmn.category "Volcano"
  pkmn.pokedex_entry "Entei embodies the passion of magma. It is thought to have been born in the eruption of a volcano. It blasts fire that consumes all that it touches."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 8, :"EMBER"
    m.at 15, :"ROAR"
    m.at 22, :"FIRESPIN"
    m.at 29, :"STOMP"
    m.at 36, :"FLAMETHROWER"
    m.at 43, :"SWAGGER"
    m.at 50, :"FIREFANG"
    m.at 57, :"LAVAPLUME"
    m.at 64, :"EXTRASENSORY"
    m.at 71, :"FIREBLAST"
    m.at 78, :"CALMMIND"
    m.at 85, :"ERUPTION"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ENTEI" do |m|
  m.back_sprite -4, 0
  m.front_sprite 4, 9
  m.shadow_sprite 0, 0, 3
end