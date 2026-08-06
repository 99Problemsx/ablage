#=============================================================================
# Popplio - WATER Type
#=============================================================================

GameData::Species.define :"POPPLIO" do |pkmn|
  pkmn.name "Popplio"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 50, attack: 54, defense: 54,
                  sp_atk: 40, sp_def: 66, speed: 56
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"LIQUIDVOICE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 7.5
  pkmn.category "Sea Lion"
  pkmn.pokedex_entry "This Pokémon snorts body fluids from its nose, blowing balloons to smash into its foes. It's famous for being a hard worker."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 3, :"WATERGUN"
    m.at 6, :"DISARMINGVOICE"
    m.at 9, :"AQUAJET"
    m.at 12, :"BABYDOLLEYES"
    m.at 15, :"ICYWIND"
    m.at 18, :"SING"
    m.at 21, :"BUBBLEBEAM"
    m.at 24, :"ENCORE"
    m.at 27, :"MISTYTERRAIN"
    m.at 30, :"HYPERVOICE"
    m.at 33, :"MOONBLAST"
    m.at 36, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AMNESIA", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DIVE", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FLIPTURN", :"FRUSTRATION", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MISTYTERRAIN", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"TRIPLEAXEL", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"AQUARING", :"LIFEDEW", :"PERISHSONG"
end

GameData::SpeciesMetrics.define :"POPPLIO" do |m|
  m.back_sprite 5, 5
  m.front_sprite -3, 4
end