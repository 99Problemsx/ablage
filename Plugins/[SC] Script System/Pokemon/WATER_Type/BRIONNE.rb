#=============================================================================
# Brionne - WATER Type
#=============================================================================

GameData::Species.define :"BRIONNE" do |pkmn|
  pkmn.name "Brionne"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 60, attack: 69, defense: 69,
                  sp_atk: 50, sp_def: 91, speed: 81
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"LIQUIDVOICE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 17.5
  pkmn.category "Pop Star"
  pkmn.pokedex_entry "It gets excited when it sees a dance it doesn't know. This hard worker practices diligently until it can learn that dance."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"DISARMINGVOICE"
    m.at 9, :"AQUAJET"
    m.at 12, :"BABYDOLLEYES"
    m.at 15, :"ICYWIND"
    m.at 20, :"SING"
    m.at 25, :"BUBBLEBEAM"
    m.at 30, :"ENCORE"
    m.at 35, :"MISTYTERRAIN"
    m.at 40, :"HYPERVOICE"
    m.at 45, :"MOONBLAST"
    m.at 50, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AMNESIA", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DIVE", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FLIPTURN", :"FRUSTRATION", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MISTYTERRAIN", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"TRIPLEAXEL", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BRIONNE" do |m|
  m.back_sprite -3, 17
  m.front_sprite -2, 5
  m.shadow_sprite 0, 0, 2
end