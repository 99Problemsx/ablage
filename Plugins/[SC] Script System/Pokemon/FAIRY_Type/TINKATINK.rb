#=============================================================================
# Tinkatink - FAIRY Type
#=============================================================================

GameData::Species.define :"TINKATINK" do |pkmn|
  pkmn.name "Tinkatink"
  pkmn.types :"FAIRY", :"STEEL"
  pkmn.base_stats hp: 50, attack: 45, defense: 45,
                  sp_atk: 58, sp_def: 35, speed: 64
  pkmn.abilities :"MOLDBREAKER", :"OWNTEMPO"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 59
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 8.9
  pkmn.category "Metalsmith"
  pkmn.pokedex_entry "It swings its handmade hammer around to protect itself, but the hammer is often stolen by Pokémon that eat metal."
  pkmn.evs special_defense: 1
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
  pkmn.tutor_moves :"DRAININGKISS", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLASHCANNON", :"FLING", :"FOULPLAY", :"HELPINGHAND", :"KNOCKOFF", :"LIGHTSCREEN", :"METALCLAW", :"METALSOUND", :"METRONOME", :"PLAYROUGH", :"POUNCE", :"PROTECT", :"REFLECT", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"STEALTHROCK", :"STEELBEAM", :"STONEEDGE", :"SUBSTITUTE", :"SWORDSDANCE", :"THIEF", :"THUNDERWAVE"
  pkmn.egg_moves :"FEINT", :"ICEHAMMER", :"QUASH"
end

GameData::SpeciesMetrics.define :"TINKATINK" do |m|
  m.back_sprite 0, 49
  m.front_sprite 4, 34
  m.shadow_sprite 0, 0, 1
end