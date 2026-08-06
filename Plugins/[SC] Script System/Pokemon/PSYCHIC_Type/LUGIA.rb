#=============================================================================
# Lugia - PSYCHIC Type
#=============================================================================

GameData::Species.define :"LUGIA" do |pkmn|
  pkmn.name "Lugia"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 106, attack: 90, defense: 130,
                  sp_atk: 110, sp_def: 90, speed: 154
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"MULTISCALE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 306
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 5.2
  pkmn.weight 216.0
  pkmn.category "Diving"
  pkmn.pokedex_entry "Lugia is so powerful even a light fluttering of its wings can blow apart houses. As a result, it chooses to live out of sight deep under the sea."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WHIRLWIND"
    m.at 1, :"WEATHERBALL"
    m.at 9, :"GUST"
    m.at 15, :"DRAGONRUSH"
    m.at 23, :"EXTRASENSORY"
    m.at 29, :"RAINDANCE"
    m.at 37, :"HYDROPUMP"
    m.at 43, :"AEROBLAST"
    m.at 50, :"PUNISHMENT"
    m.at 57, :"ANCIENTPOWER"
    m.at 65, :"SAFEGUARD"
    m.at 71, :"RECOVER"
    m.at 79, :"FUTURESIGHT"
    m.at 85, :"NATURALGIFT"
    m.at 93, :"CALMMIND"
    m.at 99, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"AQUATAIL", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DEFOG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAGONTAIL", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LUGIA" do |m|
  m.back_sprite 5, 0
  m.front_sprite -2, -3
  m.shadow_sprite 0, 0, 3
end