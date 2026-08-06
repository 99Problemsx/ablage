#=============================================================================
# Tapu Fini - WATER Type
#=============================================================================

GameData::Species.define :"TAPUFINI" do |pkmn|
  pkmn.name "Tapu Fini"
  pkmn.types :"WATER", :"FAIRY"
  pkmn.base_stats hp: 70, attack: 75, defense: 115,
                  sp_atk: 85, sp_def: 95, speed: 130
  pkmn.abilities :"MISTYSURGE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 285
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.3
  pkmn.weight 21.2
  pkmn.category "Land Spirit"
  pkmn.pokedex_entry "The dense fog it creates brings the downfall and destruction of its confused enemies. Ocean currents are the source of its energy."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DISARMINGVOICE"
    m.at 1, :"WATERGUN"
    m.at 5, :"WITHDRAW"
    m.at 10, :"MIST"
    m.at 10, :"HAZE"
    m.at 15, :"AQUARING"
    m.at 20, :"WATERPULSE"
    m.at 25, :"BRINE"
    m.at 30, :"DEFOG"
    m.at 35, :"HEALPULSE"
    m.at 40, :"SURF"
    m.at 45, :"MUDDYWATER"
    m.at 50, :"MEANLOOK"
    m.at 55, :"NATURESMADNESS"
    m.at 60, :"MOONBLAST"
    m.at 65, :"HYDROPUMP"
    m.at 70, :"SOAK"
    m.at 75, :"MISTYTERRAIN"
  end
  pkmn.tutor_moves :"BLIZZARD", :"BRINE", :"CALMMIND", :"CONFIDE", :"DAZZLINGGLEAM", :"DEFOG", :"DIVE", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GUARDSWAP", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MISTYTERRAIN", :"MUDDYWATER", :"NATURALGIFT", :"NATUREPOWER", :"PLAYROUGH", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"TORMENT", :"TOXIC", :"TRICK", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TAPUFINI" do |m|
  m.back_sprite -3, 94
  m.front_sprite 8, 21
end