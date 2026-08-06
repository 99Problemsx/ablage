#=============================================================================
# Suicune - WATER Type
#=============================================================================

GameData::Species.define :"SUICUNE" do |pkmn|
  pkmn.name "Suicune"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 100, attack: 75, defense: 115,
                  sp_atk: 85, sp_def: 90, speed: 115
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 20560
  pkmn.height 2.0
  pkmn.weight 187.0
  pkmn.category "Aurora"
  pkmn.pokedex_entry "Suicune embodies the compassion of a pure spring of water. It runs across the land with gliding elegance. It has the power to purify dirty water."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 8, :"BUBBLEBEAM"
    m.at 15, :"RAINDANCE"
    m.at 22, :"GUST"
    m.at 29, :"AURORABEAM"
    m.at 36, :"MIST"
    m.at 43, :"MIRRORCOAT"
    m.at 50, :"ICEFANG"
    m.at 57, :"TAILWIND"
    m.at 64, :"EXTRASENSORY"
    m.at 71, :"HYDROPUMP"
    m.at 78, :"CALMMIND"
    m.at 85, :"BLIZZARD"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"SUICUNE" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 8
  m.shadow_sprite 0, 0, 3
end