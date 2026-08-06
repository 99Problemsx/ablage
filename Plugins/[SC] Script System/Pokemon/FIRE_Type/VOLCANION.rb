#=============================================================================
# Volcanion - FIRE Type
#=============================================================================

GameData::Species.define :"VOLCANION" do |pkmn|
  pkmn.name "Volcanion"
  pkmn.types :"FIRE", :"WATER"
  pkmn.base_stats hp: 80, attack: 110, defense: 120,
                  sp_atk: 70, sp_def: 130, speed: 90
  pkmn.abilities :"WATERABSORB"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30720
  pkmn.height 1.7
  pkmn.weight 195.0
  pkmn.category "Steam"
  pkmn.pokedex_entry "It lets out billows of steam and disappears into the dense fog. It's said to live in mountains where humans do not tread."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FIRESPIN"
    m.at 1, :"WATERGUN"
    m.at 6, :"LEER"
    m.at 12, :"WEATHERBALL"
    m.at 18, :"FLAMECHARGE"
    m.at 24, :"WATERPULSE"
    m.at 30, :"SCARYFACE"
    m.at 36, :"INCINERATE"
    m.at 42, :"STOMP"
    m.at 48, :"SCALD"
    m.at 54, :"TAKEDOWN"
    m.at 60, :"MIST"
    m.at 60, :"HAZE"
    m.at 66, :"HYDROPUMP"
    m.at 72, :"STEAMERUPTION"
    m.at 78, :"FLAREBLITZ"
    m.at 84, :"OVERHEAT"
    m.at 90, :"EXPLOSION"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CONFIDE", :"CUT", :"DEFOG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"INCINERATE", :"LIQUIDATION", :"MIMIC", :"MISTYTERRAIN", :"MUDSHOT", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SCALD", :"SCARYFACE", :"SCORCHINGSANDS", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERFANG", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"VOLCANION" do |m|
  m.back_sprite 10, 50
  m.front_sprite -3, 8
end