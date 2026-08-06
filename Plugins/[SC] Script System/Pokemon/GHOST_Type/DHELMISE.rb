#=============================================================================
# Dhelmise - GHOST Type
#=============================================================================

GameData::Species.define :"DHELMISE" do |pkmn|
  pkmn.name "Dhelmise"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 70, attack: 131, defense: 100,
                  sp_atk: 40, sp_def: 86, speed: 90
  pkmn.abilities :"STEELWORKER"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 181
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 3.9
  pkmn.weight 210.0
  pkmn.category "Sea Creeper"
  pkmn.pokedex_entry "The soul of seaweed adrift in the waves became reborn as this Pokémon. It maintains itself with new infusions of seabed detritus and seaweed."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"RAPIDSPIN"
    m.at 4, :"ASTONISH"
    m.at 8, :"WRAP"
    m.at 12, :"MEGADRAIN"
    m.at 16, :"GROWTH"
    m.at 20, :"GYROBALL"
    m.at 24, :"SWITCHEROO"
    m.at 28, :"GIGADRAIN"
    m.at 32, :"WHIRLPOOL"
    m.at 36, :"HEAVYSLAM"
    m.at 40, :"SLAM"
    m.at 44, :"SHADOWBALL"
    m.at 48, :"METALSOUND"
    m.at 52, :"ANCHORSHOT"
    m.at 56, :"ENERGYBALL"
    m.at 60, :"PHANTOMFORCE"
    m.at 64, :"POWERWHIP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"ASSURANCE", :"BLOCK", :"BODYPRESS", :"BRICKBREAK", :"BRINE", :"BRUTALSWING", :"BULLDOZE", :"CONFIDE", :"DOUBLETEAM", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEAVYSLAM", :"HELPINGHAND", :"HEX", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERWHIP", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEWAVE", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SPITE", :"STEELROLLER", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"WHIRLPOOL", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DHELMISE" do |m|
  m.back_sprite -4, 44
  m.front_sprite 0, 5
  m.shadow_sprite 0, 0, -1
end