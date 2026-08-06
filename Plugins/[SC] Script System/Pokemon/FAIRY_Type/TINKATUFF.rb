#=============================================================================
# Tinkatuff - FAIRY Type
#=============================================================================

GameData::Species.define :"TINKATUFF" do |pkmn|
  pkmn.name "Tinkatuff"
  pkmn.types :"FAIRY", :"STEEL"
  pkmn.base_stats hp: 65, attack: 55, defense: 55,
                  sp_atk: 78, sp_def: 45, speed: 82
  pkmn.abilities :"MOLDBREAKER", :"OWNTEMPO"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 133
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 59.1
  pkmn.category "Hammer"
  pkmn.pokedex_entry "This Pokémon will attack groups of Pawniard and Bisharp, gathering metal from them in order to create a large and sturdy hammer."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
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
  pkmn.tutor_moves :"BRICKBREAK", :"DRAININGKISS", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLASHCANNON", :"FLING", :"FOULPLAY", :"HELPINGHAND", :"KNOCKOFF", :"LIGHTSCREEN", :"METALCLAW", :"METALSOUND", :"METRONOME", :"PLAYROUGH", :"POUNCE", :"PROTECT", :"REFLECT", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"STEALTHROCK", :"STEELBEAM", :"STONEEDGE", :"SUBSTITUTE", :"SWORDSDANCE", :"THIEF", :"THUNDERWAVE"
end

GameData::SpeciesMetrics.define :"TINKATUFF" do |m|
  m.back_sprite -8, 47
  m.front_sprite 3, 30
  m.shadow_sprite 0, 0, 2
end