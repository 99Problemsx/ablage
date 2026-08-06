#=============================================================================
# Primarina - WATER Type
#=============================================================================

GameData::Species.define :"PRIMARINA" do |pkmn|
  pkmn.name "Primarina"
  pkmn.types :"WATER", :"FAIRY"
  pkmn.base_stats hp: 80, attack: 74, defense: 74,
                  sp_atk: 60, sp_def: 126, speed: 116
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"LIQUIDVOICE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.8
  pkmn.weight 44.0
  pkmn.category "Soloist"
  pkmn.pokedex_entry "It controls its water balloons with song. The melody is learned from others of its kind and is passed down from one generation to the next."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 0, :"SPARKLINGARIA"
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
    m.at 37, :"MISTYTERRAIN"
    m.at 44, :"HYPERVOICE"
    m.at 51, :"MOONBLAST"
    m.at 58, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AMNESIA", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DIVE", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLIPTURN", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HYDROCANNON", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"LIQUIDATION", :"MAGICCOAT", :"MIMIC", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"TRIPLEAXEL", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WEATHERBALL", :"WHIRLPOOL", :"WONDERROOM", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"PRIMARINA" do |m|
  m.back_sprite 0, 24
  m.front_sprite 6, 10
end