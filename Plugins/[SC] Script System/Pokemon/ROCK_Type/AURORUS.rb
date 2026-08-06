#=============================================================================
# Aurorus - ROCK Type
#=============================================================================

GameData::Species.define :"AURORUS" do |pkmn|
  pkmn.name "Aurorus"
  pkmn.types :"ROCK", :"ICE"
  pkmn.base_stats hp: 123, attack: 77, defense: 72,
                  sp_atk: 58, sp_def: 99, speed: 92
  pkmn.abilities :"REFRIGERATE"
  pkmn.hidden_abilities :"SNOWWARNING"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 104
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 2.7
  pkmn.weight 225.0
  pkmn.category "Tundra"
  pkmn.pokedex_entry "Using its diamond-shaped crystals, it can instantly create a wall of ice to block an opponent's attack."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Monster"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"GROWL"
    m.at 1, :"ENCORE"
    m.at 1, :"ANCIENTPOWER"
    m.at 12, :"ICYWIND"
    m.at 16, :"ROUND"
    m.at 20, :"MIST"
    m.at 24, :"AURORABEAM"
    m.at 28, :"THUNDERWAVE"
    m.at 32, :"NATUREPOWER"
    m.at 36, :"FREEZEDRY"
    m.at 42, :"ICEBEAM"
    m.at 48, :"LIGHTSCREEN"
    m.at 54, :"HAIL"
    m.at 60, :"BLIZZARD"
    m.at 66, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DRAGONTAIL", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"METEORBEAM", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"AURORUS" do |m|
  m.back_sprite -10, 48
  m.front_sprite 6, 8
end