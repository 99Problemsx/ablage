#=============================================================================
# Tinkaton - FAIRY Type
#=============================================================================

GameData::Species.define :"TINKATON" do |pkmn|
  pkmn.name "Tinkaton"
  pkmn.types :"FAIRY", :"STEEL"
  pkmn.base_stats hp: 85, attack: 75, defense: 77,
                  sp_atk: 94, sp_def: 70, speed: 105
  pkmn.abilities :"MOLDBREAKER", :"OWNTEMPO"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 253
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 112.8
  pkmn.category "Hammer"
  pkmn.pokedex_entry "This intelligent Pokémon has a very daring disposition. It knocks rocks into the sky with its hammer, aiming for flying Corviknight."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 0, :"GIGATONHAMMER"
    m.at 1, :"FAIRYWIND"
    m.at 1, :"ASTONISH"
    m.at 5, :"BABYDOLLEYES"
    m.at 8, :"METALCLAW"
    m.at 11, :"COVET"
    m.at 14, :"ROCKSMASH"
    m.at 17, :"DRAININGKISS"
    m.at 21, :"SWEETKISS"
    m.at 24, :"BRUTALSWING"
    m.at 27, :"SLAM"
    m.at 31, :"FLASHCANNON"
    m.at 35, :"PLAYROUGH"
    m.at 39, :"FAKEOUT"
    m.at 43, :"FLATTER"
    m.at 47, :"SKITTERSMACK"
    m.at 52, :"KNOCKOFF"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULLDOZE", :"DRAININGKISS", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLASHCANNON", :"FLING", :"FOULPLAY", :"HARDPRESS", :"HEAVYSLAM", :"HELPINGHAND", :"KNOCKOFF", :"LIGHTSCREEN", :"METALCLAW", :"METALSOUND", :"METRONOME", :"PLAYROUGH", :"POUNCE", :"PROTECT", :"REFLECT", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SMACKDOWN", :"STEALTHROCK", :"STEELBEAM", :"STONEEDGE", :"SUBSTITUTE", :"SWORDSDANCE", :"THIEF", :"THUNDERWAVE"
end

GameData::SpeciesMetrics.define :"TINKATON" do |m|
  m.back_sprite 0, 42
  m.front_sprite 12, 16
  m.shadow_sprite 0, 0, 2
end